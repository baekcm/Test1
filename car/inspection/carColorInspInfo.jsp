<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.04.11] car 도장공정정보-색상 검사" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<meta http-equiv="Expires" content="Mon, 06 Jan 1990 00:00:01 GMT">
<meta http-equiv="Expires" content="-1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">

<tiles:insertDefinition name="app.car">

	<!-- 메인 콘텐츠 S -->
	<tiles:putAttribute name="page-content">

	<section class="wp-stat">
		<div class="wp-cont wp-car-sub">
			<!-- content start -->
			<header class="wp-contents-title">
				<h1><spring:message code="TODO.KEY" text="색상검사"/></h1>
				<div class="wp-location"><span><spring:message code="TODO.KEY" text="도장공정"/></span><span class="wp-fc-54"><spring:message code="TODO.KEY" text="색상검사"/></span></div>
			</header>
			<div class="wp-table-width">
				<!-- tab -->
				<ul class="wp-prod-tab wp-two">
					<li><a href="/car/inspection/carColorInspInfo.do" class="active"><spring:message code="TODO.KEY" text="색상검사"/></a></li>
					<li><a href="/car/inspection/carColorInspDetailBb.do"><spring:message code="TODO.KEY" text="색상검사 분석"/></a></li>
				</ul>
				<!-- //tab -->
				<!-- title area -->
				<div class="wp-title-section">
						<div class="wp-btn-area">
							<!--<button type="button" class="wp-layer-open wp-btn small blue1 cr3 search-white"><spring:message code="TODO.KEY" text="검색"/></button>-->
							<button type="button" id="js-car-color-add" data-link="js-car-color-popup" class="wp-btn small skyblue cr3 upload-white wp-btn-pop"><spring:message code="TODO.KEY" text="색상 검사 결과 등록"/></button>
							<!--<button type="button" class="wp-btn small grayblue cr3"><spring:message code="TODO.KEY" text="색상 검사 분석 이력 조회"/></button>-->
						</div>
				</div>
				<!-- //title area -->
				<!-- rootcause-list -->
				<div class="wp-rootcause-list wp-car-list2">
					<div class="wp-rc-box">
						<div id="js-car-color-list" class="wp-rc-box-in">
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

		<!-- 색상 검사 - 스크립트 -->
		<script id="js-template-car-color-list" type="text/x-handlebars-template">
			{{#rows}}
				<div class="wp-rc-cont wp-h75 wp-rc-cont-color01" style="cursor: default;">
					<div class="wp-rc-cont-top">
						<input type="hidden" id="js-car-color-doc-no" value="{{docNo}}">
						<div class="wp-rp-right">
							<div class="wp-rp-r-title"><span class="wp-name-benner wp-factory">{{carPlant}}</span><span class="wp-name-benner wp-product">{{colorId}}</span>
							<a id="js-car-color-detail" data-link="js-car-color-detail-popup" style="cursor: pointer;">[{{docNo}}] {{title}}</a></div>
							<div class="wp-rp-r-desc">
								<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="차종"/>&nbsp;:&nbsp;</em>[{{model}}] {{modelNm}}</span>
								<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="부스 No."/>&nbsp;:&nbsp;</em>{{boothNm}}</span>
								<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="검사일자"/>&nbsp;:&nbsp;</em>{{inspDate}}</span>
								<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="검사자"/>&nbsp;:&nbsp;</em>{{inspEmp}}</span>
								<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="검사장소"/>&nbsp;:&nbsp;</em>{{inspColorPlaceNm}}</span>
								<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="측정대상"/>&nbsp;:&nbsp;</em>{{inspColorItem}}</span>
								<br>
								<span class="wp-rp-r-info"><em>Body No.&nbsp;:&nbsp;</em>{{bodyNo}}</span>
								<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="도장일자"/>&nbsp;:&nbsp;</em>{{paintingDate}}</span>
								<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="검사장비"/>&nbsp;:&nbsp;</em>{{inspColorToolNm}}</span>
							</div>
						</div>
						<div class="wp-rp-bttn">
							<button type="button" id="js-car-color-edit" data-link="js-car-color-popup" class="wp-btn small white bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
							<button type="button" id="js-car-color-delete" class="wp-btn small white bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
						</div>
					</div>
				</div>
			{{/rows}}
		</script>

		<script type="text/javascript">

			var carColorListTemplate;

			$(document).ready(function() {

				//Handlebar 초기화
				var source = $('#js-template-car-color-list').html();
				carColorListTemplate = Handlebars.compile(source);
				
				
				
				//등록 버튼
				$('#js-car-color-add').off().on('click', function() {
					initCarColorPopup();
				});
				
				//탭 버튼
				$('a[id*=js-car-color-tab-]').off().on('click', function() {
					
					$('a[id*=js-car-color-tab-]').each(function() {
						$(this).removeClass('active');
					});
					
					$(this).addClass('active');
					
					retrieveColorInspList.request();
				});
			});
			
			// ------------------------------------------------
			// 제품정보 조회
			// ------------------------------------------------
			var retrieveColorInspList = {
				success : function(response, status, jqueryXHR) {
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
							
							var html = carColorListTemplate(data);
							
							$('#js-car-color-list').empty().append(html);
							
							$('#js-car-color-list').find('a[id=js-car-color-detail]').off().on('click', function(){
								
								var code = $(this).parent().parent().parent().find('#js-car-color-doc-no').val();
								
								initCarColorDetailPopup(code);
								
								fn_openPop($(this));
							});
							
							$('#js-car-color-list').find('button[id=js-car-color-edit]').off().on('click', function(){
								
								if (window.applicationCache.status == window.applicationCache.UPDATEREADY) {
							      	window.applicationCache.swapCache();
							    }
								
								var code = $(this).parent().parent().find('#js-car-color-doc-no').val();
								
								initCarColorPopup(code);
								
								fn_openPop($(this));
							});
							
							$('#js-car-color-list').find('button[id=js-car-color-delete]').off().on('click', function(){
								
								var code = $(this).parent().parent().find('#js-car-color-doc-no').val();
								
								app.message.confirm({
									title: '<spring:message code="TODO.KEY" text="알림"/>',
									message: '<spring:message code="TODO.KEY" text="정말 삭제하시겠습니까?"/>',
									confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>',
									cancelButtonText: '<spring:message code="TODO.KEY" text="취소"/>',
									callback: {
										confirm: function() {
											delCarColorMast.request(code);
										}
									}
								});
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
				request : function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------

					var params = {
							service : 'car.color',
							method : 'retrieveColorInspList',
							carPlant : $('#js-car-header-car-plant').val()
					};

					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			var delCarColorMast = {
					success : function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								app.message.alert({
									title: '<spring:message code="TODO.KEY" text="알림"/>',
									message: '<spring:message code="TODO.KEY" text="삭제되었습니다."/>',
									confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>',
									callback: {
										confirm: function() {
											$('#js-car-color-detail-popup-close').click();
											retrieveColorInspList.request();
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
					request : function(docNo) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						
						var params = {
								service : 'car.color',
								method : 'delCarColorMast',
								carPlant : $('#js-car-header-car-plant').val(),
								docNo : docNo
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
	<!-- 페이지 레벨 스크립트 E -->
	
	<!-- 팝업 콘텐츠 S -->
	<tiles:putAttribute name="popup-content">
		
		
	</tiles:putAttribute>
	<!-- 팝업 콘텐츠 E -->
	
</tiles:insertDefinition>
