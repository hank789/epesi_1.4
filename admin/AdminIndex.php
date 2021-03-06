<?php

class AdminIndex {

    private $admin_modules = array();
    private $layout;
    private $module_loader;

    function __construct($layout, $module_loader) {
        $this->layout = $layout;
        $this->module_loader = $module_loader;
    }

    private function include_epesi() {
        define('CID', false);
        require_once('../include.php');
        $this->module_loader->load(array('Base_User', 'Base_User_Login', 'Base_Acl'));
        require_once('admin/Authorization.php');
    }

    private function demo_or_hosting() {
        if (DEMO_MODE || HOSTING_MODE) {
            $this->layout->hide_action_links();
            $this->layout->display_html('Feature unavailable');
            return true;
        }
        return false;
    }

    private function authorized() {
        $auth = AdminAuthorization::form();
        if ($auth) {
            $this->layout->hide_action_links();
            $this->layout->display_html($auth);
            return false;
        }
        return true;
    }

    private function include_admin_modules() {
        require_once("admin/AdminModule.php");
        require_once("admin/SteppedAdminModule.php");
        // load modules files
        $modules_dir = "admin/modules";
        foreach (scandir($modules_dir) as $file) {
            // include only php files
            if (strtolower(pathinfo($file, PATHINFO_EXTENSION)) == 'php') {
                include_once ($modules_dir . DIRECTORY_SEPARATOR . $file);
            }
        }
    }

    private function create_admin_modules_instances() {
        foreach (get_declared_classes() as $class) {
            $rclass = new ReflectionClass($class);
            if ($rclass->isSubclassOf("AdminModule") && !$rclass->isAbstract()) {
                $module = new $class;
                if (
                        (Base_AclCommon::i_am_sa()) ||
                        (Base_AclCommon::i_am_admin() && $module->access_admin()) ||
                        (Base_AclCommon::i_am_user() && $module->access_user())
                ) {
                    $this->admin_modules[$class] = $module;
                }
            }
        }
        ksort($this->admin_modules);
    }

    private function selected_module() {
        $module_param = isset($_GET['module']) ? $_GET['module'] : null;
        return isset($this->admin_modules[$module_param]) ? $this->admin_modules[$module_param] : null;
    }

    private function show_module($module) {
        $this->module_loader->load($module->required_epesi_modules());
        $this->layout->display_html($module->body());
    }

    private function show_menu() {
        foreach ($this->admin_modules as $module_name => $module) {
            $href = '?' . http_build_query(array('module' => $module_name));
            $this->layout->add_menu_entry($href, $module->menu_entry());
        }
        $this->layout->display_menu();
    }

    private function logout_action() {
        if (isset($_GET['logout'])) {
            unset($_GET['logout']);
            Base_User_LoginCommon::logout();
            $get = count($_GET) ? '?' . http_build_query($_GET) : '';
            header('Location: ' . $_SERVER['PHP_SELF'] . $get);
        } else {
            $get = $_GET;
            $get['logout'] = 1;
            $this->layout->add_action_link('?' . http_build_query($get), 'Logout');
        }
    }

    private function main_menu_action() {
        $this->layout->add_action_link($_SERVER['PHP_SELF'], 'Main menu');
    }
    
    private function start_epesi_action() {
        $admin_index = $_SERVER['PHP_SELF'];
        $epesi_dir = dirname(dirname($admin_index)) . '/';
        $this->layout->add_action_link($epesi_dir, 'Start EPESI');
    }

    function run() {
        $this->include_epesi(); // current directory changed to main epesi dir

        if ($this->demo_or_hosting())
            return;

        $this->main_menu_action();
        $this->start_epesi_action();
        $this->logout_action();

        if (!$this->authorized())
            return;

        $this->include_admin_modules();
        $this->create_admin_modules_instances();

        $module = $this->selected_module();
        if ($module)
            $this->show_module($module);
        else
            $this->show_menu();
    }

}

?>