<?php /* Smarty version 2.6.18, created on 2012-11-14 13:16:10
         compiled from Apps/ActivityReport/default.tpl */ ?>
<?php echo $this->_tpl_vars['form_open']; ?>


<div class="epesi_grey_board" style="width:850px;">
<table id="Apps_ActivityReport">
	<tr>
		<td class="epesi_label top" style="width:400px;">
			<?php echo $this->_tpl_vars['form_data']['recordsets']['label']; ?>

		</td>
		<td class="epesi_label" style="width:150px;">
			<?php echo $this->_tpl_vars['form_data']['user']['label']; ?>

		</td>
		<td class="epesi_data" colspan="3" style="width:250px;">
			<?php echo $this->_tpl_vars['form_data']['user']['html']; ?>

		</td>
	</tr>
	<tr>
		<td class="epesi_data multiselect" rowspan="5">
			<?php echo $this->_tpl_vars['form_data']['recordsets']['html']; ?>

		</td>
		<td class="epesi_label">
			<?php echo $this->_tpl_vars['form_data']['start_date']['label']; ?>

		</td>
		<td class="epesi_data" colspan="3">
			<?php echo $this->_tpl_vars['form_data']['start_date']['html']; ?>

		</td>
	</tr>
	<tr>
		<td class="epesi_label">
			<?php echo $this->_tpl_vars['form_data']['end_date']['label']; ?>

		</td>
		<td class="epesi_data" colspan="3">
			<?php echo $this->_tpl_vars['form_data']['end_date']['html']; ?>

		</td>
	</tr>
	<tr>
		<td class="epesi_label">
			<?php echo $this->_tpl_vars['form_data']['new']['label']; ?>

		</td>
		<td class="epesi_data">
			<?php echo $this->_tpl_vars['form_data']['new']['html']; ?>

		</td>
		<td class="epesi_label">
			<?php echo $this->_tpl_vars['form_data']['note']['label']; ?>

		</td>
		<td class="epesi_data">
			<?php echo $this->_tpl_vars['form_data']['note']['html']; ?>

		</td>
	</tr>
	<tr>
		<td class="epesi_label">
			<?php echo $this->_tpl_vars['form_data']['edit']['label']; ?>

		</td>
		<td class="epesi_data">
			<?php echo $this->_tpl_vars['form_data']['edit']['html']; ?>

		</td>
		<td class="epesi_label">
			<?php echo $this->_tpl_vars['form_data']['file']['label']; ?>

		</td>
		<td class="epesi_data">
			<?php echo $this->_tpl_vars['form_data']['file']['html']; ?>

		</td>
	</tr>
	<tr>
		<td class="epesi_label">
			<?php echo $this->_tpl_vars['form_data']['delete_restore']['label']; ?>

		</td>
		<td class="epesi_data">
			<?php echo $this->_tpl_vars['form_data']['delete_restore']['html']; ?>

		</td>
		<td colspan="2">
		</td>
	</tr>
</table>
</div>
<br>
<?php echo $this->_tpl_vars['form_close']; ?>
