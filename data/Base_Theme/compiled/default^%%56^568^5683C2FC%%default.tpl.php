<?php /* Smarty version 2.6.18, created on 2012-11-14 13:14:31
         compiled from Base/User/Settings/default.tpl */ ?>
<table id="Base_User_Settings" cellspacing="0" cellpadding="0">
	<tr>
		<td colspan="4" class="epesi_label header"><?php echo $this->_tpl_vars['header']; ?>
</td>
	</tr>
	<?php $this->assign('x', 0); ?>
	<?php $_from = $this->_tpl_vars['buttons']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['button']):
?>
	<?php $this->assign('x', $this->_tpl_vars['x']+1); ?>
		<td>
			<div>
			<?php echo $this->_tpl_vars['__link']['buttons'][$this->_tpl_vars['key']]['link']['open']; ?>

			<div class="epesi_big_button bigger">
				<?php if (isset ( $this->_tpl_vars['button']['icon'] )): ?>
					<img src="<?php echo $this->_tpl_vars['button']['icon']; ?>
" border="0" width="32" height="32" align="middle">
				<?php endif; ?>
				<span>
					<?php echo $this->_tpl_vars['__link']['buttons'][$this->_tpl_vars['key']]['link']['text']; ?>

				</span>
			</div>
			<?php echo $this->_tpl_vars['__link']['buttons'][$this->_tpl_vars['key']]['link']['close']; ?>

			</div>
		</td>
		<!-- $key holds name of the module -->
	<?php if (( $this->_tpl_vars['x']%4 ) == 0): ?>
	<tr>
	<?php endif; ?>
	<?php endforeach; endif; unset($_from); ?>
	</tr>
</table>