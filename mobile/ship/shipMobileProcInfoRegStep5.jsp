<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.03.08] ship mobile 도정 공정정보 등록" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.mobile">
	<!-- [s] 모바일 콘텐츠 -->
	<tiles:putAttribute name="page-content">
	<div class="wp-wrap">
		<form method="post" id="js-ship-mobile-proc-reg-form">
			<input type="hidden" id="js-ship-mobile-proc-reg-post-yn" name="js-ship-mobile-proc-reg-post-yn" value="${param['js-ship-mobile-proc-reg-post-yn']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-seq">
			<input type="hidden" id="js-ship-mobile-proc-reg-yard-code">
			<input type="hidden" id="js-ship-mobile-proc-reg-insp-date" name="js-ship-mobile-proc-reg-insp-date" value="${param['js-ship-mobile-proc-reg-insp-date']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-insp-emp" name="js-ship-mobile-proc-reg-insp-emp" value="${param['js-ship-mobile-proc-reg-insp-emp']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-insp-place" name="js-ship-mobile-proc-reg-insp-place" value="${param['js-ship-mobile-proc-reg-insp-place']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-insp-remark" name="js-ship-mobile-proc-reg-insp-remark" value="${param['js-ship-mobile-proc-reg-insp-remark']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-hull-no" name="js-ship-mobile-proc-reg-hull-no" value="${param['js-ship-mobile-proc-reg-hull-no']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-proc-id" name="js-ship-mobile-proc-reg-proc-id" value="${param['js-ship-mobile-proc-reg-proc-id']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-proc-section1" name="js-ship-mobile-proc-reg-proc-section1" value="${param['js-ship-mobile-proc-reg-proc-section1']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-proc-section2" name="js-ship-mobile-proc-reg-proc-section2" value="${param['js-ship-mobile-proc-reg-proc-section2']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-proc-section3" name="js-ship-mobile-proc-reg-proc-section3" value="${param['js-ship-mobile-proc-reg-proc-section3']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-proc-section4" name="js-ship-mobile-proc-reg-proc-section4" value="${param['js-ship-mobile-proc-reg-proc-section4']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-maker-code" name="js-ship-mobile-proc-reg-maker-code" value="${param['js-ship-mobile-proc-reg-maker-code']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-product-id" name="js-ship-mobile-proc-reg-product-id" value="${param['js-ship-mobile-proc-reg-product-id']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-color-name1" name="js-ship-mobile-proc-reg-color-name1" value="${param['js-ship-mobile-proc-reg-color-name1']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-pta-lot-no" name="js-ship-mobile-proc-reg-pta-lot-no" value="${param['js-ship-mobile-proc-reg-pta-lot-no']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-ptb-lot-no" name="js-ship-mobile-proc-reg-ptb-lot-no" value="${param['js-ship-mobile-proc-reg-ptb-lot-no']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-thinner-lot-no" name="js-ship-mobile-proc-reg-thinner-lot-no" value="${param['js-ship-mobile-proc-reg-thinner-lot-no']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-pta-ratio" name="js-ship-mobile-proc-reg-pta-ratio" value="${param['js-ship-mobile-proc-reg-pta-ratio']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-ptb-ratio" name="js-ship-mobile-proc-reg-ptb-ratio" value="${param['js-ship-mobile-proc-reg-ptb-ratio']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-thinner-ratio" name="js-ship-mobile-proc-reg-thinner-ratio" value="${param['js-ship-mobile-proc-reg-thinner-ratio']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-svr" name="js-ship-mobile-proc-reg-svr" value="${param['js-ship-mobile-proc-reg-svr']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-weather-condition" name="js-ship-mobile-proc-reg-weather-condition" value="${param['js-ship-mobile-proc-reg-weather-condition']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-dt" name="js-ship-mobile-proc-reg-dt" value="${param['js-ship-mobile-proc-reg-dt']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-wt" name="js-ship-mobile-proc-reg-wt" value="${param['js-ship-mobile-proc-reg-wt']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-st" name="js-ship-mobile-proc-reg-st" value="${param['js-ship-mobile-proc-reg-st']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-dp" name="js-ship-mobile-proc-reg-dp" value="${param['js-ship-mobile-proc-reg-dp']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-rh" name="js-ship-mobile-proc-reg-rh" value="${param['js-ship-mobile-proc-reg-rh']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-insp-time" name="js-ship-mobile-proc-reg-insp-time" value="${param['js-ship-mobile-proc-reg-insp-time']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-amine-yn" name="js-ship-mobile-proc-reg-amine-yn" value="${param['js-ship-mobile-proc-reg-amine-yn']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-sweat-icing-yn" name="js-ship-mobile-proc-reg-sweat-icing-yn" value="${param['js-ship-mobile-proc-reg-sweat-icing-yn']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-proc-cond-yn" name="js-ship-mobile-proc-reg-proc-cond-yn">
			<!-- header -->
			<header class="wp-header wp-dark-shadow">
				<button type="button" class="wp-btn wp-left wp-prev-white"><spring:message code="TODO.KEY" text="이전"/></button>
				<h1><spring:message code="TODO.KEY" text="도장 공정정보 등록"/></h1>
			</header>
			<!-- //header -->
			<!-- step -->
			<div class="wp-step-area">
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
						<li>7</li>
					</ul>
				</div>
			</div>
			<!-- //step -->
			<!-- wp-container -->
			<section class="wp-container wp-pb50 wp-bg-f">
				<div class="wp-cont-area">
				<h1 class="wp-section-title wp-border-none"><spring:message code="TODO.KEY" text="5단계.  도장기기 정보"/></h1>
					<div class="wp-table h-center wp-reg wp-noline">
					<table>
						<caption></caption>
						<colgroup>
							<col style="width:50%">
							<col style="width:50%">
						</colgroup>
						<tbody>
							<tr>
								<th><spring:message code="TODO.KEY" text="도장기 상태"/></th>
								<td class="wp-toggle-area"><div id="js-ship-mobile-proc-reg-proc-cond-div" class="wp-toggle-state toggle-light"></div></td>
							</tr>
							<tr>
								<td colspan="2"><input type="text" id="js-ship-mobile-proc-reg-input-pressure" name="js-ship-mobile-proc-reg-input-pressure" title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="Input Pressure(bar)"></td>
							</tr>
							<tr>
								<th><spring:message code="TODO.KEY" text="Pumping Ratio"/></th>
								<td>
									<input type="number" id="js-ship-mobile-proc-reg-pump-ratio-a" name="js-ship-mobile-proc-reg-pump-ratio-a" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd42p">
									&nbsp;:&nbsp;
									<input type="number" id="js-ship-mobile-proc-reg-pump-ratio-b" name="js-ship-mobile-proc-reg-pump-ratio-b" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd42p">
								</td>
							</tr>
							<tr>
								<td colspan="2"><input type="number" id="js-ship-mobile-proc-reg-valve-length" name="js-ship-mobile-proc-reg-valve-length" title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="<spring:message code='TODO.KEY' text='도료호스길이'/>(m)"></td>
							</tr>
							<tr>
								<td colspan="2"><input type="number" id="js-ship-mobile-proc-reg-tip-size" name="js-ship-mobile-proc-reg-tip-size" title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="<spring:message code="TODO.KEY" text="Tip size"/>"></td>
							</tr>
							<tr>
								<th colspan="2"><spring:message code="TODO.KEY" text="Tip 막힘"/></th>
							</tr>
							<tr>
								<td>
									<div class="wp-ui-select wp-wd100p">
									<select id="js-ship-mobile-proc-reg-tip-fault-id" name="js-ship-mobile-proc-reg-tip-fault-id">
									</select>
									</div>
								</td>
								<td><input type="text" id="js-ship-mobile-proc-reg-tip-fault-remark" name="js-ship-mobile-proc-reg-tip-fault-remark" title="<spring:message code='TODO.KEY' text='내용입력'/>" disabled=""></td>
							</tr>
						</tbody>
					</table>
					</div>
				</div>
			</section>
			<!-- //wp-container -->
			<div class="wp-position-btn">
				<button type="button" id="js-ship-mobile-proc-reg-back" class="wp-btn"><spring:message code="TODO.KEY" text="이전"/></button>
				<button type="button" id="js-ship-mobile-proc-reg-next" class="wp-btn"><spring:message code="TODO.KEY" text="다음"/></button>
			</div>
		</form>
	</div>
	
	</tiles:putAttribute>
	<!-- [e] 모바일 콘텐츠 -->
	
	<!-- [s] 페이지 레벨 스크립트 -->
	<tiles:putAttribute name="page-level-js">
		
		<script type="text/javascript">
		
			$(document).ready(function(){
				
				var seqShipProcInfo = getQuerystring('seqShipProcInfo');
				
				if($('#js-ship-mobile-proc-reg-post-yn').val() != 'Y')
				{
					fn_alertInfo('A', '<spring:message code="TODO.KEY" text="1단계부터 입력해 주세요."/>', function(){
						var url = '/mobile/ship/shipMobileProcInfoRegStep1.do';
						
						var yardCode = getQuerystring('yardCode');
						var yardName = getQuerystring('yardName');
						
						url += '?yardCode='+yardCode+'&yardName='+yardName;
						
						if(!app.utils.isEmpty(seqShipProcInfo)) url += '&seqShipProcInfo='+seqShipProcInfo;
						
						window.location.href = url;
					});
					return;
				}
				
				//시퀀스 셋팅
				$('#js-ship-mobile-proc-reg-seq').val(seqShipProcInfo);
				
				var yardCode = getQuerystring('yardCode');
				
				//조선소 코드 셋팅
				$('#js-ship-mobile-proc-reg-yard-code').val(yardCode);
				
				//Tip 막힘 콤보 조회
				retrieveShipTipFault.request();
				
				//Tip 막힘 콤보 change 이벤트
				$('#js-ship-mobile-proc-reg-tip-fault-id').off().on('change', function(){
					if($(this).val() == 'TF04')
					{
						$('#js-ship-mobile-proc-reg-tip-fault-remark').attr('disabled', false);
					}
					else
					{
						$('#js-ship-mobile-proc-reg-tip-fault-remark').val('');
						$('#js-ship-mobile-proc-reg-tip-fault-remark').attr('disabled', true);
					}
				});
				
				//소수점만 받기
				onlyDecimal($('#js-ship-mobile-proc-reg-input-pressure'), 5, 1);
				//정수만 받기
				onlyInteger($('#js-ship-mobile-proc-reg-pump-ratio-a, #js-ship-mobile-proc-reg-pump-ratio-b, #js-ship-mobile-proc-reg-valve-length, #js-ship-mobile-proc-reg-tip-size'));
				
				//자리수 제한
				$('#js-ship-mobile-proc-reg-input-pressure').attr('maxlength', 7);
				$('#js-ship-mobile-proc-reg-pump-ratio-a, #js-ship-mobile-proc-reg-pump-ratio-b, #js-ship-mobile-proc-reg-valve-length').attr('maxlength', 5);
				$('#js-ship-mobile-proc-reg-tip-size').attr('maxlength', 3);
				
				//뒤로가기 버튼
				$('.wp-prev-white').off().on('click', function() {
					var url = '/mobile/ship/shipMobileProcInfoMng.do';
					
					var yardCode = getQuerystring('yardCode');
					var yardName = getQuerystring('yardName');
					
					url += '?yardCode='+yardCode+'&yardName='+yardName;
					
					window.location.href = url;
				});
				
				//이전 버튼
				$('#js-ship-mobile-proc-reg-back').off().on('click', function() {
					retrieveShipMobileProcInfoRegStep4(seqShipProcInfo);
				});
				
				//다음 버튼
				$('#js-ship-mobile-proc-reg-next').off().on('click', function() {
					retrieveShipMobileProcInfoRegStep6(seqShipProcInfo);
				});
				
				//조회
				if(!app.utils.isEmpty(seqShipProcInfo)){
					retrieveProcRegisterInfo.request(seqShipProcInfo);
				}
			});
			
			var retrieveProcRegisterInfo = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								
								if(response.rs.length > 0)
								{
									if(response.rs[0].procCondYn != 'Y')
									{
										$('#js-ship-mobile-proc-reg-proc-cond-div').click();
									}
									
									$('#js-ship-mobile-proc-reg-input-pressure').val(response.rs[0].inputPressure);
									$('#js-ship-mobile-proc-reg-pump-ratio-a').val(response.rs[0].pumpRatioA);
									$('#js-ship-mobile-proc-reg-pump-ratio-b').val(response.rs[0].pumpRatioB);
									$('#js-ship-mobile-proc-reg-valve-length').val(response.rs[0].valveLength);
									$('#js-ship-mobile-proc-reg-tip-size').val(response.rs[0].tipSize);
									$('#js-ship-mobile-proc-reg-tip-fault-id').val(response.rs[0].tipFaultId);
									$('#js-ship-mobile-proc-reg-tip-fault-id').trigger('change');
									$('#js-ship-mobile-proc-reg-tip-fault-remark').val(response.rs[0].tipFaultRemark);
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
					request: function(seqShipProcInfo) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						
						var params = {
							service: 'ship.procInfo',
							method: 'retrieveProcRegisterInfo',
							seqShipProcInfo: seqShipProcInfo
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			var retrieveShipTipFault = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-tip-fault-id').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-tip-fault-id').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-tip-fault-id').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
							method: 'retrieveShipTipFault'
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			var retrieveShipMobileProcInfoRegStep4 = function(seqShipProcInfo){
				
				var url = '/mobile/ship/shipMobileProcInfoRegStep4.do';
				
				var yardCode = getQuerystring('yardCode');
				var yardName = getQuerystring('yardName');
				
				url += '?yardCode='+yardCode+'&yardName='+yardName;
				
				if(!app.utils.isEmpty(seqShipProcInfo)) url += '&seqShipProcInfo='+seqShipProcInfo;
				
				$('#js-ship-mobile-proc-reg-form').attr('action', url);
				$('#js-ship-mobile-proc-reg-form').submit();
			}
			
			var retrieveShipMobileProcInfoRegStep6 = function(seqShipProcInfo){
				
				var inputPressure = $('#js-ship-mobile-proc-reg-input-pressure').val();
				var pumpRatioA = $('#js-ship-mobile-proc-reg-pump-ratio-a').val();
				var pumpRatioB = $('#js-ship-mobile-proc-reg-pump-ratio-b').val();
				var valveLength = $('#js-ship-mobile-proc-reg-valve-length').val();
				var tipSize = $('#js-ship-mobile-proc-reg-tip-size').val();
				var procCondYn = 'N';
				
				if(!isDecimal(inputPressure)){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="잘못된 소수점 형식입니다."/>', function(){
						$('#js-ship-mobile-proc-reg-input-pressure').focus();
					});
					return;
				}
				if(!isInteger(pumpRatioA)){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="잘못된 숫자 형식입니다."/>', function(){
						$('#js-ship-mobile-proc-reg-pump-ratio-a').focus();
					});
					return;
				}
				if(!isInteger(pumpRatioB)){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="잘못된 숫자 형식입니다."/>', function(){
						$('#js-ship-mobile-proc-reg-pump-ratio-b').focus();
					});
					return;
				}
				if(!isInteger(valveLength)){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="잘못된 숫자 형식입니다."/>', function(){
						$('#js-ship-mobile-proc-reg-valve-length').focus();
					});
					return;
				}
				if(!isInteger(tipSize)){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="잘못된 숫자 형식입니다."/>', function(){
						$('#js-ship-proc-reg-popup-tip-size').focus();
					});
					return;
				}
				if(!app.utils.isEmpty(tipSize) && tipSize.length != 3){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="Tip Size를 3자로 입력해 주세요."/>', function(){
						$('#js-ship-mobile-proc-reg-tip-size').focus();
					});
					return;
				}
				
				if($('#js-ship-mobile-proc-reg-proc-cond-div').find('.active').hasClass('toggle-on'))
					procCondYn = 'Y';
				
				$('#js-ship-mobile-proc-reg-proc-cond-yn').val(procCondYn);
				
				var url = '/mobile/ship/shipMobileProcInfoRegStep6.do';
				
				var yardCode = getQuerystring('yardCode');
				var yardName = getQuerystring('yardName');
				
				url += '?yardCode='+yardCode+'&yardName='+yardName;
				
				if(!app.utils.isEmpty(seqShipProcInfo)) url += '&seqShipProcInfo='+seqShipProcInfo;
				
				$('#js-ship-mobile-proc-reg-form').attr('action', url);
				$('#js-ship-mobile-proc-reg-form').submit();
			}
			
		</script>
		
	</tiles:putAttribute>
	<!-- [e] 페이지 레벨 스크립트 -->
</tiles:insertDefinition>
