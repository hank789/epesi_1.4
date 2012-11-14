<?php /* Smarty version 2.6.18, created on 2012-11-14 13:32:54
         compiled from Utils/LeightboxPrompt/form.tpl */ ?>
<br>
<?php echo $this->_tpl_vars['form_open']; ?>

<table id="Utils_LeightboxPrompt__form" style="border-spacing:3px;width:70%;" cellpadding="0">
	<tr>
		<th style="width:30%;">
		</th>
		<th style="width:70%;">
		</th>
	</tr>
	<?php $_from = $this->_tpl_vars['form_data']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['e']):
?>
		<?php if (isset ( $this->_tpl_vars['e']['label'] ) && ! is_string ( $this->_tpl_vars['e'] ) && $this->_tpl_vars['e']['type'] != 'hidden' && $this->_tpl_vars['e']['name'] != 'submit' && $this->_tpl_vars['e']['name'] != 'cancel'): ?>
			<tr>
			    <td class="epesi_label" style="width:30%;" nowrap="1">
					<?php echo $this->_tpl_vars['e']['label']; ?>

				</td>
				<td class="epesi_data<?php if ($this->_tpl_vars['e']['type'] == 'static' || $this->_tpl_vars['e']['frozen'] == 1): ?> static_field<?php endif; ?><?php if ($this->_tpl_vars['e']['type'] == 'group'): ?> timestamp<?php endif; ?>" style="width:70%;">
					<div style="position:relative;" id="<?php echo $this->_tpl_vars['e']['name']; ?>
__leightbox_prompt__data_span">
						<?php echo $this->_tpl_vars['e']['error']; ?>

						<?php echo $this->_tpl_vars['e']['html']; ?>

					</div>
				</td>
			</tr>
		<?php endif; ?>
	<?php endforeach; endif; unset($_from); ?>
	<tr  class="Utils_LeightboxPrompt__form_button">
	    <td style="float:right;">
	    	<?php echo $this->_tpl_vars['form_data']['cancel']['html']; ?>

		</td>
		<td style="padding-left:5px;">
			<?php echo $this->_tpl_vars['form_data']['submit']['html']; ?>

		</td>
	</tr>
</table>
<?php echo $this->_tpl_vars['form_close']; ?>