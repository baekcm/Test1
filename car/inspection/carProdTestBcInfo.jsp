<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.06.08] car 도장공정 > 제품테스트 > 중상도 제품 테스트" %>
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
					<li><a href="/car/inspection/carProdTestEdInfo.do"><spring:message code="TODO.KEY" text="전착 제품 테스트"/></a></li>
					<li><a href="/car/inspection/carProdTestBcInfo.do" class="active"><spring:message code="TODO.KEY" text="중상도 제품 테스트"/></a></li>
				</ul>
				<!-- //tab -->
				<!-- title area -->
				<div class="wp-title-section wp-clearfix">
					<div class="wp-ui-btn-switch wp-clearfix noborder-switch wp-mt-10 wp-fl">
						<ul>
							<li><button type="button" name="js-car-prod-test-bc-info-completyn" class="on" value="N"><spring:message code="TODO.KEY" text="진행"/></button></li>
							<li><button type="button" name="js-car-prod-test-bc-info-completyn" class="" value="Y"><spring:message code="TODO.KEY" text="완료"/></button></li>
						</ul>
					</div>
					<div class="wp-btn-area wp-fr">
						<%-- <button type="button" class="wp-layer-open wp-btn small blue1 cr3 search-white"><spring:message code="TODO.KEY" text="검색"/></button> --%>
						<button type="button" id="js-car-prod-test-bc-info-mast-reg-popup-button" data-link="js-car-prod-test-bc-info-mast-reg-popup" class="wp-btn-pop wp-btn small skyblue cr3 upload-white"><spring:message code="TODO.KEY" text="신규 제품 테스트 마스터 등록" /></button>
						<%-- <button type="button" class="wp-btn small skyblue cr3 upload-white"><spring:message code="TODO.KEY" text="차수 등록"/></button> --%>
						<%-- <button type="button" class="wp-btn small darkgray cr3"><spring:message code="TODO.KEY" text="엑셀 다운로드"/></button> --%>
					</div>
				</div>
				<!-- //title area -->
				<!-- rootcause-list -->
				<div class="wp-rootcause-list wp-car-list2">
					<div class="wp-rc-box">
						 <div id="js-car-prod-test-bc-info-master-list" class="wp-rc-box-in">
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
		
		<!-- 중상도 제품 테스트 조회 리스트 - 스크립트-->
		<script id="js-template-car-prod-test-bc-info-master-list" type="text/x-handlebars-template">
			<div id="js-car-prod-test-bc-info-master-{{docNo}}" class="wp-rc-cont wp-h100 wp-rc-cont-color01">
				<div class="wp-rc-cont-top">
					<div id="js-car-prod-test-bc-info-master-open-{{docNo}}" class="wp-rp-right">
						<div class="wp-rp-r-title">
							<span class="wp-name-benner wp-factory">{{carPlant}}</span>
							<!-- <span class="wp-name-benner wp-product">{{modelIdView}}</span> -->
							{{titleView}}
						</div>
						<div class="wp-rp-r-desc">
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="공정"/>&nbsp;:&nbsp;</em>{{procIdNm}}</span>
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="부스 No."/>&nbsp;:&nbsp;</em>{{boothNm}}</span>
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="검사자"/>&nbsp;:&nbsp;</em>{{inspEmp}}</span>
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="제품 코드"/>&nbsp;:&nbsp;</em>{{items}}</span>
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="제품명"/>&nbsp;:&nbsp;</em>{{itemsNm}}</span>
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="Lot No"/>&nbsp;:&nbsp;</em>{{lotNo}}</span>
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="제조일자"/>&nbsp;:&nbsp;</em>{{mfgDate}}</span>
						</div>
						<br />
					</div>
					<div class="wp-rp-bttn wp-rp-bttn02 wp-ar">
						{{#ifEquals inspSeq null}}
						<span class="wp-btn small skyblue cr3 wp-mr10">-</span>
						{{else}}
						<span class="wp-btn small skyblue cr3 wp-mr10">{{inspSeqView}}</span>
						{{/ifEquals}}
						<button type="button" id="js-car-prod-test-bc-info-master-modify-button-{{docNo}}" data-link="js-car-prod-test-bc-info-mast-reg-popup" class="wp-btn-pop wp-btn small white bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
						{{#ifEquals completYn 'N'}}
						<button type="button" id="js-car-prod-test-bc-info-master-delete-button-{{docNo}}" class="wp-btn small white bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button><br />
						<button type="button" id="js-car-prod-test-bc-info-master-regist-order-button-{{docNo}}" data-link="js-car-prod-test-bc-detail-reg-popup" class="wp-btn-pop wp-btn white bgray wp-mt10"><spring:message code="TODO.KEY" text="차수등록"/></button>
						{{/ifEquals}}
						<input type="hidden" id="js-car-prod-test-bc-info-master-car-plant-{{docNo}}" value="{{carPlant}}" > 
						<input type="hidden" id="js-car-prod-test-bc-info-master-docNo-{{docNo}}" value="{{docNo}}" > 
						<input type="hidden" id="js-car-prod-test-bc-info-master-inspSeq-{{docNo}}" value="{{inspSeq}}" > 
						<input type="hidden" id="js-car-prod-test-bc-info-master-boothNm-{{docNo}}" value="{{boothNm}}" > 
					</div>
				</div>
			</div>
			<!-- //1depth -->
			<div id="js-car-prod-test-bc-info-detail-list-{{docNo}}">
			</div>
		</div>
		</script>
		
		<!-- 차수 리스트 - 스크립트-->
		<script id="js-template-car-prod-test-bc-info-order-list" type="text/x-handlebars-template">		
			{{#rows}}
			<!-- 2depth -->
			<div class="wp-rc-cont wp-h75 wp-rc-cont-color02">
				<div class="wp-rc-cont-top">
					<div class="wp-rp-right">
						<div class="wp-rp-r-title"><span class="wp-name-benner wp-product">{{inspSeqView}}</span>[{{docNo}}] {{title}}</div>
						<div class="wp-rp-r-desc">
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="Booth"/>&nbsp;:&nbsp;</em>{{boothNm}}</span>
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="검사일자"/>&nbsp;:&nbsp;</em>{{inspDate}}</span>
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="검사자"/>&nbsp;:&nbsp;</em>{{inspEmpNm}}</span>
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="검사항목"/>&nbsp;:&nbsp;</em>{{inspItem}}</span>
						</div>
					</div>
					<div class="wp-rp-bttn">
						<button type="button" id="js-car-prod-test-bc-info-order-view-button-{{docNo}}-{{inspSeq}}" data-link="js-car-prod-test-bc-info-popup" class="wp-btn-pop wp-btn white small bgray detail-view"><span><spring:message code="TODO.KEY" text="상세"/></span></button>
						{{#ifEquals completYn 'N'}}
						<button type="button" id="js-car-prod-test-bc-info-order-regist-button-{{docNo}}-{{inspSeq}}" data-link="js-car-prod-test-bc-detail-reg-popup" class="wp-btn-pop wp-btn small white bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
						<button type="button" id="js-car-prod-test-bc-info-order-delete-button-{{docNo}}-{{inspSeq}}" class="wp-btn small white bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
						{{/ifEquals}}
						<input type="hidden" id="js-car-prod-test-bc-info-order-inspSeq-{{docNo}}-{{inspSeq}}" value="{{inspSeq}}">
						<input type="hidden" id="js-car-prod-test-bc-info-order-docNo-{{docNo}}-{{inspSeq}}" value="{{docNo}}">
						<input type="hidden" id="js-car-prod-test-bc-info-order-car-plant-{{docNo}}-{{inspSeq}}" value="{{carPlant}}">
					</div>
				</div>
			</div>
			<!-- //2depth -->
			{{/rows}}
		</script>

		<script type="text/javascript">		
			var carProdTestBcInfoMasterListTemplate;
			var carProdTestBcInfoOrderListTemplate;
			
			$(document).ready(function() {
				// Handlebar 초기화
				initcarProdTestBcInfoListHandlebarsTemplate();
				
				// 중상도 신규 제품 테스트 master 등록 버튼 클릭
				$("#js-car-prod-test-bc-info-mast-reg-popup-button").off().on('click', function(){
					initCarProdTestBcInfoMastRegPopup('');
				});
				
				// 진행, 완료 버튼 클릭
				$("button[name=js-car-prod-test-bc-info-completyn]").off().on('click', function(){
					// 중상도 제품 테스트 조회 리스트 조회
					setTimeout(function(){
						retrieveProdTestBcMastInfo.request();
					}, 300);
				});
			});
			

			// ------------------------------------------------
			// Handlebar 초기화
			// ------------------------------------------------
			var initcarProdTestBcInfoListHandlebarsTemplate = function() {
				// 중상도 제품 테스트 조회 리스트		
				var source = $('#js-template-car-prod-test-bc-info-master-list').html();
				carProdTestBcInfoMasterListTemplate = Handlebars.compile(source);
				
				// 차수 리스트
				var source = $('#js-template-car-prod-test-bc-info-order-list').html();
				carProdTestBcInfoOrderListTemplate = Handlebars.compile(source);
			};
			
			//-------------------------------------------------
			// 중상도 제품 테스트 조회 - 자동차 공장 콤보 조회 완료 후
			//-------------------------------------------------
			var retrieveCarProdTestBcInfoAll = function(){
				// 중상도 제품 테스트 조회 리스트 조회
				retrieveProdTestBcMastInfo.request();
			};
			
			//-------------------------------------------------
			// 중상도 제품 테스트 조회 tab 리스트 조회
			//-------------------------------------------------
			var retrieveProdTestBcMastInfo = {
				success: function(response, status, jqueryXHR) {
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							if(response.rs){
								var data = {
									rows : response.rs
								};
								var completYn = '';
								$("button[name=js-car-prod-test-bc-info-completyn]").each(function(){
									if($(this).hasClass("on")){ completYn = $(this).val();}
								});
								
								if(data.rows.length > 0){
									for(var i=0 ; i<data.rows.length ; i++){
										data.rows[i].completYn = completYn;
										var html = carProdTestBcInfoMasterListTemplate(data.rows[i]);
										$("#js-car-prod-test-bc-info-master-list").append(html);
																														
										// event setting
										// 리스트 제목 부분 클릭시 접기/펴기
										$('#js-car-prod-test-bc-info-master-open-'+data.rows[i].docNo).off().on('click', function(e){
											
											var code = this.id.substring("js-car-prod-test-bc-info-master-open".length + 1);
											
											var target = 'js-car-prod-test-bc-info-master-' + code;
											
											if($("#"+target).hasClass('open')){
												$("#"+target).removeClass('open');
												$("#"+target).css('height', '110px');
											} else {
												$("#"+target).addClass('open');
												$("#"+target).css('height', 'auto');
											}
									    });
										// 수정 버튼 클릭
										$("#js-car-prod-test-bc-info-master-modify-button-"+data.rows[i].docNo).off().on('click', function(e){
											var docNo = this.id.substring("js-car-prod-test-bc-info-master-modify-button".length + 1);
											
											initCarProdTestBcInfoMastRegPopup(docNo);
										});
										// 차수등록 버튼 클릭
										$("#js-car-prod-test-bc-info-master-regist-order-button-"+data.rows[i].docNo).off().on('click', function(e){
											var docNo = this.id.substring("js-car-prod-test-bc-info-master-regist-order-button".length + 1);
											var carPlant = $("#js-car-prod-test-bc-info-master-car-plant-"+docNo).val();
											var inspSeq = $("#js-car-prod-test-bc-info-master-inspSeq-"+docNo).val();
											if(!inspSeq){inspSeq = 0};
											var boothNm = $("#js-car-prod-test-bc-info-master-boothNm-"+docNo).val();
											initCarProdTestBcDetailRegPopup(carPlant, docNo, inspSeq, boothNm);
										});
										// 삭제 버튼 클릭
										$("#js-car-prod-test-bc-info-master-delete-button-"+data.rows[i].docNo).off().on('click', function(e){
											var docNo = this.id.substring("js-car-prod-test-bc-info-master-delete-button".length + 1);
											var carPlant = $("#js-car-prod-test-bc-info-master-car-plant-"+docNo).val();
											app.message.confirm({
												  title             : '<spring:message code="TODO.KEY" text="삭제"/>'
												, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
												, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
												, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
												, callback          : {
													confirm: function() {
														deleteProdTestBcMast.request(carPlant, docNo, completYn);
													}
												}
											});
										});
										
										//차수별 결과
										retrieveProdTestBcDetailInfo.request(data.rows[i].docNo);
									}
								}
								
							}
							
							
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
					// 리스트 초기화 
					$("#js-car-prod-test-bc-info-master-list").empty();
					
					var carPlant = $("#js-car-header-car-plant").val();
					var completYn = '';
					$("button[name=js-car-prod-test-bc-info-completyn]").each(function(){
						if($(this).hasClass("on")){ completYn = $(this).val();}
					});
					var params = {
						  service  : 'car.prodTestBc'
						, method   : 'retrieveProdTestBcMastInfo'
						, carPlant : carPlant
						, completYn: completYn
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//-------------------------------------------------
			// 중상도 제품 테스트 조회 tab 차수별 리스트 조회
			//-------------------------------------------------
			var retrieveProdTestBcDetailInfo = {
				success: function(response, status, jqueryXHR) {
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							if(response.rs){
								var data = {
									rows : response.rs
								};

								var completYn = '';
								$("button[name=js-car-prod-test-bc-info-completyn]").each(function(){
									if($(this).hasClass("on")){ completYn = $(this).val();}
								});
								
								if(data.rows.length > 0){

									for(var i=0 ; i<data.rows.length ; i++){
										data.rows[i].completYn = completYn;
									}
									var html = carProdTestBcInfoOrderListTemplate(data);
									$("#js-car-prod-test-bc-info-detail-list-"+data.rows[0].docNo).append(html);
									
									// event setting
									for(var i=0 ; i<data.rows.length ; i++){
										// 보기 버튼 클릭
										$("#js-car-prod-test-bc-info-order-view-button-"+data.rows[i].docNo+"-"+data.rows[i].inspSeq).off().on('click', function(e){
											var docNoInspSeq = this.id.substring("js-car-prod-test-bc-info-order-view-button".length + 1);
											var carPlant = $("#js-car-prod-test-bc-info-order-car-plant-"+docNoInspSeq).val();
											var docNo = $("#js-car-prod-test-bc-info-order-docNo-"+ docNoInspSeq).val();
											var inspSeq = $("#js-car-prod-test-bc-info-order-inspSeq-"+ docNoInspSeq).val();
											initCarProdTestBcInfoPopup(carPlant, docNo, inspSeq);
										});
										// 수정 버튼 클릭
										$("#js-car-prod-test-bc-info-order-regist-button-"+data.rows[i].docNo+"-"+data.rows[i].inspSeq).off().on('click', function(e){
											var keyVal = this.id.substring("js-car-prod-test-bc-info-order-regist-button".length + 1);
											
											var carPlant = $("#js-car-prod-test-bc-info-order-car-plant-"+keyVal).val();
											var docNo = $("#js-car-prod-test-bc-info-order-docNo-"+ keyVal).val();
											var inspSeq = $("#js-car-prod-test-bc-info-order-inspSeq-"+keyVal).val();
											
											initCarProdTestBcDetailRegPopup(carPlant, docNo, inspSeq, '');
										});
										// 삭제 버튼 클릭
										$("#js-car-prod-test-bc-info-order-delete-button-"+data.rows[i].docNo+"-"+data.rows[i].inspSeq).off().on('click', function(e){
											var keyVal = this.id.substring("js-car-prod-test-bc-info-order-delete-button".length + 1);
											var carPlant = $("#js-car-prod-test-bc-info-order-car-plant-"+keyVal).val();
											var docNo = $("#js-car-prod-test-bc-info-order-docNo-"+keyVal).val();
											var inspSeq = $("#js-car-prod-test-bc-info-order-inspSeq-"+keyVal).val();
											
											app.message.confirm({
												  title             : '<spring:message code="TODO.KEY" text="삭제"/>'
												, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
												, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
												, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
												, callback          : {
													confirm: function() {
														deleteProdTestBcDt.request(carPlant, docNo, completYn, inspSeq);
													}
												}
											});
										});
										
									}
								}
							}
							
							
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
					var carPlant = $("#js-car-header-car-plant").val();
					var params = {
						  service  : 'car.prodTestBc'
						, method   : 'retrieveProdTestBcDetailInfo'
						, carPlant : carPlant
						, docNo    : docNo
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
				
			//-------------------------------------------------
			// 리스트 삭제 (mast)
			//-------------------------------------------------
			var deleteProdTestBcMast = {
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
										// 중상도 제품 테스트 조회 리스트 조회
										retrieveProdTestBcMastInfo.request();
									}
								}
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
				request: function(carPlant, docNo, completYn) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service : 'car.prodTestBc'
						, method  : 'deleteProdTestBcMast'
						, carPlant: carPlant
						, docNo   : docNo
						, completYn : completYn
						
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
		<!-- 중상도 신규 제품 테스트 마스터 등록 [START] -->
		<div class="wp-dim-layer">
			<div class="wp-dimBg"></div>
			<div id="js-car-prod-test-bc-info-mast-reg-popup" class="wp-pop-layer wp-pop-w700 wp-box-sizing wp-car-popup">
				<div class="wp-pop-title">
					<h1><spring:message code="TODO.KEY" text="신규 제품 테스트(중상도) Master 관리"/></h1>
					<button type="button" id="js-car-prod-test-bc-info-mast-reg-popup-close-button" class="wp-btn-close-layer wp-spr-btn"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
				</div>
				<div class="wp-pop-conts">
					<!-- scroll Area -->
					<div class="wp-pop-cont-scrollable">
			 			<div class="wp-table-st1 wp-issue-apply">
						<table>
						<caption><spring:message code="TODO.KEY" text="신규 제품 테스트(중상도) Master 관리"/></caption>
						<colgroup>
							<col style="width:20%">
							<col style="width:30%">
							<col style="width:20%">
							<col style="width:30%">
						</colgroup>
						<tbody>
						<tr>
							<th scope="row" class="wp-ar"><spring:message code="TODO.KEY" text="제목"/></th>
							<td class="wp-al" colspan="3">
								<input type="text" id="js-car-prod-test-bc-info-mast-reg-pop-title" title="" />
							</td>
						</tr>
						<tr>
							<th scope="row" class="wp-ar"><spring:message code="TODO.KEY" text="공장"/></th>
							<td class="wp-al" colspan="3">
								<div class="wp-ui-select wp-wd103">
									<select id="js-car-prod-test-bc-info-mast-reg-pop-carPlant" title="">
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row" class="wp-ar"><spring:message code="TODO.KEY" text="공정"/></th>
							<td class="wp-al">
								<div class="wp-ui-select wp-wd103">
									<select id="js-car-prod-test-bc-info-mast-reg-pop-procId" title="">
									</select>
								</div>
							</td>
							<th scope="row" class="wp-ar"><spring:message code="TODO.KEY" text="부스 No."/></th>
							<td class="wp-al">
								<div class="wp-ui-select wp-wd103">
									<select id="js-car-prod-test-bc-info-mast-reg-pop-boothId" title="">
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row" class="wp-ar"><spring:message code="TODO.KEY" text="비고"/></th>
							<td class="wp-al" colspan="3">
								<textarea id="js-car-prod-test-bc-info-mast-reg-pop-remark" name="" cols="" rows="5" class="wp-wd100p"></textarea>
							</td>
						</tr>
						<tr>
							<th scope="row" class="wp-ar"><spring:message code="TODO.KEY" text="완료 여부"/></th>
							<td class="wp-al" colspan="3">
								<div class="wp-ui-select wp-wd103">
									<select id="js-car-prod-test-bc-info-mast-reg-pop-compltYn" title="">
									</select>
								</div>
							</td>
						</tr>
						</tbody>
						</table>
						</div>
			
						<!-- 도막 품질 검사 기본 부위 설정 -->
						<div class="wp-clearfix">
							<h2 class="wp-cont-title wp-fl"><spring:message code="TODO.KEY" text="도막 품질 검사 기본 부위 설정"/></h2>
							<button type="button" id="js-car-prod-test-bc-info-mast-reg-popup-call-ft-part-button" class="wp-btn small bdarkgray cr3 white wp-mb5 wp-fr wp-btn-pop" data-depth="2" data-link="js-car-part-sel-popup"><spring:message code="TODO.KEY" text="선택"/></button>
						</div>
						<div class="wp-table-st1 wp-issue-apply">
							<table>
							<caption><spring:message code="TODO.KEY" text="도막 품질 검사 기본 부위 설정"/></caption>
							<colgroup>
								<col style="width:20%">
								<col style="width:%">
							</colgroup>
							<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="항목"/></th>
								<td class="wp-add-btn">
									<div class="wp-style-sel wp-wd100p wp-no-btn">
										<ul id="js-car-prod-test-bc-info-master-reg-popup-ft-item-list">
										</ul>
									</div>
								</td>
							</tr>
							</tbody>
							</table>
						</div>
						<!-- // 도막 품질 검사 기본 부위 설정 -->
			
						<!-- 외관 품질 검사 기본 부위 설정 -->
						<div class="wp-clearfix">
							<h2 class="wp-cont-title wp-fl"><spring:message code="TODO.KEY" text="외관 품질 검사 기본 부위 설정"/></h2>
							<button type="button" id="js-car-prod-test-bc-info-mast-reg-popup-call-su-part-button" class="wp-btn small bdarkgray cr3 white wp-mb5 wp-fr wp-btn-pop" data-depth="2" data-link="js-car-part-sel-popup"><spring:message code="TODO.KEY" text="선택"/></button>
						</div>
						<div class="wp-table-st1 wp-issue-apply">
							<table>
							<caption><spring:message code="TODO.KEY" text="외관 품질 검사 기본 부위 설정"/></caption>
							<colgroup>
								<col style="width:20%">
								<col style="width:%">
							</colgroup>
							<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="항목"/></th>
								<td class="wp-add-btn">
									<div class="wp-style-sel wp-wd100p wp-no-btn">
										<ul id="js-car-prod-test-bc-info-master-reg-popup-su-item-list">
										</ul>
									</div>
								</td>
							</tr>
							</tbody>
							</table>
						</div>
						<!-- // 외관 품질 검사 기본 부위 설정 -->
						
						<!-- 색차 품질 검사 기본 부위 설정 -->
						<div class="wp-clearfix">
							<h2 class="wp-cont-title wp-fl"><spring:message code="TODO.KEY" text="색상 품질 검사 기본 부위 설정"/></h2>
							<button type="button" id="js-car-prod-test-bc-info-mast-reg-popup-call-co-part-button" class="wp-btn small bdarkgray cr3 white wp-mb5 wp-fr wp-btn-pop" data-depth="2" data-link="js-car-part-sel-popup"><spring:message code="TODO.KEY" text="선택"/></button>
						</div>
						<div class="wp-table-st1 wp-issue-apply">
							<table>
							<caption><spring:message code="TODO.KEY" text="색상 품질 검사 기본 부위 설정"/></caption>
							<colgroup>
								<col style="width:20%">
								<col style="width:%">
							</colgroup>
							<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="항목"/></th>
								<td class="wp-add-btn">
									<div class="wp-style-sel wp-wd100p wp-no-btn">
										<ul id="js-car-prod-test-bc-info-master-reg-popup-co-item-list">
										</ul>
									</div>
								</td>
							</tr>
							</tbody>
							</table>
						</div>
						<!-- // 색차 품질 검사 기본 부위 설정 -->
						
					<!-- // scroll Area -->
					</div>
			
					<div class="wp-btn-area">
						<button type="button" id="js-car-prod-test-bc-info-mast-reg-popup-save-button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="저장"/></button>
						<div class="wp-add-right-btn">
							<button type="button" id="js-car-prod-test-bc-sfa-active-button"  class="wp-btn skyblue cr3">SFA 활동보고</button>
							<button type="button" id="js-ship-compet-mng-regist-sfa-related-button" data-depth="2" data-link="js-ship-std-info-popup" onclick="initCarStdInfoPopup('carTestBc');" class="wp-btn skyblue cr3 wp-btn-pop">SFA 연관글</button>
						</div>
						<input type="hidden" id="js-car-prod-test-bc-info-mast-reg-pop-docno">
					</div>
			
		        </div>
		    </div>
		</div>
		<!-- //중상도 신규 제품 테스트 마스터 등록 [END] -->
		
		<!-- 중상도 신규 제품 테스트 마스터 등록 스크립트 [START] -->
		<script id="js-template-car-prod-test-bc-info-master-reg-popup-partSel-selected-list" type="text/x-handlebars-template">
			<li id="js-car-prod-test-bc-info-master-reg-popup-{{type}}-selected-li-{{code}}">
			{{#isDth4Yn}}
			<span id="js-car-prod-test-bc-info-master-reg-popup-{{type}}-selected-code-name-{{code}}">{{dth1Nm}} > {{dth2Nm}} > {{dth3Nm}} > {{dth4Nm}}</span>
			{{else}}
			<span id="js-car-prod-test-bc-info-master-reg-popup-{{type}}-selected-code-name-{{code}}">{{dth1Nm}} > {{dth2Nm}} > {{dth3Nm}}</span>
			{{/isDth4Yn}}
			<input type='hidden' id='js-car-prod-test-bc-info-master-reg-popup-{{type}}-selected-dth1Code-{{code}}' value='{{dth1Code}}'>
			<input type='hidden' id='js-car-prod-test-bc-info-master-reg-popup-{{type}}-selected-dth2Code-{{code}}' value='{{dth2Code}}'>
			<input type='hidden' id='js-car-prod-test-bc-info-master-reg-popup-{{type}}-selected-dth3Code-{{code}}' value='{{dth3Code}}'>
			<input type='hidden' id='js-car-prod-test-bc-info-master-reg-popup-{{type}}-selected-dth4Code-{{code}}' value='{{dth4Code}}'>
			<input type='hidden' id='js-car-prod-test-bc-info-master-reg-popup-{{type}}-selected-dth1Nm-{{code}}' value='{{dth1Nm}}'>
			<input type='hidden' id='js-car-prod-test-bc-info-master-reg-popup-{{type}}-selected-dth2Nm-{{code}}' value='{{dth2Nm}}'>
			<input type='hidden' id='js-car-prod-test-bc-info-master-reg-popup-{{type}}-selected-dth3Nm-{{code}}' value='{{dth3Nm}}'>
			<input type='hidden' id='js-car-prod-test-bc-info-master-reg-popup-{{type}}-selected-dth4Nm-{{code}}' value='{{dth4Nm}}'>
			<button type='button' id='js-car-prod-test-bc-info-master-reg-popup-{{type}}-selected-remove-{{code}}' class='wp-spr-btn wp-close-sel'>
			<span><spring:message code='TODO.KEY' text='닫기'/></span></button></li>
		</script>
		
		<script type="text/javascript">
		var gvDocNo = '';
		var gvCarPlant = '';
		var carProdTestBcInfoMasterRegPopupPartSelSelectedTemplate;
		
		var initCarProdTestBcInfoMastRegPopup = function(docNo){

			var source = $('#js-template-car-prod-test-bc-info-master-reg-popup-partSel-selected-list').html();
			carProdTestBcInfoMasterRegPopupPartSelSelectedTemplate = Handlebars.compile(source);

			Handlebars.registerHelper('isDth4Yn', function(options) {
				if (this.dth4Code){
					return options.fn(this);
				} else {
					return options.inverse(this);
				}
			});
			gvDocNo = docNo;
			gvCarPlant = $("#js-car-header-car-plant").val();

			$("#js-car-prod-test-bc-info-mast-reg-popup-save-button").css("display", "inline");
			$("#js-car-prod-test-bc-info-mast-reg-pop-docno").val('');
			$("#js-car-prod-test-bc-info-mast-reg-pop-title").val('');
			$("#js-car-prod-test-bc-info-mast-reg-pop-carPlant").val('');
			$("#js-car-prod-test-bc-info-mast-reg-pop-procId").val('');
			$("#js-car-prod-test-bc-info-mast-reg-pop-boothId").val('');
			$("#js-car-prod-test-bc-info-mast-reg-pop-remark").val('');
			$("#js-car-prod-test-bc-info-mast-reg-pop-compltYn").val('');
			$("#js-car-prod-test-bc-info-master-reg-popup-ft-item-list").empty();
			$("#js-car-prod-test-bc-info-master-reg-popup-su-item-list").empty();
			$("#js-car-prod-test-bc-info-master-reg-popup-co-item-list").empty();

			//docNo setting
			$("#js-car-prod-test-bc-info-mast-reg-pop-docno").val(docNo);
			
			//docNo 없으면 - 신규 입력시 완료여부 진행으로 수정불가 처리 
			if(gvDocNo){
				$('#js-car-prod-test-bc-info-mast-reg-pop-compltYn').attr("disabled", false);				
			} else {
				$('#js-car-prod-test-bc-info-mast-reg-pop-compltYn').attr("disabled", true);
			}
			// 공장 콤보 setting
			retrieveCarPlantInfo.request();
			// 공정 콤보 setting
			retrieveProcInfo.request();
			// 완료여부 콤보 setting
			retrieveCompltYn.request();
			
			// 공장 콤보 change
			$("#js-car-prod-test-bc-info-mast-reg-pop-carPlant").off().on('change', function(e){
				// 공정 콤보 setting
				retrieveProcInfo.request();
				// 부스 콤보 setting
				retrieveBoothInfo.request();
			});
			// 공정 콤보 change
			$("#js-car-prod-test-bc-info-mast-reg-pop-procId").off().on('change', function(e){
				// 부스 콤보 setting
				retrieveBoothInfo.request();
			});

			// 저장 버튼 클릭
			$("#js-car-prod-test-bc-info-mast-reg-popup-save-button").off().on('click', function(e){
				carProdTestBcInfoMastRegPopupSave();
			});
			
			//SFA 활동보고 버튼 - 거래선 정보
			$("#js-car-prod-test-bc-sfa-active-button").off().on("click", function() {
				carProdTestBcActReport();
			});
			
			var carProdTestBcActReport = function(){				
				
				var type = 'BCA'
				
				var loginId = '${sessionScope.LoginUserInfo.userID}';
				var docNo = $("#js-car-prod-test-bc-info-mast-reg-pop-docno").val();
				console.log(docNo);				
				window.open( 'http://sfa.kccworld.info/mobile/kaissfa/views/login/S0208SFACreateSession_E.jsp?sloId='+loginId +"&redirectUrl=http%3A%2F%2Fsfa.kccworld.info%2Fmobile%2Fkaissfa%2Fviews%2FactReport%2FS0208SFAactReportCombine_E.jsp%3F%26dispatch%3DCAR_TEST_BC%26seqCarProdType%3D" +type +"%26docNo%3D"+docNo+"%26sysType%3DTSDCARINFO");
				type = '';
			}
			
			// 도막 선택 버튼 클릭
			$("#js-car-prod-test-bc-info-mast-reg-popup-call-ft-part-button").off().on('click', function(){
				var carProdTestBcInfoMastRegPopupFt = [];
				
				// 부위 목록
				$("#js-car-prod-test-bc-info-master-reg-popup-ft-item-list").find("li").each(function( index ) {
					var partSel = this.id.substring('js-car-prod-test-bc-info-master-reg-popup-ft-selected-li'.length+1);
					
					carProdTestBcInfoMastRegPopupFt.push({
						  code     : partSel
						, dth1Code : $("#js-car-prod-test-bc-info-master-reg-popup-ft-selected-dth1Code-"  + partSel).val()
						, dth1Nm   : $("#js-car-prod-test-bc-info-master-reg-popup-ft-selected-dth1Nm-"  + partSel).val()
						, dth2Code : $("#js-car-prod-test-bc-info-master-reg-popup-ft-selected-dth2Code-"  + partSel).val()
						, dth2Nm   : $("#js-car-prod-test-bc-info-master-reg-popup-ft-selected-dth2Nm-"  + partSel).val()
						, dth3Code : $("#js-car-prod-test-bc-info-master-reg-popup-ft-selected-dth3Code-"  + partSel).val()
						, dth3Nm   : $("#js-car-prod-test-bc-info-master-reg-popup-ft-selected-dth3Nm-"  + partSel).val()
						, dth4Code : $("#js-car-prod-test-bc-info-master-reg-popup-ft-selected-dth4Code-"  + partSel).val()
						, dth4Nm   : $("#js-car-prod-test-bc-info-master-reg-popup-ft-selected-dth4Nm-"  + partSel).val()
					});
				});
				
				initCarPartSelPopup('js-car-prod-test-bc-info-master-reg-popup-ft', carProdTestBcInfoMastRegPopupFt);
			});		
			
			// 외관 선택 버튼 클릭
			$("#js-car-prod-test-bc-info-mast-reg-popup-call-su-part-button").off().on('click', function(){
				var carProdTestBcInfoMastRegPopupSu = [];
				
				// 부위 목록
				$("#js-car-prod-test-bc-info-master-reg-popup-su-item-list").find("li").each(function( index ) {
					var partSel = this.id.substring('js-car-prod-test-bc-info-master-reg-popup-su-selected-li'.length+1);
					
					carProdTestBcInfoMastRegPopupSu.push({
						  code     : partSel
						, dth1Code : $("#js-car-prod-test-bc-info-master-reg-popup-su-selected-dth1Code-"  + partSel).val()
						, dth1Nm   : $("#js-car-prod-test-bc-info-master-reg-popup-su-selected-dth1Nm-"  + partSel).val()
						, dth2Code : $("#js-car-prod-test-bc-info-master-reg-popup-su-selected-dth2Code-"  + partSel).val()
						, dth2Nm   : $("#js-car-prod-test-bc-info-master-reg-popup-su-selected-dth2Nm-"  + partSel).val()
						, dth3Code : $("#js-car-prod-test-bc-info-master-reg-popup-su-selected-dth3Code-"  + partSel).val()
						, dth3Nm   : $("#js-car-prod-test-bc-info-master-reg-popup-su-selected-dth3Nm-"  + partSel).val()
						, dth4Code : $("#js-car-prod-test-bc-info-master-reg-popup-su-selected-dth4Code-"  + partSel).val()
						, dth4Nm   : $("#js-car-prod-test-bc-info-master-reg-popup-su-selected-dth4Nm-"  + partSel).val()
					});
				});
				
				initCarPartSelPopup('js-car-prod-test-bc-info-master-reg-popup-su', carProdTestBcInfoMastRegPopupSu);
			});		
			
			// 색차 선택 버튼 클릭
			$("#js-car-prod-test-bc-info-mast-reg-popup-call-co-part-button").off().on('click', function(){
				var carProdTestBcInfoMastRegPopupCo = [];
				
				// 부위 목록
				$("#js-car-prod-test-bc-info-master-reg-popup-co-item-list").find("li").each(function( index ) {
					var partSel = this.id.substring('js-car-prod-test-bc-info-master-reg-popup-co-selected-li'.length+1);
					
					carProdTestBcInfoMastRegPopupCo.push({
						  code     : partSel
						, dth1Code : $("#js-car-prod-test-bc-info-master-reg-popup-co-selected-dth1Code-"  + partSel).val()
						, dth1Nm   : $("#js-car-prod-test-bc-info-master-reg-popup-co-selected-dth1Nm-"  + partSel).val()
						, dth2Code : $("#js-car-prod-test-bc-info-master-reg-popup-co-selected-dth2Code-"  + partSel).val()
						, dth2Nm   : $("#js-car-prod-test-bc-info-master-reg-popup-co-selected-dth2Nm-"  + partSel).val()
						, dth3Code : $("#js-car-prod-test-bc-info-master-reg-popup-co-selected-dth3Code-"  + partSel).val()
						, dth3Nm   : $("#js-car-prod-test-bc-info-master-reg-popup-co-selected-dth3Nm-"  + partSel).val()
						, dth4Code : $("#js-car-prod-test-bc-info-master-reg-popup-co-selected-dth4Code-"  + partSel).val()
						, dth4Nm   : $("#js-car-prod-test-bc-info-master-reg-popup-co-selected-dth4Nm-"  + partSel).val()
					});
				});
				
				initCarPartSelPopup('js-car-prod-test-bc-info-master-reg-popup-co', carProdTestBcInfoMastRegPopupCo);
			});
			
			//docNo 가 있으면 수정모드
			if(gvDocNo){
				retrieveProdTestBcMastForMod.request(gvCarPlant, gvDocNo);
			}
			
		};
		
		//부위설정(도막, 외관, 색차)
		var applyCarProdTestBcInfoMastRegPopupPartSel = function(gubun, data){
			var partSel = data.rows;
			if(partSel.length > 0){
				for(var i=0 ; i<partSel.length ; i++){
					var checkAdded = false;
					var code = partSel[i].code;
					
					if(gubun){
						partSel[i].type = gubun.substring(gubun.length, gubun.length -2);						
					}
					
					//추가된 항목 확인
					// TODO - 기존 선택된 항목 포함 항목 갯수가 작으면 삭제 안됨
					$("#js-car-prod-test-bc-info-master-reg-popup-"+ partSel[i].type +"-item-list").find("li").each(function() {
						var partId = this.id.substring(("js-car-prod-test-bc-info-master-reg-popup-"+ partSel[i].type +"-selected-li").length + 1);
						if(code == partId){
							checkAdded = true;	
						}
					});
					
					if(!checkAdded){
						var html = carProdTestBcInfoMasterRegPopupPartSelSelectedTemplate(partSel[i]);
						
						$('#js-car-prod-test-bc-info-master-reg-popup-'+ partSel[i].type +'-item-list').append(html);
						
						$("#js-car-prod-test-bc-info-master-reg-popup-"+ partSel[i].type +"-selected-remove-"+code).off().on('click', function() {
							$(this).parent().remove();
						});
					}
				}
			}
		};
		
		// 공장 콤보
		var retrieveCarPlantInfo = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					var srchSelectNm = "";
					
					if (message === 'OK') {							
						//셀렉트 항목 적용
						var comboCnt = 0;
						$('#js-car-prod-test-bc-info-mast-reg-pop-carPlant').find('option').remove();
						for(var i=0; i<response.rs.length; i++) 	{
							$('#js-car-prod-test-bc-info-mast-reg-pop-carPlant').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
							comboCnt++;									
						}
						$('#js-car-prod-test-bc-info-mast-reg-pop-carPlant').attr("title", comboCnt+" <spring:message code='TODO.KEY' text='건'/>");
					} else 	{
						// 서비스 요청 처리 오류 발생 메시지
						
						messageParam.title = "<spring:message code='TODO.KEY' text='에러'/>";
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
				messageParam.title = "<spring:message code='TODO.KEY' text='에러'/>";
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
					service: 'car.prodTestBc',
					method: 'retrieveCarPlantInfo'
				};

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		// 공정 콤보
		var retrieveProcInfo = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					var srchSelectNm = "";
					
					if (message === 'OK') {							
						//셀렉트 항목 적용
						var comboCnt = 0;
						$('#js-car-prod-test-bc-info-mast-reg-pop-procId').find('option').remove();
						for(var i=0; i<response.rs.length; i++) 	{
							$('#js-car-prod-test-bc-info-mast-reg-pop-procId').append("<option value='"+response.rs[i].procId+"'>"+response.rs[i].procIdNm+"</option>");
							comboCnt++;									
						}
						$('#js-car-prod-test-bc-info-mast-reg-pop-procId').attr("title", comboCnt+" <spring:message code='TODO.KEY' text='건'/>");
						
						// 부스 콤보
						retrieveBoothInfo.request();
					} else 	{
						// 서비스 요청 처리 오류 발생 메시지
						
						messageParam.title = "<spring:message code='TODO.KEY' text='에러'/>";
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
				messageParam.title = "<spring:message code='TODO.KEY' text='에러'/>";
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
					service: 'car.prodTestBc',
					method: 'retrieveProcInfo',
					procType : 'Booth' 
				};

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		// 부스 콤보
		var retrieveBoothInfo = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					var srchSelectNm = "";
					
					if (message === 'OK') {							
						//셀렉트 항목 적용
						var comboCnt = 0;
						$('#js-car-prod-test-bc-info-mast-reg-pop-boothId').find('option').remove();
						for(var i=0; i<response.rs.length; i++) 	{
							$('#js-car-prod-test-bc-info-mast-reg-pop-boothId').append("<option value='"+response.rs[i].boothCode+"'>"+response.rs[i].boothNm+"</option>");
							comboCnt++;									
						}
						$('#js-car-prod-test-bc-info-mast-reg-pop-boothId').attr("title", comboCnt+" <spring:message code='TODO.KEY' text='건'/>");
					} else 	{
						// 서비스 요청 처리 오류 발생 메시지
						
						messageParam.title = "<spring:message code='TODO.KEY' text='에러'/>";
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
				messageParam.title = "<spring:message code='TODO.KEY' text='에러'/>";
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
				var carPlant = $("#js-car-prod-test-bc-info-mast-reg-pop-carPlant").val();
				var procId = $("#js-car-prod-test-bc-info-mast-reg-pop-procId").val();
				var params = {
					service: 'car.prodTestBc',
					method: 'retrieveBoothInfo',
					carPlant: carPlant,
					procId: procId
				};

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		// 완료여부 콤보
		var retrieveCompltYn = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					var srchSelectNm = "";
					
					if (message === 'OK') {							
						//셀렉트 항목 적용
						var comboCnt = 0;
						$('#js-car-prod-test-bc-info-mast-reg-pop-compltYn').find('option').remove();
						for(var i=0; i<response.rs.length; i++) 	{
							$('#js-car-prod-test-bc-info-mast-reg-pop-compltYn').append("<option value='"+response.rs[i].compltYn+"'>"+response.rs[i].compltYnNm+"</option>");
							comboCnt++;									
						}
						$('#js-car-prod-test-bc-info-mast-reg-pop-compltYn').attr("title", comboCnt+" <spring:message code='TODO.KEY' text='건'/>");
					} else 	{
						// 서비스 요청 처리 오류 발생 메시지
						
						messageParam.title = "<spring:message code='TODO.KEY' text='에러'/>";
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
				messageParam.title = "<spring:message code='TODO.KEY' text='에러'/>";
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
					service: 'car.prodTestBc',
					method: 'retrieveCompltYn'
				};

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		// 중상도 신규 제품 테스트 마스터 - 조회
		var retrieveProdTestBcMastForMod = {
			success : function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {							
						var data = response.rs.mastForMod[0];
						
						if(data){
							$("#js-car-prod-test-bc-info-mast-reg-pop-title").val(data.title);
							$("#js-car-prod-test-bc-info-mast-reg-pop-carPlant").val(data.carPlant);
							$("#js-car-prod-test-bc-info-mast-reg-pop-carPlant").change();
							$("#js-car-prod-test-bc-info-mast-reg-pop-procId").val(data.procId);
							$("#js-car-prod-test-bc-info-mast-reg-pop-procId").change();
							$("#js-car-prod-test-bc-info-mast-reg-pop-boothId").val(data.boothId);
							$("#js-car-prod-test-bc-info-mast-reg-pop-remark").val(data.remark);
							$("#js-car-prod-test-bc-info-mast-reg-pop-compltYn").val(data.completYn);
							
							if(data.completYn == 'Y'){
								$("#js-car-prod-test-bc-info-mast-reg-popup-save-button").css("display", "none");
							} else {
								$("#js-car-prod-test-bc-info-mast-reg-popup-save-button").css("display", "inline");								
							}
						}
						$("#js-car-prod-test-bc-info-master-reg-popup-ft-item-list").empty();
						$("#js-car-prod-test-bc-info-master-reg-popup-su-item-list").empty();
						$("#js-car-prod-test-bc-info-master-reg-popup-co-item-list").empty();
						
						//부위  data setting
						data = response.rs.partsForMod;
						if(data.length > 0){
							var partsForMod = {
								rows: []
							};
							for(var i=0 ; i<data.length ; i++){
								var row = {
									type: data[i].partGroup.toLowerCase(),
									code: data[i].code,
									dth1Code: data[i].dth1Code,
									dth1Nm: data[i].dth1Nm,
									dth2Code: data[i].dth2Code,
									dth2Nm: data[i].dth2Nm,
									dth3Code: data[i].dth3Code,
									dth3Nm: data[i].dth3Nm,
									dth4Code: data[i].dth4Code,
									dth4Nm: data[i].dth4Nm
								};
								partsForMod.rows.push(row);									
							}
							
							applyCarProdTestBcInfoMastRegPopupPartSel('', partsForMod);
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
			request : function(carPlant, docNo) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				
				var params = {
						service : 'car.prodTestBc',
						method : 'retrieveProdTestBcMastForMod',
						carPlant : carPlant,
						docNo : docNo
				};

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		// 중상도 신규 제품 테스트 마스터 저장 필수값 확인
		var carProdTestBcInfoMastRegPopupSave = function(){
			//popup 저장 할 내역 param에 담기
			var docNo = $("#js-car-prod-test-bc-info-mast-reg-pop-docno").val();
			var title = $.trim($("#js-car-prod-test-bc-info-mast-reg-pop-title").val());
			var carPlant = $("#js-car-prod-test-bc-info-mast-reg-pop-carPlant").val();
			var procId = $("#js-car-prod-test-bc-info-mast-reg-pop-procId").val();
			var boothId = $("#js-car-prod-test-bc-info-mast-reg-pop-boothId").val();
			var remark = $.trim($("#js-car-prod-test-bc-info-mast-reg-pop-remark").val());
			var completYn = $("#js-car-prod-test-bc-info-mast-reg-pop-compltYn").val();
			
			if(app.utils.isEmpty(title)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="제목은 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-car-prod-test-bc-info-mast-reg-pop-title').focus();
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
							$('#js-car-prod-test-bc-info-mast-reg-pop-carPlant').focus();
						}
					}
				});
				return;
			}
			if(app.utils.isEmpty(procId)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="공정은 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-car-prod-test-bc-info-mast-reg-pop-procId').focus();
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
							$('#js-car-prod-test-bc-info-mast-reg-pop-boothId').focus();
						}
					}
				});
				return;
			}
			
			var ftLists = [];
			$("#js-car-prod-test-bc-info-master-reg-popup-ft-item-list").find("li").each(function() {
				var partId = this.id.substring("js-car-prod-test-bc-info-master-reg-popup-ft-selected-li".length + 1);
				if(partId){
					ftLists.push({partId: partId});
				}
			});
			
			/*			
			if(ftLists.length === 0){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="도막 품질 검사 기본 부위는 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-car-prod-test-bc-info-mast-reg-popup-call-ft-part-button').focus();
						}
					}
				});
				return;
			}
			*/
			
			var surfLists = [];
			$("#js-car-prod-test-bc-info-master-reg-popup-su-item-list").find("li").each(function() {
				var partId = this.id.substring("js-car-prod-test-bc-info-master-reg-popup-su-selected-li".length + 1);
				if(partId){
					surfLists.push({partId: partId});
				}
			});

			/*
			if(surfLists.length === 0){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="외관 품질 검사 기본 부위는 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-car-prod-test-bc-info-mast-reg-popup-call-su-part-button').focus();
						}
					}
				});
				return;
			}
			*/
			
			var cdLists = [];
			$("#js-car-prod-test-bc-info-master-reg-popup-co-item-list").find("li").each(function() {
				var partId = this.id.substring("js-car-prod-test-bc-info-master-reg-popup-co-selected-li".length + 1);
				if(partId){
					cdLists.push({partId: partId});
				}
			});

			/*
			if(cdLists.length === 0){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="색차 품질 검사 기본 부위는 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-car-prod-test-bc-info-mast-reg-popup-call-co-part-button').focus();
						}
					}
				});
				return;
			}
			*/
			
			var param = "";

			param = {
				 docNo     : docNo                     //문서번호
				,carPlant  : carPlant                  //공장
				,title     : title                     //title
				,procId    : procId                    //procId 
				,boothId   : boothId                   //boothId 
				,remark    : remark                    //remark 
				,completYn : completYn                 //완료여부
				,ftLists   : JSON.stringify(ftLists  ) //도막 품질 검사 기본 부위 설정
				,surfLists : JSON.stringify(surfLists )//외관 품질 검사 기본 부위 설정
				,cdLists   : JSON.stringify(cdLists )  //색차 품질 검사 기본 부위 설정
				
			}
			
			// 저장 여부 확인
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="저장"/>'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						saveProdTestBcMastInfo.request(param);
					}
				}
			});

		};
				
		// 중상도 신규 제품 테스트 마스터 저장
		var saveProdTestBcMastInfo = {
			success : function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {							
						app.message.alert({
							  title             : '<spring:message code="TODO.KEY" text="알림"/>'
							, message           : '<spring:message code="TODO.KEY" text="저장 완료 되었습니다."/>'
							, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							, callback          : {
								confirm: function() {
									//팝업 닫기
									$('#js-car-prod-test-bc-info-mast-reg-popup-close-button').click();
									// 중상도 제품 테스트 조회 리스트 조회
									retrieveProdTestBcMastInfo.request();
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
			request : function(param) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
						service   : 'car.prodTestBc',
						method    : 'saveProdTestBcMastInfo',
						docNo     : param.docNo    ,
						carPlant  : param.carPlant ,
						title     : param.title    ,
						procId    : param.procId   ,
						boothId   : param.boothId  ,
						remark    : param.remark   ,
						completYn : param.completYn ,
						ftLists   : param.ftLists  ,
						surfLists : param.surfLists,
						cdLists   : param.cdLists   
				};

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};		
		</script>
		<!-- //중상도 신규 제품 테스트 마스터 등록 스크립트 [END] -->
	
	
	<!-- SFA 활동보고 -->
	<c:import url="/WEB-INF/static/car/popup/stdInfo.popup.car.jsp" charEncoding="utf-8"></c:import>
	
		
	</tiles:putAttribute>
	<!-- 팝업 콘텐츠 E -->
</tiles:insertDefinition>
