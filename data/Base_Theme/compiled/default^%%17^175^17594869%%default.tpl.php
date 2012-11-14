<?php /* Smarty version 2.6.18, created on 2012-11-14 13:08:31
         compiled from Base/Setup/default.tpl */ ?>
<?php 
	eval_js('var base_setup__last_filter;');
	eval_js('base_setup__preprocess_filter = base_setup__last_filter;');
	eval_js('base_setup__last_filter = "";');
	load_js($this->get_template_vars('theme_dir').'/Base/Setup/default.js');
	eval_js('if(base_setup__preprocess_filter!=null)base_setup__filter_by(base_setup__preprocess_filter);');
 ?>

<div class="Base_Setup">
	<div class="filters">
		<?php $_from = $this->_tpl_vars['filters']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['label'] => $this->_tpl_vars['attr']):
?>
			<div id="Base_Setup__filter_<?php echo $this->_tpl_vars['attr']['arg']; ?>
" <?php if (! $this->_tpl_vars['attr']['arg']): ?>class="selected"<?php endif; ?> <?php if (isset ( $this->_tpl_vars['attr']['attrs'] )): ?><?php echo $this->_tpl_vars['attr']['attrs']; ?>
<?php endif; ?> onclick="base_setup__filter_by('<?php echo $this->_tpl_vars['attr']['arg']; ?>
');"><?php echo $this->_tpl_vars['label']; ?>
</div>
		<?php endforeach; endif; unset($_from); ?>
	</div>
	
	<div id="Base_Setup">
		<?php $_from = $this->_tpl_vars['packages']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['name'] => $this->_tpl_vars['package']):
?>
			<div class="big-button" style="position:relative;"<?php $_from = $this->_tpl_vars['package']['filter']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['f']):
?> <?php echo $this->_tpl_vars['f']; ?>
="1"<?php endforeach; endif; unset($_from); ?>>
				<?php if ($this->_tpl_vars['package']['url']): ?>
					<a href="javascript:void(0);" onclick="base_setup__package_description('<?php echo $this->_tpl_vars['package']['url']; ?>
','<?php echo $this->_tpl_vars['package']['name']; ?>
');">
				<?php endif; ?>
					<div class="package_label">
						<?php echo $this->_tpl_vars['package']['name']; ?>

					</div>
					<?php if ($this->_tpl_vars['package']['icon']): ?>
						<img class="package_icon" src="<?php echo $this->_tpl_vars['package']['icon']; ?>
">
					<?php endif; ?>
				<?php if ($this->_tpl_vars['package']['url']): ?>
					</a>
				<?php endif; ?>
				<?php if ($this->_tpl_vars['package']['version']): ?>
					<div class="version">
						<?php echo $this->_tpl_vars['version_label']; ?>
<?php echo $this->_tpl_vars['package']['version']; ?>

					</div>
				<?php endif; ?>
				<div class="actions">
					<div id="show_actions_<?php echo $this->_tpl_vars['name']; ?>
" <?php echo $this->_tpl_vars['package']['buttons_tooltip']; ?>
 class="action <?php echo $this->_tpl_vars['package']['style']; ?>
