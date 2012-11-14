<?php /* Smarty version 2.6.18, created on 2012-11-14 13:08:09
         compiled from Base/Search/Search.tpl */ ?>
<?php if ($this->_tpl_vars['form_mini'] == 'yes'): ?>
	<?php echo $this->_tpl_vars['form_data']['javascript']; ?>

	<form <?php echo $this->_tpl_vars['form_data']['attributes']; ?>
>
	<?php echo $this->_tpl_vars['form_data']['hidden']; ?>

    <!-- Display the fields -->
	    <table id="Base_Search__Search" cellpadding="0" cellspacing="0" border="0">
			<tr>
				<td class="input"><?php echo $this->_tpl_vars['form_data']['quick_search']['html']; ?>
</td>
				<td class="submit"><div class="search_button_css3_box"><a class="search_button" <?php echo $this->_tpl_vars['submit_href']; ?>
><?php echo $this->_tpl_vars['submit_label']; ?>
<div class="search_icon"></div></a></div></td>
			</tr>		
		</table>
	</form>
<?php else: ?>
	<?php echo $this->_tpl_vars['form_data']['javascript']; ?>

	<form <?php echo $this->_tpl_vars['form_data']['attributes']; ?>
>
	<?php echo $this->_tpl_vars['form_data']['hidden']; ?>

    <!-- Display the fields -->
    <table>
    <tr>
    <td style="vertical-align: top;">
	    <table id="Base_Search__Search">
	    	<tr>
				<td colspan="2" class="header_tail"><span class="header" align="left"><?php echo $this->_tpl_vars['form_data']['header']['quick_search_header']; ?>
</span></td>
			</tr>
			<tr>
				<td colspan="2"><span class="error"><?php echo $this->_tpl_vars['form_data']['quick_search']['error']; ?>
</span></td>
			</tr>
			<tr>
				<td align="right" class="label"><?php echo $this->_tpl_vars['form_data']['quick_search']['label']; ?>
</td>
				<td align="left" class="data"><?php echo $this->_tpl_vars['form_data']['quick_search']['html']; ?>
</td>
			</tr>
			<tr>
				<td colspan="2" align="right"><?php echo $this->_tpl_vars['form_data']['quick_search_submit']['html']; ?>
</td>
			</tr>
		</table>
	</td>
	<td style="vertical-align: top;">	
		<table id="Base_Search__Search">
			<?php if (isset ( $this->_tpl_vars['form_data']['advanced_search_header'] )): ?>
			<tr>
				<td colspan="2" class="header_tail"><span class="header"><?php echo $this->_tpl_vars['form_data']['advanced_search_header']['label']; ?>
</span></td>
			</tr>
			<tr>
				<td align="right" class="label"><?php echo $this->_tpl_vars['form_data']['advanced_search']['label']; ?>
</td>
				<td align="left" class="data"><?php echo $this->_tpl_vars['form_data']['advanced_search']['html']; ?>
</td>
			</tr>
			<?php endif; ?>
		</table>
	</td>
	</tr>
	</table>	
	</form>
<?php endif; ?>