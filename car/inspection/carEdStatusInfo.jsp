<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.05.10] car 도장공정 > 거래선 공정정보 > 공정 개선 정보 조회(tab)" %>
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
				<h1><spring:message code="TODO.KEY" text="도료 상태 검사"/></h1>
				<div class="wp-location"><span>도장공정</span><span class="wp-fc-54"><spring:message code="TODO.KEY" text="도료 상태 검사"/></span></div>
			</header>
			<div class="wp-table-width">
				<!-- tab -->
				<ul class="wp-prod-tab wp-four">
					<li><a href="/car/inspection/carEdStatusInfoDetail.do"><spring:message code="TODO.KEY" text="전착 본조 상세"/></a></li>
					<li><a href="/car/inspection/carEdStatusInfo.do" class="active"><spring:message code="TODO.KEY" text="전착 도료 상태 검사"/></a></li>
					<li><a href="/car/inspection/carBcStatusInfo.do"><spring:message code="TODO.KEY" text="중/상도 도료 상태 검사"/></a></li>
					<li><a href="/car/inspection/carBcMixingTankStatusInfo.do"><spring:message code="TODO.KEY" text="Mixing Tank 상세"/></a></li>					
				</ul>
				<!-- //tab -->
				<div class="wp-clearfix wp-mb10">
					<div class="wp-btn-area wp-fr">
						<button type="button" class="wp-btn small grayblue cr3" id="js-car-ed-status-info-refresh-button"><spring:message code="TODO.KEY" text="조회"/></button>
					</div>
					<div class="wp-sch">
						<em><spring:message code="TODO.KEY" text="본조 No."/></em>
						<div class="wp-ui-select">
							<select id="js-car-ed-status-info-boothid" title="항목 개수 설정">
							</select>
						</div>
						<em><spring:message code="TODO.KEY" text="기간"/></em>
						<input type="text" id="js-car-ed-status-info-fromdate" title="시작일자" class="wp-inp-datepicker" placeholder="날짜입력"> ~ 
						<input type="text" id="js-car-ed-status-info-todate"   title="종료일자" class="wp-inp-datepicker" placeholder="날짜입력">
					</div>
				</div>
				<div id="js-car-ed-status-info-main-list" class="wp-wrap-dl-paint-check02">
				</div>
			
			</div>
			<!-- //content end -->
		</div>
	</section>

	</tiles:putAttribute>
	<!-- 메인 콘텐츠 E -->
	
	
	<!-- 페이지 레벨 스크립트 S -->
	<tiles:putAttribute name="page-level-js">
	
	<!-- Main 리스트 - 스크립트-->
	<script id="js-template-car-ed-status-info-main-list" type="text/x-handlebars-template">
	{{#rows}}
		<dl class="wp-dl-paint-check02">
			<dt>
				<a class="wp-list-paint-check02" name="js-car-ed-status-info-detail-button" docNo="{{docNo}}" style="cursor:pointer">
					<div class="wp-clearfix">
						<strong class="wp-tit bold"><spring:message code="TODO.KEY" text="공장"/> : {{carPlant}} / <spring:message code="TODO.KEY" text="본조 No."/> : {{boothIdNm}} / <spring:message code="TODO.KEY" text="검사일자"/> : {{inspDate}}</strong>
						<div class="wp-rp-bttn">
							<button type="button" name="js-car-ed-status-info-main-list-modify-button" docNo="{{docNo}}" data-link="js-car-ed-status-info-reg-popup" data-depth="1" class="wp-btn small white bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
							<button type="button" name="js-car-ed-status-info-main-list-delete-button" docNo="{{docNo}}" class="wp-btn small white bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
						</div>
					</div>
					<div class="wp-wrap-table-st10">
					<table class="wp-table-st10">
					<caption><spring:message code="TODO.KEY" text="공장 / 본조 No. / 검사일"/></caption>
					<colgroup>
					<col style="width:16.6%" />
					<col style="width:16.6%" />
					<col style="width:16.6%" />
					<col style="width:16.6%" />
					<col style="width:16.6%" />
					<col style="width:16.6%" />
					<colgroup>
					<thead>
					<tr>
						<th scope="col"><spring:message code="TODO.KEY" text="LOT No"/></th>
						<th scope="col"><spring:message code="TODO.KEY" text="제품코드"/></th>
						<th scope="col"><spring:message code="TODO.KEY" text="제품명"/></th>
						<th scope="col"><spring:message code="TODO.KEY" text="제조일자"/></th>
						<th scope="col"><spring:message code="TODO.KEY" text="저장기간(개월)"/></th>
						<th scope="col"><spring:message code="TODO.KEY" text="비고"/></th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td>{{lotNo}}</td>
						<td>{{items}}</td>
						<td>{{itemsNm}}</td>
						<td>{{inDate}}</td>
						<td>{{storeTerm}}</td>
						<td>{{remark}}</td>
					</tr>
					</tbody>
					</table>
					<input type="hidden" name="js-car-ed-status-info-main-list-carplant"  docNo="{{docNo}}" value="{{carPlant}}" >
					<input type="hidden" name="js-car-ed-status-info-main-list-boothid"   docNo="{{docNo}}" value="{{boothId}}"  >
					<input type="hidden" name="js-car-ed-status-info-main-list-boothidnm" docNo="{{docNo}}" value="{{boothIdNm}}"  >
					<input type="hidden" name="js-car-ed-status-info-main-list-inspdate"  docNo="{{docNo}}" value="{{inspDate}}" >
					</div>
				</a>
			</dt>	
			<dd name="js-car-ed-status-info-detail" docNo="{{docNo}}" class="wp-list-paint-check02-view">
			</dd>
		</dl>
	{{/rows}}
	</script>	
	
	<!-- 디테일 - 스크립트-->
	<script id="js-template-car-ed-status-info-detail" type="text/x-handlebars-template">		
		<div class="wp-list-paint-check02 on">
			<div class="wp-clearfix">
				<strong class="wp-tit bold"><spring:message code="TODO.KEY" text="공장"/> : {{carPlant}} / <spring:message code="TODO.KEY" text="본조 No."/> : {{boothIdNm}} / <spring:message code="TODO.KEY" text="검사일자"/> : {{inspDate}}</strong>
			</div>
			<div class="wp-wrap-table-st10">
			<table class="wp-table-st10">
			<caption><spring:message code="TODO.KEY" text="공장 / 본조 No. / 검사일"/></caption>
			<colgroup>
			<col style="width:20%" />
			<col style="width:20%" />
			<col style="width:20%" />
			<col style="width:20%" />
			<col style="width:20%" />
			<colgroup>
			<thead>
			<tr>
				<th scope="col"><spring:message code="TODO.KEY" text="LOT No"/></th>
				<th scope="col"><spring:message code="TODO.KEY" text="제품코드"/></th>
				<th scope="col"><spring:message code="TODO.KEY" text="제품명"/></th>
				<th scope="col"><spring:message code="TODO.KEY" text="제조일자"/></th>
				<th scope="col"><spring:message code="TODO.KEY" text="저장기간(개월)"/></th>
			</tr>
			</thead>
			<tbody name="js-car-ed-status-info-detail-list" docNo="{{docNo}}">
			</tbody>
			</table>
			</div>
			<div class="wp-clearfix">
				<strong class="wp-tit bold"><spring:message code="TODO.KEY" text="욕액 분석"/></strong>
			</div>
			<div class="wp-wrap-table-st10">
			<table class="wp-table-st11">
			<caption><spring:message code="TODO.KEY" text="욕액 분석"/></caption>
			<colgroup>
				<col style="width:14%" />
				<col style="width:15%" />
				<col style="width:9%" />
				<col style="width:15%" />
				<col style="width:9%" />
				<col style="width:15%" />
				<col style="width:9%" />
				<col style="width:15%" />
			</colgroup>
			<tbody>
			<tr>
				<th scope="row"><spring:message code="TODO.KEY" text="샘플채취일자"/></th>
				<td class="wp-al" colspan="7">{{samplingDate}}</td>
			</tr>
			<tr>
				<th scope="row">NV(%)</th>
				<td class="wp-al">{{nvValue}}</td>
				<th scope="row">ASH(%)</th>
				<td class="wp-al">{{ashValue}}</td>
				<th scope="row">MEQ(m mol)</th>
				<td class="wp-al">{{meqValue}}</td>
				<th scope="row">PH</th>
				<td class="wp-al">{{phValue}}</td>
			</tr>
			<tr>
				<th scope="row">Conductivity(㎲/㎝)</th>
				<td class="wp-al">{{conValue}}</td>
				<th scope="row">Solvent(%)</th>
				<td class="wp-al">{{solValue}}</td>
				<th scope="row">BC</th>
				<td class="wp-al">{{bcValue}}</td>
				<th scope="row">Texanol</th>
				<td class="wp-al">{{texValue}}</td>
			</tr>
			</tbody>
			</table>
			</div>
		</div>
	</script>
	
	
	<!-- 디테일 리스트 - 스크립트-->
	<script id="js-template-car-ed-status-info-detail-list" type="text/x-handlebars-template">	
	{{#rows}}
		<tr>
			<td>{{lotNo}}</td>
			<td>{{items}}</td>
			<td>{{itemsNm}}</td>
			<td>{{inDate}}</td>
			<td>{{storeTerm}}</td>
		</tr>
	{{/rows}}
	</script>	
		
	<script type="text/javascript">
	
	var carEdStatusInfoMainListTemplate;
	var carEdStatusInfoDetailTemplate;
	var carEdStatusInfoDetailListTemplate;
	
	$(document).ready(function() {
		// 기간 초기화
		var today = app.utils.formatDate(new Date(), "YYYYMMDD");
		$("#js-car-ed-status-info-todate").val(today);
		$("#js-car-ed-status-info-fromdate").val(fn_getBeforeDate(today, 0, 2).substring(0, 6) + "01");
		$("#js-car-ed-status-info-todate, #js-car-ed-status-info-fromdate").mask('9999-99-99');
		
		// Handlebar 초기화
		initCarEdStatusInfoHandlebarsTemplate();
		
		// 전착 본조 이력 조회 버튼 클릭
		$("#js-car-ed-status-info-refresh-button").off().on('click', function(){
			retrieveCarEdStatusInfoAll();
		});
		
	});
	
	//-------------------------------------------------
	// 전체 조회
	//-------------------------------------------------
	var retrieveCarEdStatusInfoAll = function(){
		
		// Main 조회
		retrieveCarProdStatusInsp.request();
	};
	
	// ------------------------------------------------
	// Handlebar 초기화
	// ------------------------------------------------
	var initCarEdStatusInfoHandlebarsTemplate = function() {
		
		// Main 리스트
		var source = $('#js-template-car-ed-status-info-main-list').html();
		carEdStatusInfoMainListTemplate = Handlebars.compile(source);
		
		// Detail
		var source = $('#js-template-car-ed-status-info-detail').html();
		carEdStatusInfoDetailTemplate = Handlebars.compile(source);
		
		// Detail List
		var source = $('#js-template-car-ed-status-info-detail-list').html();
		carEdStatusInfoDetailListTemplate = Handlebars.compile(source);
		
	};
	
	//-------------------------------------------------
	// Main 조회
	//-------------------------------------------------
	var retrieveCarProdStatusInsp = {
		success: function(response, status, jqueryXHR) {
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {							
					
					var data = {
							rows : response.rs
					};
					var result = carEdStatusInfoMainListTemplate(data);
					$('#js-car-ed-status-info-main-list').html(result);
					
					// Detail 클릭
					$("a[name=js-car-ed-status-info-detail-button]").off().on('click', function(e){
						e.preventDefault();
						e.stopPropagation();

						var docNo = $(this).attr("docNo");
						
						// 레이어 슬라이드 업/다운
						setTimeout(function(){
							$('dd.wp-list-paint-check02-view').slideUp('fast'); /*, 'easeInOutExpo'*/
						}, 30);
						var slidedownelement = $(this).closest('dl.wp-dl-paint-check02').find('dd.wp-list-paint-check02-view').eq(0);
						if(!slidedownelement.is(':visible')) {
							
							// Detail 조회
							retrieveCarProdStatusInspDetail.request(docNo);
							
							setTimeout(function(){
								slidedownelement.slideDown('fast'); /*, 'easeInOutExpo'*/
							}, 30);
						}
						return false;
					});
					
					// 수정 버튼 클릭
					$("button[name=js-car-ed-status-info-main-list-modify-button]").off().on('click', function(e){
						var docNo    = $(this).attr("docNo");
						var carPlant = $("input[name=js-car-ed-status-info-main-list-carplant][docNo="+docNo+"]").val();
						var boothId  = $("input[name=js-car-ed-status-info-main-list-boothid][docNo="+docNo+"]").val();
						var inspDate = $("input[name=js-car-ed-status-info-main-list-inspdate][docNo="+docNo+"]").val();
						
						var param = {
							  carPlant : carPlant
							, boothId  : boothId
							, inspDate : inspDate
						};
						fn_openPop($(this));
						initCarEdStatusInfoRegPopup(param);
					});
					
					// 삭제 버튼 클릭
					$("button[name=js-car-ed-status-info-main-list-delete-button]").off().on('click', function(e){
						var docNo    = $(this).attr("docNo");

						app.message.confirm({
							  title             : '<spring:message code="TODO.KEY" text="삭제"/>'
							, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
							, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
							, callback          : {
								confirm: function() {
									deleteCarProdStatusInsp.request(docNo);
								}
							}
						});
					});
					
				} else 	{
					// 서비스 요청 처리 오류 발생 메시지
					
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="에러"/>'
						, message           : message
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					});
					// 서비스 요청 처리 Exception 메시지
					console.log(response.error || '');
				}
			}
		},
		error: function(jqueryXHR, status, errorText) {
			// ------------------------------------
			// http response error
			// ------------------------------------
			
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="에러"/>'
				, message           : errorText
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
			});
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
				  service  : 'car.prodInspEd'
				, method   : 'retrieveCarProdStatusInsp'
				, carPlant : $("#js-car-header-car-plant").val()
				, fromDate : $("#js-car-ed-status-info-fromdate").val().replace(/-/gi, "")
				, toDate   : $("#js-car-ed-status-info-todate").val().replace(/-/gi, "")
				, boothId  : $("#js-car-ed-status-info-boothid").val()
			};
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};

	//-------------------------------------------------
	// Detail 조회
	//-------------------------------------------------
	var retrieveCarProdStatusInspDetail = {
		docNo : "",
		success: function(response, status, jqueryXHR) {
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {							
					
					var docNo = retrieveCarProdStatusInspDetail.docNo;
					
					// 욕액 분석
					var pa = null;
					if(response.rs.pa.length > 0){
						pa = response.rs.pa[0];
					} else {
						pa = {
								carPlant  : ""
							  , boothIdNm : ""
							  , inspDate  : ""
						};
					}
					
					var carPlant  = $("input[name=js-car-ed-status-info-main-list-carplant][docNo="+docNo+"]").val();
					var boothIdNm = $("input[name=js-car-ed-status-info-main-list-boothidnm][docNo="+docNo+"]").val();
					var inspDate  = $("input[name=js-car-ed-status-info-main-list-inspdate][docNo="+docNo+"]").val();
					
					pa.carPlant = carPlant;
					pa.boothIdNm = boothIdNm;
					pa.inspDate = inspDate;
					pa.docNo    = docNo;
					
					var result = carEdStatusInfoDetailTemplate(pa);
					$('dd[name=js-car-ed-status-info-detail][docNo='+ docNo +']').html(result);
					
					
					// 공장/본조No./검사일 리스트
					var items = response.rs.items;
					var result2 = carEdStatusInfoDetailListTemplate({rows : items});
					$('tbody[name=js-car-ed-status-info-detail-list][docNo='+ docNo +']').html(result2);
					
					
				} else 	{
					// 서비스 요청 처리 오류 발생 메시지
					
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="에러"/>'
						, message           : message
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					});
					// 서비스 요청 처리 Exception 메시지
					console.log(response.error || '');
				}
			}
		},
		error: function(jqueryXHR, status, errorText) {
			// ------------------------------------
			// http response error
			// ------------------------------------
			
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="에러"/>'
				, message           : errorText
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
			});
		},
		complete: function(jqueryXHR, status) {
			// ------------------------------------
			// http response complete
			// ------------------------------------
			//app.mask.pageUnlock();
		},
		request: function(docNo) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			retrieveCarProdStatusInspDetail.docNo = docNo;
			var params = {
				  service  : 'car.prodInspEd'
				, method   : 'retrieveCarProdStatusInspDetail'
				, docNo    : docNo
			};
			//app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};

	//-------------------------------------------------
	// 삭제
	//-------------------------------------------------
	var deleteCarProdStatusInsp = {
		success: function(response, status, jqueryXHR) {
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {							
					
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="삭제 되었습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					});
					
					// Main 재조회
					retrieveCarProdStatusInsp.request();
			
				} else 	{
					// 서비스 요청 처리 오류 발생 메시지
					
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="에러"/>'
						, message           : message
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					});
					// 서비스 요청 처리 Exception 메시지
					console.log(response.error || '');
				}
			}
		},
		error: function(jqueryXHR, status, errorText) {
			// ------------------------------------
			// http response error
			// ------------------------------------
			
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="에러"/>'
				, message           : errorText
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
			});
		},
		complete: function(jqueryXHR, status) {
			// ------------------------------------
			// http response complete
			// ------------------------------------
			app.mask.pageUnlock();
		},
		request: function(docNo) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var params = {
				  service  : 'car.prodInspEd'
				, method   : 'deleteCarProdStatusInsp'
				, docNo    : docNo
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
	


	</tiles:putAttribute>
	<!-- 팝업 콘텐츠 E -->
</tiles:insertDefinition>
