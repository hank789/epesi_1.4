<?php /* Smarty version 2.6.18, created on 2012-11-14 13:16:22
         compiled from CRM/Contacts/Photo/Contact.tpl */ ?>
<?php if (isset ( $this->_tpl_vars['form_data']['paste_company_info'] )): ?>
	<?php echo $this->_tpl_vars['form_data']['paste_company_info']['html']; ?>

<?php endif; ?>

<?php $this->assign('count', 0); ?>
<?php 
	$this->_tpl_vars['multiselects'] = array();
 ?>
<?php $_from = $this->_tpl_vars['fields']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['fields'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['fields']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['f']):
        $this->_foreach['fields']['iteration']++;
?>
	<?php if ($this->_tpl_vars['f']['type'] != 'multiselect'): ?>
		<?php $this->assign('count', $this->_tpl_vars['count']+1); ?>
	<?php else: ?>
		<?php 
			$this->_tpl_vars['multiselects'][] = $this->_tpl_vars['f'];
		 ?>
	<?php endif; ?>
<?php endforeach; endif; unset($_from); ?>
<?php 
	if ($this->_tpl_vars['action']!='view')
		$this->_tpl_vars['count'] = $this->_tpl_vars['count']+1;
	$this->_tpl_vars['rows'] = ceil($this->_tpl_vars['count']/$this->_tpl_vars['cols']);
	$this->_tpl_vars['mss_rows'] = ceil(count($this->_tpl_vars['multiselects'])/$this->_tpl_vars['cols']);
	$this->_tpl_vars['no_empty'] = $this->_tpl_vars['count']-floor($this->_tpl_vars['count']/$this->_tpl_vars['cols'])*$this->_tpl_vars['cols'];
	if ($this->_tpl_vars['no_empty']==0) $this->_tpl_vars['no_empty'] = $this->_tpl_vars['cols']+1;
	$this->_tpl_vars['mss_no_empty'] = count($this->_tpl_vars['multiselects'])-floor(count($this->_tpl_vars['multiselects'])/$this->_tpl_vars['cols'])*$this->_tpl_vars['cols'];
	if ($this->_tpl_vars['mss_no_empty']==0) $this->_tpl_vars['mss_no_empty'] = $this->_tpl_vars['cols']+1;
	$this->_tpl_vars['cols_percent'] = 100 / $this->_tpl_vars['cols'];
 ?>

<table class="Utils_RecordBrowser__table" border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td style="width:100px;">
				<div class="name">
					<img alt="&nbsp;" class="icon" src="<?php echo $this->_tpl_vars['icon']; ?>
" width="32" height="32" border="0">
					<div class="label"><?php echo $this->_tpl_vars['caption']; ?>
</div>
				</div>
			</td>
			<td class="required_fav_info">
				&nbsp;*&nbsp;<?php echo $this->_tpl_vars['required_note']; ?>

				<?php if (isset ( $this->_tpl_vars['subscription_tooltip'] )): ?>
					&nbsp;&nbsp;&nbsp;<?php echo $this->_tpl_vars['subscription_tooltip']; ?>

				<?php endif; ?>
				<?php if (isset ( $this->_tpl_vars['fav_tooltip'] )): ?>
					&nbsp;&nbsp;&nbsp;<?php echo $this->_tpl_vars['fav_tooltip']; ?>

				<?php endif; ?>
				<?php if (isset ( $this->_tpl_vars['info_tooltip'] )): ?>
					&nbsp;&nbsp;&nbsp;<?php echo $this->_tpl_vars['info_tooltip']; ?>

				<?php endif; ?>
				<?php if (isset ( $this->_tpl_vars['clipboard_tooltip'] )): ?>
					&nbsp;&nbsp;&nbsp;<?php echo $this->_tpl_vars['clipboard_tooltip']; ?>

				<?php endif; ?>
				<?php if (isset ( $this->_tpl_vars['history_tooltip'] )): ?>
					&nbsp;&nbsp;&nbsp;<?php echo $this->_tpl_vars['history_tooltip']; ?>

				<?php endif; ?>
				<?php $_from = $this->_tpl_vars['new']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['n']):
?>
					&nbsp;&nbsp;&nbsp;<?php echo $this->_tpl_vars['n']; ?>

				<?php endforeach; endif; unset($_from); ?>
			</td>
		</tr>
	</tbody>
</table>

<?php if (isset ( $this->_tpl_vars['click2fill'] )): ?>
    <?php echo $this->_tpl_vars['click2fill']; ?>

<?php endif; ?>


<!-- SHADOW BEGIN -->
	<div class="layer" style="padding: 9px; width: 98%;">
		<div class="css3_content_shadow">
<!-- -->

