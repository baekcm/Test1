<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.03.08] ship mobile 도정 공정정보 등록" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.mobile">
	<!-- [s] 모바일 콘텐츠 -->
	<tiles:putAttribute name="page-content">
	
		<div class="wp-wrap">
			<form method="post" id="js-ship-mobile-pre-proc-reg-step5-form">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-post-yn" id="js-ship-mobile-pre-proc-reg-post-yn" value="${param['js-ship-mobile-pre-proc-reg-post-yn']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-seq" id="js-ship-mobile-pre-proc-reg-seq" value="${param['js-ship-mobile-pre-proc-reg-seq']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-yard-code" id="js-ship-mobile-pre-proc-reg-yard-code" value="${param['js-ship-mobile-pre-proc-reg-yard-code']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-yard-name" id="js-ship-mobile-pre-proc-reg-yard-name" value="${param['js-ship-mobile-pre-proc-reg-yard-name']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-insp-date" id="js-ship-mobile-pre-proc-reg-insp-date" value="${param['js-ship-mobile-pre-proc-reg-insp-date']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-emp" id="js-ship-mobile-pre-proc-reg-emp" value="${param['js-ship-mobile-pre-proc-reg-emp']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-emp-name" id="js-ship-mobile-pre-proc-reg-emp-name" value="${param['js-ship-mobile-pre-proc-reg-emp-name']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-line-status" id="js-ship-mobile-pre-proc-reg-line-status" value="${param['js-ship-mobile-pre-proc-reg-line-status']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-line-no" id="js-ship-mobile-pre-proc-reg-line-no" value="${param['js-ship-mobile-pre-proc-reg-line-no']}">
			
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-pta" id="js-ship-mobile-pre-proc-reg-pta" value="${param['js-ship-mobile-pre-proc-reg-pta']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-ptb" id="js-ship-mobile-pre-proc-reg-ptb" value="${param['js-ship-mobile-pre-proc-reg-ptb']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-thinner" id="js-ship-mobile-pre-proc-reg-thinner" value="${param['js-ship-mobile-pre-proc-reg-thinner']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-remark" id="js-ship-mobile-pre-proc-reg-remark" value="${param['js-ship-mobile-pre-proc-reg-remark']}">
			
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-phinner-ratio" id="js-ship-mobile-pre-proc-reg-phinner-ratio" value="${param['js-ship-mobile-pre-proc-reg-phinner-ratio']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-input-pressure" id="js-ship-mobile-pre-proc-reg-input-pressure" value="${param['js-ship-mobile-pre-proc-reg-input-pressure']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-pump-ratio-a" id="js-ship-mobile-pre-proc-reg-pump-ratio-a" value="${param['js-ship-mobile-pre-proc-reg-pump-ratio-a']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-pump-ratio-b" id="js-ship-mobile-pre-proc-reg-pump-ratio-b" value="${param['js-ship-mobile-pre-proc-reg-pump-ratio-b']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-tip-size" id="js-ship-mobile-pre-proc-reg-tip-size" value="${param['js-ship-mobile-pre-proc-reg-tip-size']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-duplication" id="js-ship-mobile-pre-proc-reg-duplication" value="${param['js-ship-mobile-pre-proc-reg-duplication']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-conveyor-speed" id="js-ship-mobile-pre-proc-reg-conveyor-speed" value="${param['js-ship-mobile-pre-proc-reg-conveyor-speed']}">
			
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-steel-grade" id="js-ship-mobile-pre-proc-reg-steel-grade" value="${param['js-ship-mobile-pre-proc-reg-steel-grade']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-steel-shape" id="js-ship-mobile-pre-proc-reg-steel-shape" value="${param['js-ship-mobile-pre-proc-reg-steel-shape']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-hull-no" id="js-ship-mobile-pre-proc-reg-hull-no" value="${param['js-ship-mobile-pre-proc-reg-hull-no']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-operating-condition" id="js-ship-mobile-pre-proc-reg-operating-condition" value="${param['js-ship-mobile-pre-proc-reg-operating-condition']}">
			
			<!-- header -->
			<header class="wp-header wp-dark-shadow">
				<button type="button" class="wp-btn wp-left wp-prev-white"><spring:message code="TODO.KEY" text="이전" /></button>
				<h1><spring:message code="TODO.KEY" text="전처리장 정보 등록" /></h1>
			</header>
			<!-- //header -->
			
			<!-- step -->
			<div class="wp-step-area wp-preProc"><!-- 전처리장 class -->
				<div class="wp-step wp-wd5"><!-- 번호 조정 class -->
					<div class="wp-depth1"></div>
					<div class="wp-depth2"></div>
					<div class="wp-depth3"></div>
					<ul>
						<li>1</li>
						<li>2</li>
						<li>3</li>
						<li>4</li>
						<li>5</li>
						<li>6</li>
					</ul>
				</div>
			</div>
			<!-- //step -->
			<!-- wp-container -->
			<section class="wp-container wp-pb50 wp-bg-f">
				<div class="wp-cont-area">
					<h1 class="wp-section-title wp-border-none"><spring:message code="TODO.KEY" text="5단계.  Surface &amp; Coating Cond." /></h1>
					<div class="wp-table h-center wp-reg wp-noline">
					<table>
						<caption></caption>
						<colgroup>
							<col style="width:50%">
							<col style="width:50%">
						</colgroup>
						<tbody>
							<tr>
								<th>Blasting Cond.</th>
								<td id="js-ship-mobile-pre-proc-reg-blasting-condition-td" class="wp-toggle-area">
									<div class="wp-toggle-ox toggle-light" style="height: 32px; width: 80px;">
										<div class="toggle-slide">
											<div class="toggle-inner" style="width: 128px; margin-left: 0px;">
												<div class="toggle-on active" style="height: 32px; width: 64px; text-indent: -10.6667px; line-height: 32px;">O</div>
												<div class="toggle-blob" style="height: 32px; width: 32px; margin-left: -16px;"></div>
												<div class="toggle-off" style="height: 32px; width: 64px; margin-left: -16px; text-indent: 10.6667px; line-height: 32px;">X</div>
											</div>
										</div>
									</div>
									<input type="hidden" name="js-ship-mobile-pre-proc-reg-blasting-condition" id="js-ship-mobile-pre-proc-reg-blasting-condition" />
								</td>
							</tr>
							<tr>
								<th>Cleaning Cond.</th>
								<td id="js-ship-mobile-pre-proc-reg-cleaning-condition-td" class="wp-toggle-area">
									<div class="wp-toggle-ox toggle-light" style="height: 32px; width: 80px;">
										<div class="toggle-slide">
											<div class="toggle-inner" style="width: 128px; margin-left: 0px;">
												<div class="toggle-on active" style="height: 32px; width: 64px; text-indent: -10.6667px; line-height: 32px;">O</div>
												<div class="toggle-blob" style="height: 32px; width: 32px; margin-left: -16px;"></div>
												<div class="toggle-off" style="height: 32px; width: 64px; margin-left: -16px; text-indent: 10.6667px; line-height: 32px;">X</div>
											</div>
										</div>
									</div>
									<input type="hidden" name="js-ship-mobile-pre-proc-reg-cleaning-condition" id="js-ship-mobile-pre-proc-reg-cleaning-condition" />
								</td>
							</tr>
							<tr>
								<th>Coating Cond.</th>
								<td id="js-ship-mobile-pre-proc-reg-general-condition-td" class="wp-toggle-area">
									<div class="wp-toggle-ox toggle-light" style="height: 32px; width: 80px;">
										<div class="toggle-slide">
											<div class="toggle-inner" style="width: 128px; margin-left: 0px;">
												<div class="toggle-on active" style="height: 32px; width: 64px; text-indent: -10.6667px; line-height: 32px;">O</div>
												<div class="toggle-blob" style="height: 32px; width: 32px; margin-left: -16px;"></div>
												<div class="toggle-off" style="height: 32px; width: 64px; margin-left: -16px; text-indent: 10.6667px; line-height: 32px;">X</div>
											</div>
										</div>
									</div>
									<input type="hidden" name="js-ship-mobile-pre-proc-reg-general-condition" id="js-ship-mobile-pre-proc-reg-general-condition" />
								</td>
							</tr>
							<tr>
								<th>Paint Holiday</th>
								<td id="js-ship-mobile-pre-proc-reg-paint-holiday-td" class="wp-toggle-area">
									<div class="wp-toggle-ox toggle-light" style="height: 32px; width: 80px;">
										<div class="toggle-slide">
											<div class="toggle-inner" style="width: 128px; margin-left: 0px;">
												<div class="toggle-on active" style="height: 32px; width: 64px; text-indent: -10.6667px; line-height: 32px;">O</div>
												<div class="toggle-blob" style="height: 32px; width: 32px; margin-left: -16px;"></div>
												<div class="toggle-off" style="height: 32px; width: 64px; margin-left: -16px; text-indent: 10.6667px; line-height: 32px;">X</div>
											</div>
										</div>
									</div>
									<input type="hidden" name="js-ship-mobile-pre-proc-reg-paint-holiday" id="js-ship-mobile-pre-proc-reg-paint-holiday" />
								</td>
							</tr>
							<tr>
								<th>Dust Spray</th>
								<td id="js-ship-mobile-pre-proc-reg-dust-spray-td" class="wp-toggle-area">
									<div class="wp-toggle-ox toggle-light" style="height: 32px; width: 80px;">
										<div class="toggle-slide">
											<div class="toggle-inner" style="width: 128px; margin-left: 0px;">
												<div class="toggle-on active" style="height: 32px; width: 64px; text-indent: -10.6667px; line-height: 32px;">O</div>
												<div class="toggle-blob" style="height: 32px; width: 32px; margin-left: -16px;"></div>
												<div class="toggle-off" style="height: 32px; width: 64px; margin-left: -16px; text-indent: 10.6667px; line-height: 32px;">X</div>
											</div>
										</div>
									</div>
									<input type="hidden" name="js-ship-mobile-pre-proc-reg-dust-spray" id="js-ship-mobile-pre-proc-reg-dust-spray" />
								</td>
							</tr>
						</tbody>
					</table>
					</div>
				</div>
			</section>
			
			<!-- //wp-container -->
			<div class="wp-position-btn">
				<button type="button" id="js-ship-mobile-pre-proc-reg-step5-back" class="wp-btn"><spring:message code="TODO.KEY" text="이전" /></button>
				<button type="button" id="js-ship-mobile-pre-proc-reg-step5-next" class="wp-btn"><spring:message code="TODO.KEY" text="다음" /></button>
			</div>
			
			</form>
		</div>

	</tiles:putAttribute>
	<!-- [e] 모바일 콘텐츠 -->
	
	<!-- [s] 페이지 레벨 스크립트 -->
	<tiles:putAttribute name="page-level-js">
		
		<script type="text/javascript">

			var seqShipPreProcInfo = getQuerystring('seqShipPreProcInfo');
			var yardCode = getQuerystring('yardCode');
			var yardName = getQuerystring('yardName');
			
			$(document).ready(function(){
				
				if($('#js-ship-mobile-pre-proc-reg-post-yn').val() != 'Y')
				{
					fn_alertInfo('A', '<spring:message code="TODO.KEY" text="1단계부터 입력해 주세요."/>', function(){
						var url = '/mobile/ship/shipMobilePreProcRegStep1.do';
						
						url += '?yardCode='+ yardCode +'&yardName='+ yardName;
						
						if(!app.utils.isEmpty(seqShipPreProcInfo)) url += '&seqShipPreProcInfo='+seqShipPreProcInfo;
						
						window.location.href = url;
						
					});
					
					return;
					
				}
				
				// 시퀀스 셋팅
				$('#js-ship-mobile-pre-proc-reg-seq').val(seqShipPreProcInfo);
				
				// 조선소 코드 셋팅
				$('#js-ship-mobile-pre-proc-reg-yard-code').val(yardCode);
				
				// 뒤로가기 버튼
				$('.wp-prev-white').off().on('click', function() {
					var url = '/mobile/ship/shipMobileProcInfoMng.do';
					
					url += '?yardCode='+ yardCode +'&yardName='+ yardName;
					window.location.href = url;
					
				});
				
				// 이전 버튼
				$('#js-ship-mobile-pre-proc-reg-step5-back').off().on('click', function() {
					retrieveShipMobilePreProcRegStep4(seqShipPreProcInfo);
				});
				
				// 다음 버튼
				$('#js-ship-mobile-pre-proc-reg-step5-next').off().on('click', function() {
					retrieveShipMobilePreProcRegStep6(seqShipPreProcInfo);
				});
				
				// 조회(수정시)
				if(!app.utils.isEmpty(seqShipPreProcInfo)){
					retrieveMobilePreResultList.request(seqShipPreProcInfo);
				}
				
			});
			
			
			// 상세 조회
			var retrieveMobilePreResultList = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';

						if (message === 'OK') {
							
							var data = response.rs.main;
							
							if(data.length > 0)
							{
								var blastCond = data[0].blastCond;
								
								if(blastCond == "Y"){
									if($('#js-ship-mobile-pre-proc-reg-blasting-condition-td').find('div.toggle-off').hasClass("active")){
										$('#js-ship-mobile-pre-proc-reg-blasting-condition-td').find('div.toggle-off').click();
									}
								}
								else
								{
									if($('#js-ship-mobile-pre-proc-reg-blasting-condition-td').find('div.toggle-on').hasClass("active")){
										$('#js-ship-mobile-pre-proc-reg-blasting-condition-td').find('div.toggle-on').click();
									}
								}
								
								var cleanCond = data[0].cleanCond;
								
								if(cleanCond == "Y"){
									if($('#js-ship-mobile-pre-proc-reg-cleaning-condition-td').find('div.toggle-off').hasClass("active")){
										$('#js-ship-mobile-pre-proc-reg-cleaning-condition-td').find('div.toggle-off').click();
									}
								}
								else
								{
									if($('#js-ship-mobile-pre-proc-reg-cleaning-condition-td').find('div.toggle-on').hasClass("active")){
										$('#js-ship-mobile-pre-proc-reg-cleaning-condition-td').find('div.toggle-on').click();
									}
								}
								
								var genCond = data[0].genCond;
								
								if(genCond == "Y"){
									if($('#js-ship-mobile-pre-proc-reg-general-condition-td').find('div.toggle-off').hasClass("active")){
										$('#js-ship-mobile-pre-proc-reg-general-condition-td').find('div.toggle-off').click();
									}
								}
								else
								{
									if($('#js-ship-mobile-pre-proc-reg-general-condition-td').find('div.toggle-on').hasClass("active")){
										$('#js-ship-mobile-pre-proc-reg-general-condition-td').find('div.toggle-on').click();
									}
								}
								
								var paintHoliday = data[0].paintHoliday;
								
								if(paintHoliday == "Y"){
									if($('#js-ship-mobile-pre-proc-reg-paint-holiday-td').find('div.toggle-off').hasClass("active")){
										$('#js-ship-mobile-pre-proc-reg-paint-holiday-td').find('div.toggle-off').click();
									}
								}
								else
								{
									if($('#js-ship-mobile-pre-proc-reg-paint-holiday-td').find('div.toggle-on').hasClass("active")){
										$('#js-ship-mobile-pre-proc-reg-paint-holiday-td').find('div.toggle-on').click();
									}
								}
								
								var dustSpray = data[0].dustSpray;
								
								if(dustSpray == "Y"){
									if($('#js-ship-mobile-pre-proc-reg-dust-spray-td').find('div.toggle-off').hasClass("active")){
										$('#js-ship-mobile-pre-proc-reg-dust-spray-td').find('div.toggle-off').click();
									}
								}
								else
								{
									if($('#js-ship-mobile-pre-proc-reg-dust-spray-td').find('div.toggle-on').hasClass("active")){
										$('#js-ship-mobile-pre-proc-reg-dust-spray-td').find('div.toggle-on').click();
									}
								}
								
							}
							
						}else
						{
							// 서비스 요청 처리 오류 발생 메시지
							//console.log(message);
							fn_alertInfo('E', message);
							// 서비스 요청 처리 Exception 메시지
							console.log(response.error || '');
						}
					}
				},
				error: function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
					//console.log(errorText);
					fn_alertInfo('E', errorText);
				},
				complete: function(jqueryXHR, status) {
					// ------------------------------------
					// http response complete
					// ------------------------------------
					app.mask.pageUnlock();
				},
				request: function(seqShipPreProcInfo) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					
					var params = {
						service		: 'ship.preinfo',
						method		: 'retrieveMobilePreResultList',
						yardCode	: yardCode,
						inspDate	: $("#js-ship-mobile-pre-proc-reg-insp-date").val(),
						lineNo		: $("#js-ship-mobile-pre-proc-reg-line-no").val()
					};

					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			var retrieveShipMobilePreProcRegStep4 = function(seqShipPreProcInfo){
				
				var url = '/mobile/ship/shipMobilePreProcRegStep4.do';
				
				url += '?yardCode='+ yardCode +'&yardName='+ yardName;
				
				if(!app.utils.isEmpty(seqShipPreProcInfo)) url += '&seqShipPreProcInfo='+seqShipPreProcInfo;
				
				$('#js-ship-mobile-pre-proc-reg-step5-form').attr('action', url);
				$('#js-ship-mobile-pre-proc-reg-step5-form').submit();
				
			}
			
			var retrieveShipMobilePreProcRegStep6 = function(seqShipPreProcInfo){
				
				// Blasting Cond
				if($('#js-ship-mobile-pre-proc-reg-blasting-condition-td').find('div.toggle-on').hasClass('active'))
					$('#js-ship-mobile-pre-proc-reg-blasting-condition').val('Y');
				else
					$('#js-ship-mobile-pre-proc-reg-blasting-condition').val('N');
				
				// Cleaning Cond
				if($('#js-ship-mobile-pre-proc-reg-cleaning-condition-td').find('div.toggle-on').hasClass('active'))
					$('#js-ship-mobile-pre-proc-reg-cleaning-condition').val('Y');
				else
					$('#js-ship-mobile-pre-proc-reg-cleaning-condition').val('N');
				
				// Coating Cond
				if($('#js-ship-mobile-pre-proc-reg-general-condition-td').find('div.toggle-on').hasClass('active'))
					$('#js-ship-mobile-pre-proc-reg-general-condition').val('Y');
				else
					$('#js-ship-mobile-pre-proc-reg-general-condition').val('N');
				
				// Paint Holiday
				if($('#js-ship-mobile-pre-proc-reg-paint-holiday-td').find('div.toggle-on').hasClass('active'))
					$('#js-ship-mobile-pre-proc-reg-paint-holiday').val('Y');
				else
					$('#js-ship-mobile-pre-proc-reg-paint-holiday').val('N');
				
				// Dust Spray
				if($('#js-ship-mobile-pre-proc-reg-dust-spray-td').find('div.toggle-on').hasClass('active'))
					$('#js-ship-mobile-pre-proc-reg-dust-spray').val('Y');
				else
					$('#js-ship-mobile-pre-proc-reg-dust-spray').val('N');
				
				var url = '/mobile/ship/shipMobilePreProcRegStep6.do';
				url += '?yardCode='+ yardCode +'&yardName='+ yardName;
				
				if(!app.utils.isEmpty(seqShipPreProcInfo)) url += '&seqShipPreProcInfo='+seqShipPreProcInfo;
				
				$('#js-ship-mobile-pre-proc-reg-step5-form').attr('action', url);
				$('#js-ship-mobile-pre-proc-reg-step5-form').submit();
				
			}
			
		</script>
		
	</tiles:putAttribute>
	<!-- [e] 페이지 레벨 스크립트 -->
</tiles:insertDefinition>