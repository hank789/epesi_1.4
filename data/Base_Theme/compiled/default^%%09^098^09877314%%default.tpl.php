<?php /* Smarty version 2.6.18, created on 2012-11-14 13:08:09
         compiled from Utils/GenericBrowser/default.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'html_table_epesi', 'Utils/GenericBrowser/default.tpl', 91, false),)), $this); ?>
<?php 
	load_js($this->get_template_vars('theme_dir').'/Utils/GenericBrowser/default.js');
 ?>

<div>

<?php if (( isset ( $this->_tpl_vars['custom_label'] ) && $this->_tpl_vars['custom_label'] ) || isset ( $this->_tpl_vars['letter_links'] ) || isset ( $this->_tpl_vars['form_data_search'] )): ?>
<table class="letters-search nonselectable" border="0" cellpadding="0" cellspacing="0" style="table-layout:auto;">
	<tbody>
		<tr>
			<!-- Custom label -->
			<?php if (( isset ( $this->_tpl_vars['custom_label'] ) && $this->_tpl_vars['custom_label'] )): ?>
				<td class="letter_search_icon" <?php echo $this->_tpl_vars['custom_label_args']; ?>
 style="width:1px;">
				<nobr><?php echo $this->_tpl_vars['custom_label']; ?>
</nobr>
				</td>
			<?php endif; ?>
			<!-- QuickJump -->
			<?php if (isset ( $this->_tpl_vars['letter_links'] )): ?>
				<td class="letters" style="width:1px;">
					<div class="abc" onclick="quick_jump_letters('<?php echo $this->_tpl_vars['id']; ?>
');">ABC</div>
					<div id="quick_jump_letters_<?php echo $this->_tpl_vars['id']; ?>
" class="quick_jump_letters" 
						<?php if ($this->_tpl_vars['quickjump_to'] == ''): ?> 
							style="display: none;"
						<?php endif; ?>
						>
						<div class="css3_content_shadow GenericBrowser_letters">
								<?php if (isset ( $this->_tpl_vars['letter_links'] )): ?>
								<?php $_from = $this->_tpl_vars['letter_links']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['link']):
?>
								<?php echo $this->_tpl_vars['link']; ?>

								<?php endforeach; endif; unset($_from); ?>
								<?php endif; ?>
						</div>
					</div>
				</td>
			<?php endif; ?>
			<td>
				&nbsp;
			</td>
			<!-- Advanced / Simple Search -->
			<?php if (isset ( $this->_tpl_vars['form_data_search'] )): ?>
				<td style="width:470px;">
					<?php echo $this->_tpl_vars['form_data_search']['javascript']; ?>


					<form <?php echo $this->_tpl_vars['form_data_search']['attributes']; ?>
>
					<?php echo $this->_tpl_vars['form_data_search']['hidden']; ?>

					<?php if (isset ( $this->_tpl_vars['form_data_search']['search'] )): ?>
						<span class="advanced" style="float:right;"><?php echo $this->_tpl_vars['adv_search']; ?>
</span>
						<span class="submit" style="float:right;"><?php echo $this->_tpl_vars['form_data_search']['submit_search']['html']; ?>
</span>
						<span class="search-box" style="float:right;"><?php echo $this->_tpl_vars['form_data_search']['search']['html']; ?>
</span>
						<?php if (isset ( $this->_tpl_vars['form_data_search']['show_all'] )): ?>
							<span class="submit" style="float:right;"><?php echo $this->_tpl_vars['form_data_search']['show_all']['html']; ?>
</span>
						<?php endif; ?>
					<?php else: ?>
						<?php 
							$cols = $this->get_template_vars('cols');
							$search_fields = $this->get_template_vars('search_fields');
							foreach($cols as $k=>$v){
								if(isset($search_fields[$k]))
									$cols[$k]['label'] = $cols[$k]['label'].$search_fields[$k];
							}
							$this->assign('cols',$cols);
						 ?>
						<?php if (isset ( $this->_tpl_vars['form_data_search']['submit_search'] )): ?>
							<span class="advanced" style="float:right;"><?php echo $this->_tpl_vars['adv_search']; ?>
</span>
							<span class="submit" style="float:right;"><?php echo $this->_tpl_vars['form_data_search']['submit_search']['html']; ?>
</span>
							<?php if (isset ( $this->_tpl_vars['form_data_search']['show_all'] )): ?>
								<span class="submit" style="float:right;"><?php echo $this->_tpl_vars['form_data_search']['show_all']['html']; ?>
</span>
							<?php endif; ?>
						<?php endif; ?>
					<?php endif; ?>
					</form>
				</td>
			<?php endif; ?>
		</tr>
	</tbody>
</table>
<?php endif; ?>

<?php 
	$cols = $this->get_template_vars('cols');
	foreach($cols as $k=>$v)
		$cols[$k]['label'] = '<span>'.$cols[$k]['label'].'</span>';
	$this->assign('cols',$cols);
 ?>

<div class="table">
	<div class="layer">
		<div class="css3_content_shadow">
			<div class="margin2px">
				<?php echo $this->_tpl_vars['table_prefix']; ?>

				<?php echo smarty_function_html_table_epesi(array('table_attr' => 'class="Utils_GenericBrowser" cellspacing="0" cellpadding="0" style="width:100%;table-layout:fixed;overflow:hidden;text-overflow:ellipsis;"','loop' => $this->_tpl_vars['data'],'cols' => $this->_tpl_vars['cols'],'row_attrs' => $this->_tpl_vars['row_attrs']), $this);?>

				<?php echo $this->_tpl_vars['table_postfix']; ?>


				<?php if (isset ( $this->_tpl_vars['form_data_paging'] )): ?>
				<?php echo $this->_tpl_vars['form_data_paging']['javascript']; ?>


				<form <?php echo $this->_tpl_vars['form_data_paging']['attributes']; ?>
>
				<?php echo $this->_tpl_vars['form_data_paging']['hidden']; ?>

				<?php endif; ?>
				<?php if (isset ( $this->_tpl_vars['order'] ) || $this->_tpl_vars['first'] || $this->_tpl_vars['prev'] || $this->_tpl_vars['summary'] || isset ( $this->_tpl_vars['form_data_paging']['page'] ) || isset ( $this->_tpl_vars['form_data_paging']['per_page'] )): ?>
					<table id="Utils_GenericBrowser__navigation" class="nonselectable" border="0" cellspacing="0" cellpadding="0">
						<tr class="nav_background">
							<td style="text-align: left; width: 1px; white-space: nowrap;">
								<?php if (isset ( $this->_tpl_vars['order'] )): ?>
									<?php echo $this->_tpl_vars['order']; ?>
&nbsp;&nbsp;&nbsp;<b><?php echo $this->_tpl_vars['reset']; ?>
</b>&nbsp;&nbsp;&nbsp;
								<?php endif; ?>
							</td>
							<td style="width:30%"></td>
							<td style="width:30%"></td>
							<?php if (isset ( $this->_tpl_vars['__link']['first']['open'] ) || isset ( $this->_tpl_vars['__link']['last']['open'] )): ?>
								<td class="nav_button" nowrap><?php if (isset ( $this->_tpl_vars['__link']['first']['open'] )): ?><?php echo $this->_tpl_vars['__link']['first']['open']; ?>
<div class="nav_left_arrow"><img src="<?php echo $this->_tpl_vars['theme_dir']; ?>
/images/first.png"></div><div class="nav_left_label"><?php echo $this->_tpl_vars['__link']['first']['text']; ?>
</div><?php echo $this->_tpl_vars['__link']['first']['close']; ?>
<?php endif; ?></td>
								<td class="nav_button" nowrap><?php if (isset ( $this->_tpl_vars['__link']['prev']['open'] )): ?><?php echo $this->_tpl_vars['__link']['prev']['open']; ?>
<div class="nav_left_arrow"><img border="0" src="<?php echo $this->_tpl_vars['theme_dir']; ?>
/images/prev.png"></div><div class="nav_left_label"><?php echo $this->_tpl_vars['__link']['prev']['text']; ?>
</div><?php echo $this->_tpl_vars['__link']['prev']['close']; ?>
<?php endif; ?></td>
							<?php endif; ?>
							<td class="nav_summary" nowrap>&nbsp;&nbsp;&nbsp;<?php echo $this->_tpl_vars['summary']; ?>
&nbsp;&nbsp;&nbsp;</td>
							<?php if (isset ( $this->_tpl_vars['__link']['first']['open'] ) || isset ( $this->_tpl_vars['__link']['last']['open'] )): ?>
								<td class="nav_button" nowrap><?php if (isset ( $this->_tpl_vars['__link']['next']['open'] )): ?><?php echo $this->_tpl_vars['__link']['next']['open']; ?>
<div class="nav_right_label"><?php echo $this->_tpl_vars['__link']['next']['text']; ?>
</div><div class="nav_right_arrow"><img border="0" src="<?php echo $this->_tpl_vars['theme_dir']; ?>
/images/next.png"></div><?php echo $this->_tpl_vars['__link']['next']['close']; ?>
<?php endif; ?></td>
								<td class="nav_button" nowrap><?php if (isset ( $this->_tpl_vars['__link']['last']['open'] )): ?><?php echo $this->_tpl_vars['__link']['last']['open']; ?>
<div class="nav_right_label"><?php echo $this->_tpl_vars['__link']['last']['text']; ?>
</div><div class="nav_right_arrow"><img border="0" src="<?php echo $this->_tpl_vars['theme_dir']; ?>
/images/last.png"></div><?php echo $this->_tpl_vars['__link']['last']['close']; ?>
<?php endif; ?></td>
							<?php endif; ?>
							<td style="width:30%"></td>
							<td class="nav_pagin" nowrap style="width: 1px; text-align: right; white-space: nowrap;">
								<?php if (isset ( $this->_tpl_vars['form_data_paging']['page'] )): ?>
									<?php echo $this->_tpl_vars['form_data_paging']['page']['label']; ?>
 <?php echo $this->_tpl_vars['form_data_paging']['page']['html']; ?>

								<?php endif; ?>	
							</td>
							<td class="nav_per_page" nowrap style="width: 1px; text-align: right; white-space: nowrap;">
								<?php if (isset ( $this->_tpl_vars['form_data_paging']['per_page'] )): ?>
									<?php echo $this->_tpl_vars['form_data_paging']['per_page']['label']; ?>
 <?php echo $this->_tpl_vars['form_data_paging']['per_page']['html']; ?>

								<?php endif; ?>
							</td>
						</tr>
					</table>
				<?php endif; ?>

				<?php if (isset ( $this->_tpl_vars['form_data_paging'] )): ?>
				</form>
				<?php endif; ?>
			</div>
 		</div>
	</div>
</div>

</div>