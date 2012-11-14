<?php /* Smarty version 2.6.18, created on 2012-11-14 13:08:09
         compiled from Base/User/Login/default.tpl */ ?>
<?php if ($this->_tpl_vars['is_logged_in']): ?>
<?php echo $this->_tpl_vars['logged_as']; ?>

<?php echo $this->_tpl_vars['logout']; ?>

<?php else: ?>
	<?php echo $this->_tpl_vars['form_data']['javascript']; ?>


	<form <?php echo $this->_tpl_vars['form_data']['attributes']; ?>
>
	<?php echo $this->_tpl_vars['form_data']['hidden']; ?>

    <!-- Display the fields -->
		<center>

	<div class="layer" style="padding: 9px; width: 552px;">
		<div class="css3_content_shadow">

	    <table id="Base_User_Login" cellspacing="0" cellpadding="0" border="0" style="height: 507px;">
            <tbody>
	    	<tr>
				<td colspan="2" class="header_tail"><img border="0" src="<?php echo $this->_tpl_vars['theme_dir']; ?>
/images/logo.png" width="550" height="200"></td>
			</tr>
            <tr>
                <td class="gradient">
                    <table cellspacing="0" cellpadding="0" border="0" style="width:100%;table-layout: auto;">
                        <tbody>
<?php if ($this->_tpl_vars['is_demo']): ?>
   			<tr>
   				<td colspan="2" align="center"><strong>EPESI DEMO APPLICATION</strong></td>
   			</tr>
<?php endif; ?>
					<?php if (isset ( $this->_tpl_vars['message'] )): ?>
						<tr>
							<td class="message">
								<?php echo $this->_tpl_vars['message']; ?>

							</td>
						</tr>
						<tr>
							<td colspan="2" class="autologin"></td>
						</tr>
					<?php else: ?>
						<?php if ($this->_tpl_vars['mode'] == 'recover_pass'): ?>
                            <tr><td colspan="2" class="error"><span class="error"><?php echo $this->_tpl_vars['form_data']['username']['error']; ?>
</span></td></tr>
                            <tr><td colspan="2" class="error"><span class="error"><?php echo $this->_tpl_vars['form_data']['mail']['error']; ?>
</span></td></tr>
							<tr>
								<td class="label"><?php echo $this->_tpl_vars['form_data']['username']['label']; ?>
&nbsp;&nbsp;</td>
								<td class="input"><?php echo $this->_tpl_vars['form_data']['username']['html']; ?>
</td>
							</tr>
							<tr>
								<td class="label"><?php echo $this->_tpl_vars['form_data']['mail']['label']; ?>
&nbsp;&nbsp;</td>
								<td class="input"><?php echo $this->_tpl_vars['form_data']['mail']['html']; ?>
</td>
							</tr>
							<tr><td colspan="2" class="submit_button"><?php echo $this->_tpl_vars['form_data']['buttons']['html']; ?>
</td></tr>
							<tr>
								<td colspan="2" class="autologin"></td>
							</tr>
						<?php else: ?>
                            <tr><td colspan="2" class="error"><span class="error"><?php echo $this->_tpl_vars['form_data']['username']['error']; ?>
</span></td></tr>
                            <tr><td colspan="2" class="error"><span class="error"><?php echo $this->_tpl_vars['form_data']['password']['error']; ?>
</span></td></tr>
							<tr>
								<td class="label"><?php echo $this->_tpl_vars['form_data']['username']['label']; ?>
&nbsp;&nbsp;</td>
								<td class="input"><?php echo $this->_tpl_vars['form_data']['username']['html']; ?>
</td>
							</tr>
							<tr>
								<td class="label"><?php echo $this->_tpl_vars['form_data']['password']['label']; ?>
&nbsp;&nbsp;</td>
								<td class="input"><?php echo $this->_tpl_vars['form_data']['password']['html']; ?>
</td>
							</tr>
							<tr>
								<td colspan="2" class="submit_button"><?php echo $this->_tpl_vars['form_data']['submit_button']['html']; ?>
