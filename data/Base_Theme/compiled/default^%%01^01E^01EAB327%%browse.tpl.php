<?php /* Smarty version 2.6.18, created on 2012-11-14 13:18:19
         compiled from Utils/Attachment/browse.tpl */ ?>
<?php echo $this->_tpl_vars['form_open']; ?>

<div style="white-space: normal;">
<div style="float:right;">
<table class="Utils_Attachment__browse_panel">
	<tr>
		<td class="epesi_label">
			<?php echo $this->_tpl_vars['form_data']['filter_text']['label']; ?>

		</td>
		<td class="epesi_data" style="min-width:80px;">
			<?php echo $this->_tpl_vars['form_data']['filter_text']['html']; ?>

		</td>
	<?php if (isset ( $this->_tpl_vars['form_data']['filter_user']['html'] )): ?>
		<td class="epesi_label">
			<?php echo $this->_tpl_vars['form_data']['filter_user']['label']; ?>

		</td>
		<td class="epesi_data" style="min-width:80px;">
			<?php echo $this->_tpl_vars['form_data']['filter_user']['html']; ?>

		</td>
	<?php endif; ?>
		<td class="epesi_label">
			<?php echo $this->_tpl_vars['form_data']['filter_start']['label']; ?>

		</td>
		<td class="epesi_data">
			<?php echo $this->_tpl_vars['form_data']['filter_start']['html']; ?>

		</td>
		<td class="epesi_label">
			<?php echo $this->_tpl_vars['form_data']['filter_end']['label']; ?>

		</td>
		<td class="epesi_data">
			<?php echo $this->_tpl_vars['form_data']['filter_end']['html']; ?>

		</td>
	<?php if (isset ( $this->_tpl_vars['show_deleted'] )): ?>
		<td class="epesi_label">
			<?php echo $this->_tpl_vars['show_deleted']['label']; ?>

		</td>
		<td class="epesi_data" style="width:25px;nowrap;">
			<input type="checkbox" <?php echo $this->_tpl_vars['show_deleted']['default']; ?>
 onChange="if(this.checked)<?php echo $this->_tpl_vars['show_deleted']['show']; ?>
 else <?php echo $this->_tpl_vars['show_deleted']['hide']; ?>
" />
		</td>
	<?php endif; ?>
		<td class="child_button">
			<?php echo $this->_tpl_vars['form_data']['submit_button']['html']; ?>

		</td>
	</tr>
</table>
</div>
<div style="float:left;">
<table class="Utils_Attachment__browse_panel" style="width:1px;">
	<tr>
		<?php if (isset ( $this->_tpl_vars['new_note'] )): ?>
		<td style="width:110px;">
			<a class="attachment_add_new" <?php echo $this->_tpl_vars['new_note']['href']; ?>
><img src="<?php echo $this->_tpl_vars['theme_dir']; ?>
/Base/ActionBar/icons/add-small.png" />
				<div class="attachment_div_add_new">
					<?php echo $this->_tpl_vars['new_note']['label']; ?>

				</div>
			</a>
		</td>
		<?php endif; ?>
		<?php if (isset ( $this->_tpl_vars['multiple_attachments'] )): ?>
		<td style="width:110px;">
			<?php echo $this->_tpl_vars['multiple_attachments']; ?>

		</td>
		<?php endif; ?>
		<td style="width:110px;" id="<?php echo $this->_tpl_vars['expand_collapse']['e_id']; ?>
">
			<a class="attachment_add_new" <?php echo $this->_tpl_vars['expand_collapse']['e_href']; ?>
><img src="<?php echo $this->_tpl_vars['theme_dir']; ?>
/Base/ActionBar/icons/expand_big.png" />
				<div class="attachment_div_add_new">
					<?php echo $this->_tpl_vars['expand_collapse']['e_label']; ?>

				</div>
			</a>
		</td>
		<td style="width:110px;display:none;" id="<?php echo $this->_tpl_vars['expand_collapse']['c_id']; ?>
">
			<a class="attachment_add_new" <?php echo $this->_tpl_vars['expand_collapse']['c_href']; ?>
><img src="<?php echo $this->_tpl_vars['theme_dir']; ?>
/Base/ActionBar/icons/collapse_big.png" />
				<div class="attachment_div_add_new">
					<?php echo $this->_tpl_vars['expand_collapse']['c_label']; ?>

				</div>
			</a>
		</td>
	<?php if (isset ( $this->_tpl_vars['paste'] )): ?>
		<td style="width:110px;">
			<a class="attachment_add_new" <?php echo $this->_tpl_vars['paste']['href']; ?>
>
				<div class="attachment_div_add_new">
					<?php echo $this->_tpl_vars['paste']['label']; ?>

				</div>
			</a>
		</td>
	<?php endif; ?>
	</tr>
</table>
</div>
</div>
<?php echo $this->_tpl_vars['form_close']; ?>
		