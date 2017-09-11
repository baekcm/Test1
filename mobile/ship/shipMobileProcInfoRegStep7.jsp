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
			<input type="hidden" id="js-ship-mobile-proc-reg-proc-cond-yn" name="js-ship-mobile-proc-reg-proc-cond-yn" value="${param['js-ship-mobile-proc-reg-proc-cond-yn']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-input-pressure" name="js-ship-mobile-proc-reg-input-pressure" value="${param['js-ship-mobile-proc-reg-input-pressure']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-pump-ratio-a" name="js-ship-mobile-proc-reg-pump-ratio-a" value="${param['js-ship-mobile-proc-reg-pump-ratio-a']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-pump-ratio-b" name="js-ship-mobile-proc-reg-pump-ratio-b" value="${param['js-ship-mobile-proc-reg-pump-ratio-b']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-valve-length" name="js-ship-mobile-proc-reg-valve-length" value="${param['js-ship-mobile-proc-reg-valve-length']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-tip-size" name="js-ship-mobile-proc-reg-tip-size" value="${param['js-ship-mobile-proc-reg-tip-size']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-tip-fault-id" name="js-ship-mobile-proc-reg-tip-fault-id" value="${param['js-ship-mobile-proc-reg-tip-fault-id']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-tip-fault-remark" name="js-ship-mobile-proc-reg-tip-fault-remark" value="${param['js-ship-mobile-proc-reg-tip-fault-remark']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-adhesive-id" name="js-ship-mobile-proc-reg-adhesive-id" value="${param['js-ship-mobile-proc-reg-adhesive-id']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-adhesive-remark" name="js-ship-mobile-proc-reg-adhesive-remark" value="${param['js-ship-mobile-proc-reg-adhesive-remark']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-pot-life" name="js-ship-mobile-proc-reg-pot-life" value="${param['js-ship-mobile-proc-reg-pot-life']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-tup-id" name="js-ship-mobile-proc-reg-tup-id" value="${param['js-ship-mobile-proc-reg-tup-id']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-tup-remark" name="js-ship-mobile-proc-reg-tup-remark" value="${param['js-ship-mobile-proc-reg-tup-remark']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-viscosity-maker" name="js-ship-mobile-proc-reg-viscosity-maker" value="${param['js-ship-mobile-proc-reg-viscosity-maker']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-viscosity-rate" name="js-ship-mobile-proc-reg-viscosity-rate" value="${param['js-ship-mobile-proc-reg-viscosity-rate']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-viscosity-change" name="js-ship-mobile-proc-reg-viscosity-change" value="${param['js-ship-mobile-proc-reg-viscosity-change']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-gloss" name="js-ship-mobile-proc-reg-gloss" value="${param['js-ship-mobile-proc-reg-gloss']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-walk-on-dry" name="js-ship-mobile-proc-reg-walk-on-dry" value="${param['js-ship-mobile-proc-reg-walk-on-dry']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-blushing-yn" name="js-ship-mobile-proc-reg-blushing-yn" value="${param['js-ship-mobile-proc-reg-blushing-yn']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-blushing-temp" name="js-ship-mobile-proc-reg-blushing-temp" value="${param['js-ship-mobile-proc-reg-blushing-temp']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-blushing-time" name="js-ship-mobile-proc-reg-blushing-time" value="${param['js-ship-mobile-proc-reg-blushing-time']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-flowability-yn" name="js-ship-mobile-proc-reg-flowability-yn" value="${param['js-ship-mobile-proc-reg-flowability-yn']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-flowability-wft" name="js-ship-mobile-proc-reg-flowability-wft" value="${param['js-ship-mobile-proc-reg-flowability-wft']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-atomization-yn" name="js-ship-mobile-proc-reg-atomization-yn" value="${param['js-ship-mobile-proc-reg-atomization-yn']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-atomization-rate" name="js-ship-mobile-proc-reg-atomization-rate" value="${param['js-ship-mobile-proc-reg-atomization-rate']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-smell-yn" name="js-ship-mobile-proc-reg-smell-yn" value="${param['js-ship-mobile-proc-reg-smell-yn']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-skin-trouble-yn" name="js-ship-mobile-proc-reg-skin-trouble-yn" value="${param['js-ship-mobile-proc-reg-skin-trouble-yn']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-leveling-id" name="js-ship-mobile-proc-reg-leveling-id" value="${param['js-ship-mobile-proc-reg-leveling-id']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-leveling-remark" name="js-ship-mobile-proc-reg-leveling-remark" value="${param['js-ship-mobile-proc-reg-leveling-remark']}">
			<!-- header -->
			<header class="wp-header wp-dark-shadow">
				<button type="button" class="wp-btn wp-left wp-prev-white"><spring:message code="TODO.KEY" text="이전"/></button>
				<h1><spring:message code="TODO.KEY" text="도장 공정정보 등록"/></h1>
				<button type="button" id="js-ship-mobile-proc-reg-complete" class="wp-btn wp-right wp-white-line"><spring:message code="TODO.KEY" text="완료"/></button>
			</header>
			<!-- //header -->
			<!-- step -->
			<div class="wp-step-area">
				<div class="wp-step wp-wd7"><!-- 번호 조정 class -->
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
				<h1 class="wp-section-title wp-border-none"><spring:message code="TODO.KEY" text="7단계.  보관 및 이송 조건"/></h1>
					<div class="wp-table h-center wp-reg wp-noline">
					<table>
						<caption></caption>
						<colgroup>
							<col style="width:100%">
						</colgroup>
						<tbody>
							<tr>
								<td>
									<div class="wp-ui-select wp-wd100p">
									<select id="js-ship-mobile-proc-reg-store-id" name="js-ship-mobile-proc-reg-store-id">
									</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><input type="text" id="js-ship-mobile-proc-reg-store-remark" name="js-ship-mobile-proc-reg-store-remark" title="<spring:message code='TODO.KEY' text='내용입력'/>" disabled=""></td>
							</tr>
							<tr>
								<td><input type="text" id="js-ship-mobile-proc-reg-store-temp" name="js-ship-mobile-proc-reg-store-temp" title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="<spring:message code='TODO.KEY' text='온도'/>(℃)"></td>
							</tr>
							<tr>
								<td><input type="text" id="js-ship-mobile-proc-reg-move-cond" name="js-ship-mobile-proc-reg-move-cond" title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="<spring:message code='TODO.KEY' text='이송 조건'/>(<spring:message code='TODO.KEY' text='운반'/>)"></td>
							</tr>
						</tbody>
					</table>
					</div>
				</div>
			</section>
			<!-- //wp-container -->
			<div class="wp-position-btn">
				<button type="button" id="js-ship-mobile-proc-reg-back" class="wp-btn"><spring:message code="TODO.KEY" text="이전"/></button>
				<button type="button" class="wp-btn" disabled=""><spring:message code="TODO.KEY" text="다음"/></button>
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
				
				//보관조건 콤보 조회
				retrieveShipStoreOption.request();
				
				//보관조건 콤보 change 이벤트
				$('#js-ship-mobile-proc-reg-store-id').off().on('change', function(){
					if($(this).val() == 'SO05')
					{
						$('#js-ship-mobile-proc-reg-store-remark').attr('disabled', false);
					}
					else
					{
						$('#js-ship-mobile-proc-reg-store-remark').val('');
						$('#js-ship-mobile-proc-reg-store-remark').attr('disabled', true);
					}
				});
				
				//소수점만 받기
				onlyDecimal($('#js-ship-mobile-proc-reg-store-temp'), 5, 1);
				
				//자리수 제한
				$('#js-ship-mobile-proc-reg-store-temp').attr('maxlength', 7);
				
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
					retrieveShipMobileProcInfoRegStep6(seqShipProcInfo);
				});
				
				//완료 버튼
				$('#js-ship-mobile-proc-reg-complete').off().on('click', function() {
					saveProcInfo.request(seqShipProcInfo);
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
									$('#js-ship-mobile-proc-reg-store-id').val(response.rs[0].storeId);
									$('#js-ship-mobile-proc-reg-store-id').trigger('change');
									$('#js-ship-mobile-proc-reg-store-remark').val(response.rs[0].storeRemark);
									$('#js-ship-mobile-proc-reg-store-temp').val(response.rs[0].storeTemp);
									$('#js-ship-mobile-proc-reg-move-cond').val(response.rs[0].moveCond);
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
			
			var retrieveShipStoreOption = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
			
							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-store-id').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-store-id').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-store-id').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
							method: 'retrieveShipStoreOption'
						};
			
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			var retrieveShipMobileProcInfoRegStep6 = function(seqShipProcInfo){
				
				var url = '/mobile/ship/shipMobileProcInfoRegStep6.do';
				
				var yardCode = getQuerystring('yardCode');
				var yardName = getQuerystring('yardName');
				
				url += '?yardCode='+yardCode+'&yardName='+yardName;
				
				if(!app.utils.isEmpty(seqShipProcInfo)) url += '&seqShipProcInfo='+seqShipProcInfo;
				
				$('#js-ship-mobile-proc-reg-form').attr('action', url);
				$('#js-ship-mobile-proc-reg-form').submit();
			}
			
			var saveProcInfo = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								
								// TODO
								fn_alertInfo('A', '<spring:message code="TODO.KEY" text="저장되었습니다."/>', function(){
									var url = '/mobile/ship/shipMobileProcInfoMng.do';
									
									var yardCode = getQuerystring('yardCode');
									var yardName = getQuerystring('yardName');
									
									url += '?yardCode='+yardCode+'&yardName='+yardName;
									
									window.location.href = url;
								});
								
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
						
						var seqShipProcInfo = $('#js-ship-mobile-proc-reg-seq').val();
						var yardCode = $('#js-ship-mobile-proc-reg-yard-code').val();
						var inspDate = $('#js-ship-mobile-proc-reg-insp-date').val();
						var inspEmp = $('#js-ship-mobile-proc-reg-insp-emp').val();
						var inspPlace = $('#js-ship-mobile-proc-reg-insp-place').val();
						var inspRemark = $('#js-ship-mobile-proc-reg-insp-remark').val();
						var hullNo = $('#js-ship-mobile-proc-reg-hull-no').val();
						var procId = $('#js-ship-mobile-proc-reg-proc-id').val();
						var procSection1 = $('#js-ship-mobile-proc-reg-proc-section1').val();
						var procSection2 = $('#js-ship-mobile-proc-reg-proc-section2').val();
						var procSection3 = $('#js-ship-mobile-proc-reg-proc-section3').val();
						var procSection4 = $('#js-ship-mobile-proc-reg-proc-section4').val();
						var makerCode = $('#js-ship-mobile-proc-reg-maker-code').val();
						var productId = $('#js-ship-mobile-proc-reg-product-id').val();
						var colorNm1 =$('#js-ship-mobile-proc-reg-color-name1').val();
						var ptaLotNo = $('#js-ship-mobile-proc-reg-pta-lot-no').val();
						var ptbLotNo = $('#js-ship-mobile-proc-reg-ptb-lot-no').val();
						var thinnerLotNo = $('#js-ship-mobile-proc-reg-thinner-lot-no').val();
						var ptaRatio = $('#js-ship-mobile-proc-reg-pta-ratio').val();
						var ptbRatio = $('#js-ship-mobile-proc-reg-ptb-ratio').val();
						var thinnerRatio = $('#js-ship-mobile-proc-reg-thinner-ratio').val();
						var svr = $('#js-ship-mobile-proc-reg-svr').val();
						var weatherCondition = $('#js-ship-mobile-proc-reg-weather-condition').val();
						var dt = $('#js-ship-mobile-proc-reg-dt').val();
						var wt = $('#js-ship-mobile-proc-reg-wt').val();
						var st = $('#js-ship-mobile-proc-reg-st').val();
						var dp = $('#js-ship-mobile-proc-reg-dp').val();
						var rh = $('#js-ship-mobile-proc-reg-rh').val();
						var inspTime = $('#js-ship-mobile-proc-reg-insp-time').val();
						var amineYn = $('#js-ship-mobile-proc-reg-amine-yn').val();
						var sweatIcingYn = $('#js-ship-mobile-proc-reg-sweat-icing-yn').val();
						var procCondYn = $('#js-ship-mobile-proc-reg-proc-cond-yn').val();
						var inputPressure = $('#js-ship-mobile-proc-reg-input-pressure').val();
						var pumpRatioA = $('#js-ship-mobile-proc-reg-pump-ratio-a').val();
						var pumpRatioB = $('#js-ship-mobile-proc-reg-pump-ratio-b').val();
						var valveLength = $('#js-ship-mobile-proc-reg-valve-length').val();
						var tipSize = $('#js-ship-mobile-proc-reg-tip-size').val();
						var tipFaultId = $('#js-ship-mobile-proc-reg-tip-fault-id').val();
						var tipFaultRemark = $('#js-ship-mobile-proc-reg-tip-fault-remark').val();
						var adhesiveId = $('#js-ship-mobile-proc-reg-adhesive-id').val();
						var adhesiveRemark = $('#js-ship-mobile-proc-reg-adhesive-remark').val();
						var potLife = $('#js-ship-mobile-proc-reg-pot-life').val();
						var tupId = $('#js-ship-mobile-proc-reg-tup-id').val();
						var tupRemark = $('#js-ship-mobile-proc-reg-tup-remark').val();
						var viscosityMaker = $('#js-ship-mobile-proc-reg-viscosity-maker').val();
						var viscosityRate = $('#js-ship-mobile-proc-reg-viscosity-rate').val();
						var viscosityChange = $('#js-ship-mobile-proc-reg-viscosity-change').val();
						var gloss = $('#js-ship-mobile-proc-reg-gloss').val();
						var walkOnDry = $('#js-ship-mobile-proc-reg-walk-on-dry').val();
						var blushingYn = $('#js-ship-mobile-proc-reg-blushing-yn').val();
						var blushingTemp = $('#js-ship-mobile-proc-reg-blushing-temp').val();
						var blushingTime = $('#js-ship-mobile-proc-reg-blushing-time').val();
						var flowabilityYn = $('#js-ship-mobile-proc-reg-flowability-yn').val();
						var flowabilityWft = $('#js-ship-mobile-proc-reg-flowability-wft').val();
						var atomizationYn = $('#js-ship-mobile-proc-reg-atomization-yn').val();
						var atomizationRate = $('#js-ship-mobile-proc-reg-atomization-rate').val();
						var smellYn = $('#js-ship-mobile-proc-reg-smell-yn').val();
						var skinTroubleYn = $('#js-ship-mobile-proc-reg-skin-trouble-yn').val();
						var levelingId = $('#js-ship-mobile-proc-reg-leveling-id').val();
						var levelingRemark = $('#js-ship-mobile-proc-reg-leveling-remark').val();
						var storeId = $('#js-ship-mobile-proc-reg-store-id').val();
						var storeRemark = $('#js-ship-mobile-proc-reg-store-remark').val();
						var storeTemp = $('#js-ship-mobile-proc-reg-store-temp').val();
						var moveCond = $('#js-ship-mobile-proc-reg-move-cond').val();
						
						if(app.utils.isEmpty(inspEmp)){
							fn_alertInfo("A", '<spring:message code="TODO.KEY" text="검사자 정보가 없습니다."/>');
							return;
						}
						if(app.utils.isEmpty(yardCode)){
							fn_alertInfo("A", '<spring:message code="TODO.KEY" text="조선소 코드가 없습니다."/>');
							return;
						}
						if(app.utils.isEmpty(inspDate)){
							fn_alertInfo("A", '<spring:message code="TODO.KEY" text="검사일자 정보가 없습니다."/>');
							return;
						}
						if(!isDecimal(storeTemp)){
							fn_alertInfo("A", '<spring:message code="TODO.KEY" text="잘못된 소수점 형식입니다."/>', function(){
								$('#js-ship-mobile-proc-reg-store-temp').focus();
							});
							return;
						}
						
						var params = {
							service: 'ship.procInfo',
							method: 'saveProcInfo',
							seqShipProcInfo: seqShipProcInfo,
							yardCode: yardCode,
							inspDate: inspDate,
							inspEmp: inspEmp,
							inspPlace: inspPlace,
							inspRemark: inspRemark,
							hullNo: hullNo,
							procId: procId,
							procSection1: procSection1,
							procSection2: procSection2,
							procSection3: procSection3,
							procSection4: procSection4,
							makerCode: makerCode,
							productId: productId,
							colorNm1: colorNm1,
							ptaLotNo: ptaLotNo,
							ptbLotNo: ptbLotNo,
							thinnerLotNo: thinnerLotNo,
							ptaRatio: ptaRatio,
							ptbRatio: ptbRatio,
							thinnerRatio: thinnerRatio,
							svr: svr,
							weatherCondition: weatherCondition,
							dt: dt,
							wt: wt,
							st: st,
							dp: dp,
							rh: rh,
							inspTime: inspTime.replace(':', ''),
							amineYn: amineYn,
							sweatIcingYn: sweatIcingYn,
							procCondYn: procCondYn,
							inputPressure: inputPressure,
							pumpRatioA: pumpRatioA,
							pumpRatioB: pumpRatioB,
							valveLength: valveLength,
							tipSize: tipSize,
							tipFaultId: tipFaultId,
							tipFaultRemark: tipFaultRemark,
							adhesiveId: adhesiveId,
							adhesiveRemark: adhesiveRemark,
							potLife: potLife,
							tupId: tupId,
							tupRemark: tupRemark,
							viscosityMaker: viscosityMaker,
							viscosityRate: viscosityRate,
							viscosityChange: viscosityChange,
							gloss: gloss,
							walkOnDry: walkOnDry,
							blushingYn: blushingYn,
							blushingTemp: blushingTemp,
							blushingTime: blushingTime,
							flowabilityYn: flowabilityYn,
							flowabilityWft: flowabilityWft,
							atomizationYn: atomizationYn,
							atomizationRate: atomizationRate,
							smellYn: smellYn,
							skinTroubleYn: skinTroubleYn,
							levelingId: levelingId,
							levelingRemark: levelingRemark,
							storeId: storeId,
							storeRemark: storeRemark,
							storeTemp: storeTemp,
							moveCond: moveCond,
							workType: 'MOBILE'
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
		</script>
		
	</tiles:putAttribute>
	<!-- [e] 페이지 레벨 스크립트 -->
</tiles:insertDefinition>
