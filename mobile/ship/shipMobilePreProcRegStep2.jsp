<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.03.08] ship mobile 도정 공정정보 등록" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.mobile">
	<!-- [s] 모바일 콘텐츠 -->
	<tiles:putAttribute name="page-content">

		<div class="wp-wrap">
			<form method="post" name="js-ship-mobile-pre-proc-reg-step2-form" id="js-ship-mobile-pre-proc-reg-step2-form">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-post-yn" id="js-ship-mobile-pre-proc-reg-post-yn" value="${param['js-ship-mobile-pre-proc-reg-post-yn']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-seq" id="js-ship-mobile-pre-proc-reg-seq" value="${param['js-ship-mobile-pre-proc-reg-seq']}">
			
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-yard-code" id="js-ship-mobile-pre-proc-reg-yard-code" value="">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-yard-name" id="js-ship-mobile-pre-proc-reg-yard-name" value="">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-insp-date" id="js-ship-mobile-pre-proc-reg-insp-date" value="${param['js-ship-mobile-pre-proc-reg-insp-date']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-emp" id="js-ship-mobile-pre-proc-reg-emp" value="${param['js-ship-mobile-pre-proc-reg-emp']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-emp-name" id="js-ship-mobile-pre-proc-reg-emp-name" value="${param['js-ship-mobile-pre-proc-reg-emp-name']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-line-status" id="js-ship-mobile-pre-proc-reg-line-status" value="${param['js-ship-mobile-pre-proc-reg-line-status']}">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-line-no" id="js-ship-mobile-pre-proc-reg-line-no" value="${param['js-ship-mobile-pre-proc-reg-line-no']}">
		
			<!-- header -->
			<header class="wp-header wp-dark-shadow">
				<button type="button" class="wp-btn wp-left wp-prev-white"><spring:message code="TODO.KEY" text="이전" /></button>
				<h1><spring:message code="TODO.KEY" text="전처리장 정보 등록" /></h1>
				<!-- <button type="button" class="wp-btn wp-right wp-white-line" disabled="">완료</button> -->
			</header>
			<!-- //header -->
			
			<!-- step -->
			<div class="wp-step-area wp-preProc"><!-- 전처리장 class -->
				<div class="wp-step wp-wd2"><!-- 번호 조정 class -->
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
					<h1 class="wp-section-title wp-border-none"><spring:message code="TODO.KEY" text="2단계.  제품 LOT No.   Remark" /></h1>
					<div class="wp-table h-center wp-reg wp-noline">
					<table>
						<caption></caption>
						<colgroup>
							<col style="width:100%">
						</colgroup>
						<tbody>
							<tr>
								<td><input type="text" name="js-ship-mobile-pre-proc-reg-pta" id="js-ship-mobile-pre-proc-reg-pta" title="내용입력" placeholder="PTA LOT No."></td>
							</tr>
							<tr>
								<td><input type="text" name="js-ship-mobile-pre-proc-reg-ptb" id="js-ship-mobile-pre-proc-reg-ptb" title="내용입력" placeholder="PTB LOT No."></td>
							</tr>
							<tr>
								<td><input type="text" name="js-ship-mobile-pre-proc-reg-thinner" id="js-ship-mobile-pre-proc-reg-thinner" title="내용입력" placeholder="Thinner LOT No."></td>
							</tr>
							<tr>
								<th>Remark</th>
							</tr>
							<tr>
								<td>
									<textarea name="js-ship-mobile-pre-proc-reg-remark" id="js-ship-mobile-pre-proc-reg-remark" cols="" rows="7" class="wp-wd100p"></textarea>
								</td>
							</tr>
						</tbody>
					</table>
					</div>
				</div>
			</section>
			
			<!-- //wp-container -->
			<div class="wp-position-btn">
				<button type="button" id="js-ship-mobile-pre-proc-reg-step2-back" class="wp-btn"><spring:message code="TODO.KEY" text="이전" /></button>
				<button type="button" id="js-ship-mobile-pre-proc-reg-step2-next" class="wp-btn"><spring:message code="TODO.KEY" text="다음" /></button>
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
						
						url += '?yardCode='+yardCode+'&yardName='+yardName;
						
						if(!app.utils.isEmpty(seqShipPreProcInfo)) url += '&seqShipPreProcInfo='+seqShipPreProcInfo;
						
						window.location.href = url;
						
					});
					
					return;
					
				}
				
				// 시퀀스 셋팅
				$('#js-ship-mobile-pre-proc-reg-seq').val(seqShipPreProcInfo);
				
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
				$('#js-ship-mobile-pre-proc-reg-step2-back').off().on('click', function() {
					retrieveShipMobilePreProcRegStep1(seqShipPreProcInfo);
				});
				
				// 다음 버튼
				$('#js-ship-mobile-pre-proc-reg-step2-next').off().on('click', function() {
					retrieveShipMobilePreProcRegStep3(seqShipPreProcInfo);
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
								$('#js-ship-mobile-pre-proc-reg-pta').val(data[0].ptaLotNo);
								$('#js-ship-mobile-pre-proc-reg-ptb').val(data[0].ptbLotNo);
								$('#js-ship-mobile-pre-proc-reg-thinner').val(data[0].thinnerLotNo);
								$('#js-ship-mobile-pre-proc-reg-remark').val(data[0].remark);
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
				
				var lineNo 		= $("#js-ship-mobile-pre-proc-reg-line-no").val();
				var inspDate 	= $("#js-ship-mobile-pre-proc-reg-insp-date").val();
				
				var url = '/mobile/ship/shipMobilePreProcRegStep1.do';
				url += '?yardCode='+ yardCode +'&yardName='+ yardName;
				
				if(!app.utils.isEmpty(seqShipPreProcInfo)) url += '&seqShipPreProcInfo=' +seqShipPreProcInfo + '&lineNo='+ lineNo + '&inspDate='+ inspDate.replace(/-/gi, "");
				
				$('#js-ship-mobile-pre-proc-reg-step2-form').attr('action', url);
				$('#js-ship-mobile-pre-proc-reg-step2-form').submit();
				
			}
			
			var retrieveShipMobilePreProcRegStep3 = function(seqShipPreProcInfo){
				
				var url = '/mobile/ship/shipMobilePreProcRegStep3.do';
				url += '?yardCode='+ yardCode +'&yardName='+ yardName;
				
				if(!app.utils.isEmpty(seqShipPreProcInfo)) url += '&seqShipPreProcInfo='+seqShipPreProcInfo;
				
				$('#js-ship-mobile-pre-proc-reg-step2-form').attr('action', url);
				$('#js-ship-mobile-pre-proc-reg-step2-form').submit();
				
			}
			
		</script>
		
	</tiles:putAttribute>
	<!-- [e] 페이지 레벨 스크립트 -->
</tiles:insertDefinition>