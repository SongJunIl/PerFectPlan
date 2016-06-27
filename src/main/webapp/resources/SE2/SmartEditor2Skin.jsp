<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<title>ë¤ì´ë² :: Smart Editor 2 &#8482;</title>
<link href="css/smart_editor2.css" rel="stylesheet" type="text/css">
<style type="text/css">
	body { margin: 10px; }
</style>
<script type="text/javascript" src="./js/lib/jindo2.all.js" charset="utf-8"></script>
<script type="text/javascript" src="./js/lib/jindo_component.js" charset="utf-8"></script>
<script type="text/javascript" src="./js/SE2M_Configuration.js" charset="utf-8"></script>	<!-- ì¤ì  íì¼ -->
<script type="text/javascript" src="./js/SE2BasicCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="./js/smarteditor2.min.js" charset="utf-8"></script>

<!-- ì¬ì§ì²¨ë¶ìí  --> 
<script type="text/javascript" src="./sample/js/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>
</head>
<body>



<span id="rev">Version: 2.8.2.12056 </span>

<!-- SE2 Markup Start -->	
<div id="smart_editor2">
	<div id="smart_editor2_content"><a href="#se2_iframe" class="blind">ê¸ì°ê¸°ìì­ì¼ë¡ ë°ë¡ê°ê¸°</a>
		<div class="se2_tool" id="se2_tool">
			
			<div class="se2_text_tool husky_seditor_text_tool">
			<ul class="se2_font_type">
				<li class="husky_seditor_ui_fontName"><button type="button" class="se2_font_family" title="ê¸ê¼´"><span class="husky_se2m_current_fontName">ê¸ê¼´</span></button>
					<!-- ê¸ê¼´ ë ì´ì´ -->
					<div class="se2_layer husky_se_fontName_layer">
						<div class="se2_in_layer">
							<ul class="se2_l_font_fam">
							<li style="display:none"><button type="button"><span>@DisplayName@<span>(</span><em style="font-family:FontFamily;">@SampleText@</em><span>)</span></span></button></li>
							<li class="se2_division husky_seditor_font_separator"></li>
							<li><button type="button"><span>ëëê³ ë<span>(</span><em style="font-family:'ëëê³ ë',NanumGothic;">ê°ëë¤ë¼</em><span>)</span></span></button></li>
							<li><button type="button"><span>ëëëªì¡°<span>(</span><em style="font-family:'ëëëªì¡°',NanumMyeongjo;">ê°ëë¤ë¼</em><span>)</span></span></button></li>
							<li><button type="button"><span>ëëê³ ëì½ë©<span>(</span><em style="font-family:'ëëê³ ëì½ë©',NanumGothicCoding;">ê°ëë¤ë¼</em><span>)</span></span></button></li>
							<li><button type="button"><span>ëëë°ë¥¸ê³ ë<span>(</span><em style="font-family:'ëëë°ë¥¸ê³ ë',NanumBarunGothic;">ê°ëë¤ë¼</em><span>)</span></span></button></li>
							<li><button type="button"><span>ëëë°ë¥¸í<span>(</span><em style="font-family:'ëëë°ë¥¸í',NanumBarunPen;">ê°ëë¤ë¼</em><span>)</span></span></button></li>
							</ul>
						</div>
					</div>
					<!-- //ê¸ê¼´ ë ì´ì´ -->
				</li>

				<li class="husky_seditor_ui_fontSize"><button type="button" class="se2_font_size" title="ê¸ìí¬ê¸°"><span class="husky_se2m_current_fontSize">í¬ê¸°</span></button>
					<!-- í°í¸ ì¬ì´ì¦ ë ì´ì´ -->
					<div class="se2_layer husky_se_fontSize_layer">
						<div class="se2_in_layer">
							<ul class="se2_l_font_size">
							<li><button type="button"><span style="margin-top:4px; margin-bottom:3px; margin-left:5px; font-size:7pt;">ê°ëë¤ë¼ë§ë°ì¬<span style=" font-size:7pt;">(7pt)</span></span></button></li>
							<li><button type="button"><span style="margin-bottom:2px; font-size:8pt;">ê°ëë¤ë¼ë§ë°ì¬<span style="font-size:8pt;">(8pt)</span></span></button></li>
							<li><button type="button"><span style="margin-bottom:1px; font-size:9pt;">ê°ëë¤ë¼ë§ë°ì¬<span style="font-size:9pt;">(9pt)</span></span></button></li>
							<li><button type="button"><span style="margin-bottom:1px; font-size:10pt;">ê°ëë¤ë¼ë§ë°ì¬<span style="font-size:10pt;">(10pt)</span></span></button></li>
							<li><button type="button"><span style="margin-bottom:2px; font-size:11pt;">ê°ëë¤ë¼ë§ë°ì¬<span style="font-size:11pt;">(11pt)</span></span></button></li>
							<li><button type="button"><span style="margin-bottom:1px; font-size:12pt;">ê°ëë¤ë¼ë§ë°ì¬<span style="font-size:12pt;">(12pt)</span></span></button></li>
							<li><button type="button"><span style="margin-bottom:2px; font-size:14pt;">ê°ëë¤ë¼ë§ë°ì¬<span style="margin-left:6px;font-size:14pt;">(14pt)</span></span></button></li>
							<li><button type="button"><span style="margin-bottom:1px; font-size:18pt;">ê°ëë¤ë¼ë§ë°ì¬<span style="margin-left:8px;font-size:18pt;">(18pt)</span></span></button></li>
							<li><button type="button"><span style="margin-left:3px; font-size:24pt;">ê°ëë¤ë¼ë§<span style="margin-left:11px;font-size:24pt;">(24pt)</span></span></button></li>
							<li><button type="button"><span style="margin-top:-1px; margin-left:3px; font-size:36pt;">ê°ëë¤<span style="font-size:36pt;">(36pt)</span></span></button></li>
							</ul>
						</div>
					</div>
					<!-- //í°í¸ ì¬ì´ì¦ ë ì´ì´ -->
				</li>
