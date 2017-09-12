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
				<h1><spring:message code="TODO.KEY" text="도료 상태 검사"/></h1>
				<div class="wp-location"><span><spring:message code="TODO.KEY" text="도장공정"/></span><span class="wp-fc-54"><spring:message code="TODO.KEY" text="도료 상태 검사"/></span></div>
			</header>
			<div class="wp-table-width">
				<!-- tab -->
				<ul class="wp-prod-tab wp-four">
					<li><a href="/car/inspection/carEdStatusInfoDetail.do"><spring:message code="TODO.KEY" text="전착 본조 상세"/></a></li>
					<li><a href="/car/inspection/carEdStatusInfo.do"><spring:message code="TODO.KEY" text="전착 도료 상태 검사"/></a></li>
					<li><a href="/car/inspection/carBcStatusInfo.do" class="active"><spring:message code="TODO.KEY" text="중/상도 도료 상태 검사"/></a></li>
					<li><a href="/car/inspection/carBcMixingTankStatusInfo.do"><spring:message code="TODO.KEY" text="Mixing Tank 상세"/></a></li>
				</ul>
				<!-- //tab -->
				<!-- 상단 버튼 -->
				<div class="wp-clearfix">
					<div class="wp-fl">
						<div class="wp-ui-btn-switch wp-clearfix noborder-switch wp-fl">
							<ul id="js-car-bc-status-info-procid-list">
							</ul>
						</div>
					</div>
					<div class="wp-temphum wp-icon-area wp-inblock wp-fl wp-mt6 wp-ml20">
						<span class="wp-icon wp-ph"><spring:message code="TODO.KEY" text="온도 Spec. 오버"/></span>
						<span class="wp-icon wp-cz"><spring:message code="TODO.KEY" text="점도 Spec. 오버"/></span>
					</div>
				</div>
				<!-- //상단 버튼 -->
				
				<div class="wp-title-section">
					<h2 class="wp-section-title" id="js-car-bc-status-info-proc-name">Primer</h2>
				</div>
				<ul id="js-car-bc-status-info-tank-list" class="wp-list-paint-check wp-clearfix">
				</ul>
			</div>
			<!-- //content end -->
		</div>
	</section>
	</tiles:putAttribute>
	<!-- 메인 콘텐츠 E -->
	
	<!-- 페이지 레벨 스크립트 S -->
	<tiles:putAttribute name="page-level-js">

		<!-- 공정 버튼 리스트 - 스크립트-->
		<script id="js-template-car-bc-status-info-procid-list" type="text/x-handlebars-template">		
			{{#rows}}
				<li><button type="button"  
					{{#if @first}}
						class="on"
					{{/if}}
				 name="js-car-bc-status-info-procid-list-button" procId="{{code}}">{{codeNm}}</button></li>
			{{/rows}}
		</script>
		
		<!-- 탱크 리스트 - 스크립트-->
		<script id="js-template-car-bc-status-info-tank-list" type="text/x-handlebars-template">		
			{{#rows}}
				<li>
					<{{setTankUseYnTag tankUseYn}} name="js-car-bc-status-info-tank-list-button" tankNo="{{tankNo}}" class="wp-link-paint-check">
						<strong class="wp-num tyA bold">{{tankNoNm}}</strong>
						<span class="wp-paint-color bold">{{colorNm}}</span>
						<dl class="wp-detail">
						<dd><spring:message code="TODO.KEY" text="제조일자"/> : {{setLastInDate lastInDate}}</dd>
						<dd><spring:message code="TODO.KEY" text="투입일자"/> : {{setInjDate injDate}}</dd>
						<!-- <dd><spring:message code="TODO.KEY" text="보관기간"/> : {{storeTerm}}</dd> -->
						<dd><spring:message code="TODO.KEY" text="LOT No."/> : {{setLotNo lotNo}}</dd>
						<dd>{{setpaintVisco paintVisco paintTemp}}</dd>
						</dl>
						<span class="wp-icon-area02">
							<span class="wp-icon-temp {{setOverClass tempOverYn}}"></span>
							<span class="wp-icon-humidity {{setOverClass viscoOverYn}}"></span>
						</span>
						<span class="noUse-area {{setTankUseYnClass tankUseYn}}">
							<span class="bg-noUse"></span>
							<strong class="txt-noUse"><spring:message code="TODO.KEY" text="사용 안함"/></strong>
						</span>
					</{{setTankUseYnTag tankUseYn}}>
				</li>
			{{/rows}}
		</script>		
		
		<script type="text/javascript">
		
			var carBcStatusInfoProcIdListTemplate;
			var carBcStatusInfoTankListTemplate;
			
			$(document).ready(function() {
				
				// Handlebars 초기화
				initCarBcStatusInfoHandlebarsTemplate();
			});
			
			// ------------------------------------------------
			// 화면 전체 재조회
			// ------------------------------------------------
			var retrieveCarBcStatusInfoAll = function() {
				
				// 공정 버튼 리스트 조회
				retrieveCarProcIdNew.request();
			};

			// ------------------------------------------------
			// Handlebar 초기화
			// ------------------------------------------------
			var initCarBcStatusInfoHandlebarsTemplate = function() {
				
				// 공정 버튼 리스트
				var source = $('#js-template-car-bc-status-info-procid-list').html();
				carBcStatusInfoProcIdListTemplate = Handlebars.compile(source);
				
				// 탱크 리스트
				var source = $('#js-template-car-bc-status-info-tank-list').html();
				carBcStatusInfoTankListTemplate = Handlebars.compile(source);
				
				
				// 제조일자
				Handlebars.registerHelper('setLastInDate', function(lastInDate) {
					if (lastInDate == null) {
						return "-";
					} else {
						return lastInDate;
					}
				});
				
				// 투입일자
				Handlebars.registerHelper('setInjDate', function(injDate) {
					if (injDate == null) {
						return "-";
					} else {
						return injDate;
					}
				});
				
				// LOT Mo
				Handlebars.registerHelper('setLotNo', function(lotNo) {
					if (lotNo == null) {
						return "-";
					} else {
						return lotNo;
					}
				}); 
				
				Handlebars.registerHelper('setpaintVisco', function(paintVisco, paintTemp) {
					 
					if ( paintVisco == null && paintTemp == null) {  
						return " - ";
					} else if (this.paintVisco != null &&  this.paintTemp == null) { 
						return this.paintVisco + "sec/-℃"
					} else if (paintVisco == null &&  paintTemp != null) {
						return "-sec/"+ paintTemp + "℃"
					} else {
						return paintVisco +"sec/"+ paintTemp + "℃"
					}
				});
				
				
				Handlebars.registerHelper('setOverClass', function(overYn) {
					if(overYn == "Y"){
						return "out"; 
					} else {
						return "";
					}
				});
				Handlebars.registerHelper('setTankUseYnClass', function(tankUseYn) {
					if(tankUseYn == "N"){
						return "noUse"; 
					} else {
						return "";
					}
				});
				Handlebars.registerHelper('setTankUseYnTag', function(tankUseYn) {
					if(tankUseYn == "N"){
						// 미사용 Tank도 바로가기 버튼 형태로 변경
						//return "span"; 
						return "a";
					} else {
						return "a";
					}
				});
			};
			
			//-------------------------------------------------
			// 공정 버튼 리스트 조회
			//-------------------------------------------------
			var retrieveCarProcIdNew = {
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
							var result = carBcStatusInfoProcIdListTemplate(data);
							$('#js-car-bc-status-info-procid-list').html(result);
							
							var procId = $("button[name=js-car-bc-status-info-procid-list-button]:first").attr("procId");
							
							// 중/상도 도료 상태 검사 조회
							retrieveCarProdInspBc.request(procId);
							
							// 공정 버튼 클릭
							$("button[name=js-car-bc-status-info-procid-list-button]").off().on('click', function(){
								
								// 중/상도 도료 상태 검사 조회
								retrieveCarProdInspBc.request($(this).attr("procId"));
							});
							
						} else 	{
							// 서비스 요청 처리 오류 발생 메시지
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="' + message + '"/>'
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
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
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
						  service  : 'car.common'
						, method   : 'retrieveCarProcIdNew'
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: true});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//-------------------------------------------------
			// 중/상도 도료 상태 검사 조회
			//-------------------------------------------------
			var retrieveCarProdInspBc = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							
							// 선택한 공정 Name set
							var procNm = $("button[name=js-car-bc-status-info-procid-list-button][class=on]").text();
							$("#js-car-bc-status-info-proc-name").text(procNm);
							
							var data = {
									rows : response.rs
							};
							var result = carBcStatusInfoTankListTemplate(data);
							$('#js-car-bc-status-info-tank-list').html(result);
							$("a[name=js-car-bc-status-info-tank-list-button]").css("cursor", "pointer");
							
							// Tank 버튼 클릭
							$("a[name=js-car-bc-status-info-tank-list-button]").off().on('click', function(e){
								e.preventDefault();
								e.stopPropagation();
								
								var carPlant = $("#js-car-header-car-plant").val();
								var procId   = $("button[name=js-car-bc-status-info-procid-list-button][class=on]").attr("procId");
								var tankNo   = $(this).attr("tankNo");
								
								if(app.utils.isEmpty(carPlant)){
									app.message.alert({
										  title             : '<spring:message code="TODO.KEY" text="알림"/>'
										, message           : '<spring:message code="TODO.KEY" text="공장 코드가 없습니다."/>'
										, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
									});
									return;
								}
								if(app.utils.isEmpty(procId)){
									app.message.alert({
										  title             : '<spring:message code="TODO.KEY" text="알림"/>'
										, message           : '<spring:message code="TODO.KEY" text="공정 코드가 없습니다."/>'
										, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
									});
									return;
								}
								if(app.utils.isEmpty(tankNo)){
									app.message.alert({
										  title             : '<spring:message code="TODO.KEY" text="알림"/>'
										, message           : '<spring:message code="TODO.KEY" text="탱크 번호가 없습니다."/>'
										, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
									});
									return;
								}
								// Mixing Tank 상세 화면으로 이동
								window.location.href = "/car/inspection/carBcMixingTankStatusInfo.do?carPlant="+carPlant+"&procId="+procId+"&tankNo="+tankNo;
							});
							
						} else 	{
							// 서비스 요청 처리 오류 발생 메시지
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="' + message + '"/>'
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
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					});
				},
				complete: function(jqueryXHR, status) {
					// ------------------------------------
					// http response complete
					// ------------------------------------
					app.mask.pageUnlock();
				},
				request: function(procId) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service  : 'car.prodInspEd'
						, method   : 'retrieveCarProdInspBc'
						, carPlant : $("#js-car-header-car-plant").val()
						, procId   : procId
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: true});
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