<div class="Utils_RecordBrowser__container">

<table class="Utils_RecordBrowser__View_entry" cellpadding="0" cellspacing="0" border="0">
	<tbody>
		<tr>
			<td class="left-column">
				<table border="0" cellpadding="0" cellspacing="0" class="<?php if ($this->_tpl_vars['action'] == 'view'): ?>view<?php else: ?>edit<?php endif; ?>">
					<tbody>
												<?php if (isset ( $this->_tpl_vars['form_data']['create_company'] )): ?>
						<tr>
							<td class="label" nowrap>
								<?php echo $this->_tpl_vars['form_data']['create_company']['label']; ?>

							</td>
							<td class="create-company" style="width:20px">
								<?php echo $this->_tpl_vars['form_data']['create_company']['html']; ?>
<?php if ($this->_tpl_vars['action'] == 'view'): ?>&nbsp;<?php endif; ?>
							</td>
							<td class="data">
								<div style="position:relative;">
									<?php if (isset ( $this->_tpl_vars['form_data']['create_company_name']['error'] )): ?><?php echo $this->_tpl_vars['form_data']['create_company_name']['error']; ?>
<?php endif; ?><?php echo $this->_tpl_vars['form_data']['create_company_name']['html']; ?>
<?php if ($this->_tpl_vars['action'] == 'view'): ?>&nbsp;<?php endif; ?>
								</div>
							</td>
						</tr>
						<?php else: ?>
							<?php if ($this->_tpl_vars['action'] == 'edit'): ?>
															<?php endif; ?>
						<?php endif; ?>
						<?php $this->assign('x', 1); ?>
						<?php if ($this->_tpl_vars['action'] == 'view'): ?>
							<?php $this->assign('y', 1); ?>
						<?php else: ?>
							<?php $this->assign('y', 2); ?>
						<?php endif; ?>
						<?php $_from = $this->_tpl_vars['fields']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['fields'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['fields']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['f']):
        $this->_foreach['fields']['iteration']++;
?>
							<?php if ($this->_tpl_vars['f']['type'] != 'multiselect' && $this->_tpl_vars['f']['element'] != 'login'): ?>
								<?php if (! isset ( $this->_tpl_vars['focus'] ) && $this->_tpl_vars['f']['type'] == 'text'): ?>
									<?php $this->assign('focus', $this->_tpl_vars['f']['element']); ?>
								<?php endif; ?>

								<?php if ($this->_tpl_vars['y'] == 1 && $this->_tpl_vars['x'] == 2): ?>
								<td class="column" <?php if ($this->_tpl_vars['action'] == 'view'): ?>style="width: 43%;"<?php else: ?>style="width: 50%;" colspan="2"<?php endif; ?>>
									<table cellpadding="0" cellspacing="0" border="0" class="<?php if ($this->_tpl_vars['action'] == 'view'): ?>view<?php else: ?>edit<?php endif; ?>">
								<?php endif; ?>
										<tr>
											<td class="label"><?php echo $this->_tpl_vars['f']['label']; ?>
<?php if ($this->_tpl_vars['f']['required']): ?>*<?php endif; ?></td>
											<td colspan="2" class="data <?php echo $this->_tpl_vars['f']['style']; ?>
" id="_<?php echo $this->_tpl_vars['f']['element']; ?>
__data">
												<div style="position:relative;">
													<?php if ($this->_tpl_vars['f']['error']): ?><?php echo $this->_tpl_vars['f']['error']; ?>
<?php endif; ?><?php echo $this->_tpl_vars['f']['html']; ?>
<?php if ($this->_tpl_vars['action'] == 'view'): ?>&nbsp;<?php endif; ?>
												</div>
											</td>
										</tr>
								<?php if ($this->_tpl_vars['y'] == $this->_tpl_vars['rows'] || ( $this->_tpl_vars['y'] == $this->_tpl_vars['rows']-1 && $this->_tpl_vars['x'] > $this->_tpl_vars['no_empty'] )): ?>
									<?php if ($this->_tpl_vars['x'] > $this->_tpl_vars['no_empty']): ?>
										<tr style="display:none;">
											<td class="label">&nbsp;</td>
											<td colspan="2" class="data">&nbsp;</td>
										</tr>
									<?php endif; ?>
									<?php $this->assign('y', 1); ?>
									<?php $this->assign('x', $this->_tpl_vars['x']+1); ?>
									</table>
								</td>
								<?php else: ?>
									<?php $this->assign('y', $this->_tpl_vars['y']+1); ?>
								<?php endif; ?>
							<?php endif; ?>
						<?php endforeach; endif; unset($_from); ?>
			<?php if ($this->_tpl_vars['action'] == 'view'): ?>
			<td style="width:128px;vertical-align:top;">
				<a class="photo" <?php echo $this->_tpl_vars['photo_link']; ?>
