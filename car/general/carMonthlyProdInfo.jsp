<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.02.03] ship 제품정보-제품 출고 이력 정보" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.car">

	<!-- 메인 콘텐츠 S -->
	<tiles:putAttribute name="page-content">
		<section class="wp-stat">
		<div class="wp-cont wp-car-sub">
			<!-- content start -->
			<header class="wp-contents-title">
				<h1><spring:message code="TODO.KEY" text="거래선 정보 관리"/></h1>
				<div class="wp-location"><span><spring:message code="TODO.KEY" text="일반운영정보"/></span><span class="wp-fc-54"><spring:message code="TODO.KEY" text="거래선 정보 관리"/></span></div>
			</header>
			<div class="wp-table-width">
				<!-- tab -->
				<ul class="wp-prod-tab wp-two">
					<li><a href="/car/general/carProdHistInfo.do"><spring:message code="TODO.KEY" text="생산 특이사항"/></a></li>
					<li><a href="/car/general/carMonthlyProdInfo.do" class="active"><spring:message code="TODO.KEY" text="월간 생산현황"/></a></li>
				</ul>
				<!-- //tab -->
				<!-- title area -->
				<div class="wp-title-section wp-no-line">
					<h2 class="wp-section-title"><span name="js-car-monthly-prod-info-retrieve-month">-</span><spring:message code="TODO.KEY" text="월 가동현황"/></h2>
					<div class="wp-btn-area">
						<input type="text" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-inp-datepicker month-picker" placeholder="<spring:message code="TODO.KEY" text="날짜입력"/>" id="js-car-monthly-prod-info-retrieve-date">
						<button type="button" class="wp-btn small gray cr3" id="js-car-monthly-prod-info-retrieve-button"><spring:message code="TODO.KEY" text="조회"/></button>
						<button type="button" class="wp-btn small skyblue cr3 upload-white" data-link="js-car-monthly-prod-info-reg-popup" data-depth="1" id="js-car-monthly-prod-info-reg-popup-button"><spring:message code="TODO.KEY" text="월간 현황 등록"/></button>
					</div>
				</div>
				<!-- //title area -->
				<!-- table -->
				<div class="wp-table-st1 wp-vertical-line">
					<table>
						<caption><spring:message code="TODO.KEY" text="가동현황"/></caption>
						<colgroup>
							<col style="width:11%">
							<col style="width:7%">
							<col style="width:7%">
							<col style="width:7%">
							<col style="width:5%">
							<col style="width:5%">
							<col style="width:7%">
							<col style="width:5%">
							<col style="width:7%">
							<col style="width:5%">
							<col style="width:5%">
							<col style="width:7%">
							<col style="width:5%">
							<col style="width:7%">
							<col style="width:6%">
							<col style="width:auto">
						</colgroup>
						<thead>
							<tr>
								<th rowspan="2"><spring:message code="TODO.KEY" text="공장"/></th>
								<th rowspan="2"><spring:message code="TODO.KEY" text="년간"/><br><spring:message code="TODO.KEY" text="생산 대수"/></th>
								<th rowspan="2"><spring:message code="TODO.KEY" text="KCC"/><br><spring:message code="TODO.KEY" text="점유율(%)"/></th>
								<th rowspan="2"><spring:message code="TODO.KEY" text="경쟁사"/><br><spring:message code="TODO.KEY" text="점유율(%)"/></th>
								<th colspan="5"><spring:message code="TODO.KEY" text="가동률(%)"/></th>
								<th colspan="5"><spring:message code="TODO.KEY" text="직행률(%)"/></th>
								<th rowspan="2"><spring:message code="TODO.KEY" text="공장"/><br><spring:message code="TODO.KEY" text="UPH"/></th>
								<th rowspan="2"><spring:message code="TODO.KEY" text="수정"/></th>
							</tr>
							<tr>
								<th><spring:message code="TODO.KEY" text="당월"/></th>
								<th><spring:message code="TODO.KEY" text="전월"/></th>
								<th><spring:message code="TODO.KEY" text="전월대비"/></th>
								<th><spring:message code="TODO.KEY" text="전년"/></th>
								<th><spring:message code="TODO.KEY" text="전년대비"/></th>
								<th><spring:message code="TODO.KEY" text="당월"/></th>
								<th><spring:message code="TODO.KEY" text="전월"/></th>
								<th><spring:message code="TODO.KEY" text="전월대비"/></th>
								<th><spring:message code="TODO.KEY" text="전년"/></th>
								<th><spring:message code="TODO.KEY" text="전년대비"/></th>
							</tr>
						</thead>
						<tbody id="js-car-monthly-prod-info-list">
						</tbody>
						<tfoot id="js-car-monthly-prod-info-list-average">
						</tfoot>
					</table>
				</div>
				<!-- //table -->
				<!-- title area -->
				<div class="wp-title-section wp-no-line">
					<h2 class="wp-section-title"><span name="js-car-monthly-prod-info-retrieve-month">-</span><spring:message code="TODO.KEY" text="월 수출 PDI 불량 현황"/></h2>
				</div>
				<!-- //title area -->
				<!-- 불량 현황 -->
				<div class="wp-defact-list" id="js-car-monthly-prod-info-chart-list">
				</div>
				<!--// 불량 현황 -->
			</div>
			<!-- //content end -->
		</div>
		</section>
	</tiles:putAttribute>
	<!-- 메인 콘텐츠 E -->
	
	
	<!-- 페이지 레벨 스크립트 S -->
	<tiles:putAttribute name="page-level-js">
		
		<!-- 월 가동현황 리스트 - 스크립트-->
		<script id="js-template-car-monthly-prod-info-list" type="text/x-handlebars-template">		
			{{#rows}}
				<tr>
					<td class="wp-ac">{{carPlantNm}}</td>
					<td class="wp-ar">{{yearlyProd}}</td>
					<td class="wp-ar">{{kccRate}}</td>
					<td class="wp-ar">{{rivalRate}}</td>
					<td class="wp-ar">{{operRate}}</td>
					<td class="wp-ar">{{befMonthOperRate}}</td>
					<td class="wp-ar">{{setDiff operMonthDiff}}<span class="{{setDiffClass operMonthDiff}}">{{operMonthDiff}}</span></td>
					<td class="wp-ar">{{befYearOperRate}}</td>
					<td class="wp-ar">{{setDiff operYearDiff}}<span class="{{setDiffClass operYearDiff}}">{{operYearDiff}}</span></td>
					<td class="wp-ar">{{directRate}}</td>
					<td class="wp-ar">{{befMonthDirectRate}}</td>
					<td class="wp-ar">{{setDiff directMonthDiff}}<span class="{{setDiffClass directMonthDiff}}">{{directMonthDiff}}</span></td>
					<td class="wp-ar">{{befYearDirectRate}}</td>
					<td class="wp-ar">{{setDiff directYearDiff}}<span class="{{setDiffClass directYearDiff}}">{{directYearDiff}}</span></td>
					<td class="wp-ar">{{plantUph}}</td>
					<td class="wp-td-padding0">
					{{#setModifyButton}}
						<button type="button" name="js-car-monthly-prod-info-list-modify-button"    value="{{@index}}" data-link="js-car-monthly-prod-info-reg-popup" data-depth="1" class="wp-btn small white bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
						<input type="hidden" id="js-car-monthly-prod-info-list-carPlant-{{@index}}" value="{{carPlant}}" >
					{{/setModifyButton}}
					</td>
				</tr>
			{{/rows}}
		</script>
		
		<!-- 월 수출 PDI 불량현황 리스트 - 스크립트-->
		<script id="js-template-car-monthly-prod-info-chart-list" type="text/x-handlebars-template">		
			{{#rows}}
					<div class="wp-list">
						<span class="wp-num">{{setIndex @index}}</span>
						<h3>{{carPlantNm}}</h3>
						<ul class="wp-total">
							<li><spring:message code="TODO.KEY" text="당월"/><span>{{totDefRate}}</span></li>
							<li><spring:message code="TODO.KEY" text="전월"/><span>{{befMonthTotPdiDefRate}}</span></li>
							<li><spring:message code="TODO.KEY" text="전년"/><span>{{befYearTotPdiDefRate}}</span></li>
						</ul>
						<div class="wp-title-area">
							<div class="wp-title"><spring:message code="TODO.KEY" text="차종별 불량 정보"/></div>
							<div class="wp-fr wp-vt">
								<button type="button" class="wp-btn small white bgray prev" name="js-car-monthly-prod-info-chart-bad-list-paging-button" value="{{@index}}"><span><spring:message code="TODO.KEY" text="이전"/></span></button>
								<div class="wp-btn-paging"><span id="js-car-monthly-prod-info-chart-bad-list-current-page-{{@index}}">3</span> / <div id="js-car-monthly-prod-info-chart-bad-list-total-page-{{@index}}" style="display:inline;">5</div></div>
								<button type="button" class="wp-btn small white bgray next" name="js-car-monthly-prod-info-chart-bad-list-paging-button" value="{{@index}}"><span><spring:message code="TODO.KEY" text="다음"/></span></button>
							</div>
						</div>
						<ul class="wp-list-cont" id="js-car-monthly-prod-info-chart-bad-list-{{@index}}">
						</ul>
						<div class="wp-btn-section">
							<button type="button" class="wp-btn small white mody"       name="js-car-monthly-prod-info-chart-bad-list-modify-button" value="{{@index}}" data-link="js-car-monthly-prod-info-reg-popup" data-depth="1"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
							<button type="button" class="wp-btn small white trash-gray" name="js-car-monthly-prod-info-chart-bad-list-delete-button" value="{{@index}}"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
						</div>
					</div>
					<input type="hidden" id="js-car-monthly-prod-info-chart-bad-list-yymm-{{@index}}"     value="{{yymm}}" >
					<input type="hidden" id="js-car-monthly-prod-info-chart-bad-list-carPlant-{{@index}}" value="{{carPlant}}" >
			{{/rows}}
		</script>
		
		<!-- 불량정보 리스트 - 스크립트-->
		<script id="js-template-car-monthly-prod-info-chart-bad-list" type="text/x-handlebars-template">		
			{{#rows}}
				<li>
					<div class="wp-tit">{{modelRate}}</div>
					<div class="wp-tdellipsis-two">{{badReason}}</div>
				</li>
			{{/rows}}
		</script>

		<script type="text/javascript">
		
			//메시지 파라미터 정의함수
			var messageParam = {
				title: '<spring:message code="TODO.KEY" text="에러"/>',
				message: '',
				confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>'				
			};
			
			var carMonthlyProdListTemplate;
			var carMonthlyProdChartListTemplate;
			var carMonthlyProdChartBadListTemplate;
			
			$(document).ready(function() {
				
				// header 공장코드 숨기기
				$('#js-car-header-car-plant').parent().css( "display", "none" );
				
				// Handlebar 초기화
				initCarMonthlyProdInfoHandlebarsTemplate();
				
				// 검색조건 날짜 세팅 
				var date = app.utils.formatDate(new Date(), "YYYYMMDD");
				$("#js-car-monthly-prod-info-retrieve-date").val(fn_getBeforeDate(date, 0, 1));
				$("#js-car-monthly-prod-info-retrieve-date").mask('9999-99');
				
				// 검색 버튼 클릭
				$('#js-car-monthly-prod-info-retrieve-button').off().on('click', function() {
					// 월간 생산 현황 조회
					retrieveMonthlyProdInfo.request();
					// 수출 PDI 불량 현황
					retrieveMonthlyProdInfoChart.request();
				});
				
				// 월간 현황 등록 버튼 클릭
				$('#js-car-monthly-prod-info-reg-popup-button').off().on('click', function() {
					fn_openPop($(this));
					initCarMonthlyProdInfoRegPopup();
				});
				
				// 월간 생산 현황 - 달력 change 
				$("#js-car-monthly-prod-info-retrieve-date").off().on('change', function(){
					
					// 월간 생산 현황 조회
					retrieveMonthlyProdInfo.request();
					// 수출 PDI 불량 현황
					retrieveMonthlyProdInfoChart.request();
				});
				
				// 월간 생산 현황 등록/수정 팝업 - 달력 change 
				$("#js-car-monthly-prod-info-reg-popup-date").off().on('change', function(){
					
					retrieveMonthlyProdGeneralInfo.request();	// 일반 정보, 공장별 정보 조회
					retrieveMonthlyProdPdiDefRate.request();	// 수출 PDI 불량률의 전체 불량률 조회 
					retrieveMonthlyProdPdiDt.request();			// 수출 PDI 불량률의 불량 정보 조회
				});
				
				// 월간 생산 현황 조회
				retrieveMonthlyProdInfo.request();
				// 수출 PDI 불량 현황
				retrieveMonthlyProdInfoChart.request();
			});
			

			// ------------------------------------------------
			// Handlebar 초기화
			// ------------------------------------------------
			var initCarMonthlyProdInfoHandlebarsTemplate = function() {
				
				// 가동현황
				var source = $('#js-template-car-monthly-prod-info-list').html();
				carMonthlyProdListTemplate = Handlebars.compile(source);
				
				// 전월,전년대비 차이 0 인 경우 ""
				Handlebars.registerHelper('setDiff', function(diffNumber) {
					if(Number(diffNumber) > 0 || Number(diffNumber) < 0){
						return Number(diffNumber);
					} else {
						return "";
					}
				});
				
				// 전월,전년대비 차이 표시 클래스
				Handlebars.registerHelper('setDiffClass', function(diffNumber) {
					if(Number(diffNumber) > 0){
						return "wp-change up";
					} else if(Number(diffNumber) < 0){
						return "wp-change down";
					} else {
						return "";
					}
				});
				
				Handlebars.registerHelper('setModifyButton', function(options) {
					if (this.avgYn == 'Y'){
						return options.inverse(this);
					} else {
						return options.fn(this);
					}
				});

				// 수출 PDI 불량현황
				var source = $('#js-template-car-monthly-prod-info-chart-list').html();
				carMonthlyProdChartListTemplate = Handlebars.compile(source);
				
				Handlebars.registerHelper('setIndex', function(value) {
					return Number(value) + 1;
				});	

				// 불량 정보 리스트
				var source = $('#js-template-car-monthly-prod-info-chart-bad-list').html();
				carMonthlyProdChartBadListTemplate = Handlebars.compile(source);
			};

			//-------------------------------------------------
			// 좌우 버튼 이미지 페이징 처리
			//-------------------------------------------------
			var badInfoPagingMove = function(num, pageNo) {
				$("#js-car-monthly-prod-info-chart-bad-list-" + num).find("li").each(function( index ) {
					$(this).css("display", "none");
					
					if(pageNo == 1){
						if(index >= 0 && index <= 1){
							$(this).css("display", "block");
						}
					} else if(pageNo == 2){
						if(index >= 2 && index <= 3){
							$(this).css("display", "block");
						}
					} else if(pageNo == 3){
						if(index >= 4 && index <= 5){
							$(this).css("display", "block");
						}
					}
				});
			}	

			//-------------------------------------------------
			// 수출 PDI 불량현황 조회
			//-------------------------------------------------
			var retrieveMonthlyProdInfoChart = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							// --------------------------------------
							// 수출 PDI 불량현황 조회결과 Set.
							// --------------------------------------
							var result = carMonthlyProdChartListTemplate({rows : response.rs});
							$("#js-car-monthly-prod-info-chart-list").empty().append(result);
							
							// --------------------------------------
							// 불량정보 조회결과 Set.
							// --------------------------------------
							for(var i=0 ; i<response.rs.length ; i++){
								
								// 조회결과 데이터에서 불량정보 데이터 추출
								var badDataArr = [];
								for(var j=1 ; j<=6 ; j++){
									var modelRate = eval("response.rs[" + i + "].modelRate" + j);
									var badReason = eval("response.rs[" + i + "].badReason" + j);
									
									if(!app.utils.isEmpty(modelRate)){
										badDataArr.push({
											  modelRate : modelRate
											, badReason : badReason
										});
									}
								}
								
								// 추출한 불량정보 데이터 리스트 화면에 표시
								var result = carMonthlyProdChartBadListTemplate({rows : badDataArr});
								$("#js-car-monthly-prod-info-chart-bad-list-" + i).empty().append(result);
								
								
								// 불량정보 페이징 카운트 표시
								var totalPage  = "";
								if(badDataArr.length <= 2){
									totalPage = "1";
								} else if(badDataArr.length >= 3 && badDataArr.length <= 4){
									totalPage = "2";
								} else {
									totalPage = "3";
								}
								$("#js-car-monthly-prod-info-chart-bad-list-total-page-" + i).text(totalPage);
								$("#js-car-monthly-prod-info-chart-bad-list-current-page-" + i).text("1");
								
								badInfoPagingMove(i, 1);
							}
							
							// 불량정보 페이징 버튼 처리
							$('button[name=js-car-monthly-prod-info-chart-bad-list-paging-button]').off().on('click', function() {
								var index       = $(this).val();
								var currentPage = $("#js-car-monthly-prod-info-chart-bad-list-current-page-" + index).text();
								var totalPage   = $("#js-car-monthly-prod-info-chart-bad-list-total-page-" + index).text();
								
								// 이전 버튼
								if($(this).hasClass("prev")){
									if(currentPage == "1"){
										return;
									}
									currentPage--;
								} 
								
								// 다음 버튼
								else {
									if(currentPage == totalPage){
										return;
									}
									currentPage++;
								}
								
								$("#js-car-monthly-prod-info-chart-bad-list-current-page-" + index).text(currentPage);
								badInfoPagingMove(index, currentPage);
							});
							
							// 수정 버튼 클릭
							$('button[name=js-car-monthly-prod-info-chart-bad-list-modify-button]').off().on('click', function() {
								var index    = $(this).val();
								var param = {
										 yymm     : $("#js-car-monthly-prod-info-chart-bad-list-yymm-" + index).val()
										,carPlant : $("#js-car-monthly-prod-info-chart-bad-list-carPlant-" + index).val()
								}
								fn_openPop($(this));
								initCarMonthlyProdInfoRegPopup(param);
							});
							
							// 삭제 버튼 클릭
							$('button[name=js-car-monthly-prod-info-chart-bad-list-delete-button]').off().on('click', function() {
								var index    = $(this).val();
								var yymm     = $("#js-car-monthly-prod-info-chart-bad-list-yymm-" + index).val();
								var carPlant = $("#js-car-monthly-prod-info-chart-bad-list-carPlant-" + index).val();

								app.message.confirm({
									  title             : '<spring:message code="TODO.KEY" text="삭제"/>'
									, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
									, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
									, callback          : {
										confirm: function() {
											// 수출 PDI 불량현황 삭제
											deleteMonthlyProd.request(yymm, carPlant);
										}
									}
								});
							});
							
						} else 	{
							// 서비스 요청 처리 오류 발생 메시지
							messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
							messageParam.message = message;
							app.message.alert(messageParam);
							// 서비스 요청 처리 Exception 메시지
							console.log(response.error || '');
						}
					}
				},
				error: function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
					messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
					messageParam.message = errorText;
					app.message.alert(messageParam);
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
						  service : 'car.monthlyProdInfo'
						, method  : 'retrieveMonthlyProdInfoChart'
						, yymm    : $("#js-car-monthly-prod-info-retrieve-date").val().replace(/-/gi, "")
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};

			//-------------------------------------------------
			// 수출 PDI 불량현황 삭제
			//-------------------------------------------------
			var deleteMonthlyProd = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							messageParam.title = '<spring:message code="TODO.KEY" text="알림"/>';
							messageParam.message = '<spring:message code="TODO.KEY" text="정상적으로 삭제되었습니다."/>';
							app.message.alert(messageParam);
							
							// 수출 PDI 불량 현황 재조회
							retrieveMonthlyProdInfoChart.request();
							
						} else 	{
							// 서비스 요청 처리 오류 발생 메시지
							messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
							messageParam.message = message;
							app.message.alert(messageParam);
							// 서비스 요청 처리 Exception 메시지
							console.log(response.error || '');
						}
					}
				},
				error: function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
					messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
					messageParam.message = errorText;
					app.message.alert(messageParam);
				},
				complete: function(jqueryXHR, status) {
					// ------------------------------------
					// http response complete
					// ------------------------------------
					app.mask.pageUnlock();
				},
				request: function(yymm, carPlant) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service  : 'car.monthlyProdInfo'
						, method   : 'deleteMonthlyProd'
						, yymm     : yymm
						, carPlant : carPlant
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//-------------------------------------------------
			// 월간 생산 현황 조회
			//-------------------------------------------------
			var retrieveMonthlyProdInfo = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							console.log("월간 생산 현황 조회");
							console.log(response);
							
							// 검색 월
							var retrieveMonth = Number($("#js-car-monthly-prod-info-retrieve-date").val().replace(/-/gi, "").substring(4));
							$("span[name=js-car-monthly-prod-info-retrieve-month]").text(retrieveMonth);
							
							var resultData = response.rs.slice(0, -1);
							var avgData    = response.rs.length > 1 ? response.rs.slice(response.rs.length-1) : [];
							
							if(avgData.length > 0){
								avgData[0].avgYn = "Y";
							}
							
							var result = carMonthlyProdListTemplate({rows : resultData});
							$("#js-car-monthly-prod-info-list").empty().append(result);
							
							var avgResult = carMonthlyProdListTemplate({rows : avgData});
							$("#js-car-monthly-prod-info-list-average").empty().append(avgResult);
							
							
							// 수정 버튼 클릭
							$('button[name=js-car-monthly-prod-info-list-modify-button]').off().on('click', function() {
								var index    = $(this).val();
								var param = {
										 yymm     : $("#js-car-monthly-prod-info-retrieve-date").val().replace(/-/gi, "")
										,carPlant : $("#js-car-monthly-prod-info-list-carPlant-" + index).val()
								}
								fn_openPop($(this));
								initCarMonthlyProdInfoRegPopup(param);
							});
							
						} else 	{
							// 서비스 요청 처리 오류 발생 메시지
							messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
							messageParam.message = message;
							app.message.alert(messageParam);
							// 서비스 요청 처리 Exception 메시지
							console.log(response.error || '');
						}
					}
				},
				error: function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
					messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
					messageParam.message = errorText;
					app.message.alert(messageParam);
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
						  service : 'car.monthlyProdInfo'
						, method  : 'retrieveMonthlyProdInfo'
						, yymm    : $("#js-car-monthly-prod-info-retrieve-date").val().replace(/-/gi, "")
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
	<!-- 페이지 레벨 스크립트 E -->

	<!-- 팝업 콘텐츠 S -->
	<tiles:putAttribute name="popup-content">
	
		<!-- 월간 생산 현황 등록/수정 팝업 Start -->
		<div class="wp-dim-layer">
		    <div class="wp-dimBg"></div>
		    <div id="js-car-monthly-prod-info-reg-popup" class="wp-pop-layer wp-pop-w940 wp-box-sizing wp-car-popup">
		    	<div class="wp-pop-title">
		    		<h1><spring:message code="TODO.KEY" text="월간 생산 현황 등록/수정"/></h1>
		    		<button type="button" class="wp-btn-close-layer wp-spr-btn"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
		    	</div>
		        <div class="wp-pop-conts">
			<!-- scroll Area -->
			<div class="wp-pop-cont-scrollable">
			<!--content //-->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="일반 정보"/></h2>
				<!-- 기본 정보 -->
				<div class="wp-table-st1 wp-issue-apply">
					<table>
						<caption><spring:message code="TODO.KEY" text="일반 정보"/></caption>
						<colgroup>
							<col style="width:14%">
							<col style="width:20%;">
							<col style="width:13%">
							<col style="width:20%;">
							<col style="width:13%">
							<col style="width:20%;">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="공장"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd160">
										<select title="<spring:message code="TODO.KEY" text="항목 개수 설정"/>" id="js-car-monthly-prod-info-reg-popup-plant-combo">
										</select>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="년월"/></th>
								<td class="wp-al">
									<input type="text" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-inp-datepicker month-picker wp-wd100p" placeholder="<spring:message code="TODO.KEY" text="날짜입력"/>" id="js-car-monthly-prod-info-reg-popup-date">
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="담당자"/></th>
								<td class="wp-al wp-vm">
									<input type="text" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd108" id="js-car-monthly-prod-info-reg-popup-emp-name" value="${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}" disabled="disabled">
									<input type="hidden" id="js-car-monthly-prod-info-reg-popup-emp" value="${sessionScope.LoginUserInfo.empNum}">
									<button type="button" class="wp-btn small gray cr3" data-link="js-car-emp-popup" data-depth="2" id="js-car-monthly-prod-info-reg-popup-emp-button"><spring:message code="TODO.KEY" text="조회"/></button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
		
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="공장별 정보"/></h2>
				<!-- 공장별 정보 -->
				<div class="wp-table-st1 wp-issue-apply">
					<table>
						<caption><spring:message code="TODO.KEY" text="공장별 정보"/></caption>
						<colgroup>
							<col style="width:14%">
							<col style="width:20%;">
							<col style="width:13%">
							<col style="width:20%;">
							<col style="width:13%">
							<col style="width:20%;">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="년간 생산 대수"/></th>
								<td class="wp-al">
									<input type="text" id="js-car-monthly-prod-info-reg-popup-yearlyprod" class="js-car-monthly-prod-info-reg-popup-number-only" title="<spring:message code="TODO.KEY" text="내용입력"/>">
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="KCC 점유율"/>(%)</th>
								<td class="wp-al">
									<input type="text" id="js-car-monthly-prod-info-reg-popup-kccrate" class="js-car-monthly-prod-info-reg-popup-number-only" title="<spring:message code="TODO.KEY" text="내용입력"/>">
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="경쟁사 점유율"/>(%)</th>
								<td class="wp-al">
									<input type="text" id="js-car-monthly-prod-info-reg-popup-rivalrate" class="js-car-monthly-prod-info-reg-popup-number-only" title="<spring:message code="TODO.KEY" text="내용입력"/>">
								</td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="가동률"/>(%)</th>
								<td class="wp-al">
									<input type="text" id="js-car-monthly-prod-info-reg-popup-oper-rate" class="js-car-monthly-prod-info-reg-popup-number-only" title="<spring:message code="TODO.KEY" text="내용입력"/>">
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="직행률"/>(%)</th>
								<td class="wp-al">
									<input type="text" id="js-car-monthly-prod-info-reg-popup-direct-rate" class="js-car-monthly-prod-info-reg-popup-number-only" title="<spring:message code="TODO.KEY" text="내용입력"/>">
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="공장"/> UPH</th>
								<td class="wp-al">
									<input type="text" id="js-car-monthly-prod-info-reg-popup-plant-uph" class="js-car-monthly-prod-info-reg-popup-number-only" title="<spring:message code="TODO.KEY" text="내용입력"/>">
								</td>
							</tr>
						</tbody>
					</table>
		            </div>
		
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="수출"/> PDI <spring:message code="TODO.KEY" text="불량률"/></h2>
		            <!-- 수출 PDI 불량률 -->
				<div class="wp-table-st1 wp-issue-apply">
					<table>
						<caption><spring:message code="TODO.KEY" text="수출"/> PDI <spring:message code="TODO.KEY" text="불량률"/></caption>
						<colgroup>
							<col style="width:14%">
							<col style="width:86%;">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="전체 불량률(%)"/></th>
								<td class="wp-al"><input type="text" id="js-car-monthly-prod-info-reg-popup-total-def-rate" class="js-car-monthly-prod-info-reg-popup-number-only" title="<spring:message code="TODO.KEY" text="내용입력"/>"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="AQL 등급"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd190">
										<select title="<spring:message code="TODO.KEY" text="항목 개수 설정"/>" id="js-car-monthly-prod-info-reg-popup-aql-grade-combo">
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="차종 선택"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd190">
										<select title="<spring:message code="TODO.KEY" text="항목 개수 설정"/>" id="js-car-monthly-prod-info-reg-popup-car-model-combo">
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="차종별 불량률(%)"/></th>
								<td class="wp-al"><input type="text" id="js-car-monthly-prod-info-reg-popup-total-pdi-def-rate" class="wp-wd190 js-car-monthly-prod-info-reg-popup-number-only"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="불량 정보"/></th>
								<td class="wp-add-btn">
									<div class="wp-ui-select wp-wd190 wp-mb5 wp-mr3">
										<select title="<spring:message code="TODO.KEY" text="항목 개수 설정"/>" id="js-car-monthly-prod-info-reg-popup-bad-info-combo">
										</select>
									</div>
									<input type="text" id="js-car-monthly-prod-info-reg-popup-bad-count" class="wp-wd190" placeholder="<spring:message code="TODO.KEY" text="불량률(%) 입력"/>">
									<button type="button" class="wp-btn small gray cr3" id="js-car-monthly-prod-info-reg-popup-bad-reg-button"><spring:message code="TODO.KEY" text="등록"/></button>
									<span class="wp-blue-comment wp-ml10"><spring:message code="TODO.KEY" text="(최대 5개 까지만 등록이 가능합니다.)"/></span>
									<div class="wp-style-sel wp-wd100p">
										<ul id="js-car-monthly-prod-info-reg-popup-bad-list">
										</ul>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
		          	</div>
					<!-- // scroll Area -->
					</div>
					<div class="wp-btn-area">
						<button type="button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18" id="js-car-monthly-prod-info-reg-popup-save-button"><spring:message code="TODO.KEY" text="저장"/></button>
					</div>
		        </div>
		    </div>
		</div>
		<!-- 월간 생산 현황 등록/수정 팝업 End -->
	
		<!-- 불량정보 리스트 - 스크립트-->
		<script id="js-template-car-monthly-prod-info-reg-popup-bad-list" type="text/x-handlebars-template">		
			{{#rows}}
				<li><span name="js-car-monthly-prod-info-reg-popup-bad-reason-name">{{pdiBadReason}}</span><button type="button" class="wp-spr-btn wp-close-sel" name="js-car-monthly-prod-info-reg-popup-bad-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
					<input type="hidden" name="js-car-monthly-prod-info-reg-popup-bad-reason-id" value="{{pdiBadReasonId}}">
					<input type="hidden" name="js-car-monthly-prod-info-reg-popup-bad-count"     value="{{pdiBadCnt}}">
				</li>
			{{/rows}}
		</script>		
		
		<!-- 월간 생산 현황 등록/수정 팝업 - 스크립트 START -->
		<script type="text/javascript">
		
		var gvCarMonthlyProdInfoRegPopupCarPlantParam;
		var carMonthlyProdInfoRegPopupBadListTemplate;
		
		//------------------------------------------------
		// 월간 생산 현황 등록/수정 팝업 초기화
		// ------------------------------------------------
		var initCarMonthlyProdInfoRegPopup = function(param) {
			
			// Handlebar 초기화
			initCarMonthlyProdInfoRegPopupHandlebarsTemplate();
			
			// 항목 초기화
			gvCarMonthlyProdInfoRegPopupCarPlantParam = null;
			var date = app.utils.formatDate(new Date(), "YYYYMM");
			$("#js-car-monthly-prod-info-reg-popup-date").val(date);
			$("#js-car-monthly-prod-info-reg-popup-emp-name").val("${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}");
			$("#js-car-monthly-prod-info-reg-popup-emp").val("${sessionScope.LoginUserInfo.empNum}");
			$("#js-car-monthly-prod-info-reg-popup-total-def-rate").val("");
			$("#js-car-monthly-prod-info-reg-popup-oper-rate").val("");
			$("#js-car-monthly-prod-info-reg-popup-direct-rate").val("");
			$("#js-car-monthly-prod-info-reg-popup-plant-uph").val("");
			$("#js-car-monthly-prod-info-reg-popup-bad-count").val("");
			
			$("#js-car-monthly-prod-info-reg-popup-yearlyprod").val("");
			$("#js-car-monthly-prod-info-reg-popup-kccrate").val("");
			$("#js-car-monthly-prod-info-reg-popup-rivalrate").val("");
			$("#js-car-monthly-prod-info-reg-popup-aql-grade-combo").val("");
			
			// 숫자만 입력
			onlyDecimal($('.js-car-monthly-prod-info-reg-popup-number-only'), 10, 10);
			onlyInteger($('#js-car-monthly-prod-info-reg-popup-bad-count'));
			
			// 파라미터 Set.
			if(typeof param != "undefined"){
				gvCarMonthlyProdInfoRegPopupCarPlantParam = param.carPlant;
				$("#js-car-monthly-prod-info-reg-popup-date").val(param.yymm);
			}
			$("#js-car-monthly-prod-info-reg-popup-date").mask('9999-99');
			
			
			// 공장 콤보 조회
			retrieveCarPlantInfo.request();
			
			// 일반 정보, 공장별 정보 조회
			retrieveMonthlyProdGeneralInfo.request();

			// 불량 선택 콤보 조회
			retrieveBadId.request();
			
			// 차종 콤보 조회
			retrieveModelId.request();
			
			//AQL 등급 조회
			retrieveAqlGradeList.request();
			
			// 수출 PDI 불량률의 전체 불량률 조회
			retrieveMonthlyProdPdiDefRate.request();
			
			// 불량정보 등록 버튼 클릭 이벤트
			$('#js-car-monthly-prod-info-reg-popup-bad-reg-button').off().on('click', function(){
				carMonthlyProdInfoRegPopupBadInfoAdd();
			});
			
			// 저장 버튼 클릭
			$('#js-car-monthly-prod-info-reg-popup-save-button').off().on('click', function(){
				saveCarMonthlyProdInfoRegPopup();
			});
			
			// 담당자 조회 버튼 클릭
			$('#js-car-monthly-prod-info-reg-popup-emp-button').off().on('click', function(){
				fn_openPop($(this));
				initCarEmpPopup("js-car-monthly-prod-info-reg-popup");
			});
		};
		
		// ------------------------------------------------
		// 담당자 Data 적용
		// ------------------------------------------------
		var applyCarMonthlyProdInfoRegPopupEmpData = function(data) {
			$("#js-car-monthly-prod-info-reg-popup-emp-name").val(data.empNm);
			$("#js-car-monthly-prod-info-reg-popup-emp").val(data.emp);
		};
		
		// ------------------------------------------------
		// Handlebar 초기화
		// ------------------------------------------------
		var initCarMonthlyProdInfoRegPopupHandlebarsTemplate = function() {

			// 불량 정보 리스트
			var source = $('#js-template-car-monthly-prod-info-reg-popup-bad-list').html();
			carMonthlyProdInfoRegPopupBadListTemplate = Handlebars.compile(source);
		};

		// ------------------------------------------------
		// 불량정보 추가
		// ------------------------------------------------
		var carMonthlyProdInfoRegPopupBadInfoAdd = function() {
			
			var pdiBadReason   = $("#js-car-monthly-prod-info-reg-popup-bad-info-combo option:selected").text();
			var pdiBadReasonId = $("#js-car-monthly-prod-info-reg-popup-bad-info-combo option:selected").val();
			var pdiBadCnt      = $("#js-car-monthly-prod-info-reg-popup-bad-count").val().replace(/ /gi,"");
			var badInfoLength  = $("input[name=js-car-monthly-prod-info-reg-popup-bad-reason-id]").length;

			pdiBadCnt = pdiBadCnt == "" ? 0 : Number(pdiBadCnt);
			if(pdiBadCnt == 0){
				messageParam.title = '<spring:message code="TODO.KEY" text="알림"/>';
				messageParam.message = '<spring:message code="TODO.KEY" text="불량률(%)을 입력해주세요."/>';
				app.message.alert(messageParam);
				return;
			}
			
			for(var i=0 ; i<badInfoLength ; i++){
				if(pdiBadReasonId == $("input[name=js-car-monthly-prod-info-reg-popup-bad-reason-id]")[i].value){
					$("span[name=js-car-monthly-prod-info-reg-popup-bad-reason-name]")[i].innerText = pdiBadReason + "/" + pdiBadCnt;
					$("input[name=js-car-monthly-prod-info-reg-popup-bad-count]")[i].value = pdiBadCnt;
					$("#js-car-monthly-prod-info-reg-popup-bad-count").val("");
					return;
				}
			}

			if(badInfoLength >= 5){
				messageParam.title = '<spring:message code="TODO.KEY" text="알림"/>';
				messageParam.message = '<spring:message code="TODO.KEY" text="불량정보는 최대 5개 까지만 등록이 가능합니다."/>';
				app.message.alert(messageParam);
				return;
			}
			
			var badArr = [{
				  pdiBadReason   : pdiBadReason + "/" + pdiBadCnt
				, pdiBadReasonId : pdiBadReasonId
				, pdiBadCnt      : pdiBadCnt
			}];
			
			var result = carMonthlyProdInfoRegPopupBadListTemplate({ rows : badArr});
			$("#js-car-monthly-prod-info-reg-popup-bad-list").append(result);
			
			$("#js-car-monthly-prod-info-reg-popup-bad-count").val("");
			
			// 불량정보 목록 닫기 버튼 Event 
			$('button[name=js-car-monthly-prod-info-reg-popup-bad-close-button]').off().on('click', function(){
				$(this).parent().remove();
			});
		};	
			
		// ------------------------------------------------
		// 월간 생산 현황 등록/수정 저장
		// ------------------------------------------------
		var saveCarMonthlyProdInfoRegPopup = function() {

			var yymm          = $('#js-car-monthly-prod-info-reg-popup-date').val().replace(/-/gi, "")
			var carPlant      = $('#js-car-monthly-prod-info-reg-popup-plant-combo').val()
			var modelId       = $('#js-car-monthly-prod-info-reg-popup-car-model-combo').val()
			var regEmp        = $("#js-car-monthly-prod-info-reg-popup-emp").val();
			var totDefRate    = $("#js-car-monthly-prod-info-reg-popup-total-def-rate").val();
			var operRate      = $("#js-car-monthly-prod-info-reg-popup-oper-rate").val();
			var directRate    = $("#js-car-monthly-prod-info-reg-popup-direct-rate").val();
			var plantUph      = $("#js-car-monthly-prod-info-reg-popup-plant-uph").val();
			var totPdiDefRate = $('#js-car-monthly-prod-info-reg-popup-total-pdi-def-rate').val();
			var aqlGrade      = $('#js-car-monthly-prod-info-reg-popup-aql-grade-combo').val();
			
			if(app.utils.isEmpty(yymm)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="년월은 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-car-monthly-prod-info-reg-popup-date').focus();
						}
					}
				});
				return;
			}
			if(app.utils.isEmpty(carPlant)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="공장은 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-car-monthly-prod-info-reg-popup-plant-combo').focus();
						}
					}
				});
				return;
			}
			if(app.utils.isEmpty(modelId)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="차종은 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-car-monthly-prod-info-reg-popup-car-model-combo').focus();
						}
					}
				});
				return;
			}
			if(app.utils.isEmpty(regEmp)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="담당자는 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$("#js-car-monthly-prod-info-reg-popup-emp").focus();
						}
					}
				});
				return;
			}
			/*
			if(app.utils.isEmpty(totDefRate)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="수출 DPI 불량률 - 전체 불량률은 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-car-monthly-prod-info-reg-popup-total-def-rate').focus();
						}
					}
				});
				return;
			}
			if(app.utils.isEmpty(operRate)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="가동률은 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-car-monthly-prod-info-reg-popup-oper-rate').focus();
						}
					}
				});
				return;
			}
			if(app.utils.isEmpty(directRate)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="직행률은 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-car-monthly-prod-info-reg-popup-direct-rate').focus();
						}
					}
				});
				return;
			}
			if(app.utils.isEmpty(plantUph)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="공장 UPH은 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-car-monthly-prod-info-reg-popup-plant-uph').focus();
						}
					}
				});
				return;
			}
			*/
			/* 
			if(app.utils.isEmpty(totPdiDefRate)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="수출 DPI 불량률 - 차종별 불량률은 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-car-monthly-prod-info-reg-popup-total-pdi-def-rate').focus();
						}
					}
				});
				return;
			}
			 */
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						// 월간 생산 현황 저장
						saveMonthlyProd.request();
					}
				}
			});
		};

		//-------------------------------------------------
		// 월간 생산 현황 저장
		//-------------------------------------------------
		var saveMonthlyProd = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					if (message === 'OK') {
						
						app.message.alert({
							  title             : '<spring:message code="TODO.KEY" text="알림"/>'
							, message           : '<spring:message code="TODO.KEY" text="정상적으로 저장되었습니다."/>'
							, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						});
						
						// ---------------------------------------
						// 팝업창 재조회
						// ---------------------------------------
						retrieveMonthlyProdGeneralInfo.request();	// 일반 정보, 공장별 정보 조회
						retrieveMonthlyProdPdiDefRate.request();	// 수출 PDI 불량률의 전체 불량률 조회 
						retrieveMonthlyProdPdiDt.request();			// 수출 PDI 불량률의 불량 정보 조회
						
						// ---------------------------------------
						// 메인화면 재조회
						// ---------------------------------------
						retrieveMonthlyProdInfo.request();		// 월간 생산 현황 조회
						retrieveMonthlyProdInfoChart.request();	// 수출 PDI 불량 현황
						
					} else 	{
						// 서비스 요청 처리 오류 발생 메시지
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
						messageParam.message = message;
						app.message.alert(messageParam);
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error: function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
				messageParam.message = errorText;
				app.message.alert(messageParam);
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

				// 파라미터 Set
				var yymm          = $('#js-car-monthly-prod-info-reg-popup-date').val().replace(/-/gi, "")
				var carPlant      = $('#js-car-monthly-prod-info-reg-popup-plant-combo').val()
				var modelId       = $('#js-car-monthly-prod-info-reg-popup-car-model-combo').val()
				var regEmp        = $("#js-car-monthly-prod-info-reg-popup-emp").val();
				var totDefRate    = $("#js-car-monthly-prod-info-reg-popup-total-def-rate").val();
				var operRate      = $("#js-car-monthly-prod-info-reg-popup-oper-rate").val();
				var directRate    = $("#js-car-monthly-prod-info-reg-popup-direct-rate").val();
				var plantUph      = $("#js-car-monthly-prod-info-reg-popup-plant-uph").val();
				var totPdiDefRate = $('#js-car-monthly-prod-info-reg-popup-total-pdi-def-rate').val();
				var yearlyProd    = $("#js-car-monthly-prod-info-reg-popup-yearlyprod").val();
				var kccRate       = $("#js-car-monthly-prod-info-reg-popup-kccrate").val();
				var rivalRate     = $("#js-car-monthly-prod-info-reg-popup-rivalrate").val();
				var aqlGrade      = $("#js-car-monthly-prod-info-reg-popup-aql-grade-combo").val();
				var badInfo       = [];
				var badLength     = $("input[name=js-car-monthly-prod-info-reg-popup-bad-reason-id]").length;
				
				for(var i=0 ; i<badLength ; i++){
					badInfo.push({
						  pdiBadReasonId : $("input[name=js-car-monthly-prod-info-reg-popup-bad-reason-id]")[i].value
						, pdiBadCnt      : $("input[name=js-car-monthly-prod-info-reg-popup-bad-count]")[i].value
					});
				}
				
				var params = {
					  service       : 'car.monthlyProdInfo'
					, method        : 'saveMonthlyProd'
					, yymm          : yymm         
					, carPlant      : carPlant     
					, modelId       : modelId      
					, regEmp        : regEmp       
					, totDefRate    : totDefRate   
					, operRate      : operRate     
					, directRate    : directRate   
					, plantUph      : plantUph     
					, totPdiDefRate : totPdiDefRate
					, badId         : badLength == 0 ? "" : JSON.stringify(badInfo)
					, yearlyProd    : yearlyProd
					, kccRate       : kccRate   		
					, rivalRate     : rivalRate
					, aqlGrade      : aqlGrade
				};
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		//-------------------------------------------------
		// 공장 콤보 조회
		//-------------------------------------------------
		var retrieveCarPlantInfo = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					if (message === 'OK') {
						
						$('#js-car-monthly-prod-info-reg-popup-plant-combo').find('option').remove();
						for(var i=0; i<response.rs.length; i++)
						{
							$('#js-car-monthly-prod-info-reg-popup-plant-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
						}
						
						if(gvCarMonthlyProdInfoRegPopupCarPlantParam != null){
							$('#js-car-monthly-prod-info-reg-popup-plant-combo').val(gvCarMonthlyProdInfoRegPopupCarPlantParam);
						}
						
						// 공장 콤보 change 이벤트
						$('#js-car-monthly-prod-info-reg-popup-plant-combo').off().on('change', function(){
							// 차종 콤보 조회
							retrieveModelId.request();
							
							// 일반 정보, 공장별 정보 조회
							retrieveMonthlyProdGeneralInfo.request();
							
							retrieveMonthlyProdPdiDefRate.request();	// 수출 PDI 불량률의 전체 불량률 조회
						});
						
					} else 	{
						// 서비스 요청 처리 오류 발생 메시지
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
						messageParam.message = message;
						app.message.alert(messageParam);
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error: function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
				messageParam.message = errorText;
				app.message.alert(messageParam);
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
					  service  : 'car.common'
					, method   : 'retrieveCarPlantInfo'
				};
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		//-------------------------------------------------
		// 차종 선택 콤보 조회
		//-------------------------------------------------
		var retrieveModelId = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					if (message === 'OK') {
						
						$('#js-car-monthly-prod-info-reg-popup-car-model-combo').find('option').remove();
						for(var i=0; i<response.rs.length; i++)
						{
							$('#js-car-monthly-prod-info-reg-popup-car-model-combo').append("<option value='"+response.rs[i].modelId+"'>"+"["+response.rs[i].modelId+"] "+response.rs[i].modelNm+"</option>");
						}
						
						// 차종 콤보 change 이벤트
						$('#js-car-monthly-prod-info-reg-popup-car-model-combo').off().on('change', function(){
							// 수출 PDI 불량률의 전체 불량률 조회
							retrieveMonthlyProdPdiDefRate.request();
							// 수출 PDI 불량률의 불량 정보 조회
							retrieveMonthlyProdPdiDt.request();
						});
						
						// 수출 PDI 불량률의 전체 불량률 조회
						retrieveMonthlyProdPdiDefRate.request();
						// 수출 PDI 불량률의 불량 정보 조회
						retrieveMonthlyProdPdiDt.request();
						
					} else 	{
						// 서비스 요청 처리 오류 발생 메시지
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
						messageParam.message = message;
						app.message.alert(messageParam);
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error: function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
				messageParam.message = errorText;
				app.message.alert(messageParam);
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
					  service  : 'car.common'
					, method   : 'retrieveModelId'
					, carPlant : $('#js-car-monthly-prod-info-reg-popup-plant-combo').val()
				};
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		//-------------------------------------------------
		// AQL Grade 선택 콤보 조회
		//-------------------------------------------------
		var retrieveAqlGradeList = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					if (message === 'OK') {
						
						$('#js-car-monthly-prod-info-reg-popup-aql-grade-combo').find('option').remove();
						$('#js-car-monthly-prod-info-reg-popup-aql-grade-combo').append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");
						for(var i=0; i<response.rs.length; i++)
						{
							$('#js-car-monthly-prod-info-reg-popup-aql-grade-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
						}
						
						$('js-car-monthly-prod-info-reg-popup-aql-grade-combo').attr("title", response.rs.length +" <spring:message code='TODO.KEY' text='건'/>");
					} else 	{
						// 서비스 요청 처리 오류 발생 메시지
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
						messageParam.message = message;
						app.message.alert(messageParam);
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error: function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
				messageParam.message = errorText;
				app.message.alert(messageParam);
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
					  service  : 'car.monthlyProdInfo'
					, method   : 'retrieveAqlGradeList'
				};
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		//-------------------------------------------------
		// 불량 선택 콤보 조회
		//-------------------------------------------------
		var retrieveBadId = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					if (message === 'OK') {
						
						$('#js-car-monthly-prod-info-reg-popup-bad-info-combo').find('option').remove();
						for(var i=0; i<response.rs.length; i++)
						{
							$('#js-car-monthly-prod-info-reg-popup-bad-info-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
						}

					} else 	{
						// 서비스 요청 처리 오류 발생 메시지
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
						messageParam.message = message;
						app.message.alert(messageParam);
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error: function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
				messageParam.message = errorText;
				app.message.alert(messageParam);
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
					  service  : 'car.common'
					, method   : 'retrieveBadId'
				};
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		//-------------------------------------------------
		// 일반 정보, 공장별 정보 조회
		//-------------------------------------------------
		var retrieveMonthlyProdGeneralInfo = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					if (message === 'OK') {
						
						if(response.rs.length == 0){
							$("#js-car-monthly-prod-info-reg-popup-total-def-rate").val("");
							$("#js-car-monthly-prod-info-reg-popup-oper-rate").val("");
							$("#js-car-monthly-prod-info-reg-popup-direct-rate").val("");
							$("#js-car-monthly-prod-info-reg-popup-plant-uph").val("");
							return;
						}
						
						var resultData = response.rs[0];
						
						$("#js-car-monthly-prod-info-reg-popup-emp-name").val(resultData.regEmpNm);
						$("#js-car-monthly-prod-info-reg-popup-emp").val(resultData.regEmp);
						$("#js-car-monthly-prod-info-reg-popup-total-def-rate").val(resultData.totDefRate);
						$("#js-car-monthly-prod-info-reg-popup-oper-rate").val(resultData.operRate);
						$("#js-car-monthly-prod-info-reg-popup-direct-rate").val(resultData.directRate);
						$("#js-car-monthly-prod-info-reg-popup-plant-uph").val(resultData.plantUph);
						$("#js-car-monthly-prod-info-reg-popup-yearlyprod").val(resultData.yearlyProd);
						$("#js-car-monthly-prod-info-reg-popup-kccrate").val(resultData.kccRate);
						$("#js-car-monthly-prod-info-reg-popup-rivalrate").val(resultData.rivalRate);
						
					} else 	{
						// 서비스 요청 처리 오류 발생 메시지
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
						messageParam.message = message;
						app.message.alert(messageParam);
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error: function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
				messageParam.message = errorText;
				app.message.alert(messageParam);
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
					  service  : 'car.monthlyProdInfo'
					, method   : 'retrieveMonthlyProdGeneralInfo'
					, yymm     : $('#js-car-monthly-prod-info-reg-popup-date').val().replace(/-/gi, "")
					, carPlant : $('#js-car-monthly-prod-info-reg-popup-plant-combo').val()
				};
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		//-------------------------------------------------
		// 수출 PDI 불량률의 전체 불량률 조회
		//-------------------------------------------------
		var retrieveMonthlyProdPdiDefRate = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					if (message === 'OK') {
						
						$("#js-car-monthly-prod-info-reg-popup-total-pdi-def-rate").val("");

						if(response.rs.length == 0){
							$("#js-car-monthly-prod-info-reg-popup-total-pdi-def-rate").val("");
							$('#js-car-monthly-prod-info-reg-popup-aql-grade-combo').val("");
							return;
						}
						var resultData = response.rs[0];
						$("#js-car-monthly-prod-info-reg-popup-total-pdi-def-rate").val(resultData.totPdiDefRate);
						//retrieveAqlGradeList.request();
						$('#js-car-monthly-prod-info-reg-popup-aql-grade-combo').val(resultData.aqlGrade);
						
					} else 	{
						// 서비스 요청 처리 오류 발생 메시지
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
						messageParam.message = message;
						app.message.alert(messageParam);
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error: function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
				messageParam.message = errorText;
				app.message.alert(messageParam);
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
					  service  : 'car.monthlyProdInfo'
					, method   : 'retrieveMonthlyProdPdiDefRate'
					, yymm     : $('#js-car-monthly-prod-info-reg-popup-date').val().replace(/-/gi, "")
					, carPlant : $('#js-car-monthly-prod-info-reg-popup-plant-combo').val()
					, modelId  : $('#js-car-monthly-prod-info-reg-popup-car-model-combo').val()
				};
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		//-------------------------------------------------
		// 수출 PDI 불량률의 불량 정보 조회
		//-------------------------------------------------
		var retrieveMonthlyProdPdiDt = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					if (message === 'OK') {
						var data = {
								rows : response.rs
						};
						var result = carMonthlyProdInfoRegPopupBadListTemplate(data);
						$("#js-car-monthly-prod-info-reg-popup-bad-list").empty().append(result);

						// 불량정보 목록 닫기 버튼 Event 
						$('button[name=js-car-monthly-prod-info-reg-popup-bad-close-button]').off().on('click', function(){
							$(this).parent().remove();
						});
						
					} else 	{
						// 서비스 요청 처리 오류 발생 메시지
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
						messageParam.message = message;
						app.message.alert(messageParam);
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error: function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
				messageParam.message = errorText;
				app.message.alert(messageParam);
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
					  service  : 'car.monthlyProdInfo'
					, method   : 'retrieveMonthlyProdPdiDt'
					, yymm     : $('#js-car-monthly-prod-info-reg-popup-date').val().replace(/-/gi, "")
					, carPlant : $('#js-car-monthly-prod-info-reg-popup-plant-combo').val()
					, modelId  : $('#js-car-monthly-prod-info-reg-popup-car-model-combo').val()
				};
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		</script>
		<!-- 월간 생산 현황 등록/수정 팝업 - 스크립트 END -->	
	
	</tiles:putAttribute>
	<!-- 팝업 콘텐츠 E -->
</tiles:insertDefinition>
