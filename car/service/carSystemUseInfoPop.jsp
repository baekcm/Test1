<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.09.06] 자동차 시스템 사용 현황" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.car.popup">

	<!-- 메인 콘텐츠 S -->
	<tiles:putAttribute name="page-content">
	
	<div class="wp-pop-layer wp-box-sizing wp-car-popup">
		<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="시스템 사용 현황-자동차"/></h1>
		</div>
		<div class="wp-pop-conts wp-pr20" style="overflow-x:visible">
			<!-- title area -->
			<ul class="wp-info-title wp-prod2-popup">
				<li><a href="#" class="active" id="js-car-system-use-info-dept-button"><spring:message code='TODO.KEY' text='부서'/></a></li>
				<li><a href="#" id="js-car-system-use-info-factory-button"><spring:message code='TODO.KEY' text='공장'/></a></li>
			</ul>
			<div class="wp-clearfix">
				<div class="wp-fr">
					<input type="text" id="js-system-use-info-from-date" name="" title="내용입력" class="wp-inp-datepicker" placeholder="<spring:message code='TODO.KEY' text='날짜입력'/>">
					~
					<input type="text" id="js-system-use-info-to-date" name="" title="내용입력" class="wp-inp-datepicker" placeholder="<spring:message code='TODO.KEY' text='날짜입력'/>">
					<button type="button" id="js-system-use-info-search-button" class="wp-btn small gray cr3"><spring:message code='TODO.KEY' text='검색'/></button>
				</div>
			</div>
			<!-- //title area -->
			<div class="wp-system-scroll wp-hor-scroll-table wp-mb30">
				<!-- 타이틀 영역 table -->
				<div class="wp-table-st1 h-center wp-title-section wp-vertical-line" id="js-car-system-use-info-left">
					<table>
						<caption><spring:message code="TODO.KEY" text="상세 입력 현황"/></caption>
						<colgroup>
							<col style="width:85px">
							<col style="width:195px">
							<col style="width:55px">
							<col style="width:70px">
						</colgroup>
						<thead>
							<tr>
								<th colspan="3" class="wp-row2"><spring:message code="TODO.KEY" text="구분"/></th>
								<th>계</th>
							</tr>
						</thead>
						<tbody data-field="systemUseInfo">
						</tbody>
					</table>
				</div>
				<!-- //타이틀 영역 table -->
				<!-- 스크롤 영역 -->
				<div class="wp-scroll">
					<div class="wp-innertable wp-table-st1 h-center wp-vertical-line" id="js-car-system-use-info">
					</div>
				</div>
			</div>
			<!-- btn -->
			<div class="wp-btn-area">
				<button type="button" class="wp-btn big darkgray cr3 wp-pl18 wp-pr18" onclick="javascript:window.close(); return false;">닫기</button>
			</div>
			<!--//content-->
		</div>
	</div>	
	
	</tiles:putAttribute>
	<!-- 메인 콘텐츠 E -->
	
	<!-- 페이지 레벨 스크립트 S -->
	<tiles:putAttribute name="page-level-js">
	
		<script type="text/javascript">
			// ++++++++++++++++++++++++++++++++++++++++++++++++
			// 시스템 사용 현황 페이지
			// ++++++++++++++++++++++++++++++++++++++++++++++++
			var pageBodyHandler = {
				init: function() {
					// ------------------------------------
					// init 메소드
					// ------------------------------------
					
					// 헤더 공장 선택 숨김처리
					$("#js-car-header-car-plant").parent().css( "display", "none" );
					
					carSystemUseInfo.init();
				}
			};
			
			var carSystemUseInfo = (function() {
				// 시스템 사용 현황 attr
				var $carSystemUseInfo;
				// 시스템 사용 현황 left attr
				var $carSystemUseInfoLeft;
				// car factory
				var carFactory = [];
				// car factory 지역
				var theadTitle = [];
				// 시스템 사용 현황 조회 데이터
				var resultData = [];
				// tbody Html
				var tbodyHtml = [];
				// tbody left html 생성
				var tbodyLeftHtml = [];
				// 부서/공장
				var item = "";
				//------------------------------------------------
				// 초기화
				//------------------------------------------------
				var init = function() {
					// 변수 초기화
					initData.init();
					// Handlebar
					docHtmlHandlebarHelper.init();
					// 초기 데이터/환경변수 셋팅
					initData.setInfo();
					// 이벤트 초기화
					pageQueryEvent.init();
				};
				
				//-------------------------------------------------
				// 데이터 초기화
				//-------------------------------------------------
				var initData = {
					init: function(){
						// 부서/공장
						item = "dept";
						
						// 시스템 사용 현황 thead, tbody
						$carSystemUseInfo = $('#js-car-system-use-info');
						// 시스템 사용 현황 left menu
						$carSystemUseInfoLeft = $('#js-car-system-use-info-left');
						
						// ------------------------------------------------
						// 검색조건 날짜 세팅 
						// 시작일은 현재일 -6일로 세팅한다.
						// ------------------------------------------------				
						var date = app.utils.formatDate(new Date(), "YYYYMMDD");
						var beforeDate =  fn_getBeforeDate(date, 0, 1).substring(0, 6) + "01"
						
						$('#js-system-use-info-from-date').val(app.utils.formatDate(beforeDate, "YYYY-MM-DD"));
						$('#js-system-use-info-to-date').val(app.utils.formatDate(date, "YYYY-MM-DD"));
					},
					setInfo: function(){
						// car factory 조회
						retrieveCarFactory.request();
						// 시스템 사용 현황 조회
						retrieveSystemUseInfo.request();
					}
				};
				
				//-------------------------------------------------
				// Page 생성
				//-------------------------------------------------
				var setPage = {
					setTbody: function(html){ // tbody page 생성
						$carSystemUseInfo.empty();
						for(var i=0; i<html.length; i++){
							var tbodyHandlebars = Handlebars.compile(html[i].tr);
							var result = tbodyHandlebars(resultData);
							$carSystemUseInfo.append(result);
						}					
					},
					setLeftTbody: function(html){ // tbody page 생성
						$carSystemUseInfoLeft.find('tbody[data-field="systemUseInfo"]').empty();
						for(var i=0; i<html.length; i++){
							var tbodyHandlebars = Handlebars.compile(html[i].tr);
							var result = tbodyHandlebars(resultData);
							$carSystemUseInfoLeft.find('tbody[data-field="systemUseInfo"]').append(result);
						}					
					},
				};
				
				// ------------------------------------
				// 이벤트 핸들러
				// ------------------------------------
				var pageQueryEvent = {
					search: function(){ // 검색
						retrieveSystemUseInfo.request();
					},
					deptSelect: function(){ // 부서선택
						$("#js-car-system-use-info-factory-button").removeClass();
						$("#js-car-system-use-info-dept-button").removeClass();
						$("#js-car-system-use-info-dept-button").addClass("active");
						item = "dept"; 
						retrieveSystemUseInfo.request();
					},
					factorySelect: function(){ // 공장선택
						$("#js-car-system-use-info-dept-button").removeClass();
						$("#js-car-system-use-info-factory-button").removeClass();
						$("#js-car-system-use-info-factory-button").addClass("active");
						item = "factory"; 
						retrieveSystemUseInfo.request();
					},
					init: function() {
						// 검색
						$("#js-system-use-info-search-button").off().on('click', this.search);
						// 부서선택
						$("#js-car-system-use-info-dept-button").off().on('click', this.deptSelect);
						// 공장선택
						$("#js-car-system-use-info-factory-button").off().on('click', this.factorySelect);
					}	
				};

				// ------------------------------------
				// interface function
				// ------------------------------------
				var ifFn = {
				};
				
				// ------------------------------------
				// Handlebars Helper 클래스
				// ------------------------------------
				var docHtmlHandlebarHelper = {
					rateRecal: function(rate, rateNum){
						
						var result = 0.0;
						if(rate == "-" || rateNum == 0){
							result = "-";
						}else{
							result = (rate/rateNum).toFixed(2);
						}
						return new Handlebars.SafeString(result);
					},			
					init: function() {
						if (typeof Handlebars !== 'undefined') {
							Handlebars.registerHelper("rateRecal", this.rateRecal);
						}
					}			
				};
				
				
				//------------------------------------------------
				// 시스템 사용 현황
				//------------------------------------------------
				var retrieveSystemUseInfo = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								// thead 데이터 생성
								retrieveSystemUseInfo.makeTheadData(response.rs);
								// result 데이터 취합
								retrieveSystemUseInfo.makeResultData(response.rs);
								
								// table 사이즈 변경
								var thisWidth = 0;
								var scrollTableLength = $carSystemUseInfo.find('table').length;
								for (var i=0; scrollTableLength > i; i++){
									thisWidth += $carSystemUseInfo.find('table').eq(i).width();
								}
								$carSystemUseInfo.width(thisWidth + 1);
							
							} else {
								fn_alertInfo('E', message);
								console.log(response.error || '');
							}
						}
					},
					makeTheadData: function(data){ // car factory 데이터
						// Car Factory 데이터 취합
						var newCarFactory = [];
						var newCarFactoryTemp = "";
						for(var i=0; i<data.length; i++){
							var newChk = true;
							for(var j=0; j<carFactory.length; j++){
								if(carFactory[j].id == data[i].carPlant){
									if(carFactory[j].inputDept == "ZZZZZZZ" || carFactory[j].inputDept == data[i].inputDept){
										carFactory[j]["inputDeptNm"] = data[i].inputDeptNm;
										carFactory[j]["inputDept"] = data[i].inputDept;
										newChk = false;
										break;
									}
								}
							}
							if(newChk){
								if(newCarFactoryTemp.indexOf("," + data[i].inputDeptNm + "_" + data[i].inputDept + ",") == -1){
									newCarFactory.push({id:data[i].carPlant, name:data[i].carPlantNm, inputDeptNm:data[i].inputDeptNm, inputDept:data[i].inputDept});
									newCarFactoryTemp += "," + data[i].inputDeptNm + "_" + data[i].inputDept + ",";
								}
							}
						}
						carFactory.sort(function(a,b) {
						    if ( a.inputDept+"/"+a.id < b.inputDept+"/"+b.id )
						        return -1;
						    if ( a.inputDept+"/"+a.id > b.inputDept+"/"+b.id )
						        return 1;
						    return 0;
						});
						
						// thead 데이터 취합
						theadTitle = [];
						theadTitleCnt = 0;
						var theadTitleTemp = ""; 
						var cnt = 0;
						for(var i=0; i<carFactory.length; i++){
							if(i == 0){
								theadTitleTemp += "," + carFactory[i].inputDeptNm + ",";
								theadTitle.push({id:carFactory[i].inputDept, name:carFactory[i].inputDeptNm, cnt:0});
							}else{
								if(theadTitleTemp.indexOf("," + carFactory[i].inputDeptNm + ",") == -1){
									theadTitle[theadTitleCnt]["cnt"] = cnt;
									theadTitleTemp += "," + carFactory[i].inputDeptNm + ",";
									theadTitle.push({id:carFactory[i].inputDept, name:carFactory[i].inputDeptNm, cnt:0});
									cnt = 0;
									theadTitleCnt++;
								}
							}
							cnt++;
							if(i == carFactory.length-1){
								theadTitle[theadTitleCnt]["cnt"] = cnt;
							}
						}
						for(var i=0; i<newCarFactory.length; i++){
							if(theadTitleTemp.indexOf("," + newCarFactory[i].inputDeptNm + ",") == -1){
								theadTitleTemp += "," + newCarFactory[i].inputDeptNm + ",";
								theadTitle.push({id:newCarFactory[i].inputDept, name:newCarFactory[i].inputDeptNm, cnt:1});
							}
						}
						theadTitle.sort(function(a,b) {
						    if ( a.id < b.id )
						        return -1;
						    if ( a.id > b.id )
						        return 1;
						    return 0;
						});
						newCarFactory = [];
						// 시스템 사용 현황 메뉴 리스트
						retrieveMenuList.request();
					},
					makeResultData: function(data){ // 시스템 사용 현황 결과 데이터
						if(data.length > 0){
							// 결과 데이터 취합
							if(item == "dept"){
								for(var i=0; i<data.length; i++){
									resultData[data[i].menuId + "_" + data[i].inputDept + "_cnt"] = (Number(resultData[data[i].menuId + "_" + data[i].inputDept + "_cnt"]=="-"?"0":resultData[data[i].menuId + "_" + data[i].inputDept + "_cnt"] || "0") + Number(data[i].dataCnt || "0")) || "-";
									resultData[data[i].menuId + "_" + data[i].inputDept + "_per"] = (Number(resultData[data[i].menuId + "_" + data[i].inputDept + "_per"]=="-"?"0":resultData[data[i].menuId + "_" + data[i].inputDept + "_per"] || "0") + Number(data[i].useRate || "0")) || "-";
									resultData[data[i].menuId + "_" + data[i].inputDept + "_num"] = (Number(resultData[data[i].menuId + "_" + data[i].inputDept + "_num"]=="-"?"0":resultData[data[i].menuId + "_" + data[i].inputDept + "_num"] || "0") + 1) || "-";
									
									resultData[data[i].menuId + "_" + data[i].inputDept + "_cnt" + "_css"] = resultData[data[i].menuId + "_" + data[i].inputDept + "_cnt"]=="-"?"":"wp-ar";
									resultData[data[i].menuId + "_" + data[i].inputDept + "_per" + "_css"] = resultData[data[i].menuId + "_" + data[i].inputDept + "_per"]=="-"?"":"wp-ar";
									
									resultData[data[i].menuId + "_" + "remark2"] = data[i].remark2 || "-";
									resultData[data[i].menuId + "_" + "totalCnt"] = (Number(resultData[data[i].menuId + "_" + "totalCnt"]=="-"?"0":resultData[data[i].menuId + "_" + "totalCnt"] || "0") + Number(data[i].dataCnt || "0")) || "-";
									resultData[data[i].menuId + "_" + "css"] = resultData[data[i].menuId + "_" + "totalCnt"]=="-"?"":"wp-ar";
								}
							}
							if(item == "factory"){
								for(var i=0; i<data.length; i++){
									resultData[data[i].menuId + "_" + data[i].carPlant + "_cnt"] = (Number(resultData[data[i].menuId + "_" + data[i].carPlant + "_cnt"]=="-"?"0":resultData[data[i].menuId + "_" + data[i].carPlant + "_cnt"] || "0") + Number(data[i].dataCnt || "0")) || "-";
									resultData[data[i].menuId + "_" + data[i].carPlant + "_per"] = (Number(resultData[data[i].menuId + "_" + data[i].carPlant + "_per"]=="-"?"0":resultData[data[i].menuId + "_" + data[i].carPlant + "_per"] || "0") + Number(data[i].useRate || "0")) || "-";
									resultData[data[i].menuId + "_" + data[i].carPlant + "_num"] = (Number(resultData[data[i].menuId + "_" + data[i].carPlant + "_num"]=="-"?"0":resultData[data[i].menuId + "_" + data[i].carPlant + "_num"] || "0") + 1) || "-";
									
									resultData[data[i].menuId + "_" + data[i].carPlant + "_cnt" + "_css"] = resultData[data[i].menuId + "_" + data[i].carPlant + "_cnt"]=="-"?"":"wp-ar";
									resultData[data[i].menuId + "_" + data[i].carPlant + "_per" + "_css"] = resultData[data[i].menuId + "_" + data[i].carPlant + "_per"]=="-"?"":"wp-ar";
									
									resultData[data[i].menuId + "_" + "remark2"] = data[i].remark2 || "-";
									resultData[data[i].menuId + "_" + "totalCnt"] = (Number(resultData[data[i].menuId + "_" + "totalCnt"]=="-"?"0":resultData[data[i].menuId + "_" + "totalCnt"] || "0") + Number(data[i].dataCnt || "0")) || "-";
									resultData[data[i].menuId + "_" + "css"] = resultData[data[i].menuId + "_" + "totalCnt"]=="-"?"":"wp-ar";
								}
							}
							
							// Page 생성
							setPage.setLeftTbody(tbodyLeftHtml);
							setPage.setTbody(tbodyHtml);
						}						
					},
					error: function(jqueryXHR, status, errorText) {
						fn_alertInfo('E', errorText);
					},
					complete: function(jqueryXHR, status) {
						app.mask.pageUnlock();
					},
					request: function() {
						
						var fromDate = ($('#js-system-use-info-from-date').val()).replace(/-/gi,"");
						var toDate = ($('#js-system-use-info-to-date').val()).replace(/-/gi,"")
						
						var params = {
							service   : 'car.common',
							method    : 'retrieveCarInputRateCheckList',
							fromDate : fromDate,
							toDate : toDate
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);				
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				};
				
				//------------------------------------------------
				// 시스템 사용 현황 메뉴 리스트
				//------------------------------------------------
				var retrieveMenuList = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								retrieveMenuList.makeData(response.rs);
							} else {
								fn_alertInfo('E', message);
								console.log(response.error || '');
							}
						}
					},
					makeData: function(data){ // 구분항목 데이터(left menu)
						// left 헤더
						var leftTitle1 = [];
						var leftTitle2 = [];
						var cnt = 0;
						var leftTitleCnt = 0;
						var leftTitleTemp = "";
						for(var i=0; i<data.length; i++){
							if(i == 0){
								leftTitleTemp += "," + data[i].menuGroupNm + ",";
								leftTitle1.push({id:data[i].menuGroupId, name:data[i].menuGroupNm, cnt:0});
							}else{
								if(leftTitleTemp.indexOf("," + data[i].menuGroupNm + ",") == -1){
									leftTitle1[leftTitleCnt]["cnt"] = cnt;
									leftTitleTemp += "," + data[i].menuGroupNm + ",";
									leftTitle1.push({id:data[i].menuGroupId, name:data[i].menuGroupNm, cnt:0});
									cnt = 0;
									leftTitleCnt++;
								}
							}
							leftTitle2.push({id:data[i].menuId, group:data[i].menuGroupId, name:data[i].menuNm})
							cnt++;
							if(i == data.length-1){
								leftTitle1[leftTitle1.length-1]["cnt"] = cnt;
							}
						}

						// 결과 데이터 생성 초기화
						if(item == "dept"){
							for(var i=0; i<leftTitle1.length; i++){
								for(var j=0; j<leftTitle2.length; j++){
									if(leftTitle1[i].id == leftTitle2[j].group){
										for(var k=0; k<theadTitle.length; k++){
											resultData[leftTitle2[j].id + "_" + theadTitle[k].id + "_cnt"] = "-";
											resultData[leftTitle2[j].id + "_" + theadTitle[k].id + "_per"] = "-";
											resultData[leftTitle2[j].id + "_" + theadTitle[k].id + "_num"] = "-";
											resultData[leftTitle2[j].id + "_" + "remark2"] = "-";
											resultData[leftTitle2[j].id + "_" + "totalCnt"] = "-";
										}
									}
								}
							}
						}
						if(item == "factory"){
							for(var i=0; i<leftTitle1.length; i++){
								for(var j=0; j<leftTitle2.length; j++){
									if(leftTitle1[i].id == leftTitle2[j].group){
										for(var k=0; k<carFactory.length; k++){
											resultData[leftTitle2[j].id + "_" + carFactory[k].id + "_cnt"] = "-";
											resultData[leftTitle2[j].id + "_" + carFactory[k].id + "_per"] = "-";
											resultData[leftTitle2[j].id + "_" + carFactory[k].id + "_num"] = "-";
											resultData[leftTitle2[j].id + "_" + "remark2"] = "-";
											resultData[leftTitle2[j].id + "_" + "totalCnt"] = "-";
										}
									}
								}
							}
						}
						
						// 시스템 사용 현황 Left Tbody Html
						retrieveMenuList.makeLeftHtml(leftTitle1, leftTitle2);
						// 시스템 사용 현황 Tbody Html
						retrieveMenuList.makeHtml(leftTitle1, leftTitle2);
						
					},
					makeLeftHtml: function(leftTitle1, leftTitle2){ // 시스템 사용 현황 Left Tbody Html
						// tbody left html 생성
						tbodyLeftHtml = [];
						var nInit = 0;
						var index = 0;
						var trTemp = "";
						for(var i=0; i<leftTitle1.length; i++){
							nInit = 0;
							for(var j=0; j<leftTitle2.length; j++){
								if(leftTitle1[i].id == leftTitle2[j].group){
									trTemp = "<tr>";
									if(nInit == 0){
										trTemp += "<td rowspan='" + leftTitle1[i].cnt + "'>" + leftTitle1[i].name + "</td>";
										nInit++;
									}
									trTemp += "<td class='wp-al'>" + leftTitle2[j].name + "</td>";
									trTemp += "<td>{{" + leftTitle2[j].id + "_" + "remark2" + "}}</td>";
									trTemp += "<td class='{{" + leftTitle2[j].id + "_" + "css" + "}}'>{{" + leftTitle2[j].id + "_" + "totalCnt" + "}}</td>";
									trTemp += "</tr>";
									tbodyLeftHtml.push({index:index, tr:trTemp});
									index++;
								}
							}
						}
						// Page 생성
						setPage.setLeftTbody(tbodyLeftHtml);	
					},
					makeHtml: function(leftTitle1, leftTitle2){ // 시스템 사용 현황 Tbody Html
						// tbody html 생성
						tbodyHtml = [];
						var nInit = 0;
						var index = 0;
						var trTemp = "";
						var tableTemp = "";
						if(item == "dept"){
							for(var i=0; i<theadTitle.length; i++){
								if(theadTitle[i].name == "-"){
									continue;
								}
								nInit = 0;
								tableTemp = '<table class="wp-cont-section">';
								tableTemp += '<caption><spring:message code="TODO.KEY" text="상세 입력 현황"/></caption>';
								// colgroup
								tableTemp += '<colgroup>';
								tableTemp += '<col style="width:80px">';
								tableTemp += '<col style="width:80px">';
								tableTemp += '</colgroup>';
								
								// thead
								tableTemp += '<thead>';
								tableTemp += '<tr>';
								tableTemp += '<th class="wp-bubble" colspan="2">' + theadTitle[i].name + '</th>';
								tableTemp += '</tr>';
								tableTemp += '<tr>';
								tableTemp += '<th><spring:message code="TODO.KEY" text="건수"/></th>';
								tableTemp += '<th><spring:message code="TODO.KEY" text="입력률(%)"/></th>';
								tableTemp += '</tr>';
								tableTemp += '</thead>';
								
								// tbody
								tableTemp += '<tbody>';
								for(var j=0; j<leftTitle2.length; j++){  // {{#rateRecal inputDatetime}}{{/rateRecal}}
									tableTemp += '<tr>';
									tableTemp += "<td class='{{" + leftTitle2[j].id + "_" + theadTitle[i].id + "_cnt" + "_" + "css" + "}}'>{{" + leftTitle2[j].id + "_" + theadTitle[i].id + "_cnt" + "}}</td>";
									tableTemp += "<td class='{{" + leftTitle2[j].id + "_" + theadTitle[i].id + "_per" + "_" + "css" + "}}'>{{#rateRecal " + leftTitle2[j].id + "_" + theadTitle[i].id + "_per " + leftTitle2[j].id + "_" + theadTitle[i].id + "_num}}{{/rateRecal}}</td>";
									tableTemp += '</tr>';
								}
								tableTemp += '</tbody>';
								
								tableTemp += '</table>';
								tbodyHtml.push({index:i, tr:tableTemp});
							}
						}
						if(item == "factory"){
							for(var i=0; i<carFactory.length; i++){
								nInit = 0;
								tableTemp = '<table class="wp-cont-section">';
								tableTemp += '<caption><spring:message code="TODO.KEY" text="상세 입력 현황"/></caption>';
								// colgroup
								tableTemp += '<colgroup>';
								tableTemp += '<col style="width:80px">';
								tableTemp += '<col style="width:80px">';
								tableTemp += '</colgroup>';
								
								// thead
								tableTemp += '<thead>';
								tableTemp += '<tr>';
								tableTemp += '<th colspan="2">' + carFactory[i].name + '</th>';
								tableTemp += '</tr>';
								tableTemp += '<tr>';
								tableTemp += '<th><spring:message code="TODO.KEY" text="건수"/></th>';
								tableTemp += '<th><spring:message code="TODO.KEY" text="입력률(%)"/></th>';
								tableTemp += '</tr>';
								tableTemp += '</thead>';
								
								// tbody
								tableTemp += '<tbody>';
								for(var j=0; j<leftTitle2.length; j++){
									tableTemp += '<tr>';
									tableTemp += "<td class='{{" + leftTitle2[j].id + "_" + carFactory[i].id + "_cnt" + "_" + "css" + "}}'>{{" + leftTitle2[j].id + "_" + carFactory[i].id + "_cnt" + "}}</td>";
									tableTemp += "<td class='{{" + leftTitle2[j].id + "_" + carFactory[i].id + "_per" + "_" + "css" + "}}'>{{#rateRecal " + leftTitle2[j].id + "_" + carFactory[i].id + "_per " + leftTitle2[j].id + "_" + carFactory[i].id + "_num}}{{/rateRecal}}</td>";
									tableTemp += '</tr>';
								}
								tableTemp += '</tbody>';
								
								tableTemp += '</table>';
								tbodyHtml.push({index:i, tr:tableTemp});
								
							}
						}
						
						// Page 생성
						setPage.setTbody(tbodyHtml);
						
					},
					error: function(jqueryXHR, status, errorText) {
						fn_alertInfo('E', errorText);
					},
					complete: function(jqueryXHR, status) {
						app.mask.pageUnlock();
					},
					request: function() {
						var params = {
							service   : 'common',
							method    : 'retrieveCommSysUseList',
							sysId 	  : 'CAR'
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);				
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				};
				
				//------------------------------------------------
				// Car Factory
				//------------------------------------------------
				var retrieveCarFactory = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								retrieveCarFactory.makeData(response.rs);
							} else {
								fn_alertInfo('E', message);
								console.log(response.error || '');
							}
						}
					},
					makeData: function(data){
						for(var i=0; i<data.length; i++){
							// car factory
							carFactory.push({id:data[i].code, name:data[i].codeNm, inputDeptNm:"-", inputDept:"ZZZZZZZ"})
						}
					},
					error: function(jqueryXHR, status, errorText) {
						fn_alertInfo('E', errorText);
					},
					complete: function(jqueryXHR, status) {
						app.mask.pageUnlock();
					},
					request: function() {
						var params = {
							service   : 'common',
							method    : 'retrieveTCCodeList',
							groupCode : 'TSD_CAR_FACTORY'
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);				
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				};
				
				return {
					init : init
				};
			})();
			
		</script>
		
	</tiles:putAttribute>
	<!-- 페이지 레벨 스크립트 E -->
	
</tiles:insertDefinition>
