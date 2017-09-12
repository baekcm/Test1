<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.05.10] car 도장공정정보 > 제품테스트(tab)" %>
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
					<h1><spring:message code="TODO.KEY" text="제품 테스트"/></h1>
					<div class="wp-location"><span><spring:message code="TODO.KEY" text="도장공정 정보"/></span><span class="wp-fc-54"><spring:message code="TODO.KEY" text="제품 테스트"/></span></div>
				</header>
				<div class="wp-table-width">
					<!-- tab -->
					<ul class="wp-prod-tab wp-two">
						<li><a href="/car/inspection/carProdTestEdInfo.do" class="active"><spring:message code="TODO.KEY" text="전착 제품 테스트"/></a></li>
						<li><a href="/car/inspection/carProdTestBcInfo.do"><spring:message code="TODO.KEY" text="중상도 제품 테스트"/></a></li>
					</ul>
					<!-- //tab -->
					<!-- title area -->
					<div class="wp-title-section wp-clearfix">
						<div class="wp-ui-btn-switch wp-clearfix noborder-switch wp-mt-10 wp-fl">
							<ul>
								<li><button type="button" id="js-car-prod-test-ed-mast-list-completn" name="js-car-prod-test-ed-mast-list-completn" completYn="N" class="on"><spring:message code="TODO.KEY" text="진행"/></button></li>
								<li><button type="button" id="js-car-prod-test-ed-mast-list-complety" name="js-car-prod-test-ed-mast-list-complety" completYn="Y" class=""><spring:message code="TODO.KEY" text="완료"/></button></li>
							</ul>
						</div>
						<div class="wp-btn-area wp-fr">
							<!--<button type="button" id="js-car-prod-test-ed-mast-list-search-button" data-link="js-car-prod-test-ed-mast-list-search" class="wp-layer-open wp-btn small blue1 cr3 search-white"><spring:message code="TODO.KEY" text="검색"/></button> -->
							<!--<button type="button" id="js-car-prod-test-ed-mast-list-excel-download-button" data-link="js-car-prod-test-ed-mast-list-excel-download" class="wp-btn small darkgray cr3"><spring:message code="TODO.KEY" text="엑셀 다운로드"/></button>-->
							<button type="button" id="js-car-prod-test-ed-mast-reg-popup-button" data-link="js-car-prod-test-ed-mast-reg-popup" class="wp-btn-pop wp-btn small skyblue cr3 upload-white"><spring:message code="TODO.KEY" text="신규 제품 테스트 마스터 등록" /></button>
						</div>
					</div>
					<!-- //title area -->
					
					<!-- rootcause-list -->
					<div class="wp-rootcause-list wp-car-list2">
						<div class="wp-rc-box">
							<div id="js-car-prod-test-ed-mast-list" class="wp-rc-box-in">
							</div>
						</div>
					</div>
					<!-- //rootcause-list -->
				</div>
				<!-- //content end -->
			</div>
		</section>
	</tiles:putAttribute>
	<!-- 메인 콘텐츠 E -->
	
	
	<!-- 페이지 레벨 스크립트 S -->
	<tiles:putAttribute name="page-level-js">
		<!-- 공정 개선 정보 조회 리스트 - 스크립트-->
		<script id="js-template-car-prod-test-ed-mast-list" type="text/x-handlebars-template">
			<div id="js-car-prod-test-ed-mast-list-top-{{docNo}}" class="wp-rc-cont wp-h100 wp-rc-cont-color01">
				<div class="wp-rc-cont-top">
					<div class="wp-rp-right">
						<div id="js-car-prod-test-ed-mast-list-title-{{docNo}}" class="wp-rp-r-title">
							<span class="wp-name-benner wp-factory">{{carPlant}}</span>
							<span class="wp-name-benner wp-product">{{modelId}}</span>[{{docNo}}] {{title}}
						</div>	
						<div class="wp-rp-r-desc">
							<span class="wp-ship-fc-blue wp-pr5"><spring:message code="TODO.KEY" text="[ PART A ]"/></span> 
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="제품코드"/>&nbsp;:&nbsp;</em>{{aItems}}</span>
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="제품명"/>&nbsp;:&nbsp;</em>{{aItemNm}}</span>
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="Lot No."/>&nbsp;:&nbsp;</em>{{aLotNo}}</span>
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="제조일자"/>&nbsp;:&nbsp;</em>{{aLastIndate}}</span>
						</div>
						<div class="wp-rp-r-desc">
							<span class="wp-ship-fc-blue wp-pr5"><spring:message code="TODO.KEY" text="[ PART B ]"/></span> 
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="제품코드"/>&nbsp;:&nbsp;</em>{{bItems}}</span>
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="제품명"/>&nbsp;:&nbsp;</em>{{bItemNm}}</span>
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="Lot No."/>&nbsp;:&nbsp;</em>{{bLotNo}}</span>
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="제조일자"/>&nbsp;:&nbsp;</em>{{bLastIndate}}</span>
						</div>
					</div>

				{{#ifEquals completYn 'N'}}
					<div class="wp-rp-bttn wp-rp-bttn02 wp-ar">
					{{#ifEquals inspSeq null}}
						<button type="button" class="wp-btn small skyblue cr3 wp-mr10" style="width:60px;">-</button>
					{{else}}
						<button type="button" class="wp-btn small skyblue cr3 wp-mr10">{{completYnView}}</button>
					{{/ifEquals}}
						<button type="button" id="js-car-prod-test-ed-mast-mod-{{docNo}}" data-link="js-car-prod-test-ed-mast-reg-popup" class="wp-btn-pop wp-btn small white bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
						<button type="button" id="js-car-prod-test-ed-mast-del-{{docNo}}" class="wp-btn small white bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button><br/>
						<button type="button" id="js-car-prod-test-ed-dt-reg-{{docNo}}" data-link="js-car-prod-test-ed-dt-reg-popup" class="wp-btn-pop wp-btn white bgray wp-mt10"><spring:message code="TODO.KEY" text="차수 등록"/></button>
				{{else}}
					<div class="wp-rp-bttn">
					{{#ifEquals inspSeq null}}
						<div class="wp-rp-right wp-rp-right02">
							<div class="wp-rp-r-title">
								<span class="wp-name-benner wp-product"><spring:message code="TODO.KEY" text="-"/></span>
							</div>
						</div>
					{{else}}
						<div class="wp-rp-right wp-rp-right02">
							<div class="wp-rp-r-title">
								<span class="wp-name-benner wp-product">{{completYnView}}</span>
							</div>
						</div>
					{{/ifEquals}}
				{{/ifEquals}}
						<input type="hidden" id="js-car-prod-test-ed-mast-doc-no-{{docNo}}" value="{{docNo}}">
						<input type="hidden" id="js-car-prod-test-ed-mast-insp-seq-{{docNo}}" value="{{inspSeq}}">
						<input type="hidden" id="js-car-prod-test-ed-mast-inc-del-dt-insp-seq-{{docNo}}" value="{{incDelDtInspSeq}}">
						<input type="hidden" id="js-car-prod-test-ed-mast-booth-id-{{docNo}}" value="{{boothId}}">
						<input type="hidden" id="js-car-prod-test-ed-mast-booth-nm-{{docNo}}" value="{{boothNm}}">
						<input type="hidden" id="js-car-prod-test-ed-mast-model-id-{{docNo}}" value="{{modelId}}">
					</div>
				</div>
			</div>
			<div class="wp-re-area" id="js-car-prod-test-ed-dt-list-toggle-{{docNo}}" style="display:none;">
				<ul id="js-car-prod-test-ed-dt-list-{{docNo}}">
				</ul>
			</div>
		</script>
				
		<!-- 차수 리스트 - 스크립트-->
		<script id="js-template-car-prod-test-ed-dt-list" type="text/x-handlebars-template">		
			{{#rows}}
				<li>
					<div class="wp-rc-cont wp-h75 wp-rc-cont-color02">
						<div class="wp-rc-cont-top">
							<div class="wp-rp-right">
								<div class="wp-rp-r-title">
									<span class="wp-name-benner wp-product">{{inspSeqView}}</span>[{{docNo}}] {{dtTitle}}
								</div>
								<div class="wp-rp-r-desc">
									<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="부스 No."/>&nbsp;:&nbsp;</em>{{boothNm}}</span>
									<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="치환율"/>&nbsp;:&nbsp;</em>{{replaceRateView}}</span>
									<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="검사일자"/>&nbsp;:&nbsp;</em>{{inspDate}}</span>
									<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="검사자"/>&nbsp;:&nbsp;</em>{{inspEmpView}}</span>
									<span class="wp-rp-r-info" style="color:#FF0000"><em style="color:#FF0000"><spring:message code="TODO.KEY" text="검사항목"/>&nbsp;:&nbsp;</em>{{inspCat}}</span>
								</div>
							</div>
							<div class="wp-rp-bttn">
								<button type="button" id="js-car-prod-test-ed-dt-view-{{docNo}}-{{inspSeq}}" data-link="js-car-prod-test-ed-dt-view-popup" class="wp-btn-pop wp-btn white small bgray detail-view"><span><spring:message code="TODO.KEY" text="상세"/></span></button>
							{{#ifEquals completYn 'N'}}
								<button type="button" id="js-car-prod-test-ed-dt-mod-{{docNo}}-{{inspSeq}}" data-link="js-car-prod-test-ed-dt-reg-popup" class="wp-btn-pop wp-btn small white bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
								<button type="button" id="js-car-prod-test-ed-dt-del-{{docNo}}-{{inspSeq}}" class="wp-btn small white bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
							{{/ifEquals}}
								<input type="hidden" id="js-car-prod-test-ed-dt-doc-no-{{docNo}}-{{inspSeq}}" value="{{docNo}}">
								<input type="hidden" id="js-car-prod-test-ed-dt-insp-seq-{{docNo}}-{{inspSeq}}" value="{{inspSeq}}">
							</div>
						</div>
					</div>
				</li>
			{{/rows}}
		</script>

		<script type="text/javascript">		
			var carProdTestEdMastListTemplate;
			var carProdTestEdDtListTemplate;
			
			$(document).ready(function() {
				// Handlebar 초기화
				initCarProdTestEdMastListHandlebarsTemplate();
				
				// 마스터 등록 버튼 클릭
				$("#js-car-prod-test-ed-mast-reg-popup-button").off().on('click', function(){
					initCarProdTestEdMastRegPopup('', '');
				});
				
			});
			

			// ------------------------------------------------
			// Handlebar 초기화
			// ------------------------------------------------
			var initCarProdTestEdMastListHandlebarsTemplate = function() {
				// 마스터 정보 조회 리스트		
				var source = $('#js-template-car-prod-test-ed-mast-list').html();
				carProdTestEdMastListTemplate = Handlebars.compile(source);
				

				// 차수 리스트
				var source = $('#js-template-car-prod-test-ed-dt-list').html();
				carProdTestEdDtListTemplate = Handlebars.compile(source);
				
			};
			
			//-------------------------------------------------
			// 마스터 정보 조회 - 자동차 공장 콤보 조회 완료 후
			//-------------------------------------------------
			var retrieveProdTestEdInfoAll = function(){
				// 마스터 리스트 조회
				retrieveCarProdTestEdMastList.request();
			};
			
			
			
			//-------------------------------------------------
			// 마스터 리스트 조회
			//-------------------------------------------------
			var gvOpenMast = [];
			var retrieveCarProdTestEdMastList = {
				success: function(response, status, jqueryXHR) {
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							if(response.rs.edList){
								var data = {
									rows : response.rs.edList
								};
								
								if(data.rows.length > 0){
									for(var i=0 ; i<data.rows.length ; i++){
										var html = carProdTestEdMastListTemplate(data.rows[i]);
										$("#js-car-prod-test-ed-mast-list").append(html);
										
										if(data.rows[i].dtList.length > 0){
											var dataDtList = {
												rows : 	data.rows[i].dtList
											};
											var htmlDtList = carProdTestEdDtListTemplate(dataDtList);
											$("#js-car-prod-test-ed-dt-list-"+data.rows[i].docNo).empty().append(htmlDtList);
										}
										
										
										
										//차수 접기
						 				$("#js-car-prod-test-ed-mast-list-title-"+data.rows[i].docNo).click(function(){
											
											var docNo = this.id.substring("js-car-prod-test-ed-mast-list-title".length + 1);
											var target = 'js-car-prod-test-ed-mast-list-title-' + docNo;
										    $("#js-car-prod-test-ed-dt-list-toggle-"+docNo).toggle();
										    
										     if($("#"+target).hasClass('open')){
												$("#"+target).removeClass('open');
											} else {
												$("#"+target).addClass('open');
											} 	
										    
										}); 
										
										
										
											
										
										// 차수 자세히 보기 버튼 클릭
										for(var j=0 ; j<data.rows[i].dtList.length ; j++){
											$("#js-car-prod-test-ed-dt-view-"+data.rows[i].dtList[j].docNo+"-"+data.rows[i].dtList[j].inspSeq).off().on('click', function(e){
												var docNoPlusInspSeq = this.id.substring("js-car-prod-test-ed-dt-view".length + 1);
												var docNo = $("#js-car-prod-test-ed-dt-doc-no-"+docNoPlusInspSeq).val();
												var inspSeq = $("#js-car-prod-test-ed-dt-insp-seq-"+docNoPlusInspSeq).val();
												
												initCarProdTestEdDtViewPopup(docNo, inspSeq);
											});											
										}
										
										// 차수 수정 버튼 클릭
										for(var j=0 ; j<data.rows[i].dtList.length ; j++){
											$("#js-car-prod-test-ed-dt-mod-"+data.rows[i].dtList[j].docNo+"-"+data.rows[i].dtList[j].inspSeq).off().on('click', function(e){
												var docNoPlusInspSeq = this.id.substring("js-car-prod-test-ed-dt-mod".length + 1);
												var docNo = $("#js-car-prod-test-ed-dt-doc-no-"+docNoPlusInspSeq).val();
												var inspSeq = $("#js-car-prod-test-ed-dt-insp-seq-"+docNoPlusInspSeq).val();
												
												var boothId = $("#js-car-prod-test-ed-mast-booth-id-"+docNo).val();
												var boothNm = $("#js-car-prod-test-ed-mast-booth-nm-"+docNo).val();
												var modelId = $("#js-car-prod-test-ed-mast-model-id-"+docNo).val();
												
												initCarProdTestEdDtRegPopup(docNo, inspSeq, boothId, boothNm, modelId);
											});											
										}
									
										// 마스터 수정 버튼 클릭
										$("#js-car-prod-test-ed-mast-mod-"+data.rows[i].docNo).off().on('click', function(e){
											var docNo = this.id.substring("js-car-prod-test-ed-mast-mod".length + 1);

											initCarProdTestEdMastRegPopup(docNo);
										});
										
									 	// 차수 등록 버튼 클릭
										$("#js-car-prod-test-ed-dt-reg-"+data.rows[i].docNo).off().on('click', function(e){
											var docNo = this.id.substring("js-car-prod-test-ed-dt-reg".length + 1);
											var incDelDtInspSeq = $("#js-car-prod-test-ed-mast-inc-del-dt-insp-seq-"+docNo).val();
											var boothId = $("#js-car-prod-test-ed-mast-booth-id-"+docNo).val();
											var boothNm = $("#js-car-prod-test-ed-mast-booth-nm-"+docNo).val();
											var modelId = $("#js-car-prod-test-ed-mast-model-id-"+docNo).val();
											incDelDtInspSeq++;
											//console.log(docNo);
											//console.log(inspSeq);
											//console.log(boothNm);
											initCarProdTestEdDtRegPopup(docNo, incDelDtInspSeq, boothId, boothNm, modelId);
										});	
										 
										// 마스터 삭제 버튼 클릭
										$("#js-car-prod-test-ed-mast-del-"+data.rows[i].docNo).off().on('click', function(e){
											var docNo = this.id.substring("js-car-prod-test-ed-mast-del".length + 1);
											var carPlant = $("#js-car-prod-test-ed-mast-car-plant-"+docNo).val();
											
											app.message.confirm({
												  title             : '<spring:message code="TODO.KEY" text="삭제"/>'
												, message           : '<spring:message code="TODO.KEY" text="선택한 Master를 삭제하시겠습니까?"/>'
												, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
												, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
												, callback          : {
													confirm: function() {
														deleteCarProdTestEdMast.request(docNo, carPlant);
													}
												}
											});
										});
															
										
										// 차수 삭제 버튼 클릭
										if(data.rows[i].dtList.length > 0){//차수 있을때만
											for(var j=0 ; j<data.rows[i].dtList.length ; j++){
												$("#js-car-prod-test-ed-dt-del-"+data.rows[i].dtList[j].docNo+"-"+data.rows[i].dtList[j].inspSeq).off().on('click', function(e){
													var docNoPlusInspSeq = this.id.substring("js-car-prod-test-ed-dt-del".length + 1);
													var docNo = $("#js-car-prod-test-ed-dt-doc-no-"+docNoPlusInspSeq).val();
													var inspSeq = $("#js-car-prod-test-ed-dt-insp-seq-"+docNoPlusInspSeq).val();
													
													//console.log(docNo);
													//console.log(inspSeq);
														
													app.message.confirm({
														  title             : '<spring:message code="TODO.KEY" text="삭제"/>'
														, message           : '<spring:message code="TODO.KEY" text="선택한 차수를 삭제하시겠습니까?"/>'
														, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
														, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
														, callback          : {
															confirm: function() {
																deleteCarProdTestEdDt.request(docNo, inspSeq);
																
															}
														}
													});
												});											
											}
										}
										
									
										
										// 미완료 버튼 클릭 이벤트
										$("button[name=js-car-prod-test-ed-mast-list-completn]").off().on('click', function(){
											$("button[name=js-car-prod-test-ed-mast-list-complety]").removeClass("on");
											$(this).addClass("on");
											
											var completYn = $(this).attr("completYn");

											retrieveCarProdTestEdMastList.request(completYn);
										});
										
										// 완료 버튼 클릭 이벤트
										$("button[name=js-car-prod-test-ed-mast-list-complety]").off().on('click', function(){
											$("button[name=js-car-prod-test-ed-mast-list-completn]").removeClass("on");
											$(this).addClass("on");
											
											var completYn = $(this).attr("completYn");

											retrieveCarProdTestEdMastList.request(completYn);
										});
										
										// 검색조건 날짜 세팅 - 현재 년월
										var date = app.utils.formatDate(new Date(), "YYYYMMDD");
										$("#js-car-monthly-prod-info-retrieve-date").val(fn_getBeforeDate(date, 0, 1));
										
									}
									if(data.rows.length > 0){
										for(var i=0 ; i<data.rows.length ; i++){
											for(var k=0 ; k<gvOpenMast.length; k++){
												if(gvOpenMast[k].docNo == data.rows[i].docNo){
													$("#js-car-prod-test-ed-mast-list-title-"+data.rows[i].docNo).click();
												}
											} 
										}
									}
								}
							}
							
							
						} else 	{
							// 서비스 요청 처리 오류 발생 메시지
							//console.log(message);
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
					//console.log(errorText);
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
				request: function(completYn) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					// 리스트 초기화 
					
					var carPlant = $("#js-car-header-car-plant").val();
					
					var date = app.utils.formatDate(new Date(), "YYYYMMDD");
					var inspDate = fn_getBeforeDate(date, 0, 1);
					
					$("div[id*=js-car-prod-test-ed-mast-list-title-]").each(function(){
						
						var docNo = this.id.substring("js-car-prod-test-ed-mast-list-title".length + 1);
						
						if($(this).hasClass('open')){
							gvOpenMast.push({
								docNo : docNo
							})
						}
					});
					
					if($("button[name=js-car-prod-test-ed-mast-list-complety]").hasClass('on')){
						completYn='Y';
					} else {
						completYn='N';
					}
					
					
					$("#js-car-prod-test-ed-mast-list").empty();
					
					var params = {
						  service : 'car.prodTestEd'
						, method  : 'retrieveProdTestEdMastList'
						, carPlant : carPlant
						, completYn : completYn
						, inspDate : inspDate
							//$("#js-car-prod-test-ed-mast-list-retrieve-date").val().replace(/-/gi, "")
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};

			//-------------------------------------------------
			// 차수 삭제
			//-------------------------------------------------
			var deleteCarProdTestEdDt = {
				success: function(response, status, jqueryXHR) {
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							//console.log(response);
							//저장 완료 메세지
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="삭제 완료 되었습니다."/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
								, callback          : {
									confirm: function() {
											retrieveCarProdTestEdMastList.request();
									}
								}
							});							
						} else 	{
							// 서비스 요청 처리 오류 발생 메시지
							//console.log(message);
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
					//console.log(errorText);
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
				request: function(docNo, inspSeq) {
					// ------------------------------------
					// ajax request
					// ------------------------------------ 
					//console.log(docNo);
					//console.log(inspSeq);
					var carPlant = $("#js-car-header-car-plant").val();
					var params = {
						  service : 'car.prodTestEd'
						, method  : 'delProdTestEdDt'
						, carPlant: carPlant
						, docNo   : docNo
						, inspSeq : inspSeq
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//-------------------------------------------------
			// 마스트 삭제
			//-------------------------------------------------
			var deleteCarProdTestEdMast = {
				success: function(response, status, jqueryXHR) {
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							//삭제 완료 메세지
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="삭제 완료 되었습니다."/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
								, callback          : {
									confirm: function() {
											retrieveCarProdTestEdMastList.request();
									}
								}
							});							
						} else 	{
							// 서비스 요청 처리 오류 발생 메시지
							//console.log(message);
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
					//console.log(errorText);
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
				request: function(docNo, carPlant) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service : 'car.prodTestEd'
						, method  : 'delProdTestEdMast'
						, docNo   : docNo
						, carPlant: carPlant
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
		<div class="wp-dim-layer">
			<div class="wp-dimBg"></div>
			<div id="js-car-prod-test-ed-mast-reg-popup" class="wp-pop-layer wp-pop-w700 wp-box-sizing wp-car-popup">
				<div class="wp-pop-title">
					<h1><spring:message code="TODO.KEY" text="제품 테스트(전착) Master 관리"/></h1>
					<button type="button" id="js-car-prod-test-ed-mast-reg-popup-close-button" class="wp-btn-close-layer wp-spr-btn"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
				</div>
				<div class="wp-pop-conts">
				<!-- scroll Area -->
				<div class="wp-pop-cont-scrollable">
		 		<div class="wp-table-st1 wp-issue-apply">
					<table>
					<caption><spring:message code="TODO.KEY" text="제품 테스트(전착) Master 관리"/></caption>
					<colgroup>
						<col style="width:20%">
						<col style="width:auto">
					</colgroup>
					<tbody>
					<tr>
						<th scope="row"><spring:message code="TODO.KEY" text="제목"/></th>
						<td><input type="text" id="js-car-prod-test-ed-mast-reg-popup-title" name="" title="제목 입력" /></td>
					</tr>
					<tr>
						<th scope="row"><spring:message code="TODO.KEY" text="공장"/></th>
						<td class="wp-al"><input type="text" id="js-car-prod-test-ed-mast-reg-popup-car-plant" name="" class="wp-wd103" title="공장 입력" disabled="disabled"/></td>
					</tr>
					<tr>
						<th scope="row"><spring:message code="TODO.KEY" text="차종"/></th>
						<td class="wp-al">
							<div class="wp-ui-select wp-wd250">
								<select id="js-car-prod-test-ed-mast-reg-popup-model-id"  title="차종 설정">
									<option><spring:message code="TODO.KEY" text="선택"/></option>
									<option><spring:message code="TODO.KEY" text="선택1"/></option>
									<option><spring:message code="TODO.KEY" text="선택2"/></option>
									<option><spring:message code="TODO.KEY" text="선택3"/></option>
								</select>
							</div>
						</td>
					</tr>	
					<tr>
						<th scope="row"><spring:message code="TODO.KEY" text="부스 No."/></th>
						<td class="wp-al">
							<div class="wp-ui-select wp-wd103">
								<select id="js-car-prod-test-ed-mast-reg-popup-booth-id"  title="부스 설정">
									<option><spring:message code="TODO.KEY" text="선택"/></option>
									<option><spring:message code="TODO.KEY" text="선택1"/></option>
									<option><spring:message code="TODO.KEY" text="선택2"/></option>
									<option><spring:message code="TODO.KEY" text="선택3"/></option>
								</select>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row"><spring:message code="TODO.KEY" text="완료 여부"/></th>
						<td class="wp-al">
							<div class="wp-ui-select wp-wd103">
								<select id="js-car-prod-test-ed-mast-reg-popup-complet-yn" title="완료 여부 설정">
									<option value="N"><spring:message code="TODO.KEY" text="진행"/></option>
									<option value="Y"><spring:message code="TODO.KEY" text="완료"/></option>
								</select>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row"><spring:message code="TODO.KEY" text="비고"/></th>
						<td class="wp-al">
							<textarea id="js-car-prod-test-ed-mast-reg-popup-remark"  name="" cols="" rows="5" class="wp-wd100p"></textarea>
						</td>
					</tr>
					</tbody>
					</table>
				</div>
				<!-- // scroll Area -->
				</div>
					<div class="wp-btn-area">
						<button type="button" id="js-car-prod-test-ed-mast-reg-popup-save-button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="저장"/></button>
						<input type="hidden" id="js-car-prod-test-ed-mast-reg-popup-doc-no" />
						<div class="wp-add-right-btn">
							<button type="button" id="js-car-prod-test-ed-sfa-active-button"  class="wp-btn skyblue cr3">SFA 활동보고</button>
							<button type="button" id="js-ship-compet-mng-regist-sfa-related-button" data-depth="2" data-link="js-ship-std-info-popup" onclick="initCarStdInfoPopup('carTestEd');" class="wp-btn skyblue cr3 wp-btn-pop">SFA 연관글</button>
						</div>
					</div>
		        </div>
		    </div>
		</div>
		
	<script type="text/javascript">
		
		var initCarProdTestEdMastRegPopup = function(docNo){
			
			var carPlant = $("#js-car-header-car-plant").val();
			
			$("#js-car-prod-test-ed-mast-reg-popup-doc-no").val('');
			$("#js-car-prod-test-ed-mast-reg-popup-car-plant").val(carPlant);
			$("#js-car-prod-test-ed-mast-reg-popup-title").val('');
			$("#js-car-prod-test-ed-mast-reg-popup-complet-yn").val('N');
			$("#js-car-prod-test-ed-mast-reg-popup-booth-id").val('');
			$("#js-car-prod-test-ed-mast-reg-popup-model-id").val('');
			$("#js-car-prod-test-ed-mast-reg-popup-remark").val('');
			
			$("#js-car-prod-test-ed-mast-reg-popup-title").attr('maxlength', '30')
			$("#js-car-prod-test-ed-mast-reg-popup-remark").attr('maxlength', '180')
			
			retrieveCarModelId.request(carPlant);
			retrieveCarBoothId.request(carPlant);
			
			//문서번호 있으면 수정으로 봄
			$("#js-car-prod-test-ed-mast-reg-popup-doc-no").val(docNo);
			
			if(docNo){
				$('#js-car-prod-test-ed-mast-reg-popup-complet-yn').attr("disabled", false);
			} else {
				$('#js-car-prod-test-ed-mast-reg-popup-complet-yn').attr("disabled", true);
			}
			
			// 저장 버튼 클릭
			$("#js-car-prod-test-ed-mast-reg-popup-save-button").off().on('click', function(e){
				saveCarProdTestEdMast.request();
			});
			
			//SFA 활동보고 버튼 - 거래선 정보
			$("#js-car-prod-test-ed-sfa-active-button").off().on("click", function() {
				carProdTestEdActReport();
			});
			
			var carProdTestEdActReport = function(){				
				
				var type = 'BCA'
				
				var loginId = '${sessionScope.LoginUserInfo.userID}';
				var docNo = $('#js-car-prod-test-ed-mast-reg-popup-doc-no').val();
				console.log(docNo);				
				window.open( 'http://sfa.kccworld.info/mobile/kaissfa/views/login/S0208SFACreateSession_E.jsp?sloId='+loginId +"&redirectUrl=http%3A%2F%2Fsfa.kccworld.info%2Fmobile%2Fkaissfa%2Fviews%2FactReport%2FS0208SFAactReportCombine_E.jsp%3F%26dispatch%3DCAR_TEST_ED%26seqCarProdType%3D" +type +"%26docNo%3D"+docNo+"%26sysType%3DTSDCARINFO");
				type = '';
			}
			
			retrieveCarProdTestEdMast.regist.request(docNo);
		};
		
		//마스터 저장
		var saveCarProdTestEdMast= {
			success : function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {	
						app.message.alert({
						  		  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="저장 되었습니다."/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
								, callback          : {
									confirm: function() {
										retrieveCarProdTestEdMastList.request();
										$("#js-car-prod-test-ed-mast-reg-popup-close-button").click();
									}
								}
							});	
						
						
					} else {
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
			error : function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
			},
			complete : function(jqueryXHR, status) {
				// ------------------------------------
				// http response complete
				// ------------------------------------
				app.mask.pageUnlock();
			},
			request : function(carPlant) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var carPlant 	= $('#js-car-header-car-plant').val();
				var docNo 		= $('#js-car-prod-test-ed-mast-reg-popup-doc-no').val();
				var boothId     = $('#js-car-prod-test-ed-mast-reg-popup-booth-id').val();
				var modelId     = $('#js-car-prod-test-ed-mast-reg-popup-model-id').val();
				var title       = $('#js-car-prod-test-ed-mast-reg-popup-title').val();
				var completYn   = $('#js-car-prod-test-ed-mast-reg-popup-complet-yn').val();
				var remark   	= $('#js-car-prod-test-ed-mast-reg-popup-remark').val();

				if(app.utils.isEmpty(title)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="제목은 필수입력 항목입니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$('#js-car-prod-test-ed-mast-reg-popup-title').focus();
							}
						}
					});
					return;
				}
				if(app.utils.isEmpty(carPlant)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="공장명은 필수입력 항목입니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$('#js-car-prod-test-ed-mast-reg-popup-car-plant').focus();
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
								$('#js-car-prod-test-ed-mast-reg-popup-model-id').focus();
							}
						}
					});
					return;
				}
				if(app.utils.isEmpty(boothId)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="부스는 필수입력 항목입니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$('#js-car-prod-test-ed-mast-reg-popup-booth-id').focus();
							}
						}
					});
					return;
				}
				if(app.utils.isEmpty(completYn)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="완료여부는 필수입력 항목입니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$('#js-car-prod-test-ed-mast-reg-popup-complet-yn').focus();
							}
						}
					});
					return;
				}
				var carPlant = $("#js-car-header-car-plant").val();
				
				var params = {
						service	: 'car.prodTestEd'
						,method : 'saveProdTestEdMast'
						,carPlant	 : carPlant
						,docNo		 : docNo
						,modelId	 : modelId
						,boothId	 : boothId
						,title	     : title
						,completYn	 : completYn
						,remark 	 : remark
					}

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		//부스 콤보
		var retrieveCarBoothId= {
			success : function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {							
						var data = response.rs;
						$("#js-car-prod-test-ed-mast-reg-popup-booth-id").find('option').remove();
						$("#js-car-prod-test-ed-mast-reg-popup-booth-id").append("<option value=''>선택</option>");
						for(var i=0; i<data.length; i++)
						{
							$("#js-car-prod-test-ed-mast-reg-popup-booth-id").append("<option value='"+data[i].boothCode+"'>"+data[i].boothNm+"</option>");
						}
						
					} else {
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
			error : function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
			},
			complete : function(jqueryXHR, status) {
				// ------------------------------------
				// http response complete
				// ------------------------------------
				app.mask.pageUnlock();
			},
			request : function(carPlant) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var carPlant = $("#js-car-header-car-plant").val();
				
				var params = {
						  service : 'car.prodTestEd'
						, method  : 'retrieveBoothList'
						, carPlant : carPlant
				};

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		
		
		//차종 콤보
		var retrieveCarModelId= {
			success : function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {							
						var data = response.rs;
						$("#js-car-prod-test-ed-mast-reg-popup-model-id").find('option').remove();
						$("#js-car-prod-test-ed-mast-reg-popup-model-id").append("<option value=''>선택</option>");
						for(var i=0; i<data.length; i++)
						{
							$("#js-car-prod-test-ed-mast-reg-popup-model-id").append("<option value='"+data[i].modelId+"'>"+data[i].modelNm+"</option>");
						}
						
					} else {
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
			error : function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
			},
			complete : function(jqueryXHR, status) {
				// ------------------------------------
				// http response complete
				// ------------------------------------
				app.mask.pageUnlock();
			},
			request : function(carPlant) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var carPlant = $("#js-car-header-car-plant").val();
				var params = {
						  service : 'car.prodTestEd'
						, method  : 'retrieveModelList'
						, carPlant : carPlant
				};

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		var retrieveCarProdTestEdMast = {
				regist : {
					success : function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								if(response.rs != null){
									var detail = response.rs;
									
									if(detail.length>0){
										$('#js-car-prod-test-ed-mast-reg-popup-doc-no').val(detail[0].docNo);
										$('#js-car-prod-test-ed-mast-reg-popup-title').val(detail[0].title);
										$('#js-car-prod-test-ed-mast-reg-popup-car-plant').val(detail[0].carPlant);
										$('#js-car-prod-test-ed-mast-reg-popup-model-id').val(detail[0].modelId);
										$('#js-car-prod-test-ed-mast-reg-popup-booth-id').val(detail[0].boothId);
										$('#js-car-prod-test-ed-mast-reg-popup-complet-yn').val(detail[0].completYn);
										$('#js-car-prod-test-ed-mast-reg-popup-remark').val(detail[0].remark);
									}		
									
								}
								
							} else {
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
					error : function(jqueryXHR, status, errorText) {
						// ------------------------------------
						// http response error
						// ------------------------------------
						app.message.alert({
							  title             : '<spring:message code="TODO.KEY" text="알림"/>'
							, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
							, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						});
					},
					complete : function(jqueryXHR, status) {
						// ------------------------------------
						// http response complete
						// ------------------------------------
						app.mask.pageUnlock();
					},
					request : function(docNo) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						
						var params = {
								service : 'car.prodTestEd',
								method : 'retrieveProdTestEdMast',
								carPlant : $('#js-car-header-car-plant').val(),
								docNo : docNo
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				}
			};
		</script>
		
	
	<!-- SFA 활동보고 -->
	<c:import url="/WEB-INF/static/car/popup/stdInfo.popup.car.jsp" charEncoding="utf-8"></c:import>
		
		
	</tiles:putAttribute>
	<!-- 팝업 콘텐츠 E -->
</tiles:insertDefinition>
	