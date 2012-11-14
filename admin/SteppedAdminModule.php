<?php

/**
 * This class provide two step admin module. Just implement abstract methods.
 * action method should return boolean success value.
 *
 * @author Adam Bukowski <abukowski@telaxus.com>
 */
abstract class SteppedAdminModule extends AdminModule {

    private static $step_var = 'step';

    abstract function header();

    abstract function action();

    abstract function start_text();

    abstract function success_text();

    abstract function failure_text();

    public function body() {
        ob_start();
        $step = $this->_get_step();
        $this->_print_header();
        if ($step)
            $this->_run_action();
        else
            $this->_starting_page();
        return ob_get_clean();
    }

    private function _get_step() {
        if (isset($_POST[self::$step_var]) && $_POST[self::$step_var]) {
            $_SESSION[self::$step_var] = 1;
            header('Location: ' . $_SERVER['REQUEST_URI']);
            return false;
        }
        if (isset($_GET[self::$step_var]) && $_GET[self::$step_var]) {
            $_SESSION[self::$step_var] = 1;
        }
        return isset($_SESSION[self::$step_var]) && $_SESSION[self::$step_var];
    }

    private function _print_header() {
        print('<div class="title">' . $this->header() . '</div><br/>');
    }

    private function _run_action() {
        print( $this->action() ?
                        $this->success_text() :
                        $this->failure_text()
        );
        unset($_SESSION[self::$step_var]);
    }

    private function _starting_page() {
        print($this->start_text());
        print("<br/><br/><center>{$this->run_button()}</center>");
    }

    private function run_button() {
        return '<form method="post">
            <input type="hidden" name="' . self::$step_var . '" value="1" />
            <input type="submit" class="button" value="Next" /></form>';
    }

}

?>