</ul><ul>
				<li class="husky_seditor_ui_bold first_child"><button type="button" title="êµµê²[Ctrl+B]" class="se2_bold"><span class="_buttonRound tool_bg">êµµê²[Ctrl+B]</span></button></li>

				<li class="husky_seditor_ui_underline"><button type="button" title="ë°ì¤[Ctrl+U]" class="se2_underline"><span class="_buttonRound">ë°ì¤[Ctrl+U]</span></button></li>

				<li class="husky_seditor_ui_italic"><button type="button" title="ê¸°ì¸ìê¼´[Ctrl+I]" class="se2_italic"><span class="_buttonRound">ê¸°ì¸ìê¼´[Ctrl+I]</span></button></li>

				<li class="husky_seditor_ui_lineThrough"><button type="button" title="ì·¨ìì [Ctrl+D]" class="se2_tdel"><span class="_buttonRound">ì·¨ìì [Ctrl+D]</span></button></li>

				<li class="se2_pair husky_seditor_ui_fontColor"><span class="selected_color husky_se2m_fontColor_lastUsed" style="background-color:#4477f9"></span><span class="husky_seditor_ui_fontColorA"><button type="button" title="ê¸ìì" class="se2_fcolor"><span>ê¸ìì</span></button></span><span class="husky_seditor_ui_fontColorB"><button type="button" title="ëë³´ê¸°" class="se2_fcolor_more"><span class="_buttonRound">ëë³´ê¸°</span></button></span>				
					<!-- ê¸ìì -->
					<div class="se2_layer husky_se2m_fontcolor_layer" style="display:none">
						<div class="se2_in_layer husky_se2m_fontcolor_paletteHolder">
							<div class="se2_palette husky_se2m_color_palette">
								<ul class="se2_pick_color">
								<li><button type="button" title="#ff0000" style="background:#ff0000"><span><span>#ff0000</span></span></button></li>
								<li><button type="button" title="#ff6c00" style="background:#ff6c00"><span><span>#ff6c00</span></span></button></li>
								<li><button type="button" title="#ffaa00" style="background:#ffaa00"><span><span>#ffaa00</span></span></button></li>
								<li><button type="button" title="#ffef00" style="background:#ffef00"><span><span>#ffef00</span></span></button></li>
								<li><button type="button" title="#a6cf00" style="background:#a6cf00"><span><span>#a6cf00</span></span></button></li>
								<li><button type="button" title="#009e25" style="background:#009e25"><span><span>#009e25</span></span></button></li>
								<li><button type="button" title="#00b0a2" style="background:#00b0a2"><span><span>#00b0a2</span></span></button></li>
								<li><button type="button" title="#0075c8" style="background:#0075c8"><span><span>#0075c8</span></span></button></li>
								<li><button type="button" title="#3a32c3" style="background:#3a32c3"><span><span>#3a32c3</span></span></button></li>
								<li><button type="button" title="#7820b9" style="background:#7820b9"><span><span>#7820b9</span></span></button></li>
								<li><button type="button" title="#ef007c" style="background:#ef007c"><span><span>#ef007c</span></span></button></li>
								<li><button type="button" title="#000000" style="background:#000000"><span><span>#000000</span></span></button></li>
								<li><button type="button" title="#252525" style="background:#252525"><span><span>#252525</span></span></button></li>
								<li><button type="button" title="#464646" style="background:#464646"><span><span>#464646</span></span></button></li>
								<li><button type="button" title="#636363" style="background:#636363"><span><span>#636363</span></span></button></li>
								<li><button type="button" title="#7d7d7d" style="background:#7d7d7d"><span><span>#7d7d7d</span></span></button></li>
								<li><button type="button" title="#9a9a9a" style="background:#9a9a9a"><span><span>#9a9a9a</span></span></button></li>
								<li><button type="button" title="#ffe8e8" style="background:#ffe8e8"><span><span>#9a9a9a</span></span></button></li>
								<li><button type="button" title="#f7e2d2" style="background:#f7e2d2"><span><span>#f7e2d2</span></span></button></li>
								<li><button type="button" title="#f5eddc" style="background:#f5eddc"><span><span>#f5eddc</span></span></button></li>
								<li><button type="button" title="#f5f4e0" style="background:#f5f4e0"><span><span>#f5f4e0</span></span></button></li>
								<li><button type="button" title="#edf2c2" style="background:#edf2c2"><span><span>#edf2c2</span></span></button></li>
								<li><button type="button" title="#def7e5" style="background:#def7e5"><span><span>#def7e5</span></span></button></li>
								<li><button type="button" title="#d9eeec" style="background:#d9eeec"><span><span>#d9eeec</span></span></button></li>
								<li><button type="button" title="#c9e0f0" style="background:#c9e0f0"><span><span>#c9e0f0</span></span></button></li>
								<li><button type="button" title="#d6d4eb" style="background:#d6d4eb"><span><span>#d6d4eb</span></span></button></li>
								<li><button type="button" title="#e7dbed" style="background:#e7dbed"><span><span>#e7dbed</span></span></button></li>
								<li><button type="button" title="#f1e2ea" style="background:#f1e2ea"><span><span>#f1e2ea</span></span></button></li>
								<li><button type="button" title="#acacac" style="background:#acacac"><span><span>#acacac</span></span></button></li>
								<li><button type="button" title="#c2c2c2" style="background:#c2c2c2"><span><span>#c2c2c2</span></span></button></li>
								<li><button type="button" title="#cccccc" style="background:#cccccc"><span><span>#cccccc</span></span></button></li>
								<li><button type="button" title="#e1e1e1" style="background:#e1e1e1"><span><span>#e1e1e1</span></span></button></li>
								<li><button type="button" title="#ebebeb" style="background:#ebebeb"><span><span>#ebebeb</span></span></button></li>
								<li><button type="button" title="#ffffff" style="background:#ffffff"><span><span>#ffffff</span></span></button></li>
								</ul>
								<ul class="se2_pick_color" style="width:156px;">
								<li><button type="button" title="#e97d81" style="background:#e97d81"><span><span>#e97d81</span></span></button></li>
								<li><button type="button" title="#e19b73" style="background:#e19b73"><span><span>#e19b73</span></span></button></li>
								<li><button type="button" title="#d1b274" style="background:#d1b274"><span><span>#d1b274</span></span></button></li>
								<li><button type="button" title="#cfcca2" style="background:#cfcca2"><span><span>#cfcca2</span></span></button></li>
								<li><button type="button" title="#cfcca2" style="background:#cfcca2"><span><span>#cfcca2</span></span></button></li>
								<li><button type="button" title="#61b977" style="background:#61b977"><span><span>#61b977</span></span></button></li>
								<li><button type="button" title="#53aea8" style="background:#53aea8"><span><span>#53aea8</span></span></button></li>
								<li><button type="button" title="#518fbb" style="background:#518fbb"><span><span>#518fbb</span></span></button></li>
								<li><button type="button" title="#6a65bb" style="background:#6a65bb"><span><span>#6a65bb</span></span></button></li>
								<li><button type="button" title="#9a54ce" style="background:#9a54ce"><span><span>#9a54ce</span></span></button></li>
								<li><button type="button" title="#e573ae" style="background:#e573ae"><span><span>#e573ae</span></span></button></li>
								<li><button type="button" title="#5a504b" style="background:#5a504b"><span><span>#5a504b</span></span></button></li>
								<li><button type="button" title="#767b86" style="background:#767b86"><span><span>#767b86</span></span></button></li>
								<li><button type="button" title="#951015" style="background:#951015"><span><span>#951015</span></span></button></li>
								<li><button type="button" title="#6e391a" style="background:#6e391a"><span><span>#6e391a</span></span></button></li>
								<li><button type="button" title="#785c25" style="background:#785c25"><span><span>#785c25</span></span></button></li>
								<li><button type="button" title="#5f5b25" style="background:#5f5b25"><span><span>#5f5b25</span></span></button></li>
								<li><button type="button" title="#4c511f" style="background:#4c511f"><span><span>#4c511f</span></span></button></li>
								<li><button type="button" title="#1c4827" style="background:#1c4827"><span><span>#1c4827</span></span></button></li>
								<li><button type="button" title="#0d514c" style="background:#0d514c"><span><span>#0d514c</span></span></button></li>
								<li><button type="button" title="#1b496a" style="background:#1b496a"><span><span>#1b496a</span></span></button></li>
								<li><button type="button" title="#2b285f" style="background:#2b285f"><span><span>#2b285f</span></span></button></li>
								<li><button type="button" title="#45245b" style="background:#45245b"><span><span>#45245b</span></span></button></li>
								<li><button type="button" title="#721947" style="background:#721947"><span><span>#721947</span></span></button></li>
								<li><button type="button" title="#352e2c" style="background:#352e2c"><span><span>#352e2c</span></span></button></li>
								<li><button type="button" title="#3c3f45" style="background:#3c3f45"><span><span>#3c3f45</span></span></button></li>
								</ul>
								<button type="button" title="ëë³´ê¸°" class="se2_view_more husky_se2m_color_palette_more_btn"><span>ëë³´ê¸°</span></button>
								<div class="husky_se2m_color_palette_recent" style="display:none">
									<h4>ìµê·¼ ì¬ì©í ì</h4>
									<ul class="se2_pick_color">
									<li></li>
									<!-- ìµê·¼ ì¬ì©í ì ííë¦¿ -->
									<!-- <li><button type="button" title="#e97d81" style="background:#e97d81"><span><span>#e97d81</span></span></button></li> -->
									<!-- //ìµê·¼ ì¬ì©í ì ííë¦¿ -->
									</ul>
								</div>								
								<div class="se2_palette2 husky_se2m_color_palette_colorpicker">
									<!--form action="http://test.emoticon.naver.com/colortable/TextAdd.nhn" method="post"-->
										<div class="se2_color_set">
											<span class="se2_selected_color"><span class="husky_se2m_cp_preview" style="background:#e97d81"></span></span><input type="text" name="" class="input_ty1 husky_se2m_cp_colorcode" value="#e97d81"><button type="button" class="se2_btn_insert husky_se2m_color_palette_ok_btn" title="ìë ¥"><span>ìë ¥</span></button></div>
										<!--input type="hidden" name="callback" value="http://test.emoticon.naver.com/colortable/result.jsp" />
										<input type="hidden" name="callback_func" value="1" />
										<input type="hidden" name="text_key" value="" />
										<input type="hidden" name="text_data" value="" />
									</form-->
									<div class="se2_gradation1 husky_se2m_cp_colpanel"></div>
									<div class="se2_gradation2 husky_se2m_cp_huepanel"></div>
								</div>
							</div>
                        </div>
					</div>
                    <!-- //ê¸ìì -->
				</li>

				<li class="se2_pair husky_seditor_ui_BGColor"><span class="selected_color husky_se2m_BGColor_lastUsed" style="background-color:#4477f9"></span><span class="husky_seditor_ui_BGColorA"><button type="button" title="ë°°ê²½ì" class="se2_bgcolor"><span>ë°°ê²½ì</span></button></span><span class="husky_seditor_ui_BGColorB"><button type="button" title="ëë³´ê¸°" class="se2_bgcolor_more"><span class="_buttonRound">ëë³´ê¸°</span></button></span>
					<!-- ë°°ê²½ì -->
					<div class="se2_layer se2_layer husky_se2m_BGColor_layer" style="display:none">
						<div class="se2_in_layer">
							<div class="se2_palette_bgcolor">
								<ul class="se2_background husky_se2m_bgcolor_list">
								<li><button type="button" title="ë°°ê²½ì#ff0000 ê¸ìì#ffffff" style="background:#ff0000; color:#ffffff"><span><span>ê°ëë¤</span></span></button></li>								
								<li><button type="button" title="ë°°ê²½ì#6d30cf ê¸ìì#ffffff" style="background:#6d30cf; color:#ffffff"><span><span>ê°ëë¤</span></span></button></li>
								<li><button type="button" title="ë°°ê²½ì#000000 ê¸ìì#ffffff" style="background:#000000; color:#ffffff"><span><span>ê°ëë¤</span></span></button></li>
								<li><button type="button" title="ë°°ê²½ì#ff6600 ê¸ìì#ffffff" style="background:#ff6600; color:#ffffff"><span><span>ê°ëë¤</span></span></button></li>
								<li><button type="button" title="ë°°ê²½ì#3333cc ê¸ìì#ffffff" style="background:#3333cc; color:#ffffff"><span><span>ê°ëë¤</span></span></button></li>
								<li><button type="button" title="ë°°ê²½ì#333333 ê¸ìì#ffff00" style="background:#333333; color:#ffff00"><span><span>ê°ëë¤</span></span></button></li>
								<li><button type="button" title="ë°°ê²½ì#ffa700 ê¸ìì#ffffff" style="background:#ffa700; color:#ffffff"><span><span>ê°ëë¤</span></span></button></li>
								<li><button type="button" title="ë°°ê²½ì#009999 ê¸ìì#ffffff" style="background:#009999; color:#ffffff"><span><span>ê°ëë¤</span></span></button></li>
								<li><button type="button" title="ë°°ê²½ì#8e8e8e ê¸ìì#ffffff" style="background:#8e8e8e; color:#ffffff"><span><span>ê°ëë¤</span></span></button></li>								
								<li><button type="button" title="ë°°ê²½ì#cc9900 ê¸ìì#ffffff" style="background:#cc9900; color:#ffffff"><span><span>ê°ëë¤</span></span></button></li>
								<li><button type="button" title="ë°°ê²½ì#77b02b ê¸ìì#ffffff" style="background:#77b02b; color:#ffffff"><span><span>ê°ëë¤</span></span></button></li>
								<li><button type="button" title="ë°°ê²½ì#ffffff ê¸ìì#000000" style="background:#ffffff; color:#000000"><span><span>ê°ëë¤</span></span></button></li>
								</ul>
							</div>
							<div class="husky_se2m_BGColor_paletteHolder"></div>
                        </div>
					</div>
                    <!-- //ë°°ê²½ì -->
				</li>

				<li class="husky_seditor_ui_superscript"><button type="button" title="ìì²¨ì" class="se2_sup"><span class="_buttonRound">ìì²¨ì</span></button></li>

				<li class="husky_seditor_ui_subscript last_child"><button type="button" title="ìëì²¨ì" class="se2_sub"><span class="_buttonRound tool_bg">ìëì²¨ì</span></button></li>
