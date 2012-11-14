<?php /* Smarty version 2.6.18, created on 2012-11-14 13:08:09
         compiled from Base/ActionBar/launchpad.tpl */ ?>
<center>

<table id="Base_ActionBar__launchpad" cellspacing="0" cellpadding="0" style="margin: 10px;">
	<tr>
	<?php $this->assign('x', 0); ?>
    <?php $_from = $this->_tpl_vars['icons']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i']):
?>
	<?php $this->assign('x', $this->_tpl_vars['x']+1); ?>
		<td>
	    <?php echo $this->_tpl_vars['i']['open']; ?>

		<div class="epesi_big_button">
            <?php if ($this->_tpl_vars['display_icon']): ?>
            <img src="<?php echo $this->_tpl_vars['i']['icon']; ?>
" alt="" align="middle" border="0" width="32" height="32">
            <?php endif; ?>
            <?php if ($this->_tpl_vars['display_text']): ?>
				<span><?php echo $this->_tpl_vars['i']['label']; ?>
</span>
            <?php endif; ?>
        </div>
	    <?php echo $this->_tpl_vars['i']['close']; ?>

		</td>
	<?php if (( $this->_tpl_vars['x']%5 ) == 0): ?>
	</tr>
	<tr>
	<?php endif; ?>
<?php endforeach; endif; unset($_from); ?>

	</tr>
</table>

</center>