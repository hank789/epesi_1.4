<?php /* Smarty version 2.6.18, created on 2012-11-14 13:08:09
         compiled from Base/ActionBar/default.tpl */ ?>
<div id="Base_ActionBar" align="center">
	<table class="ActionBar">
        <tbody>
            <tr>
                <td valign="top">
                    <div id="panel">
						<?php $_from = $this->_tpl_vars['icons']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i']):
?>
						<?php echo $this->_tpl_vars['i']['open']; ?>

							<div class="panel_div_left epesi_big_button">
								<?php if ($this->_tpl_vars['display_icon']): ?>
								<?php if ($this->_tpl_vars['i']['icon_url']): ?>
									<img src="<?php echo $this->_tpl_vars['i']['icon_url']; ?>
" alt="" align="middle" border="0" width="32" height="32">
								<?php else: ?>
									<div class="div_icon icon_<?php echo $this->_tpl_vars['i']['icon']; ?>
" style="margin-top: 3px;"></div>
								<?php endif; ?>
								<?php endif; ?>
								<?php if ($this->_tpl_vars['display_text']): ?>
								<span><?php echo $this->_tpl_vars['i']['label']; ?>
</span>
								<?php endif; ?>
							</div>
						<?php echo $this->_tpl_vars['i']['close']; ?>

						<?php endforeach; endif; unset($_from); ?>
						<?php $_from = $this->_tpl_vars['launcher']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i']):
?>
						<?php echo $this->_tpl_vars['i']['open']; ?>

							<div class="panel_div_right epesi_big_button">
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

						<?php endforeach; endif; unset($_from); ?>
					</div>
                </td>
            </tr>
        </tbody>
    </table>
</div>