</ul><ul>
				<li class="husky_seditor_ui_justifyleft first_child"><button type="button" title="ì¼ìª½ì ë ¬" class="se2_left"><span class="_buttonRound tool_bg">ì¼ìª½ì ë ¬</span></button></li>

				<li class="husky_seditor_ui_justifycenter"><button type="button" title="ê°ì´ë°ì ë ¬" class="se2_center"><span class="_buttonRound">ê°ì´ë°ì ë ¬</span></button></li>

				<li class="husky_seditor_ui_justifyright"><button type="button" title="ì¤ë¥¸ìª½ì ë ¬" class="se2_right"><span class="_buttonRound">ì¤ë¥¸ìª½ì ë ¬</span></button></li>

				<li class="husky_seditor_ui_justifyfull"><button type="button" title="ììª½ì ë ¬" class="se2_justify"><span class="_buttonRound">ììª½ì ë ¬</span></button></li>

				<li class="husky_seditor_ui_orderedlist"><button type="button" title="ë²í¸ë§¤ê¸°ê¸°" class="se2_ol"><span class="_buttonRound">ë²í¸ë§¤ê¸°ê¸°</span></button></li>

				<li class="husky_seditor_ui_unorderedlist"><button type="button" title="ê¸ë¨¸ë¦¬ê¸°í¸" class="se2_ul"><span class="_buttonRound">ê¸ë¨¸ë¦¬ê¸°í¸</span></button></li>

				<li class="husky_seditor_ui_outdent"><button type="button" title="ë´ì´ì°ê¸°[Shift+Tab]" class="se2_outdent"><span class="_buttonRound">ë´ì´ì°ê¸°[Shift+Tab]</span></button></li>

				<li class="husky_seditor_ui_indent"><button type="button" title="ë¤ì¬ì°ê¸°[Tab]" class="se2_indent"><span class="_buttonRound">ë¤ì¬ì°ê¸°[Tab]</span></button></li>			

				<li class="husky_seditor_ui_lineHeight last_child"><button type="button" title="ì¤ê°ê²©" class="se2_lineheight" ><span class="_buttonRound tool_bg">ì¤ê°ê²©</span></button>
					<!-- ì¤ê°ê²© ë ì´ì´ -->
					<div class="se2_layer husky_se2m_lineHeight_layer">
						<div class="se2_in_layer">
							<ul class="se2_l_line_height">
							<li><button type="button"><span>50%</span></button></li>
							<li><button type="button"><span>80%</span></button></li>
							<li><button type="button"><span>100%</span></button></li>
							<li><button type="button"><span>120%</span></button></li>
							<li><button type="button"><span>150%</span></button></li>
							<li><button type="button"><span>180%</span></button></li>
							<li><button type="button"><span>200%</span></button></li>
							</ul>
							<div class="se2_l_line_height_user husky_se2m_lineHeight_direct_input">
								<h3>ì§ì  ìë ¥</h3>
								<span class="bx_input">
								<input type="text" class="input_ty1" maxlength="3" style="width:75px">
								<button type="button" title="1% ëíê¸°" class="btn_up"><span>1% ëíê¸°</span></button>
								<button type="button" title="1% ë¹¼ê¸°" class="btn_down"><span>1% ë¹¼ê¸°</span></button>
								</span>		
								<div class="btn_area">
									<button type="button" class="se2_btn_apply3"><span>ì ì©</span></button><button type="button" class="se2_btn_cancel3"><span>ì·¨ì</span></button>
								</div>
							</div>
						</div>
					</div>
					<!-- //ì¤ê°ê²© ë ì´ì´ -->
				</li>
</ul><ul>
				<li class="husky_seditor_ui_quote single_child"><button type="button" title="ì¸ì©êµ¬" class="se2_blockquote"><span class="_buttonRound tool_bg">ì¸ì©êµ¬</span></button>
					<!-- ì¸ì©êµ¬ -->
					<div class="se2_layer husky_seditor_blockquote_layer" style="margin-left:-407px; display:none;">
						<div class="se2_in_layer">
							<div class="se2_quote">
								<ul>
								<li class="q1"><button type="button" class="se2_quote1"><span><span>ì¸ì©êµ¬ ì¤íì¼1</span></span></button></li>
								<li class="q2"><button type="button" class="se2_quote2"><span><span>ì¸ì©êµ¬ ì¤íì¼2</span></span></button></li>
								<li class="q3"><button type="button" class="se2_quote3"><span><span>ì¸ì©êµ¬ ì¤íì¼3</span></span></button></li>
								<li class="q4"><button type="button" class="se2_quote4"><span><span>ì¸ì©êµ¬ ì¤íì¼4</span></span></button></li>
								<li class="q5"><button type="button" class="se2_quote5"><span><span>ì¸ì©êµ¬ ì¤íì¼5</span></span></button></li>
								<li class="q6"><button type="button" class="se2_quote6"><span><span>ì¸ì©êµ¬ ì¤íì¼6</span></span></button></li>
								<li class="q7"><button type="button" class="se2_quote7"><span><span>ì¸ì©êµ¬ ì¤íì¼7</span></span></button></li>
								<li class="q8"><button type="button" class="se2_quote8"><span><span>ì¸ì©êµ¬ ì¤íì¼8</span></span></button></li>
								<li class="q9"><button type="button" class="se2_quote9"><span><span>ì¸ì©êµ¬ ì¤íì¼9</span></span></button></li>
								<li class="q10"><button type="button" class="se2_quote10"><span><span>ì¸ì©êµ¬ ì¤íì¼10</span></span></button></li>
								</ul>
								<button type="button" class="se2_cancel2"><span>ì ì©ì·¨ì</span></button>
							</div>
						</div>
					</div>
					<!-- //ì¸ì©êµ¬ -->
				</li>
