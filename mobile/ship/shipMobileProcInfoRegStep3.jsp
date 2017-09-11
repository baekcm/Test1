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
			<!-- header -->
			<header class="wp-header wp-dark-shadow">
				<button type="button" class="wp-btn wp-left wp-prev-white"><spring:message code="TODO.KEY" text="이전"/></button>
				<h1><spring:message code="TODO.KEY" text="도장 공정정보 등록"/></h1>
			</header>
			<!-- //header -->
			<!-- step -->
			<div class="wp-step-area">
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
						<li>7</li>
					</ul>
				</div>
			</div>
			<!-- //step -->
			<!-- wp-container -->
			<section class="wp-container wp-pb50 wp-bg-f">
				<div class="wp-cont-area">
				<h1 class="wp-section-title wp-border-none"><spring:message code="TODO.KEY" text="3단계.  도료 정보"/></h1>
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
									<select id="js-ship-mobile-proc-reg-maker-code" name="js-ship-mobile-proc-reg-maker-code">
									</select>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="wp-ui-select wp-wd100p">
									<select id="js-ship-mobile-proc-reg-product-group" name="js-ship-mobile-proc-reg-product-group">
									</select>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="wp-ui-select wp-wd100p">
									<select id="js-ship-mobile-proc-reg-product-id" name="js-ship-mobile-proc-reg-product-id">
									</select>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="wp-ui-select wp-wd100p">
									<select id="js-ship-mobile-proc-reg-color-name1" name="js-ship-mobile-proc-reg-color-name1">
									</select>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2"><input type="text" id="js-ship-mobile-proc-reg-pta-lot-no" name="js-ship-mobile-proc-reg-pta-lot-no" title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="<spring:message code='TODO.KEY' text='주제'/> (PTA) Lot No."></td>
							</tr>
							<tr>
								<td colspan="2"><input type="text" id="js-ship-mobile-proc-reg-ptb-lot-no" name="js-ship-mobile-proc-reg-ptb-lot-no" title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="<spring:message code='TODO.KEY' text='경화제'/> (PTB) Lot No."></td>
							</tr>
							<tr>
								<td colspan="2"><input type="text" id="js-ship-mobile-proc-reg-thinner-lot-no" name="js-ship-mobile-proc-reg-thinner-lot-no" title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="Thinner Lot No."></td>
							</tr>
							<tr>
								<td><spring:message code="TODO.KEY" text="Thinner Ratio"/></td>
								<td><input type="text" id="js-ship-mobile-proc-reg-pta-ratio" name="js-ship-mobile-proc-reg-pta-ratio" title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="PTA"></td>
							</tr>
							<tr>
								<td><input type="text" id="js-ship-mobile-proc-reg-ptb-ratio" name="js-ship-mobile-proc-reg-ptb-ratio"  title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="PTB"></td>
								<td><input type="text" id="js-ship-mobile-proc-reg-thinner-ratio" name="js-ship-mobile-proc-reg-thinner-ratio"  title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="Thinner"></td>
							</tr>
							<tr>
								<td colspan="2"><input type="number" id="js-ship-mobile-proc-reg-svr" name="js-ship-mobile-proc-reg-svr"  title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="SVR(%)"></td>
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
				
				//Paint Maker 콤보 조회
				retrieveShipPaintMaker.request();
				//제품군 콤보 조회
				retrieveItemsGroup.request();
				
				//Paint Maker 콤보 change 이벤트
				$('#js-ship-mobile-proc-reg-maker-code').off().on('change', function(){
					//제품명 콤보 조회
					retrievePaintingSystemProductNameNew.request();
					//제품색상 콤보 조회
					retrievePaintingSystemProductColor.request();
				});
				//제품군 콤보 change 이벤트
				$('#js-ship-mobile-proc-reg-product-group').off().on('change', function(){
					//제품명 콤보 조회
					retrievePaintingSystemProductNameNew.request();
					//제품색상 콤보 조회
					retrievePaintingSystemProductColor.request();
				});
				//제품명 콤보 change 이벤트
				$('#js-ship-mobile-proc-reg-product-id').off().on('change', function(){
					//제품색상 콤보 조회
					retrievePaintingSystemProductColor.request();
				});
				
				//영문 숫자만 받기
				$('#js-ship-mobile-proc-reg-pta-lot-no, #js-ship-mobile-proc-reg-ptb-lot-no, #js-ship-mobile-proc-reg-thinner-lot-no').off().on('keypress', function(e) {
					var keyValue = event.keyCode;
					var value = $(this).val();
					
					if( (keyValue >= 48 && keyValue <= 57) //숫자
						|| (keyValue >= 97 && keyValue <= 122) ) //영문
					{
						return true;
					}
					
					return false;
				});
				$('#js-ship-mobile-proc-reg-pta-lot-no, #js-ship-mobile-proc-reg-ptb-lot-no, #js-ship-mobile-proc-reg-thinner-lot-no').on('keyup', function(e) {
					if(!(event.keyCode >=37 && event.keyCode<=40)) {
						$(this).val($(this).val().replace(/[^a-z0-9]/gi,'').toUpperCase());
					}
				});
				
				//소수점만 받기
				onlyDecimal($('#js-ship-mobile-proc-reg-pta-ratio, #js-ship-mobile-proc-reg-ptb-ratio, #js-ship-mobile-proc-reg-thinner-ratio'), 5, 1);
				//정수만 받기
				onlyInteger($('#js-ship-mobile-proc-reg-svr'));
				
				//자리수 제한
				$('#js-ship-mobile-proc-reg-pta-ratio, #js-ship-mobile-proc-reg-ptb-ratio, #js-ship-mobile-proc-reg-thinner-ratio').attr('maxlength', 7);
				$('#js-ship-mobile-proc-reg-svr').attr('maxlength', 5);
				$('#js-ship-mobile-proc-reg-pta-lot-no, #js-ship-mobile-proc-reg-ptb-lot-no, #js-ship-mobile-proc-reg-thinner-lot-no').attr('maxlength', 10);
				
				//제품군 콤보 이벤트 적용
				$('#js-ship-mobile-proc-reg-product-group').trigger('change');
				
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
					retrieveShipMobileProcInfoRegStep2(seqShipProcInfo);
				});
				
				//다음 버튼
				$('#js-ship-mobile-proc-reg-next').off().on('click', function() {
					retrieveShipMobileProcInfoRegStep4(seqShipProcInfo);
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
									$('#js-ship-mobile-proc-reg-maker-code').val(response.rs[0].makerCode);
									$('#js-ship-mobile-proc-reg-product-group').val(response.rs[0].productGroup);
									$('#js-ship-mobile-proc-reg-product-group').trigger('change');
									$('#js-ship-mobile-proc-reg-product-id').val(response.rs[0].productId);
									$('#js-ship-mobile-proc-reg-product-id').trigger('change');
									$('#js-ship-mobile-proc-reg-color-name1').val(response.rs[0].colorNm1);
									$('#js-ship-mobile-proc-reg-pta-lot-no').val(response.rs[0].ptaLotNo);
									$('#js-ship-mobile-proc-reg-ptb-lot-no').val(response.rs[0].ptbLotNo);
									$('#js-ship-mobile-proc-reg-thinner-lot-no').val(response.rs[0].thinnerLotNo);
									$('#js-ship-mobile-proc-reg-pta-ratio').val(response.rs[0].ptaRatio);
									$('#js-ship-mobile-proc-reg-ptb-ratio').val(response.rs[0].ptbRatio);
									$('#js-ship-mobile-proc-reg-thinner-ratio').val(response.rs[0].thinnerRatio);
									$('#js-ship-mobile-proc-reg-svr').val(response.rs[0].svr);
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
			
			//Paint Maker combo 조회
			var retrieveShipPaintMaker = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
	
							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-maker-code').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-maker-code').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-maker-code').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
							method: 'retrieveShipPaintMaker'
						};
				
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			//제품구분 combo 조회
			var retrieveItemsGroup = {	//제품기준정보 - 제품정보,Spec정보
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
	
							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-product-group').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-product-group').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-product-group').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
							method: 'retrieveItemsGroup'
						};
				
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			var retrievePaintingSystemProductNameNew = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-product-id').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-product-id').append("<option value='"+response.rs[i].productId+"'>"+response.rs[i].productNm+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-product-id').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
						
						var paintType = $('#js-ship-mobile-proc-reg-product-group').val();
						var maker = $('#js-ship-mobile-proc-reg-maker-code').val();
						
						var params = {
							service: 'ship.stdinfo',
							method: 'retrievePaintingSystemProductNameNew',
							paintType: paintType,
							maker: maker
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			var retrievePaintingSystemProductColor = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-color-name1').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-color-name1').append("<option value='"+response.rs[i].colorCode+"'>"+response.rs[i].colorNm+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-color-name1').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
						
						var productId = $('#js-ship-mobile-proc-reg-product-id').val();
						
						var params = {
							service: 'ship.stdinfo',
							method: 'retrievePaintingSystemProductColor',
							productId : productId
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			var retrieveShipMobileProcInfoRegStep2 = function(seqShipProcInfo){
				
				var url = '/mobile/ship/shipMobileProcInfoRegStep2.do';
				
				var yardCode = getQuerystring('yardCode');
				var yardName = getQuerystring('yardName');
				
				url += '?yardCode='+yardCode+'&yardName='+yardName;
				
				if(!app.utils.isEmpty(seqShipProcInfo)) url += '&seqShipProcInfo='+seqShipProcInfo;
				
				$('#js-ship-mobile-proc-reg-form').attr('action', url);
				$('#js-ship-mobile-proc-reg-form').submit();
			}
			
			var retrieveShipMobileProcInfoRegStep4 = function(seqShipProcInfo){
				
				var ptaLotNo = $('#js-ship-mobile-proc-reg-pta-lot-no').val();
				var ptbLotNo = $('#js-ship-mobile-proc-reg-ptb-lot-no').val();
				var thinnerLotNo = $('#js-ship-mobile-proc-reg-thinner-lot-no').val();
				var ptaRatio = $('#js-ship-mobile-proc-reg-pta-ratio').val();
				var ptbRatio = $('#js-ship-mobile-proc-reg-ptb-ratio').val();
				var thinnerRatio = $('#js-ship-mobile-proc-reg-thinner-ratio').val();
				var svr = $('#js-ship-mobile-proc-reg-svr').val();
				
				if(!app.utils.isEmpty(ptaLotNo) && ptaLotNo.length != 10){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="주제(PTA) Lot No.를 10자로 입력해 주세요."/>', function(){
						$('#js-ship-mobile-proc-reg-pta-lot-no').focus();
					});
					return;
				}
				if(!app.utils.isEmpty(ptbLotNo) && ptbLotNo.length != 10){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="경화제(PTB) Lot No.를 10자로 입력해 주세요."/>', function(){
						$('#js-ship-mobile-proc-reg-ptb-lot-no').focus();
					});
					return;
				}
				if(!app.utils.isEmpty(thinnerLotNo) && thinnerLotNo.length != 10){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="Thinner Lot No.를 10자로 입력해 주세요."/>', function(){
						$('#js-ship-mobile-proc-reg-thinner-lot-no').focus();
					});
					return;
				}
				if(!isDecimal(ptaRatio)){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="잘못된 소수점 형식입니다."/>', function(){
						$('#js-ship-mobile-proc-reg-pta-ratio').focus();
					});
					return;
				}
				if(!isDecimal(ptbRatio)){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="잘못된 소수점 형식입니다."/>', function(){
						$('#js-ship-mobile-proc-reg-ptb-ratio').focus();
					});
					return;
				}
				if(!isDecimal(thinnerRatio)){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="잘못된 소수점 형식입니다."/>', function(){
						$('#js-ship-mobile-proc-reg-thinner-ratio').focus();
					});
					return;
				}
				if(!isInteger(svr)){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="잘못된 숫자 형식입니다."/>', function(){
						$('#js-ship-mobile-proc-reg-svr').focus();
					});
					return;
				}
				
				var url = '/mobile/ship/shipMobileProcInfoRegStep4.do';
				
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
