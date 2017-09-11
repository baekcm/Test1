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
			<input type="hidden" id="js-ship-mobile-proc-reg-post-yn" name="js-ship-mobile-proc-reg-post-yn" value="Y">
			<input type="hidden" id="js-ship-mobile-proc-reg-seq">
			<!-- header -->
			<header class="wp-header wp-dark-shadow">
				<button type="button" class="wp-btn wp-left wp-prev-white"><spring:message code="TODO.KEY" text="이전"/></button>
				<h1><spring:message code="TODO.KEY" text="도장 공정정보 등록"/></h1>
			</header>
			<!-- //header -->
			<!-- step -->
			<div class="wp-step-area">
				<div class="wp-step wp-wd1"><!-- 번호 조정 class -->
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
					<h1 class="wp-section-title wp-border-none"><spring:message code="TODO.KEY" text="1단계.  작성자 정보"/></h1>
					<div class="wp-table h-center wp-reg wp-noline">
					<table>
						<caption></caption>
						<colgroup>
							<col style="width:100%">
						</colgroup>
						<tbody>
							<tr>
								<td>
									<div class="wp-input-btn">
										<input type="hidden" id="js-ship-mobile-proc-reg-insp-emp" name="js-ship-mobile-proc-reg-insp-emp">
										<input type="text" id="js-ship-mobile-proc-reg-insp-emp-name" name="js-ship-mobile-proc-reg-insp-emp-name" title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="<spring:message code='TODO.KEY' text='담당자'/>">
										<button type="button" id="js-ship-mobile-proc-reg-search" name="js-ship-mobile-proc-reg-search" class="wp-btn wp-search wp-layerpop-btn"><spring:message code="TODO.KEY" text="검색"/></button>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<input type="hidden" id="js-ship-mobile-proc-reg-yard-code" name="js-ship-mobile-proc-reg-yard-code">
									<input type="text" id="js-ship-mobile-proc-reg-yard-name" name="js-ship-mobile-proc-reg-yard-name" placeholder="<spring:message code='TODO.KEY' text='조선소'/>" disabled="">
								</td>
							</tr>
							<tr>
								<td>
									<div class="wp-ui-select wp-wd100p">
									<input type="date" id="js-ship-mobile-proc-reg-insp-date" name="js-ship-mobile-proc-reg-insp-date" title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="<spring:message code='TODO.KEY' text='측정일시'/>">
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="wp-ui-select wp-wd100p">
										<select id="js-ship-mobile-proc-reg-insp-place" name="js-ship-mobile-proc-reg-insp-place">
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><input type="text" id="js-ship-mobile-proc-reg-insp-remark" name="js-ship-mobile-proc-reg-insp-remark" title="<spring:message code='TODO.KEY' text='내용입력'/>" disabled=""></td>
							</tr>
						</tbody>
					</table>
					</div>
				</div>
			</section>
			<!-- //wp-container -->
			<div class="wp-position-btn">
				<button type="button" class="wp-btn" disabled=""><spring:message code="TODO.KEY" text="이전"/></button>
				<button type="button" id="js-ship-mobile-proc-reg-next" class="wp-btn"><spring:message code="TODO.KEY" text="다음"/></button>
			</div>
		</form>
	</div>
	
	<!-- 담당자 검색 레이어 팝업 -->
	<div class="wp-wrap wp-search-layerpop" id="wp-search-layerpop">
		<!-- header -->
		<header class="wp-header">
			<button type="button" class="wp-btn wp-left wp-layerpop-btn-close"><spring:message code="TODO.KEY" text="닫기"/></button>
			<h1><spring:message code="TODO.KEY" text="담당자 검색"/></h1>
			<button type="button" id="js-ship-mobile-proc-reg-search-complete" class="wp-btn wp-right wp-white-line" disabled=""><spring:message code="TODO.KEY" text="완료"/></button>
		</header>
		<!-- //header -->
		<!-- wp-container -->
		<section class="wp-container">
			<!-- box content -->
			<div class="wp-box-cont wp-bg-none">
				<div class="wp-input-btn">
					<input type="text" id="js-ship-mobile-proc-reg-search-keyword" title="<spring:message code='TODO.KEY' text='내용입력'/>">
					<button type="button" id="js-ship-mobile-proc-reg-search-search" class="wp-btn wp-search">검색</button>
				</div>
			</div>
			<!-- //box content -->
			<!-- title -->
			<div class="wp-title-area wp-pb0">
				<h3 class="wp-section-title wp-border-none"><spring:message code="TODO.KEY" text="검색결과"/></h3>
			</div>
			<hr>
			<div id="js-ship-mobile-proc-reg-search-list"></div>
		</section>
		<!-- //wp-container -->
	</div>
	
	</tiles:putAttribute>
	<!-- [e] 모바일 콘텐츠 -->
	
	<!-- [s] 페이지 레벨 스크립트 -->
	<tiles:putAttribute name="page-level-js">
	
		<script id="js-template-ship-mobile-proc-reg-search-list" type="text/x-handlebars-template">
			{{#rows}}
				<!-- box content -->
				<div class="wp-box-cont wp-search-member">
					<div class="wp-workings">{{deptNm}}</div>
					<div class="wp-name"><span>[1234567]</span><div id="js-ship-mobile-proc-reg-search-emp-name">{{empNm}} {{empRank}}</div></div>
					<div class="wp-phone"><span><spring:message code="TODO.KEY" text="전화번호"/></span>{{mobile}}</div>
					<div class="wp-check"><span class="wp-ui-radio"><input type="radio" class="wp-inp-radio" value="{{emp}}"></span></div>
				</div>
				<!-- //box content -->
			{{/rows}}
		</script>
		
		<script type="text/javascript">
		
			$(document).ready(function(){
				
				var seqShipProcInfo = getQuerystring('seqShipProcInfo');
				
				//시퀀스 셋팅
				$('#js-ship-mobile-proc-reg-seq').val(seqShipProcInfo);
				
				var yardCode = getQuerystring('yardCode');
				var yardName = getQuerystring('yardName');
				
				//조선소 코드 셋팅
				$('#js-ship-mobile-proc-reg-yard-code').val(yardCode);
				$('#js-ship-mobile-proc-reg-yard-name').val(yardName);
				
				//측정장소 콤보 조회
				retrieveShipYardArea.request();
				
				//측정장소 콤보 change 이벤트
				$('#js-ship-mobile-proc-reg-insp-place').off().on('change', function(){
					if(this.value == 'A0038')
					{
						$('#js-ship-mobile-proc-reg-insp-remark').attr('disabled', false);
					}
					else
					{
						$('#js-ship-mobile-proc-reg-insp-remark').val('');
						$('#js-ship-mobile-proc-reg-insp-remark').attr('disabled', true);
					}
				});
				
				//뒤로가기 버튼
				$('.wp-prev-white').off().on('click', function() {
					var url = '/mobile/ship/shipMobileProcInfoMng.do';
					
					var yardCode = getQuerystring('yardCode');
					var yardName = getQuerystring('yardName');
					
					url += '?yardCode='+yardCode+'&yardName='+yardName;
					
					window.location.href = url;
				});
				
				//검색 버튼
				$('#js-ship-mobile-proc-reg-search').on('click', function() {
					initShipMobileProcInfoRegStepSearch();
				});
				
				//다음 버튼
				$('#js-ship-mobile-proc-reg-next').off().on('click', function() {
					retrieveShipMobileProcInfoRegStep2(seqShipProcInfo);
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
									$('#js-ship-mobile-proc-reg-insp-emp').val(response.rs[0].emp);
									$('#js-ship-mobile-proc-reg-insp-emp-name').val(response.rs[0].empNm);
									$('#js-ship-mobile-proc-reg-yard-code').val(response.rs[0].yardCode);
									$('#js-ship-mobile-proc-reg-yard-name').val(response.rs[0].yardCodeNm);
									$('#js-ship-mobile-proc-reg-insp-date').val(response.rs[0].inspDate);
									$('#js-ship-mobile-proc-reg-insp-place').val(response.rs[0].inspPlace);
									$('#js-ship-mobile-proc-reg-insp-remark').val(response.rs[0].inspRemark);
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
			
			var retrieveShipYardArea = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-insp-place').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-insp-place').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-insp-place').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
							service: 'ship.common',
							method: 'retrieveShipYardArea',
							code: yardCode
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			var retrieveShipMobileProcInfoRegStep2 = function(seqShipProcInfo){
				
				var emp = $('#js-ship-mobile-proc-reg-insp-emp').val();
				var yardCode = $('#js-ship-mobile-proc-reg-yard-code').val();
				var inspDate = $('#js-ship-mobile-proc-reg-insp-date').val();
				
				if(app.utils.isEmpty(emp)){
					fn_alertInfo("A", "검사자를 선택해 주세요.", function(){
						$('#js-ship-mobile-proc-reg-insp-emp-name').focus();
					});
					return;
				}
				if(app.utils.isEmpty(yardCode)){
					fn_alertInfo('A', '조선소 코드가 없습니다.');
					return;
				}
				if(app.utils.isEmpty(inspDate)){
					fn_alertInfo('A', '검사일자를 입력해 주세요.', function(){
						$('#js-ship-mobile-proc-reg-insp-date').focus();
					});
					return;
				}
				
				var url = '/mobile/ship/shipMobileProcInfoRegStep2.do';
				
				var yardCode = getQuerystring('yardCode');
				var yardName = getQuerystring('yardName');
				
				url += '?yardCode='+yardCode+'&yardName='+yardName;
				
				if(!app.utils.isEmpty(seqShipProcInfo)) url += '&seqShipProcInfo='+seqShipProcInfo;
				
				$('#js-ship-mobile-proc-reg-form').attr('action', url);
				$('#js-ship-mobile-proc-reg-form').submit();
			}
			
			var shipMobileProcRegSearchListTemplate;
			
			var initShipMobileProcInfoRegStepSearch = function(){
				
				//Handlebar 초기화
				var source = $('#js-template-ship-mobile-proc-reg-search-list').html();
				shipMobileProcRegSearchListTemplate = Handlebars.compile(source);
				
				var keyword = $('#js-ship-mobile-proc-reg-insp-emp-name').val();
				$('#js-ship-mobile-proc-reg-search-keyword').val(keyword);
				
				$('#js-ship-mobile-proc-reg-search-search').off().on('click', function(){
					retrieveManagerEmpInfoList.request();
				});
				
				$('#js-ship-mobile-proc-reg-search-complete').off().on('click', function(){
					var obj = $('#js-ship-mobile-proc-reg-search-list').find('.wp-inp-radio:checked');
					var emp = obj.val();
					var empNm = obj.parent().parent().parent().find('#js-ship-mobile-proc-reg-search-emp-name').text();
					
					$('#js-ship-mobile-proc-reg-insp-emp').val(emp);
					$('#js-ship-mobile-proc-reg-insp-emp-name').val(empNm);
					
					$('.wp-layerpop-btn-close').click();
				});
				
				if(!app.utils.isEmpty(keyword)){
					retrieveManagerEmpInfoList.request();
				}
			}
			
			var retrieveManagerEmpInfoList = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								// TODO
								var data = {
									rows : response.rs
								};
								
								var html = shipMobileProcRegSearchListTemplate(data);
								
								$('#js-ship-mobile-proc-reg-search-list').empty().append(html);
								
								$('#js-ship-mobile-proc-reg-search-complete').attr('disabled', true);
								
								$('#js-ship-mobile-proc-reg-search-list').find('.wp-inp-radio').off().on('click', function(){
									$('#js-ship-mobile-proc-reg-search-list').find('.wp-inp-radio').prop('checked', false);
									$(this).prop('checked', true);
									
									$('#js-ship-mobile-proc-reg-search-complete').attr('disabled', false);
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
						fn_alertInfo('E', errorText);
					},
					complete: function(jqueryXHR, status) {
						// ------------------------------------
						// http response complete
						// ------------------------------------
						app.mask.pageUnlock();
					},
					request: function(programId) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						
						var params = {
							service: 'common',
							method: 'retrieveEmpInfoList',
							keyword: $('#js-ship-mobile-proc-reg-search-keyword').val()
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
		</script>
		
	</tiles:putAttribute>
	<!-- [e] 페이지 레벨 스크립트 -->
</tiles:insertDefinition>
