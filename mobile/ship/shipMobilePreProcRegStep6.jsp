<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.03.08] ship mobile 도정 공정정보 등록" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.mobile">
	<!-- [s] 모바일 콘텐츠 -->
	<tiles:putAttribute name="page-content">

		<div class="wp-wrap">
			<form method="post" name="js-ship-mobile-pre-proc-reg-step6-form" id="js-ship-mobile-pre-proc-reg-step6-form">
			<input type="hidden" name="postYn" id="postYn" value="${param['js-ship-mobile-pre-proc-reg-post-yn']}">
			
			<input type="hidden" name="seq" id="seq" value="${param['js-ship-mobile-pre-proc-reg-seq']}">
			<input type="hidden" name="yardCode" id="yardCode" value="${param['js-ship-mobile-pre-proc-reg-yard-code']}">
			<input type="hidden" name="yardName" id="yardName" value="${param['js-ship-mobile-pre-proc-reg-yard-name']}">
			<input type="hidden" name="inspDate" id="inspDate" value="${param['js-ship-mobile-pre-proc-reg-insp-date']}">
			<input type="hidden" name="emp" id="emp" value="${param['js-ship-mobile-pre-proc-reg-emp']}">
			<input type="hidden" name="inspEmp" id="inspEmp" value="${param['js-ship-mobile-pre-proc-reg-emp']}">
			<input type="hidden" name="empName" id="empName" value="${param['js-ship-mobile-pre-proc-reg-emp-name']}">
			<input type="hidden" name="lineStatus" id="lineStatus" value="${param['js-ship-mobile-pre-proc-reg-line-status']}">
			<input type="hidden" name="lineNo" id="lineNo" value="${param['js-ship-mobile-pre-proc-reg-line-no']}">
			
			<input type="hidden" name="ptaLotNo" id="ptaLotNo" value="${param['js-ship-mobile-pre-proc-reg-pta']}">
			<input type="hidden" name="ptbLotNo" id="ptbLotNo" value="${param['js-ship-mobile-pre-proc-reg-ptb']}">
			<input type="hidden" name="thinnerLotNo" id="thinnerLotNo" value="${param['js-ship-mobile-pre-proc-reg-thinner']}">
			<input type="hidden" name="remark" id="remark" value="${param['js-ship-mobile-pre-proc-reg-remark']}">
			
			<input type="hidden" name="thinnerRatio" id="thinnerRatio" value="${param['js-ship-mobile-pre-proc-reg-phinner-ratio']}">
			<input type="hidden" name="inputPressure" id="inputPressure" value="${param['js-ship-mobile-pre-proc-reg-input-pressure']}">
			<input type="hidden" name="pumpRatioIn" id="pumpRatioIn" value="${param['js-ship-mobile-pre-proc-reg-pump-ratio-a']}">
			<input type="hidden" name="pumpRatioOut" id="pumpRatioOut" value="${param['js-ship-mobile-pre-proc-reg-pump-ratio-b']}">
			<input type="hidden" name="tipSize" id="tipSize" value="${param['js-ship-mobile-pre-proc-reg-tip-size']}">
			<input type="hidden" name="duplication" id="duplication" value="${param['js-ship-mobile-pre-proc-reg-duplication']}">
			<input type="hidden" name="conveyorSpd" id="conveyorSpd" value="${param['js-ship-mobile-pre-proc-reg-conveyor-speed']}">
			
			<input type="hidden" name="steelGrade" id="steelGrade" value="${param['js-ship-mobile-pre-proc-reg-steel-grade']}">
			<input type="hidden" name="steelShape" id="steelShape" value="${param['js-ship-mobile-pre-proc-reg-steel-shape']}">
			<input type="hidden" name="hullNo" id="hullNo" value="${param['js-ship-mobile-pre-proc-reg-hull-no']}">
			<input type="hidden" name="operCond" id="operCond" value="${param['js-ship-mobile-pre-proc-reg-operating-condition']}">
			
			<input type="hidden" name="blastCond" id="blastCond" value="${param['js-ship-mobile-pre-proc-reg-blasting-condition']}">
			<input type="hidden" name="cleanCond" id="cleanCond" value="${param['js-ship-mobile-pre-proc-reg-cleaning-condition']}">
			<input type="hidden" name="genCond" id="genCond" value="${param['js-ship-mobile-pre-proc-reg-general-condition']}">
			<input type="hidden" name="paintHoliday" id="paintHoliday" value="${param['js-ship-mobile-pre-proc-reg-paint-holiday']}">
			<input type="hidden" name="dustSpray" id="dustSpray" value="${param['js-ship-mobile-pre-proc-reg-dust-spray']}">
			
			<input type="hidden" name="method" id="method" value="saveShipPreInfoResult">
			<input type="hidden" name="service" id="service" value="ship.preinfo">
			<input type="hidden" name="workType" id="workType" value="MOBILE">
			
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
			
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-blasting-condition" id="js-ship-mobile-pre-proc-reg-blasting-condition" value="${param['js-ship-mobile-pre-proc-reg-blasting-condition']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-cleaning-condition" id="js-ship-mobile-pre-proc-reg-cleaning-condition" value="${param['js-ship-mobile-pre-proc-reg-cleaning-condition']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-general-condition" id="js-ship-mobile-pre-proc-reg-general-condition" value="${param['js-ship-mobile-pre-proc-reg-general-condition']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-paint-holiday" id="js-ship-mobile-pre-proc-reg-paint-holiday" value="${param['js-ship-mobile-pre-proc-reg-paint-holiday']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-dust-spray" id="js-ship-mobile-pre-proc-reg-dust-spray" value="${param['js-ship-mobile-pre-proc-reg-dust-spray']}">
			
			<!-- header -->
			<header class="wp-header wp-dark-shadow">
				<button type="button" class="wp-btn wp-left wp-prev-white"><spring:message code="TODO.KEY" text="이전" /></button>
				<h1><spring:message code="TODO.KEY" text="전처리장 정보 등록" /></h1>
			</header>
			<!-- //header -->
			
			<!-- step -->
			<div class="wp-step-area wp-preProc"><!-- 전처리장 class -->
				<div class="wp-step wp-wd6"><!-- 번호 조정 class -->
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
					<h1 class="wp-section-title wp-border-none"><spring:message code="TODO.KEY" text="6단계.  Stocking &amp; D.F.T." /></h1>
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
										<select name="supportType" id="js-ship-mobile-pre-proc-reg-support-type" title="항목 개수 설정">
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><input type="text" name="cntCoatThick" id="js-ship-mobile-pre-proc-reg-cnt-coat-thick" maxlength="3" title="내용입력" placeholder="측정 횟수(회)"></td>
							</tr>
							<tr>
								<td><input type="text" name="avgCoatThick" id="js-ship-mobile-pre-proc-reg-avg-coat-thick" title="내용입력" placeholder="평균 도막두께(㎛)"></td>
							</tr>
							<tr>
								<td><input type="text" name="maxCoatThick" id="js-ship-mobile-pre-proc-reg-max-coat-thick" title="내용입력" placeholder="최대 도막두께(㎛)"></td>
							</tr>
							<tr>
								<td><input type="text" name="minCoatThick" id="js-ship-mobile-pre-proc-reg-min-coat-thick" title="내용입력" placeholder="최소 도막두께(㎛)"></td>
							</tr>
						</tbody>
					</table>
					</div>
				</div>
			</section>
			
			<!-- //wp-container -->
			<div class="wp-position-btn">
				<button type="button" id="js-ship-mobile-pre-proc-reg-step6-back" class="wp-btn"><spring:message code="TODO.KEY" text="이전" /></button>
				<button type="button" id="js-ship-mobile-pre-proc-reg-step6-next" class="wp-btn"><spring:message code="TODO.KEY" text="완료" /></button>
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
				
				if($('#postYn').val() != 'Y')
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
				
				// Paint Information – Support Type 콤보
				retrieveShipPreSupportType.request();
				
				// 뒤로가기 버튼
				$('.wp-prev-white').off().on('click', function() {
					var url = '/mobile/ship/shipMobileProcInfoMng.do';
					
					url += '?yardCode='+ yardCode +'&yardName='+ yardName;
					window.location.href = url;
					
				});
				
				// 이전 버튼
				$('#js-ship-mobile-pre-proc-reg-step6-back').off().on('click', function() {
					retrieveShipMobilePreProcRegStep5(seqShipPreProcInfo);
				});
				
				// 완료 버튼
				$('#js-ship-mobile-pre-proc-reg-step6-next').off().on('click', function() {
					retrieveSaveShipPreInfoResult(seqShipPreProcInfo);
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
								$("#js-ship-mobile-pre-proc-reg-support-type").val(data[0].supportType);
								$("#js-ship-mobile-pre-proc-reg-cnt-coat-thick").val(data[0].cntCoatThick);
								$("#js-ship-mobile-pre-proc-reg-avg-coat-thick").val(data[0].avgCoatThick);
								$("#js-ship-mobile-pre-proc-reg-max-coat-thick").val(data[0].maxCoatThick);
								$("#js-ship-mobile-pre-proc-reg-min-coat-thick").val(data[0].minCoatThick);
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
						inspDate	: $("#inspDate").val(),
						lineNo		: $("#lineNo").val()
					};

					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			// Paint Information – Support Type 콤보
			var retrieveShipPreSupportType = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							
							var data = response.rs;

							$('#js-ship-mobile-pre-proc-reg-support-type').find('option').remove();
							
							for(var i=0; i < data.length; i++)
							{
								$('#js-ship-mobile-pre-proc-reg-support-type').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
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
						method: 'retrieveShipPreSupportType'
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			var saveShipPreInfoResult = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';

						if (message === 'OK') {
							
							// TODO
							fn_alertInfo('A', '<spring:message code="TODO.KEY" text="저장되었습니다."/>', function(){
								var url = '/mobile/ship/shipMobilePreProcMng.do';
								
								var yardCode = getQuerystring('yardCode');
								var yardName = getQuerystring('yardName');
								
								url += '?yardCode='+ yardCode +'&yardName='+ yardName;
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
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: $('#js-ship-mobile-pre-proc-reg-step6-form').serialize(), dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};			

			
			var retrieveShipMobilePreProcRegStep5 = function(seqShipPreProcInfo){
				
				var url = '/mobile/ship/shipMobilePreProcRegStep5.do';
				
				url += '?yardCode='+ yardCode +'&yardName='+ yardName;
				
				if(!app.utils.isEmpty(seqShipPreProcInfo)) url += '&seqShipPreProcInfo='+seqShipPreProcInfo;
				
				$('#js-ship-mobile-pre-proc-reg-step6-form').attr('action', url);
				$('#js-ship-mobile-pre-proc-reg-step6-form').submit();
				
			}
			
			var retrieveSaveShipPreInfoResult = function(){
				
				var inspDate   	= $('#inspDate').val();
				var yardCode    = $('#yardCode').val();
				var lineNo     	= $('#lineNo').val();
				var inspEmp   	= $('#emp').val();
				var lineStatus  = $('#lineStatus').val();
					
				if(app.utils.isEmpty(inspDate))
				{
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="검사일시를 입력해 주세요."/>', function(){$('#js-ship-pre-proc-mng-reg-pop-insp-date').focus();});
					
					return;
				}
				
				if(app.utils.isEmpty(yardCode))
				{
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="조선소를 입력해 주세요."/>', function(){});
					return;
				}
				
				if(app.utils.isEmpty(lineNo))
				{
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="Line을 입력해 주세요."/>', function(){$('#js-ship-pre-proc-mng-reg-pop-line').focus();});
					
					return;
				}
				
				if(app.utils.isEmpty(inspEmp))
				{
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="검사자를 입력해 주세요."/>', function(){});
					return;
				}
				
				if(app.utils.isEmpty(lineStatus))
				{
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="전처리 라인 가동 여부를 입력해 주세요."/>', function(){});
					return;
				}
				
				saveShipPreInfoResult.request();
				
			}
			
		</script>
		
	</tiles:putAttribute>
	<!-- [e] 페이지 레벨 스크립트 -->
</tiles:insertDefinition>