" onclick="base_setup__show_actions('<?php echo $this->_tpl_vars['name']; ?>
');">
						<?php echo $this->_tpl_vars['package']['status']; ?>
<?php if (! empty ( $this->_tpl_vars['package']['buttons'] )): ?><img src="<?php echo $this->_tpl_vars['theme_dir']; ?>
/Base/Setup/config.png"><?php endif; ?>
					</div>
				<?php if (! empty ( $this->_tpl_vars['package']['buttons'] )): ?>
					<div class="action" id="hide_actions_<?php echo $this->_tpl_vars['name']; ?>
" style="position: absolute; top:0px; left:12px; z-index: 5; display:none;">
						<div class="subaction <?php echo $this->_tpl_vars['package']['style']; ?>
" onclick="base_setup__hide_actions('<?php echo $this->_tpl_vars['name']; ?>
');">
							<?php echo $this->_tpl_vars['package']['status']; ?>
<img src="<?php echo $this->_tpl_vars['theme_dir']; ?>
/Base/Setup/config-up.png">
						</div>
						<?php $_from = $this->_tpl_vars['package']['buttons']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['button']):
?>
							<div <?php echo $this->_tpl_vars['button']['href']; ?>
 class="subaction <?php echo $this->_tpl_vars['button']['style']; ?>
">
								<?php echo $this->_tpl_vars['button']['label']; ?>

							</div>
						<?php endforeach; endif; unset($_from); ?>
					</div>
				<?php endif; ?>
				<?php if (! empty ( $this->_tpl_vars['package']['options'] )): ?>
					<div id="show_options_<?php echo $this->_tpl_vars['name']; ?>
" class="action toggle_options" onclick="base_setup__show_options('<?php echo $this->_tpl_vars['name']; ?>
');">
						<?php echo $this->_tpl_vars['labels']['options']; ?>
<img src="<?php echo $this->_tpl_vars['theme_dir']; ?>
/Base/Setup/config.png">
					</div>
					<div id="hide_options_<?php echo $this->_tpl_vars['name']; ?>
" class="action toggle_options" onclick="base_setup__hide_options('<?php echo $this->_tpl_vars['name']; ?>
');" style="display:none;">
						<?php echo $this->_tpl_vars['labels']['options']; ?>
<img src="<?php echo $this->_tpl_vars['theme_dir']; ?>
/Base/Setup/config-up.png">
					</div>
				<?php endif; ?>
				</div>
				<div class="package_icon" style="display:none;">
					<img src="<?php echo $this->_tpl_vars['package']['icon']; ?>
" border="1">
				</div>
				<?php if (! empty ( $this->_tpl_vars['package']['options'] )): ?>
					<div class="options" id="options_<?php echo $this->_tpl_vars['name']; ?>
" style="display:none;">
						<div class="options_cover" style="width:100%; height: 5px;"></div>
						<?php $_from = $this->_tpl_vars['package']['options']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['option'] => $this->_tpl_vars['action']):
?>
							<div class="option_spacer"></div>
							<div class="option">
								<div class="option_action">
									<div id="show_actions_button_<?php echo $this->_tpl_vars['name']; ?>
__<?php echo $this->_tpl_vars['option']; ?>
" class="action <?php echo $this->_tpl_vars['action']['style']; ?>
" onclick="base_setup__show_actions('<?php echo $this->_tpl_vars['name']; ?>
','<?php echo $this->_tpl_vars['option']; ?>
');">
										<?php echo $this->_tpl_vars['action']['status']; ?>
<?php if (! empty ( $this->_tpl_vars['action']['buttons'] )): ?><img src="<?php echo $this->_tpl_vars['theme_dir']; ?>
/Base/Setup/config.png"><?php endif; ?>
									</div>
									<?php if (! empty ( $this->_tpl_vars['action']['buttons'] )): ?>
										<div id="hide_actions_button_<?php echo $this->_tpl_vars['name']; ?>
__<?php echo $this->_tpl_vars['option']; ?>
" class="action <?php echo $this->_tpl_vars['action']['style']; ?>
" onclick="base_setup__hide_actions('<?php echo $this->_tpl_vars['name']; ?>
','<?php echo $this->_tpl_vars['option']; ?>
');" style="display: none;">
											<?php echo $this->_tpl_vars['action']['status']; ?>
<img src="<?php echo $this->_tpl_vars['theme_dir']; ?>
/Base/Setup/config-up.png">
										</div>
									<?php endif; ?>
								</div>
								<div class="option_label">
									<?php echo $this->_tpl_vars['action']['name']; ?>

								</div>
							</div>
							<?php if (! empty ( $this->_tpl_vars['action']['buttons'] )): ?>
								<div class="actions" id="hide_actions_<?php echo $this->_tpl_vars['name']; ?>
__<?php echo $this->_tpl_vars['option']; ?>
" style="display:none;">
									<?php $_from = $this->_tpl_vars['action']['buttons']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['button']):
?>
										<div <?php echo $this->_tpl_vars['button']['href']; ?>
 class="action <?php echo $this->_tpl_vars['button']['style']; ?>
" onclick="Effect.Fade($('hide_actions_<?php echo $this->_tpl_vars['name']; ?>
'), <?php echo '{duration:0.4}'; ?>
);">
											<?php echo $this->_tpl_vars['button']['label']; ?>

										</div>
									<?php endforeach; endif; unset($_from); ?>
								</div>
							<?php endif; ?>
						<?php endforeach; endif; unset($_from); ?>
						<!-- force space underneath options -->
						<div style="height: 1px;width: 1px;position: absolute;bottom: -40px;"></div>
					</div>
				<?php endif; ?>
			</div>
		<?php endforeach; endif; unset($_from); ?>
	</div>

</div>