<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.03.08] ship mobile 도정 공정정보 등록" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.mobile">
	<!-- [s] 모바일 콘텐츠 -->
	<tiles:putAttribute name="page-content">

		<div class="wp-wrap">
			<form method="post" name="js-ship-mobile-pre-proc-reg-step3-form" id="js-ship-mobile-pre-proc-reg-step3-form">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-post-yn" id="js-ship-mobile-pre-proc-reg-post-yn" value="${param['js-ship-mobile-pre-proc-reg-post-yn']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-seq" id="js-ship-mobile-pre-proc-reg-seq" value="${param['js-ship-mobile-pre-proc-reg-seq']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-yard-code" id="js-ship-mobile-pre-proc-reg-yard-code" value="${param['js-ship-mobile-pre-proc-reg-yard-code']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-yard-name" id="js-ship-mobile-pre-proc-reg-yard-name" value="${param['js-ship-mobile-pre-proc-reg-yard-name']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-insp-date" id="js-ship-mobile-pre-proc-reg-insp-date" value="${param['js-ship-mobile-pre-proc-reg-insp-date']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-emp" id="js-ship-mobile-pre-proc-reg-emp" value="${param['js-ship-mobile-pre-proc-reg-emp']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-emp-name" id="js-ship-mobile-pre-proc-reg-insp-emp" value="${param['js-ship-mobile-pre-proc-reg-emp-name']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-line-status" id="js-ship-mobile-pre-proc-reg-line-status" value="${param['js-ship-mobile-pre-proc-reg-line-status']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-line-no" id="js-ship-mobile-pre-proc-reg-line-no" value="${param['js-ship-mobile-pre-proc-reg-line-no']}">
			
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-pta" id="js-ship-mobile-pre-proc-reg-pta" value="${param['js-ship-mobile-pre-proc-reg-pta']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-ptb" id="js-ship-mobile-pre-proc-reg-ptb" value="${param['js-ship-mobile-pre-proc-reg-ptb']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-thinner" id="js-ship-mobile-pre-proc-reg-thinner" value="${param['js-ship-mobile-pre-proc-reg-thinner']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-remark" id="js-ship-mobile-pre-proc-reg-remark" value="${param['js-ship-mobile-pre-proc-reg-remark']}">
		
			<!-- header -->
			<header class="wp-header wp-dark-shadow">
				<button type="button" class="wp-btn wp-left wp-prev-white"><spring:message code="TODO.KEY" text="이전" /></button>
				<h1><spring:message code="TODO.KEY" text="전처리장 정보 등록" /></h1>
				<!-- <button type="button" class="wp-btn wp-right wp-white-line" disabled="">완료</button> -->
			</header>
			<!-- //header -->
			
			<!-- step -->
			<div class="wp-step-area wp-preProc"><!-- 전처리장 class -->
				<div class="wp-step wp-wd3"><!-- 번호 조정 class -->
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
					<h1 class="wp-section-title wp-border-none"><spring:message code="TODO.KEY" text="3단계.  Line Information" /></h1>
					<div class="wp-table h-center wp-reg wp-noline">
					<table>
						<caption></caption>
						<colgroup>
							<col style="width:100%">
						</colgroup>
						<tbody>
							<tr>
								<td><input type="text" name="js-ship-mobile-pre-proc-reg-phinner-ratio" id="js-ship-mobile-pre-proc-reg-phinner-ratio" title="내용입력" placeholder="Thinner Ratio(%)"></td>
							</tr>
							<tr>
								<td><input type="text" name="js-ship-mobile-pre-proc-reg-input-pressure" id="js-ship-mobile-pre-proc-reg-input-pressure" title="내용입력" placeholder="Input Pressure(㎏/㎤)"></td>
							</tr>
							<tr>
								<th>Pumping Ratio(Output : Input)</th>
							</tr>
							<tr>
								<td>
									<input type="text" name="js-ship-mobile-pre-proc-reg-pump-ratio-a" id="js-ship-mobile-pre-proc-reg-pump-ratio-a" title="내용입력" placeholder="" class="wp-wd50p">
									<input type="text" name="js-ship-mobile-pre-proc-reg-pump-ratio-b" id="js-ship-mobile-pre-proc-reg-pump-ratio-b" title="내용입력" placeholder="" class="wp-wd50p">
								</td>
							</tr>
							<tr>
								<td><input type="text" name="js-ship-mobile-pre-proc-reg-tip-size" id="js-ship-mobile-pre-proc-reg-tip-size" title="내용입력" placeholder="Tip Size"></td>
							</tr>
							<tr>
								<td><input type="text" name="js-ship-mobile-pre-proc-reg-duplication" id="js-ship-mobile-pre-proc-reg-duplication" title="내용입력" placeholder="Duplication(%)"></td>
							</tr>
							<tr>
								<td><input type="text" name="js-ship-mobile-pre-proc-reg-conveyor-speed" id="js-ship-mobile-pre-proc-reg-conveyor-speed" title="내용입력" placeholder="Conveyor Speed(m/min)"></td>
							</tr>
						</tbody>
					</table>
					</div>
				</div>
			</section>
			
			<!-- //wp-container -->
			<div class="wp-position-btn">
				<button type="button" id="js-ship-mobile-pre-proc-reg-step3-back" class="wp-btn">이전</button>
				<button type="button" id="js-ship-mobile-pre-proc-reg-step3-next" class="wp-btn">다음</button>
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
				$('#js-ship-mobile-pre-proc-reg-step2-seq').val(seqShipPreProcInfo);
				
				// 조선소 코드 셋팅
				$('#js-ship-mobile-pre-proc-reg-yard-code').val(yardCode);
				$('#js-ship-mobile-pre-proc-reg-yard-name').val(yardName);
				
				// 뒤로가기 버튼
				$('.wp-prev-white').off().on('click', function() {
					var url = '/mobile/ship/shipMobileProcInfoMng.do';
					
					url += '?yardCode='+yardCode+'&yardName='+yardName;
					window.location.href = url;
					
				});
				
				// 이전 버튼
				$('#js-ship-mobile-pre-proc-reg-step3-back').off().on('click', function() {
					retrieveShipMobilePreProcRegStep1(seqShipPreProcInfo);
				});
				
				// 다음 버튼
				$('#js-ship-mobile-pre-proc-reg-step3-next').off().on('click', function() {
					retrieveShipMobilePreProcRegStep4(seqShipPreProcInfo);
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
								$('#js-ship-mobile-pre-proc-reg-phinner-ratio').val(data[0].thinnerRatio);
								$('#js-ship-mobile-pre-proc-reg-input-pressure').val(data[0].inputPressure);
								$('#js-ship-mobile-pre-proc-reg-pump-ratio-a').val(data[0].pumpRatioIn);
								$('#js-ship-mobile-pre-proc-reg-pump-ratio-b').val(data[0].pumpRatioOut);
								$('#js-ship-mobile-pre-proc-reg-tip-size').val(data[0].tipSize);
								$('#js-ship-mobile-pre-proc-reg-duplication').val(data[0].duplication);
								$('#js-ship-mobile-pre-proc-reg-conveyor-speed').val(data[0].conveyorSpd);
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

			
			var retrieveShipMobilePreProcRegStep1 = function(seqShipPreProcInfo){
				
				var url = '/mobile/ship/shipMobilePreProcRegStep2.do';
				
				url += '?yardCode='+ yardCode +'&yardName='+ yardName;
				
				if(!app.utils.isEmpty(seqShipPreProcInfo)) url += '&seqShipPreProcInfo='+seqShipPreProcInfo;
				
				$('#js-ship-mobile-pre-proc-reg-step3-form').attr('action', url);
				$('#js-ship-mobile-pre-proc-reg-step3-form').submit();
				
			}
			
			var retrieveShipMobilePreProcRegStep4 = function(seqShipPreProcInfo){
				
				var url = '/mobile/ship/shipMobilePreProcRegStep4.do';
				url += '?yardCode='+ yardCode +'&yardName='+ yardName;
				
				if(!app.utils.isEmpty(seqShipPreProcInfo)) url += '&seqShipPreProcInfo='+seqShipPreProcInfo;
				
				$('#js-ship-mobile-pre-proc-reg-step3-form').attr('action', url);
				$('#js-ship-mobile-pre-proc-reg-step3-form').submit();
				
			}
			
		</script>
		
	</tiles:putAttribute>
	<!-- [e] 페이지 레벨 스크립트 -->
</tiles:insertDefinition>