</td>
							</tr>
							<tr>
								<td colspan="2" class="autologin"><?php echo $this->_tpl_vars['form_data']['autologin']['html']; ?>
</td>
							</tr>
						<?php endif; ?>
					<?php endif; ?>
			<tr>
			    <td colspan="2" class="autologin"><?php echo $this->_tpl_vars['form_data']['warning']['html']; ?>
</td>
                        </tr>
                        <tr><td colspan="2" class="recover_password"><?php echo $this->_tpl_vars['form_data']['recover_password']['html']; ?>
</td></tr>
                        <tr><td>&nbsp;</td></tr>
					<?php if (isset ( $this->_tpl_vars['donation_note'] )): ?>
						<tr>
							<td colspan="2" class="donation_notice"><?php echo $this->_tpl_vars['donation_note']; ?>
</td>
						</tr>
					<?php endif; ?>
                        <tr><td colspan="2" class="footer">Copyright &copy; <?php echo date("Y") ?> &bull; <a href="http://www.telaxus.com">Telaxus LLC</a> &bull; Managing Business Your Way<sup>TM</sup></td></tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            </tbody>
		</table>

 		</div>
	</div>



		</center>
	</form>
<?php endif; ?>





<?php echo '
<style type="text/css">
div > div#top_bar { position: fixed;}
div > div#bottom_bar { position: fixed;}
</style>

<!--[if gte IE 5.5]><![if lt IE 7]>

<style type="text/css">
#top_bar {
	position: absolute;
	width: expression( (body.offsetWidth-20)+\'px\');
}
#content_body {
	width: expression( (body.offsetWidth-20)+\'px\');
}

#body_content {
	display: block;
	height: 100%;
	max-height: 100%;
	overflow-x: hidden;
	overflow-y: auto;
	position: relative;
	z-index: 0;
	width:100%;
}

html { height: 100%; max-height: 100%; padding: 0; margin: 0; border: 0; overflow:hidden; /*get rid of scroll bars in IE */ }
body { height: 100%; max-height: 100%; border: 0; }




.layer .left,
.layer .right,
.layer .center {
	background: none !important;
}

.layer .shadow-middle div {
	height: expression(
		x = this.parentNode.parentNode.offsetHeight,
		y = parseInt(this.currentStyle.top),
		(x - ((x % 2) ? 1 : 0) - (y * 2)) + \'px\'
	)
}

.layer .shadow-top .center,
.layer .shadow-bottom .center {
	width: expression(
		x = this.parentNode.parentNode.offsetWidth,
		y = parseInt(this.currentStyle.left),
		(x - ((x % 2) ? 1 : 0) - (y * 2)) + \'px\'
	)
}
																								/* POPRAWIC SCIEZKE ! */
.layer .shadow-top .left		{ filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="modules/Base/Theme/images/shadow/tl.png", sizingMethod="crop");  }
.layer .shadow-top .right		{ filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="modules/Base/Theme/images/shadow/tr.png", sizingMethod="crop");  }
.layer .shadow-bottom .left		{ filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="modules/Base/Theme/images/shadow/bl.png", sizingMethod="crop");  }
.layer .shadow-bottom .right	{ filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="modules/Base/Theme/images/shadow/br.png", sizingMethod="crop");  }
.layer .shadow-top .center		{ filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="modules/Base/Theme/images/shadow/t.png",  sizingMethod="scale"); }
.layer .shadow-bottom .center	{ filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="modules/Base/Theme/images/shadow/b.png",  sizingMethod="scale"); }
.layer .shadow-middle .left		{ filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="modules/Base/Theme/images/shadow/l.png",  sizingMethod="scale"); }
.layer .shadow-middle .right	{ filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="modules/Base/Theme/images/shadow/r.png",  sizingMethod="scale"); }

.layer .shadow-bottom div.center {
	bottom: -3px;
}

.layer .shadow-top div.center {
	top: -2px;
}

</style>

<![endif]><![endif]-->

'; ?>
