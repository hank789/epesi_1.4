<?php /* Smarty version 2.6.18, created on 2012-11-14 13:08:25
         compiled from Base/Admin/default.tpl */ ?>
<div style="max-width:930px" id="Base_Admin">
<?php $_from = $this->_tpl_vars['sections']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['sk'] => $this->_tpl_vars['s']):
?>
	<div class="epesi_label header" style="clear:both;"><?php echo $this->_tpl_vars['s']['header']; ?>
</div>
    <div class="buttons_container">
		<?php $_from = $this->_tpl_vars['s']['buttons']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['button']):
?>
			<?php echo $this->_tpl_vars['__link']['sections'][$this->_tpl_vars['sk']]['buttons'][$this->_tpl_vars['key']]['link']['open']; ?>

				<div class="epesi_big_button bigger" style="display: inline-block">
					<?php if (isset ( $this->_tpl_vars['button']['icon'] )): ?>
						<img src="<?php echo $this->_tpl_vars['button']['icon']; ?>
" border="0" width="32" height="32" align="middle">
					<?php endif; ?>
					<span>
						<?php echo $this->_tpl_vars['__link']['sections'][$this->_tpl_vars['sk']]['buttons'][$this->_tpl_vars['key']]['link']['text']; ?>

					</span>
				</div>
			<?php echo $this->_tpl_vars['__link']['sections'][$this->_tpl_vars['sk']]['buttons'][$this->_tpl_vars['key']]['link']['close']; ?>

		<?php endforeach; endif; unset($_from); ?>
	</div>
<?php endforeach; endif; unset($_from); ?>
</div>