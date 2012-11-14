<?php /* Smarty version 2.6.18, created on 2012-11-14 13:32:14
         compiled from Utils/RecordBrowser/edit_permissions.tpl */ ?>
<?php echo $this->_tpl_vars['form_open']; ?>


<div style="width:98%; text-align:left;" class="epesi_grey_board RecordBrowser__edit_permissions">
	<div class="epesi_caption">
		<?php echo $this->_tpl_vars['labels']['caption']; ?>

	</div>
	
	<table>
		<tr>
			<td class="epesi_label" style="width:20%;">
				<?php echo $this->_tpl_vars['form_data']['action']['label']; ?>

			</td>
			<td class="epesi_data" style="width:80%;">
				<?php echo $this->_tpl_vars['form_data']['action']['html']; ?>

			</td>
		</tr>
		<tr>
			<td class="epesi_label">
				<?php echo $this->_tpl_vars['labels']['clearance']; ?>

			</td>
			<td class="epesi_data static_field">
				<?php unset($this->_sections['it']);
$this->_sections['it']['name'] = 'it';
$this->_sections['it']['loop'] = is_array($_loop=$this->_tpl_vars['counts']['clearance']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['it']['show'] = true;
$this->_sections['it']['max'] = $this->_sections['it']['loop'];
$this->_sections['it']['step'] = 1;
$this->_sections['it']['start'] = $this->_sections['it']['step'] > 0 ? 0 : $this->_sections['it']['loop']-1;
if ($this->_sections['it']['show']) {
    $this->_sections['it']['total'] = $this->_sections['it']['loop'];
    if ($this->_sections['it']['total'] == 0)
        $this->_sections['it']['show'] = false;
} else
    $this->_sections['it']['total'] = 0;
if ($this->_sections['it']['show']):

            for ($this->_sections['it']['index'] = $this->_sections['it']['start'], $this->_sections['it']['iteration'] = 1;
                 $this->_sections['it']['iteration'] <= $this->_sections['it']['total'];
                 $this->_sections['it']['index'] += $this->_sections['it']['step'], $this->_sections['it']['iteration']++):
$this->_sections['it']['rownum'] = $this->_sections['it']['iteration'];
$this->_sections['it']['index_prev'] = $this->_sections['it']['index'] - $this->_sections['it']['step'];
$this->_sections['it']['index_next'] = $this->_sections['it']['index'] + $this->_sections['it']['step'];
$this->_sections['it']['first']      = ($this->_sections['it']['iteration'] == 1);
$this->_sections['it']['last']       = ($this->_sections['it']['iteration'] == $this->_sections['it']['total']);
?> 
					<?php $this->assign('i', $this->_sections['it']['iteration']-1); ?> 
					<?php $this->assign('j', "clearance_".($this->_tpl_vars['i'])); ?> 
					<span id="div_<?php echo $this->_tpl_vars['j']; ?>
">
						<?php if ($this->_tpl_vars['i'] != 0): ?>
							<?php echo $this->_tpl_vars['labels']['and']; ?>

						<?php endif; ?>
						<?php echo $this->_tpl_vars['form_data'][$this->_tpl_vars['j']]['html']; ?>

					</span>
				<?php endfor; endif; ?>
				<div id="add_clearance" style="display: inline-block;" class="button" onclick="utils_recordbrowser__add_clearance();"><?php echo $this->_tpl_vars['labels']['add_clearance']; ?>
</div>
			</td>
		</tr>
		<tr>
			<td class="epesi_label">
				<?php echo $this->_tpl_vars['labels']['crits']; ?>

			</td>
			<td class="epesi_data static_field RecordBrowser__edit_permissions_crits">
				<?php unset($this->_sections['it']);
$this->_sections['it']['name'] = 'it';
$this->_sections['it']['loop'] = is_array($_loop=$this->_tpl_vars['counts']['ands']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['it']['show'] = true;
$this->_sections['it']['max'] = $this->_sections['it']['loop'];
$this->_sections['it']['step'] = 1;
$this->_sections['it']['start'] = $this->_sections['it']['step'] > 0 ? 0 : $this->_sections['it']['loop']-1;
if ($this->_sections['it']['show']) {
    $this->_sections['it']['total'] = $this->_sections['it']['loop'];
    if ($this->_sections['it']['total'] == 0)
        $this->_sections['it']['show'] = false;
} else
    $this->_sections['it']['total'] = 0;
if ($this->_sections['it']['show']):

            for ($this->_sections['it']['index'] = $this->_sections['it']['start'], $this->_sections['it']['iteration'] = 1;
                 $this->_sections['it']['iteration'] <= $this->_sections['it']['total'];
                 $this->_sections['it']['index'] += $this->_sections['it']['step'], $this->_sections['it']['iteration']++):
$this->_sections['it']['rownum'] = $this->_sections['it']['iteration'];
$this->_sections['it']['index_prev'] = $this->_sections['it']['index'] - $this->_sections['it']['step'];
$this->_sections['it']['index_next'] = $this->_sections['it']['index'] + $this->_sections['it']['step'];
$this->_sections['it']['first']      = ($this->_sections['it']['iteration'] == 1);
$this->_sections['it']['last']       = ($this->_sections['it']['iteration'] == $this->_sections['it']['total']);
?>
					<?php $this->assign('i', $this->_sections['it']['iteration']-1); ?> 
					<div style="white-space:nowrap;" id="div_crits_row_<?php echo $this->_tpl_vars['i']; ?>
">
						<?php if ($this->_tpl_vars['i'] != 0): ?>
							<?php echo $this->_tpl_vars['labels']['and']; ?>

						<?php else: ?>
							<span style="display:inline-block;width:30px;"></span>
						<?php endif; ?>
						<?php unset($this->_sections['jt']);
$this->_sections['jt']['name'] = 'jt';
$this->_sections['jt']['loop'] = is_array($_loop=$this->_tpl_vars['counts']['ors']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['jt']['show'] = true;
$this->_sections['jt']['max'] = $this->_sections['jt']['loop'];
$this->_sections['jt']['step'] = 1;
$this->_sections['jt']['start'] = $this->_sections['jt']['step'] > 0 ? 0 : $this->_sections['jt']['loop']-1;
if ($this->_sections['jt']['show']) {
    $this->_sections['jt']['total'] = $this->_sections['jt']['loop'];
    if ($this->_sections['jt']['total'] == 0)
        $this->_sections['jt']['show'] = false;
} else
    $this->_sections['jt']['total'] = 0;
if ($this->_sections['jt']['show']):

            for ($this->_sections['jt']['index'] = $this->_sections['jt']['start'], $this->_sections['jt']['iteration'] = 1;
                 $this->_sections['jt']['iteration'] <= $this->_sections['jt']['total'];
                 $this->_sections['jt']['index'] += $this->_sections['jt']['step'], $this->_sections['jt']['iteration']++):
$this->_sections['jt']['rownum'] = $this->_sections['jt']['iteration'];
$this->_sections['jt']['index_prev'] = $this->_sections['jt']['index'] - $this->_sections['jt']['step'];
$this->_sections['jt']['index_next'] = $this->_sections['jt']['index'] + $this->_sections['jt']['step'];
$this->_sections['jt']['first']      = ($this->_sections['jt']['iteration'] == 1);
$this->_sections['jt']['last']       = ($this->_sections['jt']['iteration'] == $this->_sections['jt']['total']);
?> 
							<?php $this->assign('j', $this->_sections['jt']['iteration']-1); ?> 
							<span id="div_crits_or_<?php echo $this->_tpl_vars['i']; ?>
_<?php echo $this->_tpl_vars['j']; ?>
">
								
								<?php if ($this->_tpl_vars['j'] != 0): ?>
									<?php echo $this->_tpl_vars['labels']['or']; ?>

								<?php endif; ?>
								
								<?php $this->assign('u', '_'); ?> 
								<?php $this->assign('field', '_field'); ?> 
								<?php $this->assign('field', "crits_".($this->_tpl_vars['i']).($this->_tpl_vars['u']).($this->_tpl_vars['j']).($this->_tpl_vars['field'])); ?> 
								<?php $this->assign('op', '_op'); ?> 
								<?php $this->assign('op', "crits_".($this->_tpl_vars['i']).($this->_tpl_vars['u']).($this->_tpl_vars['j']).($this->_tpl_vars['op'])); ?> 
								<?php $this->assign('value', '_value'); ?> 
								<?php $this->assign('value', "crits_".($this->_tpl_vars['i']).($this->_tpl_vars['u']).($this->_tpl_vars['j']).($this->_tpl_vars['value'])); ?> 
								<?php $this->assign('sub_value', '_sub_value'); ?> 
								<?php $this->assign('sub_value', "crits_".($this->_tpl_vars['i']).($this->_tpl_vars['u']).($this->_tpl_vars['j']).($this->_tpl_vars['sub_value'])); ?> 

								<?php echo $this->_tpl_vars['form_data'][$this->_tpl_vars['field']]['html']; ?>
<?php echo $this->_tpl_vars['form_data'][$this->_tpl_vars['op']]['html']; ?>
<?php echo $this->_tpl_vars['form_data'][$this->_tpl_vars['value']]['html']; ?>
<?php echo $this->_tpl_vars['form_data'][$this->_tpl_vars['sub_value']]['html']; ?>

							</span>
						<?php endfor; endif; ?>
						<div id="add_or_<?php echo $this->_tpl_vars['i']; ?>
" class="button" style="display:inline-block;" onclick="utils_recordbrowser__add_or(<?php echo $this->_tpl_vars['i']; ?>
);"><?php echo $this->_tpl_vars['labels']['add_or']; ?>
</div>
					</div>
				<?php endfor; endif; ?>
				<div id="add_and" class="button" onclick="utils_recordbrowser__add_and();"><?php echo $this->_tpl_vars['labels']['add_and']; ?>
</div>
			</td>
		</tr>
		<tr>
			<td class="epesi_label">
				<?php echo $this->_tpl_vars['labels']['fields']; ?>

			</td>
			<td colspan="2" class="epesi_data static_field">
				<?php $_from = $this->_tpl_vars['fields']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['f'] => $this->_tpl_vars['v']):
?>
					<?php $this->assign('f', "field_".($this->_tpl_vars['f'])); ?> 
					<div class="field"><?php echo $this->_tpl_vars['form_data'][$this->_tpl_vars['f']]['html']; ?>
<?php echo $this->_tpl_vars['form_data'][$this->_tpl_vars['f']]['label']; ?>
</div>
				<?php endforeach; endif; unset($_from); ?>
			</td>
		</tr>
	</table>

</div>

<?php echo $this->_tpl_vars['form_close']; ?>
