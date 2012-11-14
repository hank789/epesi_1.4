<?php /* Smarty version 2.6.18, created on 2012-11-14 13:08:09
         compiled from Base/Box/default.tpl */ ?>
<?php if (! $this->_tpl_vars['logged']): ?>

<div id="Base_Box__login">
	<div class="status"><?php echo $this->_tpl_vars['status']; ?>
</div>
	<div class="entry"><?php echo $this->_tpl_vars['login']; ?>
</div>
</div>

<?php else: ?>

<?php 
	load_js($this->get_template_vars('theme_dir').'/Base/Box/default.js');
	eval_js_once('document.body.id=null');
 ?>

	<div id="top_bar" class="nonselectable" style="width:100%">
		<div id="MenuBar">
		<table id="top_bar_1" cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr>
				<td style="empty-cells: hide; width: 8px;"></td>
				<td class="menu-bar"><?php echo $this->_tpl_vars['menu']; ?>
</td>
				<td style=" empty-cells: hide; width: 7px;"></td>
				<td class="home-bar" <?php echo $this->_tpl_vars['home']['href']; ?>
>
					<div id="home-bar1">
						<div class="home-bar-icon"></div>
						<div class="home-bar-text">
							<?php echo $this->_tpl_vars['home']['label']; ?>

						</div>
					</div>
				</td>
				<td style="empty-cells: hide; width: 6px;"></td>
				<?php if ($this->_tpl_vars['quick_access_menu']): ?>
					<td class="quick-access-bar"><?php echo $this->_tpl_vars['quick_access_menu']; ?>
</td>
					<td style="empty-cells: hide; width: 6px;"></td>
				<?php endif; ?>
				<td class="top_bar_black filler"></td>
				<td class="top_bar_black powered" nowrap="1">
					<div>
						<a href="http://epe.si" target="_blank" style="color:white;"><b>EPESI</b> powered</a>&nbsp;
					</div>
					<div><?php echo $this->_tpl_vars['version_no']; ?>
</div>
				</td>
				<?php if (isset ( $this->_tpl_vars['donate'] )): ?>
					<td class="top_bar_black donate" nowrap="1"><?php echo $this->_tpl_vars['donate']; ?>
</td>
				<?php endif; ?>
				<td style="empty-cells: hide; width: 6px;"></td>
				<td class="top_bar_black top_bar_help"><div class="help"><a <?php echo $this->_tpl_vars['help']['href']; ?>
 onMouseOver="$('help_icon').src='<?php echo $this->_tpl_vars['theme_dir']; ?>
/Base/MainModuleIndicator/help-hover.png';" onMouseOut="$('help_icon').src='<?php echo $this->_tpl_vars['theme_dir']; ?>
/Base/MainModuleIndicator/help.png';"><img src="<?php echo $this->_tpl_vars['theme_dir']; ?>
/Base/MainModuleIndicator/help.png" id="help_icon" alt="?" border="0"><div class="help_label"><?php echo $this->_tpl_vars['help']['label']; ?>
</div></a></div></td>
				<td style="empty-cells: hide; width: 6px;"></td>				
				<td class="top_bar_black module-indicator"><div id="module-indicator"><?php if ($this->_tpl_vars['moduleindicator']): ?><?php echo $this->_tpl_vars['moduleindicator']; ?>
<?php else: ?>&nbsp;<?php endif; ?></div></td>
				<td style="empty-cells: hide; width: 8px;"></td>
			</tr>
		</tbody>
		</table>
		</div>
		<div id="ShadowBar" style="display: none;"></div>
		<div id="ActionBar">
			<table id="top_bar_2" cellspacing="0" cellpadding="0" border="0">
			<tbody>
				<tr>
					<td style="empty-cells: hide; width: 8px;"></td>
					<td class="logo"><div class="shadow_css3_logo_border"><?php echo $this->_tpl_vars['logo']; ?>
</div></td>
					<td style="empty-cells: hide; width: 6px;"></td>
					<td class="icons">
						<div class="shadow_css3_icons_border">
							<?php echo $this->_tpl_vars['actionbar']; ?>

						</div>
					</td>
					<td id="launchpad_button_section_spacing" style="empty-cells: hide; width: 6px; display:none;"></td>
					<td class="icons_launchpad" id="launchpad_button_section" style="display:none;">
						<div class="shadow_css3_icons_launchpad_border"> 
							<?php echo $this->_tpl_vars['launchpad']; ?>

						</div>
					</td>
					<td style="empty-cells: hide; width: 6px;"></td>
					<td id="login-search-td">
						<div class="shadow_css3_login-search-td_border">
								<div class="login"><?php echo $this->_tpl_vars['login']; ?>
</div>
								<div class="search" id="search_box"><?php echo $this->_tpl_vars['search']; ?>
</div>
								<div class="filter" id="filter_box"><?php echo $this->_tpl_vars['filter']; ?>
</div>
						</div>	
					</td>
					<td style="empty-cells: hide; width: 8px;"></td>
				</tr>
			</tbody>
			</table>
		</div>
	</div>
	<!-- -->
	<div id="content">
		<div id="content_body" style="top: 50px;">
			<center><?php echo $this->_tpl_vars['main']; ?>
</center>
		</div>
	</div>

<?php echo $this->_tpl_vars['status']; ?>


<?php echo '
<style type="text/css">
div > div#top_bar { position: fixed;}
div > div#bottom_bar { position: fixed;}
</style>

'; ?>


<?php endif; ?>