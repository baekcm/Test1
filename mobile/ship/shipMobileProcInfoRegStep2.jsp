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
			<input type="hidden" id="js-ship-mobile-proc-reg-proc-section1" name="js-ship-mobile-proc-reg-proc-section1">
			<input type="hidden" id="js-ship-mobile-proc-reg-proc-section2" name="js-ship-mobile-proc-reg-proc-section2">
			<input type="hidden" id="js-ship-mobile-proc-reg-proc-section3" name="js-ship-mobile-proc-reg-proc-section3">
			<input type="hidden" id="js-ship-mobile-proc-reg-proc-section4" name="js-ship-mobile-proc-reg-proc-section4">
			<!-- header -->
			<header class="wp-header wp-dark-shadow">
				<button type="button" class="wp-btn wp-left wp-prev-white"><spring:message code="TODO.KEY" text="이전"/></button>
				<h1><spring:message code="TODO.KEY" text="도장 공정정보 등록"/></h1>
			</header>
			<!-- //header -->
			<!-- step -->
			<div class="wp-step-area">
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
						<li>7</li>
					</ul>
				</div>
			</div>
			<!-- //step -->
			<!-- wp-container -->
			<section class="wp-container wp-pb50 wp-bg-f">
				<div class="wp-cont-area">
				<h1 class="wp-section-title wp-border-none"><spring:message code="TODO.KEY" text="2단계.  도장구역 정보"/></h1>
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
									<select id="js-ship-mobile-proc-reg-hull-no" name="js-ship-mobile-proc-reg-hull-no">
									</select>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2"><input type="text" id="js-ship-mobile-proc-reg-painting-stage" name="js-ship-mobile-proc-reg-painting-stage" title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="<spring:message code='TODO.KEY' text='공정 Stage'/>" disabled=""></td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="wp-ui-select wp-wd100p">
									<select id="js-ship-mobile-proc-reg-proc-id" name="js-ship-mobile-proc-reg-proc-id">
									</select>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2" style="padding: 0px;">
									<span id="js-ship-mobile-proc-reg-block-span">
										<table>
											<tr>
												<td>
													<div class="wp-ui-select wp-wd100p">
													<select id="js-ship-mobile-proc-reg-block-group" name="js-ship-mobile-proc-reg-block-group">
													</select>
													</div>
												</td>
												<td>
													<div class="wp-ui-select wp-wd100p">
													<select id="js-ship-mobile-proc-reg-block-body" name="js-ship-mobile-proc-reg-block-body">
													</select>
													</div>
												</td>
											</tr>
											<tr>
												<td>
													<div class="wp-ui-select wp-wd100p">
													<select id="js-ship-mobile-proc-reg-block-tail" name="js-ship-mobile-proc-reg-block-tail">
													</select>
													</div>
												</td>
												<td>
													<div class="wp-ui-select wp-wd100p">
													<select id="js-ship-mobile-proc-reg-block-coat-no" name="js-ship-mobile-proc-reg-block-coat-no">
													</select>
													</div>
												</td>
											</tr>
										</table>
									</span>
									<span id="js-ship-mobile-proc-reg-tank-span" style="display: none;">
										<table>
											<tr>
												<td>
													<div class="wp-ui-select wp-wd100p">
													<select id="js-ship-mobile-proc-reg-tank-group" name="js-ship-mobile-proc-reg-tank-group">
													</select>
													</div>
												</td>
												<td>
													<div class="wp-ui-select wp-wd100p">
													<select id="js-ship-mobile-proc-reg-tank-body" name="js-ship-mobile-proc-reg-tank-body">
													</select>
													</div>
												</td>
											</tr>
											<tr>
												<td>
													<div class="wp-ui-select wp-wd100p">
													<select id="js-ship-mobile-proc-reg-tank-tail" name="js-ship-mobile-proc-reg-tank-tail">
													</select>
													</div>
												</td>
												<td>
													<div class="wp-ui-select wp-wd100p">
													<select id="js-ship-mobile-proc-reg-tank-coat-no" name="js-ship-mobile-proc-reg-tank-coat-no">
													</select>
													</div>
												</td>
											</tr>
										</table>
									</span>
									<span id="js-ship-mobile-proc-reg-full-span" style="display: none;">
										<table>
											<tr>
												<td>
													<div class="wp-ui-select wp-wd100p">
													<select id="js-ship-mobile-proc-reg-full-main-coat" name="js-ship-mobile-proc-reg-full-main-coat">
													</select>
													</div>
												</td>
												<td>
													<div class="wp-ui-select wp-wd100p">
													<select id="js-ship-mobile-proc-reg-full-range" name="js-ship-mobile-proc-reg-full-range">
													</select>
													</div>
												</td>
											</tr>
										</table>
									</span>
									<span id="js-ship-mobile-proc-reg-area-span" style="display: none;">
										<table>
											<tr>
												<td>
													<div class="wp-ui-select wp-wd100p">
													<select id="js-ship-mobile-proc-reg-area-major" name="js-ship-mobile-proc-reg-area-major">
													</select>
													</div>
												</td>
												<td>
													<div class="wp-ui-select wp-wd100p">
													<select id="js-ship-mobile-proc-reg-area-area" name="js-ship-mobile-proc-reg-area-area">
													</select>
													</div>
												</td>
											</tr>
											<tr>
												<td>
													<div class="wp-ui-select wp-wd100p">
													<select id="js-ship-mobile-proc-reg-area-section" name="js-ship-mobile-proc-reg-area-section">
													</select>
													</div>
												</td>
											</tr>
										</table>
									</span>
								</td>
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
				
				//호선 No 콤보 조회
				retrieveHullNoInfo.request();
				//도장구역 콤보 조회
				retrieveShipProcArea.request();
				
				//호선 No 콤보 change 이벤트
				$('#js-ship-mobile-proc-reg-hull-no').off().on('change', function(){
					retrievePaintingStage.request();
					$('#js-ship-mobile-proc-reg-proc-id').trigger('change');
				});
				//도장구역 콤보 change 이벤트
				$('#js-ship-mobile-proc-reg-proc-id').off().on('change', function(){
					if(this.value == 'B')
					{
						$('#js-ship-mobile-proc-reg-block-span').show();
						$('#js-ship-mobile-proc-reg-tank-span').hide();
						$('#js-ship-mobile-proc-reg-full-span').hide();
						$('#js-ship-mobile-proc-reg-area-span').hide();
						
						//도장구역 (Block No) 콤보1 조회
						retrieveBlockGroup.request();
						//도장구역 (Block No) 콤보2 조회
						retrieveBlockBody.request();
						//도장구역 (Block No) 콤보3 조회
						retrieveShipBlockTail.request();
						//도장구역 (Block No) 콤보4 조회
						retrieveShipBlockCoatNo.request();
					}
					else if(this.value == 'T')
					{
						$('#js-ship-mobile-proc-reg-block-span').hide();
						$('#js-ship-mobile-proc-reg-tank-span').show();
						$('#js-ship-mobile-proc-reg-full-span').hide();
						$('#js-ship-mobile-proc-reg-area-span').hide();
						
						//도장구역 (Tank No) 콤보1 조회
						retrieveTankGroup.request();
						//도장구역 (Tank No) 콤보2 조회
						retrieveTankBody.request();
						//도장구역 (Tank No) 콤보3 조회
						retrieveShipTankTail.request();
						//도장구역 (Tank No) 콤보4 조회
						retrieveShipTankCoatNo.request();
					}
					else if(this.value == 'F')
					{
						$('#js-ship-mobile-proc-reg-block-span').hide();
						$('#js-ship-mobile-proc-reg-tank-span').hide();
						$('#js-ship-mobile-proc-reg-full-span').show();
						$('#js-ship-mobile-proc-reg-area-span').hide();
						
						//도장구역 (Full Coating) 콤보1 조회
						retrieveFullCoatingMainCoat.request();
						//도장구역 (Full Coating) 콤보2 조회
						retrieveFullCoatingRange.request();
					}
					else if(this.value == 'A')
					{
						$('#js-ship-mobile-proc-reg-block-span').hide();
						$('#js-ship-mobile-proc-reg-tank-span').hide();
						$('#js-ship-mobile-proc-reg-full-span').hide();
						$('#js-ship-mobile-proc-reg-area-span').show();
						
						//도장구역 (Area) 콤보1 조회
						retrieveMajorArea.request();
						//도장구역 (Area) 콤보2 조회
						retrieveArea.request();
						//도장구역 (Area) 콤보3 조회
						retrieveSection.request();
					}
				});
				//도장구역 (Block No) 콤보1 change 이벤트
				$('#js-ship-mobile-proc-reg-block-group').off().on('change', function(){
					retrieveBlockBody.request();
				});
				//도장구역 (Tank No) 콤보1 change 이벤트
				$('#js-ship-mobile-proc-reg-tank-group').off().on('change', function(){
					retrieveTankBody.request();
				});
				//도장구역 (Full Coating) 콤보1 change 이벤트
				$('#js-ship-mobile-proc-reg-full-main-coat').off().on('change', function(){
					retrieveFullCoatingRange.request();
				});
				//도장구역 (Area) 콤보1 change 이벤트
				$('#js-ship-mobile-proc-reg-area-major').off().on('change', function(){
					//도장구역 (Area) 콤보2 조회
					retrieveArea.request();
					//도장구역 (Area) 콤보3 조회
					retrieveSection.request();
				});
				//도장구역 (Area) 콤보2 change 이벤트
				$('#js-ship-mobile-proc-reg-area-area').off().on('change', function(){
					//도장구역 (Area) 콤보3 조회
					retrieveSection.request();
				});
				
				//호선 No 콤보 이벤트 적용
				$('#js-ship-mobile-proc-reg-hull-no').trigger('change');
				
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
					retrieveShipMobileProcInfoRegStep1(seqShipProcInfo);
				});
				
				//다음 버튼
				$('#js-ship-mobile-proc-reg-next').off().on('click', function() {
					retrieveShipMobileProcInfoRegStep3(seqShipProcInfo);
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
									$('#js-ship-mobile-proc-reg-hull-no').val(response.rs[0].hullNo);
									$('#js-ship-mobile-proc-reg-hull-no').trigger('change');
									$('#js-ship-mobile-proc-reg-proc-id').val(response.rs[0].procId);
									$('#js-ship-mobile-proc-reg-proc-id').trigger('change');
									
									if(response.rs[0].procId == 'B')
									{
										$('#js-ship-mobile-proc-reg-block-group').val(response.rs[0].procSection1);
										$('#js-ship-mobile-proc-reg-block-group').trigger('change');
										$('#js-ship-mobile-proc-reg-block-body').val(response.rs[0].procSection2);
										$('#js-ship-mobile-proc-reg-block-tail').val(response.rs[0].procSection3);
										$('#js-ship-mobile-proc-reg-block-coat-no').val(response.rs[0].procSection4);
									}
									else if(response.rs[0].procId == 'T')
									{
										$('#js-ship-mobile-proc-reg-tank-group').val(response.rs[0].procSection1);
										$('#js-ship-mobile-proc-reg-tank-group').trigger('change');
										$('#js-ship-mobile-proc-reg-tank-body').val(response.rs[0].procSection2);
										$('#js-ship-mobile-proc-reg-tank-tail').val(response.rs[0].procSection3);
										$('#js-ship-mobile-proc-reg-tank-coat-no').val(response.rs[0].procSection4);
									}
									else if(response.rs[0].procId == 'F')
									{
										$('#js-ship-mobile-proc-reg-full-main-coat').val(response.rs[0].procSection1);
										$('#js-ship-mobile-proc-reg-proc-id').trigger('change');
										$('#js-ship-mobile-proc-reg-full-range').val(response.rs[0].procSection2);
									}
									else if(response.rs[0].procId == 'A')
									{
										$('#js-ship-mobile-proc-reg-area-major').val(response.rs[0].procSection1);
										$('#js-ship-mobile-proc-reg-area-major').trigger('change');
										$('#js-ship-mobile-proc-reg-area-area').val(response.rs[0].procSection2);
										$('#js-ship-mobile-proc-reg-area-area').trigger('change');
										$('#js-ship-mobile-proc-reg-area-section').val(response.rs[0].procSection3);
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
			
			var retrieveHullNoInfo = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-hull-no').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-hull-no').append("<option value='"+response.rs[i].hullNo+"' shipType='"+response.rs[i].shipType+"'>"+response.rs[i].hullNo+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-hull-no').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
						
						var yardCode = $('#js-ship-mobile-proc-reg-yard-code').val();
						
						var params = {
							service: 'ship.procInfo',
							method: 'retrieveHullNoInfo',
							yardCode: yardCode
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};

			var retrievePaintingStage = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								
								if(response.rs.length > 0)
								{
									var paintingStage = response.rs[0].paintingStage;
									$('#js-ship-mobile-proc-reg-painting-stage').val(paintingStage);
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
						
						var hullNo = $('#js-ship-mobile-proc-reg-hull-no').val();
						
						var params = {
							service: 'ship.procInfo',
							method: 'retrievePaintingStage',
							hullNo: hullNo
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};

			var retrieveShipProcArea = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
			
							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-proc-id').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-proc-id').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-proc-id').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
							method: 'retrieveShipProcArea'
						};
			
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};

			var retrieveBlockGroup = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-block-group').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-block-group').append("<option value='"+response.rs[i].blockGroup+"'>"+response.rs[i].blockGroup+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-block-group').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
						
						var yardCode = $('#js-ship-mobile-proc-reg-yard-code').val();
						var shipType = $('#js-ship-mobile-proc-reg-hull-no option:selected').attr('shipType');
						
						var params = {
							service: 'ship.procInfo',
							method: 'retrieveBlockGroup',
							yardCode: yardCode,
							shipType: shipType
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};

			var retrieveBlockBody = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-block-body').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-block-body').append("<option value='"+response.rs[i].blockBody+"'>"+response.rs[i].blockBody+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-block-body').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
						
						var yardCode = $('#js-ship-mobile-proc-reg-yard-code').val();
						var shipType = $('#js-ship-mobile-proc-reg-hull-no option:selected').attr('shipType');
						var blockGroup = $('#js-ship-mobile-proc-reg-block-group').val();
						
						var params = {
							service: 'ship.procInfo',
							method: 'retrieveBlockBody',
							yardCode: yardCode,
							shipType: shipType,
							blockGroup: blockGroup
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};

			var retrieveShipBlockTail = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
			
							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-block-tail').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-block-tail').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].code+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-block-tail').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
							method: 'retrieveShipBlockTail'
						};
			
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};

			var retrieveShipBlockCoatNo = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
			
							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-block-coat-no').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-block-coat-no').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-block-coat-no').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
							method: 'retrieveShipBlockCoatNo'
						};
			
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};

			var retrieveTankGroup = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-tank-group').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-tank-group').append("<option value='"+response.rs[i].tankGroup+"'>"+response.rs[i].tankGroup+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-tank-group').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
						var yardCode = $('#js-ship-mobile-proc-reg-yard-code').val();
						var shipType = $('#js-ship-mobile-proc-reg-hull-no option:selected').attr('shipType');
						
						var params = {
							service: 'ship.procInfo',
							method: 'retrieveTankGroup',
							yardCode: yardCode,
							shipType: shipType,
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};

			var retrieveTankBody = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-tank-body').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-tank-body').append("<option value='"+response.rs[i].tankBody+"'>"+response.rs[i].tankBody+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-tank-body').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
						var yardCode = $('#js-ship-mobile-proc-reg-yard-code').val();
						var shipType = $('#js-ship-mobile-proc-reg-hull-no option:selected').attr('shipType');
						var tankGroup = $('#js-ship-mobile-proc-reg-tank-group').val();
						
						var params = {
							service: 'ship.procInfo',
							method: 'retrieveTankBody',
							yardCode: yardCode,
							shipType: shipType,
							tankGroup: tankGroup
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};

			var retrieveShipTankTail = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
			
							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-tank-tail').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-tank-tail').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].code+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-tank-tail').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
							method: 'retrieveShipTankTail'
						};
			
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};

			var retrieveShipTankCoatNo = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
			
							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-tank-coat-no').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-tank-coat-no').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-tank-coat-no').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
							method: 'retrieveShipTankCoatNo'
						};
			
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};

			var retrieveFullCoatingMainCoat = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-full-main-coat').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-full-main-coat').append("<option value='"+response.rs[i].area+"'>"+response.rs[i].mainCoat+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-full-main-coat').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
						
						var yardCode = $('#js-ship-mobile-proc-reg-yard-code').val();
						var hullNo = $('#js-ship-mobile-proc-reg-hull-no').val();
						
						var params = {
							service: 'ship.procInfo',
							method: 'retrieveFullCoatingMainCoat',
							yardCode: yardCode,
							hullNo: hullNo
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};

			var retrieveFullCoatingRange = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-full-range').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-full-range').append("<option value='"+response.rs[i].coatingRange+"'>"+response.rs[i].coatingRange+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-full-range').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
						
						var yardCode = $('#js-ship-mobile-proc-reg-yard-code').val();
						var hullNo = $('#js-ship-mobile-proc-reg-hull-no').val();
						var area = $('#js-ship-mobile-proc-reg-full-main-coat').val();
						
						var params = {
							service: 'ship.procInfo',
							method: 'retrieveFullCoatingRange',
							yardCode: yardCode,
							hullNo: hullNo,
							area: area
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};

			var retrieveMajorArea = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-area-major').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-area-major').append("<option value='"+response.rs[i].majorArea+"'>"+response.rs[i].majorAreaNm+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-area-major').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
						
						var shipType = $('#js-ship-mobile-proc-reg-hull-no option:selected').attr('shipType');
						
						var params = {
							service: 'ship.procInfo',
							method: 'retrieveMajorArea',
							shipType: shipType
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};

			var retrieveArea = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-area-area').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-area-area').append("<option value='"+response.rs[i].area+"'>"+response.rs[i].areaNm+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-area-area').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
						
						var shipType = $('#js-ship-mobile-proc-reg-hull-no option:selected').attr('shipType');
						var majorArea = $('#js-ship-mobile-proc-reg-area-major').val();
						
						var params = {
							service: 'ship.procInfo',
							method: 'retrieveArea',
							shipType: shipType,
							majorArea: majorArea
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};

			var retrieveSection = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-area-section').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-area-section').append("<option value='"+response.rs[i].section+"'>"+response.rs[i].sectionNm+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-area-section').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
						
						var shipType = $('#js-ship-mobile-proc-reg-hull-no option:selected').attr('shipType');
						var majorArea = $('#js-ship-mobile-proc-reg-area-major').val();
						var area = $('#js-ship-mobile-proc-reg-area-area').val();
						
						var params = {
							service: 'ship.procInfo',
							method: 'retrieveSection',
							shipType: shipType,
							majorArea: majorArea,
							area: area
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			var retrieveShipMobileProcInfoRegStep1 = function(seqShipProcInfo){
				
				var procId = $('#js-ship-mobile-proc-reg-proc-id').val();
				var procSection1 = '';
				var procSection2 = '';
				var procSection3 = '';
				var procSection4 = '';
				
				if(procId == 'B')
				{
					procSection1 = $('#js-ship-mobile-proc-reg-block-group').val();
					procSection2 = $('#js-ship-mobile-proc-reg-block-body').val();
					procSection3 = $('#js-ship-mobile-proc-reg-block-tail').val();
					procSection4 = $('#js-ship-mobile-proc-reg-block-coat-no').val();
				}
				else if(procId == 'T')
				{
					procSection1 = $('#js-ship-mobile-proc-reg-tank-group').val();
					procSection2 = $('#js-ship-mobile-proc-reg-tank-body').val();
					procSection3 = $('#js-ship-mobile-proc-reg-tank-tail').val();
					procSection4 = $('#js-ship-mobile-proc-reg-tank-coat-no').val();
				}
				else if(procId == 'F')
				{
					procSection1 = $('#js-ship-mobile-proc-reg-full-main-coat').val();
					procSection2 = $('#js-ship-mobile-proc-reg-full-range').val();
				}
				else if(procId == 'A')
				{
					procSection1 = $('#js-ship-mobile-proc-reg-area-major').val();
					procSection2 = $('#js-ship-mobile-proc-reg-area-area').val();
					procSection3 = $('#js-ship-mobile-proc-reg-area-section').val();
				}
				
				$('#js-ship-mobile-proc-reg-proc-section1').val(procSection1);
				$('#js-ship-mobile-proc-reg-proc-section2').val(procSection2);
				$('#js-ship-mobile-proc-reg-proc-section3').val(procSection3);
				$('#js-ship-mobile-proc-reg-proc-section4').val(procSection4);
				
				var url = '/mobile/ship/shipMobileProcInfoRegStep1.do';
				
				var yardCode = getQuerystring('yardCode');
				var yardName = getQuerystring('yardName');
				
				url += '?yardCode='+yardCode+'&yardName='+yardName;
				
				if(!app.utils.isEmpty(seqShipProcInfo)) url += '&seqShipProcInfo='+seqShipProcInfo;
				
				$('#js-ship-mobile-proc-reg-form').attr('action', url);
				$('#js-ship-mobile-proc-reg-form').submit();
			}
			
			var retrieveShipMobileProcInfoRegStep3 = function(seqShipProcInfo){
				
				var procId = $('#js-ship-mobile-proc-reg-proc-id').val();
				var procSection1 = '';
				var procSection2 = '';
				var procSection3 = '';
				var procSection4 = '';
				
				if(procId == 'B')
				{
					procSection1 = $('#js-ship-mobile-proc-reg-block-group').val();
					procSection2 = $('#js-ship-mobile-proc-reg-block-body').val();
					procSection3 = $('#js-ship-mobile-proc-reg-block-tail').val();
					procSection4 = $('#js-ship-mobile-proc-reg-block-coat-no').val();
				}
				else if(procId == 'T')
				{
					procSection1 = $('#js-ship-mobile-proc-reg-tank-group').val();
					procSection2 = $('#js-ship-mobile-proc-reg-tank-body').val();
					procSection3 = $('#js-ship-mobile-proc-reg-tank-tail').val();
					procSection4 = $('#js-ship-mobile-proc-reg-tank-coat-no').val();
				}
				else if(procId == 'F')
				{
					procSection1 = $('#js-ship-mobile-proc-reg-full-main-coat').val();
					procSection2 = $('#js-ship-mobile-proc-reg-full-range').val();
				}
				else if(procId == 'A')
				{
					procSection1 = $('#js-ship-mobile-proc-reg-area-major').val();
					procSection2 = $('#js-ship-mobile-proc-reg-area-area').val();
					procSection3 = $('#js-ship-mobile-proc-reg-area-section').val();
				}
				
				$('#js-ship-mobile-proc-reg-proc-section1').val(procSection1);
				$('#js-ship-mobile-proc-reg-proc-section2').val(procSection2);
				$('#js-ship-mobile-proc-reg-proc-section3').val(procSection3);
				$('#js-ship-mobile-proc-reg-proc-section4').val(procSection4);
				
				var url = '/mobile/ship/shipMobileProcInfoRegStep3.do';
				
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
