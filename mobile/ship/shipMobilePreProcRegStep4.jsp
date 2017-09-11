<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.03.08] ship mobile 도정 공정정보 등록" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.mobile">
	<!-- [s] 모바일 콘텐츠 -->
	<tiles:putAttribute name="page-content">

		<div class="wp-wrap">
			<form method="post" id="js-ship-mobile-pre-proc-reg-step4-form">
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
			
			<!-- header -->
			<header class="wp-header wp-dark-shadow">
				<button type="button" class="wp-btn wp-left wp-prev-white"><spring:message code="TODO.KEY" text="이전" /></button>
				<h1><spring:message code="TODO.KEY" text="전처리장 정보 등록" /></h1>
			</header>
			<!-- //header -->
			
			<!-- step -->
			<div class="wp-step-area wp-preProc"><!-- 전처리장 class -->
				<div class="wp-step wp-wd4"><!-- 번호 조정 class -->
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
					<h1 class="wp-section-title wp-border-none"><spring:message code="TODO.KEY" text="4단계.  Steel &amp; Preheating Cond." /></h1>
					<div class="wp-table h-center wp-reg wp-noline">
					<table>
						<caption></caption>
						<colgroup>
							<col style="width:50%">
							<col style="width:50%">
						</colgroup>
						<tbody>
							<tr>
								<td colspan="2">
									<div class="wp-ui-select wp-wd100p">
										<select name="js-ship-mobile-pre-proc-reg-steel-grade" id="js-ship-mobile-pre-proc-reg-steel-grade" title="항목 개수 설정">
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<th>Shape of Steel</th>
								<td id="js-ship-mobile-pre-proc-reg-shape-of-steel" class="wp-toggle-area">
									<div class="wp-toggle-shape toggle-light" style="height: 32px; width: 80px;">
										<div class="toggle-slide">
											<div class="toggle-inner" style="width: 128px; margin-left: 0px;">
												<div class="toggle-on active" style="height: 32px; width: 64px; text-indent: -10.6667px; line-height: 32px;">Angle</div>
												<div class="toggle-blob" style="height: 32px; width: 32px; margin-left: -16px;"></div>
												<div class="toggle-off" style="height: 32px; width: 64px; margin-left: -16px; text-indent: 10.6667px; line-height: 32px;">Plate</div>
											</div>
										</div>
									</div>
									<input type="hidden" name="js-ship-mobile-pre-proc-reg-steel-shape" id="js-ship-mobile-pre-proc-reg-steel-shape" />
								</td>
							</tr>
							<tr>
								<td colspan="2"><input type="text" name="js-ship-mobile-pre-proc-reg-hull-no" id="js-ship-mobile-pre-proc-reg-hull-no" title="내용입력" placeholder="Hull No."></td>
							</tr>
							<tr>
								<td colspan="2"><input type="text" name="js-ship-mobile-pre-proc-reg-pre-method" id="js-ship-mobile-pre-proc-reg-pre-method" title="내용입력" placeholder="화염세정" disabled="disabled"></td>
							</tr>
							<tr>
								<th>Oper. Cond.</th>
								<td id="js-ship-mobile-pre-proc-reg-oper-cond" class="wp-toggle-area">
									<div class="wp-toggle-operate toggle-light" style="height: 32px; width: 80px;">
										<div class="toggle-slide">
											<div class="toggle-inner" style="width: 128px; margin-left: 0px;">
												<div class="toggle-on active" style="height: 32px; width: 64px; text-indent: -10.6667px; line-height: 32px;">가동</div>
												<div class="toggle-blob" style="height: 32px; width: 32px; margin-left: -16px;"></div>
												<div class="toggle-off" style="height: 32px; width: 64px; margin-left: -16px; text-indent: 10.6667px; line-height: 32px;">비가동</div>
											</div>
										</div>
									</div>
									<input type="hidden" name="js-ship-mobile-pre-proc-reg-operating-condition" id="js-ship-mobile-pre-proc-reg-operating-condition" />
								</td>
							</tr>
						</tbody>
					</table>
					</div>
				</div>
			</section>
			
			<!-- //wp-container -->
			<div class="wp-position-btn">
				<button type="button" id="js-ship-mobile-pre-proc-reg-step4-back" class="wp-btn"><spring:message code="TODO.KEY" text="이전" /></button>
				<button type="button" id="js-ship-mobile-pre-proc-reg-step4-next" class="wp-btn"><spring:message code="TODO.KEY" text="다음" /></button>
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
				
				retrieveShipSteelShape.request();
				
				// 조선소 코드 셋팅
				$('#js-ship-mobile-pre-proc-reg-yard-code').val(yardCode);
				$('#js-ship-mobile-pre-proc-reg-yard-name').val(yardName);
				
				// 뒤로가기 버튼
				$('.wp-prev-white').off().on('click', function() {
					var url = '/mobile/ship/shipMobileProcInfoMng.do';
					
					url += '?yardCode='+ yardCode +'&yardName='+ yardName;
					window.location.href = url;
					
				});
				
				// 이전 버튼
				$('#js-ship-mobile-pre-proc-reg-step4-back').off().on('click', function() {
					retrieveShipMobilePreProcRegStep3(seqShipPreProcInfo);
				});
				
				// 다음 버튼
				$('#js-ship-mobile-pre-proc-reg-step4-next').off().on('click', function() {
					retrieveShipMobilePreProcRegStep5(seqShipPreProcInfo);
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
								$('#js-ship-mobile-pre-proc-reg-steel-grade').val(data[0].steelGrade);
								
								var steelShape = data[0].steelShape;
								
								if(steelShape == "A"){
									if($('#js-ship-mobile-pre-proc-reg-shape-of-steel').find('div.toggle-off').hasClass("active")){
										$('#js-ship-mobile-pre-proc-reg-shape-of-steel').find('div.toggle-off').click();
									}
								}
								else
								{
									if($('#js-ship-mobile-pre-proc-reg-shape-of-steel').find('div.toggle-on').hasClass("active")){
										$('#js-ship-mobile-pre-proc-reg-shape-of-steel').find('div.toggle-on').click();
									}
								}
								
								$('#js-ship-mobile-pre-proc-reg-hull-no').val(data[0].hullNo);
								
								var operCond = data[0].operCond;
								
								if(operCond == "Y"){
									if($('#js-ship-mobile-pre-proc-reg-oper-cond').find('div.toggle-off').hasClass("active")){
										$('#js-ship-mobile-pre-proc-reg-oper-cond').find('div.toggle-off').click();
									}
								}
								else
								{
									if($('#js-ship-mobile-pre-proc-reg-oper-cond').find('div.toggle-on').hasClass("active")){
										$('#js-ship-mobile-pre-proc-reg-oper-cond').find('div.toggle-on').click();
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

			
			// Steel Grade 콤보
			var retrieveShipSteelShape = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							
							var data = response.rs;

							$('#js-ship-mobile-pre-proc-reg-steel-grade').find('option').remove();
							
							for(var i=0; i < data.length; i++)
							{
								$('#js-ship-mobile-pre-proc-reg-steel-grade').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
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
				request: function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						service: 'ship.common',
						method: 'retrieveShipSteelGrade'
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			var retrieveShipMobilePreProcRegStep3 = function(seqShipPreProcInfo){
				
				var url = '/mobile/ship/shipMobilePreProcRegStep3.do';
				
				url += '?yardCode='+ yardCode +'&yardName='+ yardName;
				
				if(!app.utils.isEmpty(seqShipPreProcInfo)) url += '&seqShipPreProcInfo='+seqShipPreProcInfo;
				
				$('#js-ship-mobile-pre-proc-reg-step4-form').attr('action', url);
				$('#js-ship-mobile-pre-proc-reg-step4-form').submit();
				
			}
			
			var retrieveShipMobilePreProcRegStep5 = function(seqShipPreProcInfo){
				
				// Shape of Steel
				if($('#js-ship-mobile-pre-proc-reg-shape-of-steel').find('div.toggle-on').hasClass('active'))
					$('#js-ship-mobile-pre-proc-reg-steel-shape').val('A');
				else
					$('#js-ship-mobile-pre-proc-reg-steel-shape').val('P');
				
				// Operating Condition
				if($('#js-ship-mobile-pre-proc-reg-oper-cond').find('div.toggle-on').hasClass('active'))
					$('#js-ship-mobile-pre-proc-reg-operating-condition').val('Y');
				else
					$('#js-ship-mobile-pre-proc-reg-operating-condition').val('N');
				
				var url = '/mobile/ship/shipMobilePreProcRegStep5.do';
				url += '?yardCode='+ yardCode +'&yardName='+ yardName;
				
				if(!app.utils.isEmpty(seqShipPreProcInfo)) url += '&seqShipPreProcInfo='+seqShipPreProcInfo;
				
				$('#js-ship-mobile-pre-proc-reg-step4-form').attr('action', url);
				$('#js-ship-mobile-pre-proc-reg-step4-form').submit();
				
			}
			
		</script>
		
	</tiles:putAttribute>
	<!-- [e] 페이지 레벨 스크립트 -->
</tiles:insertDefinition>