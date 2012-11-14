<?php /* Smarty version 2.6.18, created on 2012-11-14 13:30:08
         compiled from Libs/QuickForm/row.tpl */ ?>
<div style="text-align:left;padding-left:6px;">
<?php echo $this->_tpl_vars['form_open']; ?>


<?php $_from = $this->_tpl_vars['form_data']['header']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['h']):
?>
	<div class="epesi_label header" style="width:700px;">
		<?php echo $this->_tpl_vars['h']; ?>

	</div>
<?php endforeach; endif; unset($_from); ?>
<table style="border-spacing: 3px; width:500px; table-layout:auto;">
	<tr>
		<?php $_from = $this->_tpl_vars['form_data']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['f']):
?>
		<?php if (is_array ( $this->_tpl_vars['f'] ) && isset ( $this->_tpl_vars['f']['type'] ) && $this->_tpl_vars['f']['type'] != 'hidden' && $this->_tpl_vars['f']['type'] != 'button' && $this->_tpl_vars['f']['type'] != 'submit'): ?>
			<td class="epesi_label" style="width: 10px;white-space: nowrap;">
				<?php echo $this->_tpl_vars['f']['label']; ?>
<?php if ($this->_tpl_vars['f']['required']): ?>*<?php endif; ?>
			</td>
			<td class="epesi_data"<?php if ($this->_tpl_vars['f']['type'] == 'checkbox'): ?> style="width: 10px;"<?php endif; ?>>
				<div style="position: relative;">
					<?php echo $this->_tpl_vars['f']['error']; ?>

					<?php echo $this->_tpl_vars['f']['html']; ?>

				</div>
			</td>
		<?php endif; ?>
		<?php endforeach; endif; unset($_from); ?>
		<td colspan="2">
			<center class="child_button">
			<?php $_from = $this->_tpl_vars['form_data']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['f']):
?>
				<?php if (is_array ( $this->_tpl_vars['f'] ) && isset ( $this->_tpl_vars['f']['type'] ) && ( $this->_tpl_vars['f']['type'] == 'button' || $this->_tpl_vars['f']['type'] == 'submit' )): ?>
					<?php echo $this->_tpl_vars['f']['html']; ?>

				<?php endif; ?>
			<?php endforeach; endif; unset($_from); ?>
			</center>
		</td>
	</tr>
</table>


<?php echo $this->_tpl_vars['form_close']; ?>

</div>