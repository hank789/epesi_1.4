<?php /* Smarty version 2.6.18, created on 2012-11-14 13:13:47
         compiled from CRM/Calendar/Event/custom_event_handlers_form.tpl */ ?>
<?php 
	eval_js('var_hide_calendar_event_handlers_popup=1;');
 ?>
<?php echo '
<div class="button" style="width:100%;" id="calendar_event_handlers_trigger" onmouseover="var_hide_calendar_event_handlers_popup=0;show_calendar_event_handlers_popup();" onmouseout="var_hide_calendar_event_handlers_popup=1;setTimeout(\'hide_calendar_event_handlers_popup();\',1000);" onclick="if(var_hide_calendar_event_handlers_popup==0){var_hide_calendar_event_handlers_popup=1;hide_calendar_event_handlers_popup();}else{var_hide_calendar_event_handlers_popup=0;show_calendar_event_handlers_popup();}">
'; ?>

	<?php echo $this->_tpl_vars['label']; ?>

</div>
<div onmouseover="show_calendar_event_handlers_popup();var_hide_calendar_event_handlers_popup=0;" onmouseout="var_hide_calendar_event_handlers_popup=1;setTimeout('hide_calendar_event_handlers_popup();',400);" id="calendar_event_handlers_popup" style="display:none;position:absolute;z-index:2001;border:1px solid;background-color:#DDDDDD;width:115px;">
	<?php echo $this->_tpl_vars['form_open']; ?>

		<table>
			<?php $_from = $this->_tpl_vars['elements_name']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['e']):
?>
				<tr>
					<td nowrap="1" style="width:83px;">
						<?php echo $this->_tpl_vars['form_data'][$this->_tpl_vars['e']]['label']; ?>

					</td>
					<td>
						<?php echo $this->_tpl_vars['form_data'][$this->_tpl_vars['e']]['html']; ?>

					</td>
				</tr>
			<?php endforeach; endif; unset($_from); ?>
		</table>
	<?php echo $this->_tpl_vars['form_close']; ?>

</div>