</ul><ul>
				<li class="husky_seditor_ui_hyperlink first_child"><button type="button" title="ë§í¬" class="se2_url"><span class="_buttonRound tool_bg">ë§í¬</span></button>
					<!-- ë§í¬ -->
					<div class="se2_layer" style="margin-left:-285px">
						<div class="se2_in_layer">
							<div class="se2_url2">
								<input type="text" class="input_ty1" value="http://">
								<button type="button" class="se2_apply"><span>ì ì©</span></button><button type="button" class="se2_cancel"><span>ì·¨ì</span></button>
							</div>
						</div>
					</div>
					<!-- //ë§í¬ -->
				</li>

				<li class="husky_seditor_ui_sCharacter"><button type="button" title="í¹ìê¸°í¸" class="se2_character"><span class="_buttonRound">í¹ìê¸°í¸</span></button>
					<!-- í¹ìê¸°í¸ -->
					<div class="se2_layer husky_seditor_sCharacter_layer" style="margin-left:-448px;">
						<div class="se2_in_layer">
							<div class="se2_bx_character">
								<ul class="se2_char_tab">
								<li class="active"><button type="button" title="ì¼ë°ê¸°í¸" class="se2_char1"><span>ì¼ë°ê¸°í¸</span></button>
									<div class="se2_s_character">
										<ul class="husky_se2m_sCharacter_list">
											<li></li>
											<!-- ì¼ë°ê¸°í¸ ëª©ë¡ -->
											<!-- <li class="hover"><button type="button"><span>ï½</span></button></li><li class="active"><button type="button"><span>ï½</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>Â·</span></button></li><li><button type="button"><span>â¥</span></button></li><li><button type="button"><span>â¦</span></button></li><li><button type="button"><span>Â§</span></button></li><li><button type="button"><span>â»</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â¡</span></button></li><li><button type="button"><span>â </span></button></li><li><button type="button"><span>â³</span></button></li><li><button type="button"><span>â²</span></button></li><li><button type="button"><span>â½</span></button></li><li><button type="button"><span>â¼</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â·</span></button></li><li><button type="button"><span>â¶</span></button></li><li><button type="button"><span>â¤</span></button></li><li><button type="button"><span>â </span></button></li><li><button type="button"><span>â¡</span></button></li><li><button type="button"><span>â¥</span></button></li><li><button type="button"><span>â§</span></button></li><li><button type="button"><span>â£</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â£</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â¤</span></button></li><li><button type="button"><span>â¥</span></button></li><li><button type="button"><span>â¨</span></button></li><li><button type="button"><span>â§</span></button></li><li><button type="button"><span>â¦</span></button></li><li><button type="button"><span>â©</span></button></li><li><button type="button"><span>Â±</span></button></li><li><button type="button"><span>Ã</span></button></li><li><button type="button"><span>Ã·</span></button></li><li><button type="button"><span>â </span></button></li><li><button type="button"><span>â¤</span></button></li><li><button type="button"><span>â¥</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â´</span></button></li><li><button type="button"><span>Â°</span></button></li><li><button type="button"><span>â²</span></button></li><li><button type="button"><span>â³</span></button></li><li><button type="button"><span>â </span></button></li><li><button type="button"><span>â¥</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â¡</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>âª</span></button></li><li><button type="button"><span>â«</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â½</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>âµ</span></button></li><li><button type="button"><span>â«</span></button></li><li><button type="button"><span>â¬</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>âª</span></button></li><li><button type="button"><span>â©</span></button></li><li><button type="button"><span>â§</span></button></li><li><button type="button"><span>â¨</span></button></li><li><button type="button"><span>ï¿¢</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>Â´</span></button></li><li><button type="button"><span>ï½</span></button></li><li><button type="button"><span>Ë</span></button></li><li><button type="button"><span>Ë</span></button></li><li><button type="button"><span>Ë</span></button></li><li><button type="button"><span>Ë</span></button></li><li><button type="button"><span>Ë</span></button></li><li><button type="button"><span>Â¸</span></button></li><li><button type="button"><span>Ë</span></button></li><li><button type="button"><span>Â¡</span></button></li><li><button type="button"><span>Â¿</span></button></li><li><button type="button"><span>Ë</span></button></li><li><button type="button"><span>â®</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â­</span></button></li><li><button type="button"><span>â©</span></button></li><li><button type="button"><span>âª</span></button></li><li><button type="button"><span>â¬</span></button></li><li><button type="button"><span>ã¿</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>â¢</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>â¡</span></button></li><li><button type="button"><span>â¨</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>Â¶</span></button></li><li><button type="button"><span>â </span></button></li><li><button type="button"><span>â¡</span></button></li><li><button type="button"><span>Â®</span></button></li><li><button type="button"><span>Âª</span></button></li><li><button type="button"><span>Âº</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li> -->
										</ul>
									</div>
								</li>
								<li><button type="button" title="ì«ìì ë¨ì" class="se2_char2"><span>ì«ìì ë¨ì</span></button>
									<div class="se2_s_character">
										<ul class="husky_se2m_sCharacter_list">
											<li></li>
											<!-- ì«ìì ë¨ì ëª©ë¡ -->
											<!-- <li class="hover"><button type="button"><span>Â½</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>Â¼</span></button></li><li><button type="button"><span>Â¾</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>Â¹</span></button></li><li><button type="button"><span>Â²</span></button></li><li><button type="button"><span>Â³</span></button></li><li><button type="button"><span>â´</span></button></li><li><button type="button"><span>â¿</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â </span></button></li><li><button type="button"><span>â¡</span></button></li><li><button type="button"><span>â¢</span></button></li><li><button type="button"><span>â£</span></button></li><li><button type="button"><span>â¤</span></button></li><li><button type="button"><span>â¥</span></button></li><li><button type="button"><span>â¦</span></button></li><li><button type="button"><span>â§</span></button></li><li><button type="button"><span>â¨</span></button></li><li><button type="button"><span>â©</span></button></li><li><button type="button"><span>â°</span></button></li><li><button type="button"><span>â±</span></button></li><li><button type="button"><span>â²</span></button></li><li><button type="button"><span>â³</span></button></li><li><button type="button"><span>â´</span></button></li><li><button type="button"><span>âµ</span></button></li><li><button type="button"><span>â¶</span></button></li><li><button type="button"><span>â·</span></button></li><li><button type="button"><span>â¸</span></button></li><li><button type="button"><span>â¹</span></button></li><li><button type="button"><span>ï¿¦</span></button></li><li><button type="button"><span>$</span></button></li><li><button type="button"><span>ï¿¥</span></button></li><li><button type="button"><span>ï¿¡</span></button></li><li><button type="button"><span>â¬</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>A</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>ï¿ </span></button></li><li><button type="button"><span>Â¤</span></button></li><li><button type="button"><span>â°</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã£</span></button></li><li><button type="button"><span>ã¤</span></button></li><li><button type="button"><span>ã¥</span></button></li><li><button type="button"><span>ã¦</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã </span></button></li><li><button type="button"><span>ã¡</span></button></li><li><button type="button"><span>ã¢</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã§</span></button></li><li><button type="button"><span>ã¨</span></button></li><li><button type="button"><span>ã°</span></button></li><li><button type="button"><span>ã±</span></button></li><li><button type="button"><span>ã²</span></button></li><li><button type="button"><span>ã³</span></button></li><li><button type="button"><span>ã´</span></button></li><li><button type="button"><span>ãµ</span></button></li><li><button type="button"><span>ã¶</span></button></li><li><button type="button"><span>ã·</span></button></li><li><button type="button"><span>ã¸</span></button></li><li><button type="button"><span>ã¹</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ãº</span></button></li><li><button type="button"><span>ã»</span></button></li><li><button type="button"><span>ã¼</span></button></li><li><button type="button"><span>ã½</span></button></li><li><button type="button"><span>ã¾</span></button></li><li><button type="button"><span>ã¿</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>Î©</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã­</span></button></li><li><button type="button"><span>ã®</span></button></li><li><button type="button"><span>ã¯</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã©</span></button></li><li><button type="button"><span>ãª</span></button></li><li><button type="button"><span>ã«</span></button></li><li><button type="button"><span>ã¬</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li> -->
										</ul>
									</div>
								</li>
								<li><button type="button" title="ì,ê´í¸" class="se2_char3"><span>ì,ê´í¸</span></button>
									<div class="se2_s_character">
										<ul class="husky_se2m_sCharacter_list">
											<li></li>
											<!-- ì,ê´í¸ ëª©ë¡ -->
											<!-- <li><button type="button"><span>ã </span></button></li><li><button type="button"><span>ã¡</span></button></li><li><button type="button"><span>ã¢</span></button></li><li><button type="button"><span>ã£</span></button></li><li><button type="button"><span>ã¤</span></button></li><li><button type="button"><span>ã¥</span></button></li><li><button type="button"><span>ã¦</span></button></li><li><button type="button"><span>ã§</span></button></li><li><button type="button"><span>ã¨</span></button></li><li><button type="button"><span>ã©</span></button></li><li><button type="button"><span>ãª</span></button></li><li><button type="button"><span>ã«</span></button></li><li><button type="button"><span>ã¬</span></button></li><li><button type="button"><span>ã­</span></button></li><li><button type="button"><span>ã®</span></button></li><li><button type="button"><span>ã¯</span></button></li><li><button type="button"><span>ã°</span></button></li><li><button type="button"><span>ã±</span></button></li><li><button type="button"><span>ã²</span></button></li><li><button type="button"><span>ã³</span></button></li><li><button type="button"><span>ã´</span></button></li><li><button type="button"><span>ãµ</span></button></li><li><button type="button"><span>ã¶</span></button></li><li><button type="button"><span>ã·</span></button></li><li><button type="button"><span>ã¸</span></button></li><li><button type="button"><span>ã¹</span></button></li><li><button type="button"><span>ãº</span></button></li><li><button type="button"><span>ã»</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â </span></button></li><li><button type="button"><span>â¡</span></button></li><li><button type="button"><span>â¢</span></button></li><li><button type="button"><span>â£</span></button></li><li><button type="button"><span>â¤</span></button></li><li><button type="button"><span>â¥</span></button></li><li><button type="button"><span>â¦</span></button></li><li><button type="button"><span>â§</span></button></li><li><button type="button"><span>â¨</span></button></li><li><button type="button"><span>â©</span></button></li><li><button type="button"><span>â </span></button></li><li><button type="button"><span>â¡</span></button></li><li><button type="button"><span>â¢</span></button></li><li><button type="button"><span>â£</span></button></li><li><button type="button"><span>â¤</span></button></li><li><button type="button"><span>â¥</span></button></li><li><button type="button"><span>â¦</span></button></li><li><button type="button"><span>â§</span></button></li><li><button type="button"><span>â¨</span></button></li><li><button type="button"><span>â©</span></button></li><li><button type="button"><span>âª</span></button></li><li><button type="button"><span>â«</span></button></li><li><button type="button"><span>â¬</span></button></li><li><button type="button"><span>â­</span></button></li><li><button type="button"><span>â®</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li class="hover"><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â </span></button></li><li><button type="button"><span>â¡</span></button></li><li><button type="button"><span>â¢</span></button></li><li><button type="button"><span>â£</span></button></li><li><button type="button"><span>â¤</span></button></li><li><button type="button"><span>â¥</span></button></li><li><button type="button"><span>â¦</span></button></li><li><button type="button"><span>â§</span></button></li><li><button type="button"><span>â¨</span></button></li><li><button type="button"><span>â©</span></button></li><li><button type="button"><span>âª</span></button></li><li><button type="button"><span>â«</span></button></li><li><button type="button"><span>â¬</span></button></li><li><button type="button"><span>â­</span></button></li><li><button type="button"><span>â®</span></button></li><li><button type="button"><span>â¯</span></button></li><li><button type="button"><span>â°</span></button></li><li><button type="button"><span>â±</span></button></li><li><button type="button"><span>â²</span></button></li><li><button type="button"><span>â³</span></button></li><li><button type="button"><span>â´</span></button></li><li><button type="button"><span>âµ</span></button></li><li><button type="button"><span>â´</span></button></li><li><button type="button"><span>âµ</span></button></li><li><button type="button"><span>â¶</span></button></li><li><button type="button"><span>â·</span></button></li><li><button type="button"><span>â¸</span></button></li><li><button type="button"><span>â¹</span></button></li><li><button type="button"><span>âº</span></button></li><li><button type="button"><span>â»</span></button></li><li><button type="button"><span>â¼</span></button></li><li><button type="button"><span>â½</span></button></li><li><button type="button"><span>â¾</span></button></li><li><button type="button"><span>â¿</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li><li><button type="button"><span>â</span></button></li> -->
										</ul>
									</div>
								</li>
								<li><button type="button" title="íê¸" class="se2_char4"><span>íê¸</span></button>
									<div class="se2_s_character">
										<ul class="husky_se2m_sCharacter_list">
											<li></li>
											<!-- íê¸ ëª©ë¡ -->
											<!-- <li><button type="button"><span>ã±</span></button></li><li><button type="button"><span>ã²</span></button></li><li><button type="button"><span>ã³</span></button></li><li><button type="button"><span>ã´</span></button></li><li><button type="button"><span>ãµ</span></button></li><li><button type="button"><span>ã¶</span></button></li><li><button type="button"><span>ã·</span></button></li><li><button type="button"><span>ã¸</span></button></li><li><button type="button"><span>ã¹</span></button></li><li><button type="button"><span>ãº</span></button></li><li><button type="button"><span>ã»</span></button></li><li><button type="button"><span>ã¼</span></button></li><li><button type="button"><span>ã½</span></button></li><li><button type="button"><span>ã¾</span></button></li><li><button type="button"><span>ã¿</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã </span></button></li><li><button type="button"><span>ã¡</span></button></li><li><button type="button"><span>ã¢</span></button></li><li><button type="button"><span>ã£</span></button></li><li><button type="button"><span>ã¥</span></button></li><li><button type="button"><span>ã¦</span></button></li><li><button type="button"><span>ã§</span></button></li><li><button type="button"><span>ã¨</span></button></li><li><button type="button"><span>ã©</span></button></li><li><button type="button"><span>ãª</span></button></li><li><button type="button"><span>ã«</span></button></li><li><button type="button"><span>ã¬</span></button></li><li><button type="button"><span>ã­</span></button></li><li><button type="button"><span>ã®</span></button></li><li><button type="button"><span>ã¯</span></button></li><li><button type="button"><span>ã°</span></button></li><li><button type="button"><span>ã±</span></button></li><li><button type="button"><span>ã²</span></button></li><li><button type="button"><span>ã³</span></button></li><li><button type="button"><span>ã´</span></button></li><li><button type="button"><span>ãµ</span></button></li><li><button type="button"><span>ã¶</span></button></li><li><button type="button"><span>ã·</span></button></li><li><button type="button"><span>ã¸</span></button></li><li><button type="button"><span>ã¹</span></button></li><li><button type="button"><span>ãº</span></button></li><li><button type="button"><span>ã»</span></button></li><li><button type="button"><span>ã¼</span></button></li><li><button type="button"><span>ã½</span></button></li><li><button type="button"><span>ã¾</span></button></li><li><button type="button"><span>ã¿</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li> -->
										</ul>
									</div>
								</li>
								<li><button type="button" title="ê·¸ë¦¬ì¤,ë¼í´ì´" class="se2_char5"><span>ê·¸ë¦¬ì¤,ë¼í´ì´</span></button>
									<div class="se2_s_character">
										<ul class="husky_se2m_sCharacter_list">
											<li></li>
											<!-- ê·¸ë¦¬ì¤,ë¼í´ì´ ëª©ë¡ -->
											<!-- <li><button type="button"><span>Î</span></button></li><li><button type="button"><span>Î</span></button></li><li><button type="button"><span>Î</span></button></li><li><button type="button"><span>Î</span></button></li><li><button type="button"><span>Î</span></button></li><li><button type="button"><span>Î</span></button></li><li><button type="button"><span>Î</span></button></li><li><button type="button"><span>Î</span></button></li><li><button type="button"><span>Î</span></button></li><li><button type="button"><span>Î</span></button></li><li><button type="button"><span>Î</span></button></li><li><button type="button"><span>Î</span></button></li><li><button type="button"><span>Î</span></button></li><li><button type="button"><span>Î</span></button></li><li class="hover"><button type="button"><span>Î</span></button></li><li><button type="button"><span>Î </span></button></li><li><button type="button"><span>Î¡</span></button></li><li><button type="button"><span>Î£</span></button></li><li><button type="button"><span>Î¤</span></button></li><li><button type="button"><span>Î¥</span></button></li><li><button type="button"><span>Î¦</span></button></li><li><button type="button"><span>Î§</span></button></li><li><button type="button"><span>Î¨</span></button></li><li><button type="button"><span>Î©</span></button></li><li><button type="button"><span>Î±</span></button></li><li><button type="button"><span>Î²</span></button></li><li><button type="button"><span>Î³</span></button></li><li><button type="button"><span>Î´</span></button></li><li><button type="button"><span>Îµ</span></button></li><li><button type="button"><span>Î¶</span></button></li><li><button type="button"><span>Î·</span></button></li><li><button type="button"><span>Î¸</span></button></li><li><button type="button"><span>Î¹</span></button></li><li><button type="button"><span>Îº</span></button></li><li><button type="button"><span>Î»</span></button></li><li><button type="button"><span>Î¼</span></button></li><li><button type="button"><span>Î½</span></button></li><li><button type="button"><span>Î¾</span></button></li><li><button type="button"><span>Î¿</span></button></li><li><button type="button"><span>Ï</span></button></li><li><button type="button"><span>Ï</span></button></li><li><button type="button"><span>Ï</span></button></li><li><button type="button"><span>Ï</span></button></li><li><button type="button"><span>Ï</span></button></li><li><button type="button"><span>Ï</span></button></li><li><button type="button"><span>Ï</span></button></li><li><button type="button"><span>Ï</span></button></li><li><button type="button"><span>Ï</span></button></li><li><button type="button"><span>Ã</span></button></li><li><button type="button"><span>Ã</span></button></li><li><button type="button"><span>Ä¦</span></button></li><li><button type="button"><span>Ä²</span></button></li><li><button type="button"><span>Ä¿</span></button></li><li><button type="button"><span>Å</span></button></li><li><button type="button"><span>Ã</span></button></li><li><button type="button"><span>Å</span></button></li><li><button type="button"><span>Ã</span></button></li><li><button type="button"><span>Å¦</span></button></li><li><button type="button"><span>Å</span></button></li><li><button type="button"><span>Ã¦</span></button></li><li><button type="button"><span>Ä</span></button></li><li><button type="button"><span>Ã°</span></button></li><li><button type="button"><span>Ä§</span></button></li><li><button type="button"><span>I</span></button></li><li><button type="button"><span>Ä³</span></button></li><li><button type="button"><span>Ä¸</span></button></li><li><button type="button"><span>Å</span></button></li><li><button type="button"><span>Å</span></button></li><li><button type="button"><span>Å</span></button></li><li><button type="button"><span>Å</span></button></li><li><button type="button"><span>Ã</span></button></li><li><button type="button"><span>Ã¾</span></button></li><li><button type="button"><span>Å§</span></button></li><li><button type="button"><span>Å</span></button></li><li><button type="button"><span>Å</span></button></li><li><button type="button"><span>Ð</span></button></li><li><button type="button"><span>Ð</span></button></li><li><button type="button"><span>Ð</span></button></li><li><button type="button"><span>Ð</span></button></li><li><button type="button"><span>Ð</span></button></li><li><button type="button"><span>Ð</span></button></li><li><button type="button"><span>Ð</span></button></li><li><button type="button"><span>Ð</span></button></li><li><button type="button"><span>Ð</span></button></li><li><button type="button"><span>Ð</span></button></li><li><button type="button"><span>Ð¦</span></button></li><li><button type="button"><span>Ð§</span></button></li><li><button type="button"><span>Ð¨</span></button></li><li><button type="button"><span>Ð©</span></button></li><li><button type="button"><span>Ðª</span></button></li><li><button type="button"><span>Ð«</span></button></li><li><button type="button"><span>Ð¬</span></button></li><li><button type="button"><span>Ð­</span></button></li><li><button type="button"><span>Ð®</span></button></li><li><button type="button"><span>Ð¯</span></button></li><li><button type="button"><span>Ð±</span></button></li><li><button type="button"><span>Ð²</span></button></li><li><button type="button"><span>Ð³</span></button></li><li><button type="button"><span>Ð´</span></button></li><li><button type="button"><span>Ñ</span></button></li><li><button type="button"><span>Ð¶</span></button></li><li><button type="button"><span>Ð·</span></button></li><li><button type="button"><span>Ð¸</span></button></li><li><button type="button"><span>Ð¹</span></button></li><li><button type="button"><span>Ð»</span></button></li><li><button type="button"><span>Ð¿</span></button></li><li><button type="button"><span>Ñ</span></button></li><li><button type="button"><span>Ñ</span></button></li><li><button type="button"><span>Ñ</span></button></li><li><button type="button"><span>Ñ</span></button></li><li><button type="button"><span>Ñ</span></button></li><li><button type="button"><span>Ñ</span></button></li><li><button type="button"><span>Ñ</span></button></li><li><button type="button"><span>Ñ</span></button></li><li><button type="button"><span>Ñ</span></button></li><li><button type="button"><span>Ñ</span></button></li><li><button type="button"><span>Ñ</span></button></li> -->
										</ul>
									</div>
								</li>
								<li><button type="button" title="ì¼ë³¸ì´" class="se2_char6"><span>ì¼ë³¸ì´</span></button>
									<div class="se2_s_character">
										<ul class="husky_se2m_sCharacter_list">
											<li></li>
											<!-- ì¼ë³¸ì´ ëª©ë¡ -->
											<!-- <li><button type="button"><span>ã</span></button></li><li class="hover"><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã </span></button></li><li><button type="button"><span>ã¡</span></button></li><li><button type="button"><span>ã¢</span></button></li><li><button type="button"><span>ã£</span></button></li><li><button type="button"><span>ã¤</span></button></li><li><button type="button"><span>ã¥</span></button></li><li><button type="button"><span>ã¦</span></button></li><li><button type="button"><span>ã§</span></button></li><li><button type="button"><span>ã¨</span></button></li><li><button type="button"><span>ã©</span></button></li><li><button type="button"><span>ãª</span></button></li><li><button type="button"><span>ã«</span></button></li><li><button type="button"><span>ã¬</span></button></li><li><button type="button"><span>ã­</span></button></li><li><button type="button"><span>ã®</span></button></li><li><button type="button"><span>ã¯</span></button></li><li><button type="button"><span>ã°</span></button></li><li><button type="button"><span>ã±</span></button></li><li><button type="button"><span>ã²</span></button></li><li><button type="button"><span>ã³</span></button></li><li><button type="button"><span>ã´</span></button></li><li><button type="button"><span>ãµ</span></button></li><li><button type="button"><span>ã¶</span></button></li><li><button type="button"><span>ã·</span></button></li><li><button type="button"><span>ã¸</span></button></li><li><button type="button"><span>ã¹</span></button></li><li><button type="button"><span>ãº</span></button></li><li><button type="button"><span>ã»</span></button></li><li><button type="button"><span>ã¼</span></button></li><li><button type="button"><span>ã½</span></button></li><li><button type="button"><span>ã¾</span></button></li><li><button type="button"><span>ã¿</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã¡</span></button></li><li><button type="button"><span>ã¢</span></button></li><li><button type="button"><span>ã£</span></button></li><li><button type="button"><span>ã¤</span></button></li><li><button type="button"><span>ã¥</span></button></li><li><button type="button"><span>ã¦</span></button></li><li><button type="button"><span>ã§</span></button></li><li><button type="button"><span>ã¨</span></button></li><li><button type="button"><span>ã©</span></button></li><li><button type="button"><span>ãª</span></button></li><li><button type="button"><span>ã«</span></button></li><li><button type="button"><span>ã¬</span></button></li><li><button type="button"><span>ã­</span></button></li><li><button type="button"><span>ã®</span></button></li><li><button type="button"><span>ã¯</span></button></li><li><button type="button"><span>ã°</span></button></li><li><button type="button"><span>ã±</span></button></li><li><button type="button"><span>ã²</span></button></li><li><button type="button"><span>ã³</span></button></li><li><button type="button"><span>ã´</span></button></li><li><button type="button"><span>ãµ</span></button></li><li><button type="button"><span>ã¶</span></button></li><li><button type="button"><span>ã·</span></button></li><li><button type="button"><span>ã¸</span></button></li><li><button type="button"><span>ã¹</span></button></li><li><button type="button"><span>ãº</span></button></li><li><button type="button"><span>ã»</span></button></li><li><button type="button"><span>ã¼</span></button></li><li><button type="button"><span>ã½</span></button></li><li><button type="button"><span>ã¾</span></button></li><li><button type="button"><span>ã¿</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã</span></button></li><li><button type="button"><span>ã </span></button></li><li><button type="button"><span>ã¡</span></button></li><li><button type="button"><span>ã¢</span></button></li><li><button type="button"><span>ã£</span></button></li><li><button type="button"><span>ã¤</span></button></li><li><button type="button"><span>ã¥</span></button></li><li><button type="button"><span>ã¦</span></button></li><li><button type="button"><span>ã§</span></button></li><li><button type="button"><span>ã¨</span></button></li><li><button type="button"><span>ã©</span></button></li><li><button type="button"><span>ãª</span></button></li><li><button type="button"><span>ã«</span></button></li><li><button type="button"><span>ã¬</span></button></li><li><button type="button"><span>ã­</span></button></li><li><button type="button"><span>ã®</span></button></li><li><button type="button"><span>ã¯</span></button></li><li><button type="button"><span>ã°</span></button></li><li><button type="button"><span>ã±</span></button></li><li><button type="button"><span>ã²</span></button></li><li><button type="button"><span>ã³</span></button></li><li><button type="button"><span>ã´</span></button></li><li><button type="button"><span>ãµ</span></button></li><li><button type="button"><span>ã¶</span></button></li> -->
										</ul>
									</div>
								</li>
								</ul>
								<p class="se2_apply_character">
									<label for="char_preview">ì íí ê¸°í¸</label> <input type="text" name="char_preview" id="char_preview" value="Â®Âºâââ" class="input_ty1"><button type="button" class="se2_confirm"><span>ì ì©</span></button><button type="button" class="se2_cancel husky_se2m_sCharacter_close"><span>ì·¨ì</span></button>
								</p>
							</div>
						</div>
					</div>
					<!-- //í¹ìê¸°í¸ -->
				</li>

				<li class="husky_seditor_ui_table"><button type="button" title="í" class="se2_table"><span class="_buttonRound">í</span></button>
					<!--@lazyload_html create_table-->
					<!-- í -->
					<div class="se2_layer husky_se2m_table_layer" style="margin-left:-171px">
						<div class="se2_in_layer">
							<div class="se2_table_set">
								<fieldset>
								<legend>ì¹¸ì ì§ì </legend>
									<dl class="se2_cell_num">
									<dt><label for="row">í</label></dt>
									<dd><input id="row" name="" type="text" maxlength="2" value="4" class="input_ty2">
										<button type="button" class="se2_add"><span>1íì¶ê°</span></button>
										<button type="button" class="se2_del"><span>1íì­ì </span></button>
									</dd>
									<dt><label for="col">ì´</label></dt>
									<dd><input id="col" name="" type="text" maxlength="2" value="4" class="input_ty2">
										<button type="button" class="se2_add"><span>1ì´ì¶ê°</span></button>
										<button type="button" class="se2_del"><span>1ì´ì­ì </span></button>
									</dd>
									</dl>
									<table border="0" cellspacing="1" class="se2_pre_table husky_se2m_table_preview">
									<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									</tr>
									<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									</tr>
									<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									</tr>
									</table>
								</fieldset>
								<fieldset>
									<legend>ìì±ì§ì ìë ¥</legend>
									<dl class="se2_t_proper1">
									<dt><input type="radio" id="se2_tbp1" name="se2_tbp" checked><label for="se2_tbp1">ìì±ì§ì ìë ¥</label></dt>
									<dd>
										<dl class="se2_t_proper1_1">
										<dt><label>íì¤íì¼</label></dt>
										<dd><div class="se2_select_ty1"><span class="se2_b_style3 husky_se2m_table_border_style_preview"></span><button type="button" title="ëë³´ê¸°" class="se2_view_more"><span>ëë³´ê¸°</span></button></div>
											<!-- ë ì´ì´ : íëë¦¬ì¤íì¼ -->
											<div class="se2_layer_b_style husky_se2m_table_border_style_layer" style="display:none">
												<ul>
												<li><button type="button" class="se2_b_style1"><span class="se2m_no_border">íëë¦¬ìì</span></button></li>
												<li><button type="button" class="se2_b_style2"><span><span>íëë¦¬ì¤íì¼2</span></span></button></li>
												<li><button type="button" class="se2_b_style3"><span><span>íëë¦¬ì¤íì¼3</span></span></button></li>
												<li><button type="button" class="se2_b_style4"><span><span>íëë¦¬ì¤íì¼4</span></span></button></li>
												<li><button type="button" class="se2_b_style5"><span><span>íëë¦¬ì¤íì¼5</span></span></button></li>
												<li><button type="button" class="se2_b_style6"><span><span>íëë¦¬ì¤íì¼6</span></span></button></li>
												<li><button type="button" class="se2_b_style7"><span><span>íëë¦¬ì¤íì¼7</span></span></button></li>
												</ul>
											</div>
											<!-- //ë ì´ì´ : íëë¦¬ì¤íì¼ -->
										</dd>
										</dl>
										<dl class="se2_t_proper1_1 se2_t_proper1_2">
										<dt><label for="se2_b_width">íëë¦¬ëê»</label></dt>
										<dd><input id="se2_b_width" name="" type="text" maxlength="2" value="1" class="input_ty1">
											<button type="button" title="1px ëíê¸°" class="se2_add se2m_incBorder"><span>1px ëíê¸°</span></button>
											<button type="button" title="1px ë¹¼ê¸°" class="se2_del se2m_decBorder"><span>1px ë¹¼ê¸°</span></button>
										</dd>
										</dl>
										<dl class="se2_t_proper1_1 se2_t_proper1_3">
										<dt><label for="se2_b_color">íëë¦¬ì</label></dt>
										<dd><input id="se2_b_color" name="" type="text" maxlength="7" value="#cccccc" class="input_ty3"><span class="se2_pre_color"><button type="button" style="background:#cccccc;"><span>ìì°¾ê¸°</span></button></span>	
										<!-- ë ì´ì´ : íëë¦¬ì -->
											<div class="se2_layer se2_b_t_b1" style="clear:both;display:none;position:absolute;top:20px;left:-147px;">
												<div class="se2_in_layer husky_se2m_table_border_color_pallet">
												</div>
											</div>
										<!-- //ë ì´ì´ : íëë¦¬ì-->
										</dd>
										</dl>
										<div class="se2_t_dim0"></div><!-- íëë¦¬ ììì¼ë ë¤ëë ì´ì´ -->
										<dl class="se2_t_proper1_1 se2_t_proper1_4">
										<dt><label for="se2_cellbg">ì ë°°ê²½ì</label></dt>
										<dd><input id="se2_cellbg" name="" type="text" maxlength="7" value="#ffffff" class="input_ty3"><span class="se2_pre_color"><button type="button" style="background:#ffffff;"><span>ìì°¾ê¸°</span></button></span>
										<!-- ë ì´ì´ : ìë°°ê²½ì -->
										<div class="se2_layer se2_b_t_b1" style="clear:both;display:none;position:absolute;top:20px;left:-147px;">
											<div class="se2_in_layer husky_se2m_table_bgcolor_pallet">
											</div>
										</div>
										<!-- //ë ì´ì´ : ìë°°ê²½ì-->
										</dd>
										</dl>
									</dd>
									</dl>
								</fieldset>
								<fieldset>
									<legend>íì¤íì¼</legend>
									<dl class="se2_t_proper2">
									<dt><input type="radio" id="se2_tbp2" name="se2_tbp"><label for="se2_tbp2">ì¤íì¼ ì í</label></dt>
									<dd><div class="se2_select_ty2"><span class="se2_t_style1 husky_se2m_table_style_preview"></span><button type="button" title="ëë³´ê¸°" class="se2_view_more"><span>ëë³´ê¸°</span></button></div>
										<!-- ë ì´ì´ : íííë¦¿ì í -->
										<div class="se2_layer_t_style husky_se2m_table_style_layer" style="display:none">
											<ul class="se2_scroll">
											<li><button type="button" class="se2_t_style1"><span>íì¤íì¼1</span></button></li>
											<li><button type="button" class="se2_t_style2"><span>íì¤íì¼2</span></button></li>
											<li><button type="button" class="se2_t_style3"><span>íì¤íì¼3</span></button></li>
											<li><button type="button" class="se2_t_style4"><span>íì¤íì¼4</span></button></li>
											<li><button type="button" class="se2_t_style5"><span>íì¤íì¼5</span></button></li>
											<li><button type="button" class="se2_t_style6"><span>íì¤íì¼6</span></button></li>
											<li><button type="button" class="se2_t_style7"><span>íì¤íì¼7</span></button></li>
											<li><button type="button" class="se2_t_style8"><span>íì¤íì¼8</span></button></li>
											<li><button type="button" class="se2_t_style9"><span>íì¤íì¼9</span></button></li>
											<li><button type="button" class="se2_t_style10"><span>íì¤íì¼10</span></button></li>
											<li><button type="button" class="se2_t_style11"><span>íì¤íì¼11</span></button></li>
											<li><button type="button" class="se2_t_style12"><span>íì¤íì¼12</span></button></li>
											<li><button type="button" class="se2_t_style13"><span>íì¤íì¼13</span></button></li>
											<li><button type="button" class="se2_t_style14"><span>íì¤íì¼14</span></button></li>
											<li><button type="button" class="se2_t_style15"><span>íì¤íì¼15</span></button></li>
											<li><button type="button" class="se2_t_style16"><span>íì¤íì¼16</span></button></li>
											</ul>
										</div>
										<!-- //ë ì´ì´ : íííë¦¿ì í -->
									</dd>
									</dl>
								</fieldset>
								<p class="se2_btn_area">
									<button type="button" class="se2_apply"><span>ì ì©</span></button><button type="button" class="se2_cancel"><span>ì·¨ì</span></button>
								</p>
								<!-- ë¤ëë ì´ì´ -->
								<div class="se2_t_dim3"></div>
								<!-- //ë¤ëë ì´ì´ -->
							</div>
						</div>
					</div>
					<!-- //í -->
					<!--//@lazyload_html-->
				</li>

				<li class="husky_seditor_ui_findAndReplace last_child"><button type="button" title="ì°¾ê¸°/ë°ê¾¸ê¸°" class="se2_find"><span class="_buttonRound tool_bg">ì°¾ê¸°/ë°ê¾¸ê¸°</span></button>
					<!--@lazyload_html find_and_replace-->
					<!-- ì°¾ê¸°/ë°ê¾¸ê¸° -->
					<div class="se2_layer husky_se2m_findAndReplace_layer" style="margin-left:-238px;">
						<div class="se2_in_layer">
							<div class="se2_bx_find_revise">
								<button type="button" title="ë«ê¸°" class="se2_close husky_se2m_cancel"><span>ë«ê¸°</span></button>
								<h3>ì°¾ê¸°/ë°ê¾¸ê¸°</h3>
								<ul>
								<li class="active"><button type="button" class="se2_tabfind"><span>ì°¾ê¸°</span></button></li>
								<li><button type="button" class="se2_tabrevise"><span>ë°ê¾¸ê¸°</span></button></li>
								</ul>
								<div class="se2_in_bx_find husky_se2m_find_ui" style="display:block">
									<dl>
									<dt><label for="find_word">ì°¾ì ë¨ì´</label></dt><dd><input type="text" id="find_word" value="ì¤ë§í¸ìëí°" class="input_ty1"></dd>
									</dl>
									<p class="se2_find_btns">
										<button type="button" class="se2_find_next husky_se2m_find_next"><span>ë¤ì ì°¾ê¸°</span></button><button type="button" class="se2_cancel husky_se2m_cancel"><span>ì·¨ì</span></button>
									</p>
								</div>
								<div class="se2_in_bx_revise husky_se2m_replace_ui" style="display:none">
									<dl>
									<dt><label for="find_word2">ì°¾ì ë¨ì´</label></dt><dd><input type="text" id="find_word2" value="ì¤ë§í¸ìëí°" class="input_ty1"></dd>
									<dt><label for="revise_word">ë°ê¿ ë¨ì´</label></dt><dd><input type="text" id="revise_word" value="ì¤ë§í¸ìëí°" class="input_ty1"></dd>
									</dl>
									<p class="se2_find_btns">
										<button type="button" class="se2_find_next2 husky_se2m_replace_find_next"><span>ë¤ì ì°¾ê¸°</span></button><button type="button" class="se2_revise1 husky_se2m_replace"><span>ë°ê¾¸ê¸°</span></button><button type="button" class="se2_revise2 husky_se2m_replace_all"><span>ëª¨ë ë°ê¾¸ê¸°</span></button><button type="button" class="se2_cancel husky_se2m_cancel"><span>ì·¨ì</span></button>
									</p>
								</div>
								<button type="button" title="ë«ê¸°" class="se2_close husky_se2m_cancel"><span>ë«ê¸°</span></button>
							</div>
						</div>
					</div>
					<!-- //ì°¾ê¸°/ë°ê¾¸ê¸° -->
					<!--//@lazyload_html-->
				</li>