>
					<img  class="shadow_5px_left" src="<?php echo $this->_tpl_vars['photo_src']; ?>
" >
					<?php if (isset ( $this->_tpl_vars['photo_note'] )): ?>
						<div class="photo_note">
							<?php echo $this->_tpl_vars['photo_note']; ?>

						</div>
					<?php endif; ?>
					<div class="overlay">
					</div>
				</a>
			</td>
			<?php endif; ?>
		</tr>
		<?php if (! empty ( $this->_tpl_vars['multiselects'] )): ?>
			<tr>
				<?php $this->assign('x', 1); ?>
				<?php $this->assign('y', 1); ?>
				<?php $_from = $this->_tpl_vars['multiselects']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['fields'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['fields']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['f']):
        $this->_foreach['fields']['iteration']++;
?>
					<?php if ($this->_tpl_vars['y'] == 1): ?>
					<td class="column" style="width: <?php echo $this->_tpl_vars['cols_percent']; ?>
%;" <?php if ($this->_tpl_vars['x'] == 2): ?>colspan="2"<?php endif; ?>>
						<table cellpadding="0" cellspacing="0" border="0" class="multiselects <?php if ($this->_tpl_vars['action'] == 'view'): ?>view<?php else: ?>edit<?php endif; ?>" style="border-top: none;">
					<?php endif; ?>
							<tr>
								<td class="label"><?php echo $this->_tpl_vars['f']['label']; ?>
<?php if ($this->_tpl_vars['f']['required']): ?>*<?php endif; ?><?php echo $this->_tpl_vars['f']['advanced']; ?>
</td>
								<td class="data <?php echo $this->_tpl_vars['f']['style']; ?>
" id="_<?php echo $this->_tpl_vars['f']['element']; ?>
__data">
									<div style="position:relative;">
										<?php if (isset ( $this->_tpl_vars['f']['error'] )): ?><?php echo $this->_tpl_vars['f']['error']; ?>
<?php endif; ?><?php echo $this->_tpl_vars['f']['html']; ?>
<?php if ($this->_tpl_vars['action'] == 'view'): ?>&nbsp;<?php endif; ?>
									</div>
								</td>
							</tr>
					<?php if ($this->_tpl_vars['y'] == $this->_tpl_vars['mss_rows'] || ( $this->_tpl_vars['y'] == $this->_tpl_vars['mss_rows']-1 && $this->_tpl_vars['x'] > $this->_tpl_vars['mss_no_empty'] )): ?>
						<?php if ($this->_tpl_vars['x'] > $this->_tpl_vars['mss_no_empty']): ?>
							<tr>
								<td class="label">&nbsp;</td>
								<td class="data">&nbsp;</td>
							</tr>
						<?php endif; ?>
						<?php $this->assign('y', 1); ?>
						<?php $this->assign('x', $this->_tpl_vars['x']+1); ?>
						</table>
					</td>
					<?php else: ?>
						<?php $this->assign('y', $this->_tpl_vars['y']+1); ?>
					<?php endif; ?>
				<?php endforeach; endif; unset($_from); ?>
			</tr>
		<?php endif; ?>
		<tr>
			<td colspan="3">
			<table cellpadding="0" cellspacing="0" border="0" class="longfields <?php if ($this->_tpl_vars['action'] == 'view'): ?>view<?php else: ?>edit<?php endif; ?>" style="border-top: none;">
				<?php $_from = $this->_tpl_vars['longfields']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['fields'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['fields']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['f']):
        $this->_foreach['fields']['iteration']++;
?>
					<tr>
						<td class="label long_label"><?php echo $this->_tpl_vars['f']['label']; ?>
<?php if ($this->_tpl_vars['f']['required']): ?>*<?php endif; ?></td>
						<td class="data long_data <?php if ($this->_tpl_vars['f']['type'] == 'currency'): ?>currency<?php endif; ?>" id="_<?php echo $this->_tpl_vars['f']['element']; ?>
__data">
							<div style="position:relative;">
								<?php if ($this->_tpl_vars['f']['error']): ?><?php echo $this->_tpl_vars['f']['error']; ?>
<?php endif; ?><?php echo $this->_tpl_vars['f']['html']; ?>
<?php if ($this->_tpl_vars['action'] == 'view'): ?>&nbsp;<?php endif; ?>
							</div>
						</td>
					</tr>
				<?php endforeach; endif; unset($_from); ?>
			</table>
			</td>
		</tr>
	</tbody>
</table>


<?php 
	eval_js('focus_by_id(\'last_name\');');
 ?>


</div>
 		</div>
	</div>