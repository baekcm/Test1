<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.05.18] car 도장공정정보-외관 검사-전착외관검사" %>
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
				<h1><spring:message code="TODO.KEY" text="외관검사"/></h1>
				<div class="wp-location"><span><spring:message code="TODO.KEY" text="도장공정"/></span><span class="wp-fc-54"><spring:message code="TODO.KEY" text="외관검사"/></span></div>
			</header>
			<div class="wp-table-width">
				<!-- tab -->
				<ul class="wp-prod-tab wp-three">
					<li><a href="/car/inspection/carExtInspEdInfo.do" class="active"><spring:message code="TODO.KEY" text="전착 외관 검사"/></a></li>
					<li><a href="/car/inspection/carExtInspBcInfo.do"><spring:message code="TODO.KEY" text="중/상도 외관 검사"/></a></li>
					<li><a href="/car/inspection/carExtInspBcAnalysis.do"><spring:message code="TODO.KEY" text="외관 검사 분석"/></a></li>
				</ul>
				<!-- //tab -->
				<!-- title area -->
				<div class="wp-title-section wp-clearfix">
					<!-- <h2 class="wp-section-title"></h2> -->
					<div class="wp-icon-list-info wp-fl">
						<ul>
							<li><span class="wp-icon p1"></span><spring:message code="TODO.KEY" text="도막두께"/></li>
							<li><span class="wp-icon p2"></span><spring:message code="TODO.KEY" text="조도"/></li>
							<li><span class="wp-icon p3"></span><spring:message code="TODO.KEY" text="광택"/></li>
							<li><span class="wp-icon p4"></span><spring:message code="TODO.KEY" text="내부 도장성"/></li>
						</ul>
					</div>
					<div class="wp-btn-area wp-fr">
						<!-- <button type="button" class="wp-layer-open wp-btn small blue1 cr3 search-white"><spring:message code="TODO.KEY" text="검색"/></button> -->
						<button type="button" id="js-car-ext-insp-ed-info-add" data-link="js-car-ext-insp-ed-info-popup" class="wp-btn small skyblue cr3 upload-white wp-btn-pop"><spring:message code="TODO.KEY" text="외관 검사 결과 등록"/></button>
						<!-- <button type="button" class="wp-btn small grayblue cr3"><spring:message code="TODO.KEY" text="외관 검사 분석 이력 조회"/></button> -->
						<!-- <button type="button" class="wp-btn small darkgray cr3"><spring:message code="TODO.KEY" text="엑셀 다운로드"/></button> -->
					</div>
				</div>
				<!-- //title area -->

				<!-- rootcause-list -->
				<div class="wp-rootcause-list wp-car-list2">
					<div class="wp-rc-box">
						<div id="js-car-ext-insp-ed-info-list" class="wp-rc-box-in">
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

		<!-- 외관 검사 - 스크립트 -->
		<script id="js-template-car-ext-insp-ed-info-list" type="text/x-handlebars-template">
			{{#rows}}
				<div class="wp-rc-cont wp-h75 wp-rc-cont-color01">
					<div class="wp-rc-cont-top">
						<input type="hidden" id="js-car-ext-insp-ed-info-doc-no" value="{{docNo}}">
						<div class="wp-rp-right">
							<div class="wp-rp-r-title"><span class="wp-name-benner wp-factory">{{carPlant}}</span>
							<a id="js-car-ext-insp-ed-info-detail" data-link="js-car-ext-insp-ed-info-detail-popup" style="cursor: pointer;">[{{docNo}}] {{title}}</a></div>
							<div class="wp-rp-r-desc">
								<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="차종"/>&nbsp;:&nbsp;</em>[{{modelId}}] {{modelNm}}</span>
								<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="검사일자"/>&nbsp;:&nbsp;</em>{{paintingDate}}</span>
								<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="검사자"/>&nbsp;:&nbsp;</em>{{inspEmp}}</span>
								<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="Body No."/>&nbsp;:&nbsp;</em>{{bodyNo}}</span>
								<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="도장일자"/>&nbsp;:&nbsp;</em>{{inspDate}}</span>
								<br>
								<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="측정장비"/>&nbsp;:&nbsp;</em>{{inspToolNm}}</span>
							</div>
						</div>
						<div class="wp-rp-bttn">
							<button type="button" id="js-car-ext-insp-ed-info-edit" data-link="js-car-ext-insp-ed-info-popup" class="wp-btn small white bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
							<button type="button" id="js-car-ext-insp-ed-info-delete" class="wp-btn small white bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
						</div>
						<div class="wp-icon-info">
							{{#isThickness}}<span class="wp-icon p1"></span>{{/isThickness}}
							{{#isIllumination}}<span class="wp-icon p2"></span>{{/isIllumination}}
							{{#isGloss}}<span class="wp-icon p3"></span>{{/isGloss}}
							{{#isInCoating}}<span class="wp-icon p4"></span>{{/isInCoating}}
						</div>
					</div>
				</div>
			{{/rows}}
		</script>

		<script type="text/javascript">

			var carExtInspEdInfoListTemplate;

			$(document).ready(function() {

				//Handlebar 초기화
				var source = $('#js-template-car-ext-insp-ed-info-list').html();
				carExtInspEdInfoListTemplate = Handlebars.compile(source);
				
				Handlebars.registerHelper('isThickness', function(options) {
					if (this.thickness == '1') {
						return options.fn(this);
					}
				});
				Handlebars.registerHelper('isIllumination', function(options) {
					if (this.illumination == '1') {
						return options.fn(this);
					}
				});
				Handlebars.registerHelper('isGloss', function(options) {
					if (this.gloss == '1') {
						return options.fn(this);
					}
				});
				Handlebars.registerHelper('isInCoating', function(options) {
					if (this.inCoating == '1') {
						return options.fn(this);
					}
				});
				
				//등록 버튼
				$('#js-car-ext-insp-ed-info-add').off().on('click', function() {
					initCarExtInspEdInfoPopup();
				});
								
			});
			
			// ------------------------------------------------
			// 외관검사 list 조회
			// ------------------------------------------------
			var retrieveCarExtInspEdList = {
				success : function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';

						if (message === 'OK') {
							
							var data = {
								rows : response.rs
							};
							
							var html = carExtInspEdInfoListTemplate(data);
							
							$('#js-car-ext-insp-ed-info-list').empty().append(html);
							
							$('#js-car-ext-insp-ed-info-list').find('a[id=js-car-ext-insp-ed-info-detail]').off().on('click', function(){
								
								var code = $(this).parent().parent().parent().find('#js-car-ext-insp-ed-info-doc-no').val();
								
								initCarExtInspEdInfoDetailPopup(code);
								
								fn_openPop($(this));
							});
							
							$('#js-car-ext-insp-ed-info-list').find('button[id=js-car-ext-insp-ed-info-edit]').off().on('click', function(){
								
								var code = $(this).parent().parent().find('#js-car-ext-insp-ed-info-doc-no').val();
								
								initCarExtInspEdInfoPopup(code);
								
								fn_openPop($(this));
							});
							
							$('#js-car-ext-insp-ed-info-list').find('button[id=js-car-ext-insp-ed-info-delete]').off().on('click', function(){
								
								var code = $(this).parent().parent().find('#js-car-ext-insp-ed-info-doc-no').val();
								
								app.message.confirm({
									title: '<spring:message code="TODO.KEY" text="알림"/>',
									message: '<spring:message code="TODO.KEY" text="정말 삭제하시겠습니까?"/>',
									confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>',
									cancelButtonText: '<spring:message code="TODO.KEY" text="취소"/>',
									callback: {
										confirm: function() {
											delCarInspSurfEd.request(code);
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
							service : 'car.extinsp',
							method : 'retrieveCarExtInspEdList',
							carPlant : $('#js-car-header-car-plant').val()
					};

					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			var delCarInspSurfEd = {
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
											$('#js-car-ext-insp-ed-info-detail-popup-close').click();
											retrieveCarExtInspEdList.request();
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
								service : 'car.extinsp',
								method : 'delCarInspSurfEd',
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