</ul>
				<ul class="se2_multy">
					<li class="se2_mn husky_seditor_ui_photo_attach"><button type="button" class="se2_photo ico_btn"><span class="se2_icon"></span><span class="se2_mntxt">ì¬ì§<span class="se2_new"></span></span></button></li>
				</ul>
			</div>
			<!-- //704ì´ì -->
		</div>
		
				<!-- ì ê·¼ì± ëìë§ ë ì´ì´ -->
		<div class="se2_layer se2_accessibility" style="display:none;">
			<div class="se2_in_layer">
				<button type="button" title="ë«ê¸°" class="se2_close"><span>ë«ê¸°</span></button>
				<h3><strong>ì ê·¼ì± ëìë§</strong></h3>
				<div class="box_help">
					<div>
						<strong>í´ë°</strong>
						<p>ALT+F10 ì ëë¥´ë©´ í´ë°ë¡ ì´ëí©ëë¤. ë¤ì ë²í¼ì TAB ì¼ë¡ ì´ì  ë²í¼ì SHIFT+TAB ì¼ë¡ ì´ë ê°ë¥í©ëë¤. ENTER ë¥¼ ëë¥´ë©´ í´ë¹ ë²í¼ì ê¸°ë¥ì´ ëìíê³  ê¸ì°ê¸° ìì­ì¼ë¡ í¬ì»¤ì¤ê° ì´ëí©ëë¤. ESC ë¥¼ ëë¥´ë©´ ìë¬´ë° ê¸°ë¥ì ì¤ííì§ ìê³  ê¸ì°ê¸° ìì­ì¼ë¡ í¬ì»¤ì¤ê° ì´ëí©ëë¤.</p>
						<strong>ë¹ ì ¸ ëê°ê¸°</strong>
						<p>ALT+. ë¥¼ ëë¥´ë©´ ì¤ë§í¸ ìëí° ë¤ì ììë¡ ALT+, ë¥¼ ëë¥´ë©´ ì¤ë§í¸ìëí° ì´ì  ììë¡ ë¹ ì ¸ëê° ì ììµëë¤.</p>
						<strong>ëªë ¹ì´ ë¨ì¶í¤</strong>
						<ul>
						<li>CTRL+B <span>êµµê²</span></li>
						<li>SHIFT+TAB <span>ë´ì´ì°ê¸°</span></li>
						<li>CTRL+U <span>ë°ì¤</span></li>
						<li>CTRL+F <span>ì°¾ê¸°</span></li>
						<li>CTRL+I <span>ê¸°ì¸ì ê¸ê¼´</span></li>
						<li>CTRL+H <span>ë°ê¾¸ê¸°</span></li>
						<li>CTRL+D <span>ì·¨ìì </span></li>
						<li>CTRL+K <span>ë§í¬ê±¸ê¸°</span></li>
						<li>TAB <span>ë¤ì¬ì°ê¸°</span></li>
						</ul>
					</div>
				</div>
				<div class="se2_btns">
					<button type="button" class="se2_close2"><span>ë«ê¸°</span></button>
				</div>
			</div>
		</div>		
		<!-- //ì ê·¼ì± ëìë§ ë ì´ì´ -->

		<hr>
		<!-- ìë ¥ -->
		<div class="se2_input_area husky_seditor_editing_area_container">
			
			
			<iframe src="about:blank" id="se2_iframe" name="se2_iframe" class="se2_input_wysiwyg" width="400" height="300" title="ê¸ì°ê¸° ìì­ : ëêµ¬ ëª¨ìì ALT+F10ì, ëìë§ì ALT+0ì ëë¥´ì¸ì." frameborder="0" style="display:block;"></iframe>
			<textarea name="" rows="10" cols="100" title="HTML í¸ì§ ëª¨ë" class="se2_input_syntax se2_input_htmlsrc" style="display:none;outline-style:none;resize:none"> </textarea>
			<textarea name="" rows="10" cols="100" title="TEXT í¸ì§ ëª¨ë" class="se2_input_syntax se2_input_text" style="display:none;outline-style:none;resize:none;"> </textarea>
			
			<!-- ìë ¥ì°½ ì¡°ì  ìë´ ë ì´ì´ -->
			<div class="ly_controller husky_seditor_resize_notice" style="z-index:20;display:none;">
				<p>ìë ìì­ì ëëê·¸íì¬ ìë ¥ì°½ í¬ê¸°ë¥¼ ì¡°ì í  ì ììµëë¤.</p>
				<button type="button" title="ë«ê¸°" class="bt_clse"><span>ë«ê¸°</span></button>
				<span class="ic_arr"></span>
			</div>
			<!-- //ìë ¥ì°½ ì¡°ì  ìë´ ë ì´ì´ -->
						<div class="quick_wrap">
				<!-- í/ê¸ìì ê°ë¨í¸ì§ê¸° -->
				<!--@lazyload_html qe_table-->
				<div class="q_table_wrap" style="z-index: 150;">
				<button class="_fold se2_qmax q_open_table_full" style="position:absolute; display:none;top:340px;left:210px;z-index:30;" title="ìµëí" type="button"><span>íµìëí°ìµëí</span></button>
				<div class="_full se2_qeditor se2_table_set" style="position:absolute;display:none;top:135px;left:661px;z-index:30;">
					<div class="se2_qbar q_dragable"><span class="se2_qmini"><button title="ìµìí" class="q_open_table_fold"><span>íµìëí°ìµìí</span></button></span></div>
					<div class="se2_qbody0">
						<div class="se2_qbody">
							<dl class="se2_qe1">
							<dt>ì½ì</dt><dd><button class="se2_addrow" title="íì½ì" type="button"><span>íì½ì</span></button><button class="se2_addcol" title="ì´ì½ì" type="button"><span>ì´ì½ì</span></button></dd>
							<dt>ë¶í </dt><dd><button class="se2_seprow" title="íë¶í " type="button"><span>íë¶í </span></button><button class="se2_sepcol" title="ì´ë¶í " type="button"><span>ì´ë¶í </span></button></dd>

							<dt>ì­ì </dt><dd><button class="se2_delrow" title="íì­ì " type="button"><span>íì­ì </span></button><button class="se2_delcol" title="ì´ì­ì " type="button"><span>ì´ì­ì </span></button></dd>
							<dt>ë³í©</dt><dd><button class="se2_merrow" title="íë³í©" type="button"><span>íë³í©</span></button></dd>
							</dl>
							<div class="se2_qe2 se2_qe2_3"> <!-- íì´ë¸ íµìëí°ì ê²½ì°ë§,  se2_qe2_3ì ê±° -->
								<!-- ìë°°ê²½ì -->
								<dl class="se2_qe2_1">

								<dt><input type="radio" checked="checked" name="se2_tbp3" id="se2_cellbg2" class="husky_se2m_radio_bgc"><label for="se2_cellbg2">ì ë°°ê²½ì</label></dt>
								<dd><span class="se2_pre_color"><button style="background: none repeat scroll 0% 0% rgb(255, 255, 255);" type="button" class="husky_se2m_table_qe_bgcolor_btn"><span>ìì°¾ê¸°</span></button></span>		
									<!-- layer:ìë°°ê²½ì -->
									<div style="display:none;position:absolute;top:20px;left:0px;" class="se2_layer se2_b_t_b1">
										<div class="se2_in_layer husky_se2m_tbl_qe_bg_paletteHolder">
										</div>
									</div>
									<!-- //layer:ìë°°ê²½ì-->

								</dd>
								</dl>
								<!-- //ìë°°ê²½ì -->
								<!-- ë°°ê²½ì´ë¯¸ì§ì í -->
								<dl style="display: none;" class="se2_qe2_2 husky_se2m_tbl_qe_review_bg">
								<dt><input type="radio" name="se2_tbp3" id="se2_cellbg3" class="husky_se2m_radio_bgimg"><label for="se2_cellbg3">ì´ë¯¸ì§</label></dt>
								<dd><span class="se2_pre_bgimg"><button class="husky_se2m_table_qe_bgimage_btn se2_cellimg0" type="button"><span>ë°°ê²½ì´ë¯¸ì§ì í</span></button></span>
									<!-- layer:ë°°ê²½ì´ë¯¸ì§ì í -->
									<div style="display:none;position:absolute;top:20px;left:-155px;" class="se2_layer se2_b_t_b1">
										<div class="se2_in_layer husky_se2m_tbl_qe_bg_img_paletteHolder">
											<ul class="se2_cellimg_set">
											<li><button class="se2_cellimg0" type="button"><span>ë°°ê²½ìì</span></button></li>
											<li><button class="se2_cellimg1" type="button"><span>ë°°ê²½1</span></button></li>
											<li><button class="se2_cellimg2" type="button"><span>ë°°ê²½2</span></button></li>
											<li><button class="se2_cellimg3" type="button"><span>ë°°ê²½3</span></button></li>
											<li><button class="se2_cellimg4" type="button"><span>ë°°ê²½4</span></button></li>
											<li><button class="se2_cellimg5" type="button"><span>ë°°ê²½5</span></button></li>
											<li><button class="se2_cellimg6" type="button"><span>ë°°ê²½6</span></button></li>
											<li><button class="se2_cellimg7" type="button"><span>ë°°ê²½7</span></button></li>
											<li><button class="se2_cellimg8" type="button"><span>ë°°ê²½8</span></button></li>
											<li><button class="se2_cellimg9" type="button"><span>ë°°ê²½9</span></button></li>
											<li><button class="se2_cellimg10" type="button"><span>ë°°ê²½10</span></button></li>
											<li><button class="se2_cellimg11" type="button"><span>ë°°ê²½11</span></button></li>
											<li><button class="se2_cellimg12" type="button"><span>ë°°ê²½12</span></button></li>
											<li><button class="se2_cellimg13" type="button"><span>ë°°ê²½13</span></button></li>
											<li><button class="se2_cellimg14" type="button"><span>ë°°ê²½14</span></button></li>
											<li><button class="se2_cellimg15" type="button"><span>ë°°ê²½15</span></button></li>
											<li><button class="se2_cellimg16" type="button"><span>ë°°ê²½16</span></button></li>
											<li><button class="se2_cellimg17" type="button"><span>ë°°ê²½17</span></button></li>
											<li><button class="se2_cellimg18" type="button"><span>ë°°ê²½18</span></button></li>
											<li><button class="se2_cellimg19" type="button"><span>ë°°ê²½19</span></button></li>
											<li><button class="se2_cellimg20" type="button"><span>ë°°ê²½20</span></button></li>
											<li><button class="se2_cellimg21" type="button"><span>ë°°ê²½21</span></button></li>
											<li><button class="se2_cellimg22" type="button"><span>ë°°ê²½22</span></button></li>
											<li><button class="se2_cellimg23" type="button"><span>ë°°ê²½23</span></button></li>
											<li><button class="se2_cellimg24" type="button"><span>ë°°ê²½24</span></button></li>
											<li><button class="se2_cellimg25" type="button"><span>ë°°ê²½25</span></button></li>
											<li><button class="se2_cellimg26" type="button"><span>ë°°ê²½26</span></button></li>
											<li><button class="se2_cellimg27" type="button"><span>ë°°ê²½27</span></button></li>
											<li><button class="se2_cellimg28" type="button"><span>ë°°ê²½28</span></button></li>
											<li><button class="se2_cellimg29" type="button"><span>ë°°ê²½29</span></button></li>
											<li><button class="se2_cellimg30" type="button"><span>ë°°ê²½30</span></button></li>
											<li><button class="se2_cellimg31" type="button"><span>ë°°ê²½31</span></button></li>
											</ul>
										</div>
									</div>
									<!-- //layer:ë°°ê²½ì´ë¯¸ì§ì í-->
								</dd>
								</dl>
								<!-- //ë°°ê²½ì´ë¯¸ì§ì í -->
							</div>
							<dl style="display: block;" class="se2_qe3 se2_t_proper2">
							<dt><input type="radio" name="se2_tbp3" id="se2_tbp4" class="husky_se2m_radio_template"><label for="se2_tbp4">í ì¤íì¼</label></dt>
							<dd>
								<div class="se2_qe3_table">
								<div class="se2_select_ty2"><span class="se2_t_style1"></span><button class="se2_view_more husky_se2m_template_more" title="ëë³´ê¸°" type="button"><span>ëë³´ê¸°</span></button></div>
								<!-- layer:íì¤íì¼ -->
								<div style="display:none;top:33px;left:0;margin:0;" class="se2_layer_t_style">
									<ul>
									<li><button class="se2_t_style1" type="button"><span>í ì¤íì¼1</span></button></li>
									<li><button class="se2_t_style2" type="button"><span>í ì¤íì¼2</span></button></li>
									<li><button class="se2_t_style3" type="button"><span>í ì¤íì¼3</span></button></li>
									<li><button class="se2_t_style4" type="button"><span>í ì¤íì¼4</span></button></li>
									<li><button class="se2_t_style5" type="button"><span>í ì¤íì¼5</span></button></li>
									<li><button class="se2_t_style6" type="button"><span>í ì¤íì¼6</span></button></li>
									<li><button class="se2_t_style7" type="button"><span>í ì¤íì¼7</span></button></li>
									<li><button class="se2_t_style8" type="button"><span>í ì¤íì¼8</span></button></li>
									<li><button class="se2_t_style9" type="button"><span>í ì¤íì¼9</span></button></li>
									<li><button class="se2_t_style10" type="button"><span>í ì¤íì¼10</span></button></li>
									<li><button class="se2_t_style11" type="button"><span>í ì¤íì¼11</span></button></li>
									<li><button class="se2_t_style12" type="button"><span>í ì¤íì¼12</span></button></li>
									<li><button class="se2_t_style13" type="button"><span>í ì¤íì¼13</span></button></li>
									<li><button class="se2_t_style14" type="button"><span>í ì¤íì¼14</span></button></li>
									<li><button class="se2_t_style15" type="button"><span>í ì¤íì¼15</span></button></li>
									<li><button class="se2_t_style16" type="button"><span>í ì¤íì¼16</span></button></li>
									</ul>
								</div>
								<!-- //layer:íì¤íì¼ -->
								</div>
							</dd>
							</dl>
							<div style="display:none" class="se2_btn_area">
								<button class="se2_btn_save" type="button"><span>My ë¦¬ë·°ì ì¥</span></button>
							</div>
							<div class="se2_qdim0 husky_se2m_tbl_qe_dim1"></div>
							<div class="se2_qdim4 husky_se2m_tbl_qe_dim2"></div>
							<div class="se2_qdim6c husky_se2m_tbl_qe_dim_del_col"></div>
							<div class="se2_qdim6r husky_se2m_tbl_qe_dim_del_row"></div>
						</div>
					</div>
				</div>
				</div>
				<!--//@lazyload_html-->
				<!-- //í/ê¸ìì ê°ë¨í¸ì§ê¸° -->
				<!-- ì´ë¯¸ì§ ê°ë¨í¸ì§ê¸° -->
				<!--@lazyload_html qe_image-->
				<div class="q_img_wrap">
					<button class="_fold se2_qmax q_open_img_full" style="position:absolute;display:none;top:240px;left:210px;z-index:30;" title="ìµëí" type="button"><span>íµìëí°ìµëí</span></button>
					<div class="_full se2_qeditor se2_table_set" style="position:absolute;display:none;top:140px;left:450px;z-index:30;">
						<div class="se2_qbar  q_dragable"><span class="se2_qmini"><button title="ìµìí" class="q_open_img_fold"><span>íµìëí°ìµìí</span></button></span></div>
						<div class="se2_qbody0">
							<div class="se2_qbody">
								<div class="se2_qe10">
									<label for="se2_swidth">ê°ë¡</label><input type="text" class="input_ty1 widthimg" name="" id="se2_swidth" value="1024"><label class="se2_sheight" for="se2_sheight">ì¸ë¡</label><input type="text" class="input_ty1 heightimg" name="" id="se2_sheight" value="768"><button class="se2_sreset" type="button"><span>ì´ê¸°í</span></button>
									<div class="se2_qe10_1"><input type="checkbox" name="" class="se2_srate" id="se2_srate"><label for="se2_srate">ê°ë¡ ì¸ë¡ ë¹ì¨ ì ì§</label></div>
								</div>
								<div class="se2_qe11">
									<dl class="se2_qe11_1">
									<dt><label for="se2_b_width2">íëë¦¬ëê»</label></dt>
										<dd class="se2_numberStepper"><input type="text" class="input_ty1 input bordersize" value="1" maxlength="2" name="" id="se2_b_width2" readonly="readonly">
										<button class="se2_add plus" type="button"><span>1px ëíê¸°</span></button>
										<button class="se2_del minus" type="button"><span>1px ë¹¼ê¸°</span></button>
									</dd>
									</dl>

									<dl class="se2_qe11_2">
									<dt>íëë¦¬ ì</dt>
									<dd><span class="se2_pre_color"><button style="background:#000000;" type="button" class="husky_se2m_img_qe_bgcolor_btn"><span>ìì°¾ê¸°</span></button></span>
										<!-- layer:íëë¦¬ ì -->
										<div style="display:none;position:absolute;top:20px;left:-209px;" class="se2_layer se2_b_t_b1">
											<div class="se2_in_layer husky_se2m_img_qe_bg_paletteHolder">
											</div>
										</div>
										<!-- //layer:íëë¦¬ ì -->
									</dd>
									</dl>
								</div>
								<dl class="se2_qe12">
								<dt>ì ë ¬</dt>
								<dd><button title="ì ë ¬ìì" class="se2_align0" type="button"><span>ì ë ¬ìì</span></button><button title="ì¢ì¸¡ì ë ¬" class="se2_align1 left" type="button"><span>ì¢ì¸¡ì ë ¬</span></button><button title="ì°ì¸¡ì ë ¬" class="se2_align2 right" type="button"><span>ì°ì¸¡ì ë ¬</span></button>
								</dd>
								</dl>
								<button class="se2_highedit" type="button"><span>ê³ ê¸í¸ì§</span></button>
								<div class="se2_qdim0"></div>
							</div>
						</div>
					</div>
				</div>
				<!--//@lazyload_html-->
				<!-- ì´ë¯¸ì§ ê°ë¨í¸ì§ê¸° -->
			</div>
		</div>
		<!-- //ìë ¥ -->
		<!-- ìë ¥ì°½ì¡°ì / ëª¨ëì í -->
		<div class="se2_conversion_mode">
			<button type="button" class="se2_inputarea_controller husky_seditor_editingArea_verticalResizer" title="ìë ¥ì°½ í¬ê¸° ì¡°ì "><span>ìë ¥ì°½ í¬ê¸° ì¡°ì </span></button>
			<ul class="se2_converter">
			<li class="active"><button type="button" class="se2_to_editor"><span>Editor</span></button></li>
			<li><button type="button" class="se2_to_html"><span>HTML</span></button></li>
			<li><button type="button" class="se2_to_text"><span>TEXT</span></button></li>
			</ul>
		</div>
		<!-- //ìë ¥ì°½ì¡°ì / ëª¨ëì í -->
		<hr>
		
	</div>
</div>
<!-- SE2 Markup End -->


</body>
</html>