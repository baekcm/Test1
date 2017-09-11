<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.03.08] ship mobile 도정 공정정보 등록" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.mobile">
	<!-- [s] 모바일 콘텐츠 -->
	<tiles:putAttribute name="page-content">

		<div class="wp-wrap">
			<form method="post" id="js-ship-mobile-pre-proc-reg-form">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-post-yn" id="js-ship-mobile-pre-proc-reg-post-yn" value="Y">
			<input type="hidden" name="js-ship-mobile-pre-proc-reg-seq" id="js-ship-mobile-pre-proc-reg-seq">
			
			<!-- header -->
			<header class="wp-header wp-dark-shadow">
				<button type="button" class="wp-btn wp-left wp-prev-white"><spring:message code="TODO.KEY" text="이전" /></button>
				<h1><spring:message code="TODO.KEY" text="전처리장 정보 등록" /></h1>
				<!-- <button type="button" class="wp-btn wp-right wp-white-line" disabled="">완료</button> -->
			</header>
			<!-- //header -->
			
			<!-- step -->
			<div class="wp-step-area wp-preProc"><!-- 전처리장 class -->
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
					</ul>
				</div>
			</div>
			<!-- //step -->
			
			<!-- wp-container -->
			<section class="wp-container wp-pb50 wp-bg-f">
				<div class="wp-cont-area">
					<h1 class="wp-section-title wp-border-none"><spring:message code="TODO.KEY" text="1단계.  General Information" /></h1>
					<div class="wp-table h-center wp-reg wp-noline">
					<table>
						<caption></caption>
						<colgroup>
							<col style="width:100%">
						</colgroup>
						<tbody>
							<tr>
								<td colspan="2">
									<input type="text" name="js-ship-mobile-pre-proc-reg-yard-name" id="js-ship-mobile-pre-proc-reg-yard-name" title="내용입력" placeholder="조선소" disabled="disabled">
									<input type="hidden" name="js-ship-mobile-pre-proc-reg-yard-code" id="js-ship-mobile-pre-proc-reg-yard-code">
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="wp-ui-select wp-wd100p">
										<select name="js-ship-mobile-pre-proc-reg-line-no" id="js-ship-mobile-pre-proc-reg-line-no" title="항목 개수 설정">
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="wp-ui-select wp-wd100p">
										<input type="date" name="js-ship-mobile-pre-proc-reg-insp-date" id="js-ship-mobile-pre-proc-reg-insp-date" title="<spring:message code='TODO.KEY' text='내용입력' />" placeholder="<spring:message code='TODO.KEY' text='측정일시' />">
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="wp-input-btn">
										<!-- <input type="text" name="" title="내용입력" placeholder="검사자"> -->
										<input type="text" name="js-ship-mobile-pre-proc-reg-emp-name" id="js-ship-mobile-pre-proc-reg-emp-name" readonly="readonly" title='<spring:message code="TODO.KEY" text="검사자" />' placeholder='<spring:message code="TODO.KEY" text="검사자" />' />
										<input type="hidden" name="js-ship-mobile-pre-proc-reg-emp" id="js-ship-mobile-pre-proc-reg-emp" />
										<button type="button" id="js-ship-mobile-pre-proc-reg-emp-retrieve-button" class="wp-btn wp-search wp-search-layerpop-btn"><spring:message code="TODO.KEY" text="검색" /></button>
									</div>
								</td>
							</tr>
							<tr>
								<th>라인 가동 여부</th>
								<td id="js-ship-mobile-pre-proc-reg-line-status-td" class="wp-toggle-area">
									<div class="wp-toggle-operate toggle-light" style="height: 32px; width: 80px;">
										<div class="toggle-slide">
											<div class="toggle-inner" style="width: 128px; margin-left: 0px;">
												<div class="toggle-on active" style="height: 32px; width: 64px; text-indent: -10.6667px; line-height: 32px;">가동</div>
												<div class="toggle-blob" style="height: 32px; width: 32px; margin-left: -16px;"></div>
												<div class="toggle-off" style="height: 32px; width: 64px; margin-left: -16px; text-indent: 10.6667px; line-height: 32px;">비가동</div>
											</div>
										</div>
									</div>
									<input type="hidden" name="js-ship-mobile-pre-proc-reg-line-status" id="js-ship-mobile-pre-proc-reg-line-status" />
								</td>
							</tr>
						</tbody>
					</table>
					</div>
				</div>
			</section>
			<!-- //wp-container -->
			<div class="wp-position-btn">
				<button type="button" id="js-ship-mobile-pre-proc-reg-back" class="wp-btn"><spring:message code="TODO.KEY" text="이전" /></button>
				<button type="button" id="js-ship-mobile-pre-proc-reg-next" class="wp-btn"><spring:message code="TODO.KEY" text="다음" /></button>
			</div>
			</form>
		</div>
		
	</tiles:putAttribute>
	<!-- [e] 모바일 콘텐츠 -->
	
	<!-- [s] 페이지 레벨 스크립트 -->
	<tiles:putAttribute name="page-level-js">
	
		<script id="js-template-ship-mobile-pre-proc-reg-search-list" type="text/x-handlebars-template">
			{{#rows}}
				<!-- box content -->
				<div class="wp-box-cont wp-search-member">
					<div class="wp-workings">{{deptNm}}</div>
					<div class="wp-name"><span>[1234567]</span><div id="js-ship-mobile-pre-proc-reg-search-emp-name">{{empNm}} {{empRank}}</div></div>
					<div class="wp-phone"><span><spring:message code="TODO.KEY" text="전화번호"/></span>{{mobile}}</div>
					<div class="wp-check"><span class="wp-ui-radio"><input type="radio" class="wp-inp-radio" value="{{emp}}"></span></div>
				</div>
				<!-- //box content -->
			{{/rows}}
		</script>
		
		<script type="text/javascript">
		
			var yardCode = getQuerystring('yardCode');
			var yardName = getQuerystring('yardName');
			
			var seqShipPreProcInfo 	= getQuerystring('seqShipPreProcInfo');
			var lineNo 				= getQuerystring('lineNo');
			var inspDate 			= getQuerystring('inspDate');
			
			$(document).ready(function(){
				
				// 시퀀스 셋팅
				$('#js-ship-mobile-pre-proc-reg-seq').val(seqShipPreProcInfo);
				
				// 조선소 코드 셋팅
				$('#js-ship-mobile-pre-proc-reg-yard-code').val(yardCode);
				$('#js-ship-mobile-pre-proc-reg-yard-name').val(yardName);
				
				// Line 콤보 조회
				retrieveShipLine.request();
				
				// 뒤로가기 버튼
				$('.wp-prev-white').off().on('click', function() {
					var url = '/mobile/ship/shipMobilePreProcMng.do';
					
					url += '?yardCode='+ yardCode +'&yardName='+ yardName;
					window.location.href = url;
					
				});
				
				
				// 검색 버튼
				$('#js-ship-mobile-pre-proc-reg-search').on('click', function() {
					initShipMobilePreProcInfoRegStepSearch();
				});
				
				// 이전 버튼
				$('#js-ship-mobile-pre-proc-reg-back').off().on('click', function() {
					var url = '/mobile/ship/shipMobilePreProcMng.do';
					
					url += '?yardCode='+ yardCode +'&yardName='+ yardName;
					window.location.href = url;
				});
				
				
				// 다음 버튼
				$('#js-ship-mobile-pre-proc-reg-next').off().on('click', function() {
					retrieveShipMobilePreProcInfoRegStep2(seqShipPreProcInfo);
				});
				
				
				// 검사자 검색 버튼 클릭
				$("#js-ship-mobile-pre-proc-reg-emp-retrieve-button").on("click", function(){
					
					var param = {
						searchText : $("#js-ship-mobile-pre-proc-reg-emp-name").val().split(" ")[0]
					  	, callback   : setEmpInfo
					}
					
					initShipMobileProcInfoRegStepSearch(param);
					
				});
				
				
				// 상세 조회
				if(!app.utils.isEmpty(seqShipPreProcInfo)){
					retrieveMobilePreResultList.request();
				}
				
			});
			
			
			// ------------------------------------------------
			// 담당자 set
			// ------------------------------------------------
			var setEmpInfo = function(data){
				$("#js-ship-mobile-pre-proc-reg-emp").val(data.emp);
				$("#js-ship-mobile-pre-proc-reg-emp-name").val(data.empNm);
			};
			
			
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
								$('#js-ship-mobile-pre-proc-reg-insp-emp').val(data[0].inspEmp);
								$('#js-ship-mobile-pre-proc-reg-insp-emp-name').val(data[0].empNm);
								$('#js-ship-mobile-pre-proc-reg-yard-code').val(data[0].yardCode);
								$('#js-ship-mobile-pre-proc-reg-emp').val(data[0].inspEmp);
								$('#js-ship-mobile-pre-proc-reg-emp-name').val(data[0].inspEmpNm);
								$('#js-ship-mobile-pre-proc-reg-insp-date').val(data[0].inspDate);
								$('#js-ship-mobile-pre-proc-reg-line-no').val(data[0].lineNo);
								$('#js-ship-mobile-pre-proc-reg-insp-remark').val(data[0].inspRemark);
								
								var lineStatus = data[0].lineStatus;
								 
								if(lineStatus == "Y"){
									if($('#js-ship-mobile-pre-proc-reg-line-status-td').find('div.toggle-off').hasClass("active")){
										$('#js-ship-mobile-pre-proc-reg-line-status-td').find('div.toggle-off').click();
									}
								}
								else
								{
									if($('#js-ship-mobile-pre-proc-reg-line-status-td').find('div.toggle-on').hasClass("active")){
										$('#js-ship-mobile-pre-proc-reg-line-status-td').find('div.toggle-on').click();
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
				request: function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					
					var params = {
						service: 'ship.preinfo',
						method: 'retrieveMobilePreResultList',
						yardCode: yardCode,
						inspDate: inspDate,
						lineNo: lineNo
					};

					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			// Line 콤보 조회
			var retrieveShipLine = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';

						if (message === 'OK') {
							
							$('#js-ship-mobile-pre-proc-reg-line-no').find('option').remove();
							
							for(var i=0; i < response.rs.length; i++)
							{
								$('#js-ship-mobile-pre-proc-reg-line-no').append("<option value='"+ response.rs[i].code +"'>"+ response.rs[i].codeNm +"</option>");
							}
							
							var cnt = response.rs.length;
							$('#js-ship-mobile-pre-proc-reg-line-no').attr("title", cnt+" <spring:message code='TODO.KEY' text='건' />");
							
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
						method: 'retrieveShipLine',
						code: yardCode
					};

					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			var retrieveShipMobilePreProcInfoRegStep2 = function(seqShipPreProcInfo){
				
				var emp = $('#js-ship-mobile-pre-proc-reg-emp').val();
				
				if(app.utils.isEmpty(yardCode)){
					fn_alertInfo('A', '조선소 코드가 없습니다.');
					return;
				}
				
				if(!app.utils.isEmpty(seqShipPreProcInfo)){
					var inspDate = getQuerystring('inspDate');
					if(app.utils.isEmpty(inspDate)){
						fn_alertInfo('A', '검사일자를 입력해 주세요.', function(){
							$('#js-ship-mobile-pre-proc-reg-insp-date').focus();
						});
						return;
					}
				}
				else
				{
					var inspDate = $('#js-ship-mobile-pre-proc-reg-insp-date').val();
					if(app.utils.isEmpty(inspDate)){
						fn_alertInfo('A', '검사일자를 입력해 주세요.', function(){
							$('#js-ship-mobile-pre-proc-reg-insp-date').focus();
						});
						return;
					}
				}
				
				if(app.utils.isEmpty(emp)){
					fn_alertInfo("A", "검사자를 선택해 주세요.", function(){
						$('#js-ship-mobile-pre-proc-reg-insp-emp-name').focus();
					});
					return;
				}
				
				// 라인 가동 여부
				if($('#js-ship-mobile-pre-proc-reg-line-status-td').find('div.toggle-on').hasClass('active'))
					$('#js-ship-mobile-pre-proc-reg-line-status').val('Y');
				else
					$('#js-ship-mobile-pre-proc-reg-line-status').val('N');
				
				var url = '/mobile/ship/shipMobilePreProcRegStep2.do';
				url += '?yardCode='+ yardCode +'&yardName='+ yardName;
				
				if(!app.utils.isEmpty(seqShipPreProcInfo)) url += '&seqShipPreProcInfo='+seqShipPreProcInfo;
				
				$('#js-ship-mobile-pre-proc-reg-form').attr('action', url);
				$('#js-ship-mobile-pre-proc-reg-form').submit();
				
			}
			
			
			var shipMobilePreProcRegSearchListTemplate;
			
			var initShipMobilePreProcInfoRegStep1Search = function(){
				
				//Handlebar 초기화
				var source = $('#js-template-ship-mobile-pre-proc-reg-search-list').html();
				shipMobilePreProcRegSearchListTemplate = Handlebars.compile(source);
				
				var keyword = $('#js-ship-mobile-pre-proc-reg-emp-name').val();
				$('#js-ship-mobile-pre-proc-reg-search-keyword').val(keyword);
				
				$('#js-ship-mobile-pre-proc-reg-search-search').off().on('click', function(){
					retrieveManagerEmpInfoList.request();
				});
				
				if(!app.utils.isEmpty(keyword)){
					retrieveManagerEmpInfoList.request();
				}
				
			}
			
		</script>
	
	<!-- 담당자 검색 -->
	<c:import url="/WEB-INF/static/ship/popup/mobile/employee.jsp" charEncoding="utf-8"></c:import>
	
	</tiles:putAttribute>
	<!-- [e] 페이지 레벨 스크립트 -->
</tiles:insertDefinition>