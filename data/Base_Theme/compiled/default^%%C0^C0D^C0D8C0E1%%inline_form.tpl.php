<?php /* Smarty version 2.6.18, created on 2012-11-14 13:18:19
         compiled from Utils/Attachment/inline_form.tpl */ ?>
<table style="width:100%">
	<tr>
		<td width="105px">
			<?php echo $this->_tpl_vars['form']['save']['html']; ?>

		</td>
		<td width="105px">
			<?php echo $this->_tpl_vars['form']['cancel']['html']; ?>

		</td>
		<td colspan="3" align="right">
			<?php echo $this->_tpl_vars['form']['sticky']['label']; ?>

			<?php echo $this->_tpl_vars['form']['sticky']['html']; ?>

			<?php echo $this->_tpl_vars['form']['permission']['label']; ?>

			<?php echo $this->_tpl_vars['form']['permission']['html']; ?>

			<?php echo $this->_tpl_vars['form']['file']['label']; ?>

			<?php echo $this->_tpl_vars['form']['file']['html']; ?>

		</td>
	</tr>
	<tr>
		<td colspan="2" style="width:210px;">
			<?php echo $this->_tpl_vars['form']['save']['error']; ?>

		</td>
		<td>
			<?php echo $this->_tpl_vars['form']['sticky']['error']; ?>

		</td>
		<td>
			<?php echo $this->_tpl_vars['form']['permission']['error']; ?>

		</td>
		<td style="width:330px;">
			<?php echo $this->_tpl_vars['form']['file']['error']; ?>

		</td>
	</tr>
	<tr>
		<td colspan="5">
			<?php echo $this->_tpl_vars['form']['note']['error']; ?>

		</td>
	</tr>
	<tr>
		<td colspan="5">
			<?php echo $this->_tpl_vars['form']['note']['html']; ?>

		</td>
	</tr>
</table>