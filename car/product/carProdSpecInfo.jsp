<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.04.11] car 제품정보-제품 Spec. 관리-제품 사용 현황(Spec.)" %>
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
				<h1><spring:message code="TODO.KEY" text="제품 Spec. 관리"/></h1>
				<div class="wp-location"><span><spring:message code="TODO.KEY" text="제품정보"/></span><span class="wp-fc-54"><spring:message code="TODO.KEY" text="제품 Spec. 관리"/></span></div>
			</header>
			<div class="wp-table-width">
				<!-- title area -->
				<div class="wp-title-section">
					<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="제품 사용 현황"/>(Spec.)</h2>
					<div class="wp-btn-area">
						<button type="button" id="js-car-spec-model-add" data-link="js-car-spec-model-popup" data-depth="1" class="wp-btn small skyblue cr3 upload-white"><spring:message code="TODO.KEY" text="차종등록"/></button>
						<button type="button" id="js-car-spec-color-add" data-link="js-car-spec-step1-popup" data-depth="1" class="wp-btn small skyblue cr3 upload-white wp-btn-pop"><spring:message code="TODO.KEY" text="칼라 현황 등록"/></button>
					</div>
				</div>
				<!-- //title area -->

				<ul class="wp-info-title wp-prod5-popup">
					<li><a id="js-car-spec-tab-PT" class="active"><spring:message code="TODO.KEY" text="전처리"/></a></li>
					<li><a id="js-car-spec-tab-ED"><spring:message code="TODO.KEY" text="전착"/></a></li>
					<li><a id="js-car-spec-tab-PM">Primer</a></li>
					<li><a id="js-car-spec-tab-BS">Base</a></li>
					<li><a id="js-car-spec-tab-CR">Clear</a></li>
				</ul>

				<!-- 테이블 영역 -->
				<div class="wp-prod-info">
				<!-- wp-cont-table -->
					<div class="wp-table-st1">
					<table class="wp-title-table">
						<caption><spring:message code="TODO.KEY" text="제품정보"/></caption>
						<colgroup>
							<col style="width:10%">
							<col style="width:15%">
							<col style="width:8%">
							<col style="width:20%">
							<col style="width:8%">
							<col style="width:auto">
						</colgroup>
						<thead>
							<tr>
								<th rowspan="2"><spring:message code="TODO.KEY" text="칼라코드"/></th>
								<th rowspan="2"><spring:message code="TODO.KEY" text="칼라명"/></th>
								<th rowspan="2"><spring:message code="TODO.KEY" text="Base 도료"/></th>
								<th rowspan="2"><spring:message code="TODO.KEY" text="차종별 범퍼 도료 Maker"/></th>
								<th colspan="2" class="wp-td-padding0">
									<button type="button" id="js-car-spec-prev" class="wp-btn small white bgray prev wp-mr20"><span><spring:message code="TODO.KEY" text="이전"/></span></button>
									<span id="js-car-spec-title"></span>
									<button type="button" id="js-car-spec-next" class="wp-btn small white bgray next wp-ml20"><span><spring:message code="TODO.KEY" text="다음"/></span></button>
								</th>
							</tr>
							<tr>	
								<th class="wp-color">Maker</th>
								<th class="wp-color"><spring:message code="TODO.KEY" text="제품명"/></th>
							</tr>
						</thead>
						<tbody id="js-car-spec-list">
						</tbody>
					</table>
					</div>
				</div>
				<!-- 테이블 영역 -->
			</div>
			<!-- //content end -->
		</div>
	</section>

	</tiles:putAttribute>
	<!-- 메인 콘텐츠 E -->


	<!-- 페이지 레벨 스크립트 S -->
	<tiles:putAttribute name="page-level-js">

		<!-- 제품 Spec 관리 - 스크립트 -->
		<script id="js-template-car-prod-spec-list" type="text/x-handlebars-template">
			{{#rows}}
				<tr>
					<input type="hidden" id="js-car-spec-color-id" value="{{colorId}}">
					<td>{{colorId}}</td>
					<td class="wp-al">{{colorNm}}</td>
					<td>{{baseMakerNm}}</td>
					<td class="wp-al">{{modelMaker}}</td>
					
					{{#if @last}}
						
						{{#isPT}}
							<td class="wp-color wp-border-color">{{ptMakerNm}}</td>
							<td class="wp-al wp-border-color"><span>{{ptItemsNm}}</span>
								<div class="wp-btn-area wp-btn-stick wp-fr">
									<button type="button" id="js-car-spec-detail" data-link="js-car-spec-detail-popup" class="wp-btn white small bgray detail-view"><span><spring:message code="TODO.KEY" text="상세"/></span></button>
									<button type="button" id="js-car-spec-edit" data-link="js-car-spec-step1-popup" data-depth="1" class="wp-btn white small bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
									<button type="button" id="js-car-spec-delete" class="wp-btn white small bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
								</div>
							</td>
						{{/isPT}}
						{{#isED}}
							<td class="wp-color wp-border-color">{{edMakerNm}}</td>
							<td class="wp-al wp-border-color"><span>{{edItemsNm}}</span>
								<div class="wp-btn-area wp-btn-stick wp-fr">
									<button type="button" id="js-car-spec-detail" data-link="js-car-spec-detail-popup" class="wp-btn white small bgray detail-view"><span><spring:message code="TODO.KEY" text="상세"/></span></button>
									<button type="button" id="js-car-spec-edit" data-link="js-car-spec-step1-popup" data-depth="1" class="wp-btn white small bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
									<button type="button" id="js-car-spec-delete" class="wp-btn white small bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
								</div>
							</td>
						{{/isED}}
						{{#isPM}}
							<td class="wp-color wp-border-color">{{pmMakerNm}}</td>
							<td class="wp-al wp-border-color"><span>{{pmItemsNm}}</span>
								<div class="wp-btn-area wp-btn-stick wp-fr">
									<button type="button" id="js-car-spec-detail" data-link="js-car-spec-detail-popup" class="wp-btn white small bgray detail-view"><span><spring:message code="TODO.KEY" text="상세"/></span></button>
									<button type="button" id="js-car-spec-edit" data-link="js-car-spec-step1-popup" data-depth="1" class="wp-btn white small bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
									<button type="button" id="js-car-spec-delete" class="wp-btn white small bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
								</div>
							</td>
						{{/isPM}}
						{{#isBS}}
							<td class="wp-color wp-border-color">{{bsMakerNm}}</td>
							<td class="wp-al wp-border-color"><span>{{bsItemsNm}}</span>
								<div class="wp-btn-area wp-btn-stick wp-fr">
									<button type="button" id="js-car-spec-detail" data-link="js-car-spec-detail-popup" class="wp-btn white small bgray detail-view"><span><spring:message code="TODO.KEY" text="상세"/></span></button>
									<button type="button" id="js-car-spec-edit" data-link="js-car-spec-step1-popup" data-depth="1" class="wp-btn white small bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
									<button type="button" id="js-car-spec-delete" class="wp-btn white small bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
								</div>
							</td>
						{{/isBS}}
						{{#isCR}}
							<td class="wp-color wp-border-color">{{crMakerNm}}</td>
							<td class="wp-al wp-border-color"><span>{{crItemsNm}}</span>
								<div class="wp-btn-area wp-btn-stick wp-fr">
									<button type="button" id="js-car-spec-detail" data-link="js-car-spec-detail-popup" class="wp-btn white small bgray detail-view"><span><spring:message code="TODO.KEY" text="상세"/></span></button>
									<button type="button" id="js-car-spec-edit" data-link="js-car-spec-step1-popup" data-depth="1" class="wp-btn white small bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
									<button type="button" id="js-car-spec-delete" class="wp-btn white small bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
								</div>
							</td>
						{{/isCR}}
						
					{{else}}
						
						{{#isPT}}
							<td class="wp-color">{{ptMakerNm}}</td>
							<td class="wp-al"><span>{{ptItemsNm}}</span>
								<div class="wp-btn-area wp-btn-stick wp-fr">
									<button type="button" id="js-car-spec-detail" data-link="js-car-spec-detail-popup" class="wp-btn white small bgray detail-view"><span><spring:message code="TODO.KEY" text="상세"/></span></button>
									<button type="button" id="js-car-spec-edit" data-link="js-car-spec-step1-popup" data-depth="1" class="wp-btn white small bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
									<button type="button" id="js-car-spec-delete" class="wp-btn white small bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
								</div>
							</td>
						{{/isPT}}
						{{#isED}}
							<td class="wp-color">{{edMakerNm}}</td>
							<td class="wp-al"><span>{{edItemsNm}}</span>
								<div class="wp-btn-area wp-btn-stick wp-fr">
									<button type="button" id="js-car-spec-detail" data-link="js-car-spec-detail-popup" class="wp-btn white small bgray detail-view"><span><spring:message code="TODO.KEY" text="상세"/></span></button>
									<button type="button" id="js-car-spec-edit" data-link="js-car-spec-step1-popup" data-depth="1" class="wp-btn white small bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
									<button type="button" id="js-car-spec-delete" class="wp-btn white small bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
								</div>
							</td>
						{{/isED}}
						{{#isPM}}
							<td class="wp-color">{{pmMakerNm}}</td>
							<td class="wp-al"><span>{{pmItemsNm}}</span>
								<div class="wp-btn-area wp-btn-stick wp-fr">
									<button type="button" id="js-car-spec-detail" data-link="js-car-spec-detail-popup" class="wp-btn white small bgray detail-view"><span><spring:message code="TODO.KEY" text="상세"/></span></button>
									<button type="button" id="js-car-spec-edit" data-link="js-car-spec-step1-popup" data-depth="1" class="wp-btn white small bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
									<button type="button" id="js-car-spec-delete" class="wp-btn white small bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
								</div>
							</td>
						{{/isPM}}
						{{#isBS}}
							<td class="wp-color">{{bsMakerNm}}</td>
							<td class="wp-al"><span>{{bsItemsNm}}</span>
								<div class="wp-btn-area wp-btn-stick wp-fr">
									<button type="button" id="js-car-spec-detail" data-link="js-car-spec-detail-popup" class="wp-btn white small bgray detail-view"><span><spring:message code="TODO.KEY" text="상세"/></span></button>
									<button type="button" id="js-car-spec-edit" data-link="js-car-spec-step1-popup" data-depth="1" class="wp-btn white small bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
									<button type="button" id="js-car-spec-delete" class="wp-btn white small bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
								</div>
							</td>
						{{/isBS}}
						{{#isCR}}
							<td class="wp-color">{{crMakerNm}}</td>
							<td class="wp-al"><span>{{crItemsNm}}</span>
								<div class="wp-btn-area wp-btn-stick wp-fr">
									<button type="button" id="js-car-spec-detail" data-link="js-car-spec-detail-popup" class="wp-btn white small bgray detail-view"><span><spring:message code="TODO.KEY" text="상세"/></span></button>
									<button type="button" id="js-car-spec-edit" data-link="js-car-spec-step1-popup" data-depth="1" class="wp-btn white small bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
									<button type="button" id="js-car-spec-delete" class="wp-btn white small bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
								</div>
							</td>
						{{/isCR}}
						
					{{/if}}
					
				</tr>
			{{/rows}}
		</script>

		<script type="text/javascript">

			var carProdSpecListTemplate;

			$(document).ready(function() {
				
				//Handlebar 초기화
				var source = $('#js-template-car-prod-spec-list').html();
				carProdSpecListTemplate = Handlebars.compile(source);
				
				Handlebars.registerHelper('isPT', function(options) {
					if (this.dispMaker == 'PT') {
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				Handlebars.registerHelper('isED', function(options) {
					if (this.dispMaker == 'ED') {
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				Handlebars.registerHelper('isPM', function(options) {
					if (this.dispMaker == 'PM') {
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				Handlebars.registerHelper('isBS', function(options) {
					if (this.dispMaker == 'BS') {
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				Handlebars.registerHelper('isCR', function(options) {
					if (this.dispMaker == 'CR') {
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				
				//등록 버튼
				$('#js-car-spec-color-add').off().on('click', function() {
					initCarSpecStep1Popup();
				});
				$('#js-car-spec-model-add').off().on('click', function() {
					initCarSpecModelPopup();
				});
				
				//탭 버튼
				$('a[id*=js-car-spec-tab-]').off().on('click', function() {
					
					$('a[id*=js-car-spec-tab-]').each(function() {
						$(this).removeClass('active');
					});
					
					$(this).addClass('active');
					
					retrieveColorSpecList.request();
				});
				
				//'<' 버튼
				$("#js-car-spec-prev").off().on("click", function() {
					
					$('a[id*=js-car-spec-tab-]').each(function(index) {
						
						if($(this).hasClass('active'))
						{
							if(index == 0)
							{
								$('a[id*=js-car-spec-tab-]').eq($('a[id*=js-car-spec-tab-]').length-1).click();
							}
							else
							{
								$('a[id*=js-car-spec-tab-]').eq(index-1).click();
							}
							
							return false;
						}
					});
				});
				
				//'>' 버튼
				$("#js-car-spec-next").off().on("click", function() {
					
					$('a[id*=js-car-spec-tab-]').each(function(index) {
						
						if($(this).hasClass('active'))
						{
							if(index == $('a[id*=js-car-spec-tab-]').length-1)
							{
								$('a[id*=js-car-spec-tab-]').eq(0).click();
							}
							else
							{
								$('a[id*=js-car-spec-tab-]').eq(index+1).click();
							}
							
							return false;
						}
					});
				});
			});
			
			// ------------------------------------------------
			// 제품정보 조회
			// ------------------------------------------------
			var retrieveColorSpecList = {
				success : function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';

						if (message === 'OK') {
							
							// TODO
							
							//선택된 탭에 따라 어떤 컬럼을 화면에 보여줄지 구분하기 위한 값
							$('a[id*=js-car-spec-tab-]').each(function() {
								
								if($(this).hasClass('active'))
								{
									var code = this.id.substring('js-car-spec-tab'.length + 1);
									var name = $(this).text();
									
									$('#js-car-spec-title').text(name);
									
									for(var i=0; i<response.rs.length; i++)
									{
										response.rs[i].dispMaker = code;
									}
								}
							});
							
							var data = {
								rows : response.rs
							};
							
							var html = carProdSpecListTemplate(data);
							
							$('#js-car-spec-list').empty().append(html);
							
							$('#js-car-spec-list').find('button[id=js-car-spec-detail]').off().on('click', function(){
								
								var code = $(this).parent().parent().parent().find('#js-car-spec-color-id').val();
								
								initCarSpecDetailPopup(code);
								
								fn_openPop($(this));
							});
							
							$('#js-car-spec-list').find('button[id=js-car-spec-edit]').off().on('click', function(){
								
								var code = $(this).parent().parent().parent().find('#js-car-spec-color-id').val();
								
								initCarSpecStep1Popup(code);
								
								fn_openPop($(this));
							});
							
							$('#js-car-spec-list').find('button[id=js-car-spec-delete]').off().on('click', function(){
								
								var code = $(this).parent().parent().parent().find('#js-car-spec-color-id').val();
								var carPlant = $('#js-car-header-car-plant').val();
								
								app.message.confirm({
									  title             : '<spring:message code="TODO.KEY" text="삭제"/>'
									, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
									, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
									, callback          : {
										confirm: function() {
											delCarColorInfo.request(code, carPlant);
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
							service : 'car.prodspec',
							method : 'retrieveColorSpecList',
							carPlant : $('#js-car-header-car-plant').val()
					};

					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			// ------------------------------------------------
			// 제품정보 삭제
			// ------------------------------------------------
			var delCarColorInfo = {
				success : function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';

						if (message === 'OK') {
							
							retrieveColorSpecList.request();
							
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
				request : function(code, carPlant) {
					// ------------------------------------
					// ajax request
					// ------------------------------------

					var params = {
							service : 'car.prodspec',
							method : 'delCarColorInfo',
							colorId : code,
							carPlant : carPlant
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
		
		<!-- 제품 Spec 상세조회 -->
		<div class="wp-dim-layer">
			<div class="wp-dimBg"></div>
			<div id="js-car-spec-detail-popup" class="wp-pop-layer wp-pop-w940 wp-box-sizing wp-car-popup">
				<div class="wp-pop-title">
					<spring:message code="TODO.KEY" text="컬러 현황 상세"/>
					<button type="button" class="wp-btn-close-layer wp-spr-btn"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
				</div>
				<div class="wp-pop-conts">
			<!-- scroll Area -->
			<div class="wp-pop-cont-scrollable">
			<!--content //-->
				<!-- round-box -->
				<div class="wp-round-box">
					<h2><spring:message code="TODO.KEY" text="기본 정보"/></h2>
					<div class="wp-table-st3">
					<table>
						<caption><spring:message code="TODO.KEY" text="제품 정보"/></caption>
						<colgroup>
							<col style="width:25%;">
							<col style="width:25%;">
							<col style="width:25%;">
							<col style="width:25%;">
						</colgroup>
						<tbody>
							<tr>
								<th><spring:message code="TODO.KEY" text="칼라코드"/></th>
								<td><span id="js-car-spec-detail-popup-color-id"></span></td>
								<th><spring:message code="TODO.KEY" text="칼라명"/></th>
								<td><span id="js-car-spec-detail-popup-color-name"></span></td>
							</tr>
							<tr>
								<th><spring:message code="TODO.KEY" text="차종별 범퍼 도료 Maker"/></th>
								<td colspan="3"><span id="js-car-spec-detail-popup-model-maker"></span></td>
							</tr>
						</tbody>
					</table>
					</div>
				</div>
				<!-- //round-box -->
		
				<!-- round-box -->
				<div class="wp-round-box">
					<h2><spring:message code="TODO.KEY" text="제품 정보"/></h2>
					<!-- <div class="wp-table-top">* <spring:message code="TODO.KEY" text="점도는 25 °C 기준"/></div> -->
					<div class="wp-table-st1 h-center">
					<table>
						<caption><spring:message code="TODO.KEY" text="제품 정보"/></caption>
						<colgroup>
							<col style="width:auto">
							<col style="width:17%;">
							<col style="width:17%;">
							<col style="width:17%;">
							<col style="width:17%;">
							<col style="width:17%;">
						</colgroup>
						<thead>
							<tr>
								<th><spring:message code="TODO.KEY" text="구분"/></th>
								<th><spring:message code="TODO.KEY" text="전처리"/></th>
								<th><spring:message code="TODO.KEY" text="전착"/></th>
								<th>Primer</th>
								<th>Base</th>
								<th>Clear</th>
							</tr>
						</thead>
						<tbody id="js-car-spec-detail-popup-prod-list">
							<tr>
								<th>Maker</th>
							</tr>
							<tr>
								<th><spring:message code="TODO.KEY" text="제품명"/></th>
							</tr>
							<tr>
								<th><spring:message code="TODO.KEY" text="점도 상한"/></th>
							</tr>
							<tr>
								<th><spring:message code="TODO.KEY" text="점도 하한"/></th>
							</tr>
							<tr>
								<th><spring:message code="TODO.KEY" text="점도측정기"/></th>
							</tr>
							<tr>
								<th><spring:message code="TODO.KEY" text="온도 상한"/></th>
							</tr>
							<tr>
								<th><spring:message code="TODO.KEY" text="온도 하한"/></th>
							</tr>
						</tbody>
					</table>
					</div>
				</div>
				<!-- //round-box -->
		
				<!-- round-box -->
				<div class="wp-round-box">
					<h2><spring:message code="TODO.KEY" text="Spec. 정보"/></h2>
					<h3><spring:message code="TODO.KEY" text="도막 두께"/></h3>
					<div class="wp-table-st1 h-center">
					<table>
						<caption><spring:message code="TODO.KEY" text="도막 두께"/></caption>
						<colgroup>
							<col style="width:auto">
							<col style="width:10%;">
							<col style="width:8%;">
							<col style="width:8%;">
							<col style="width:8%;">
							<col style="width:8%;">
							<col style="width:8%;">
							<col style="width:8%;">
							<col style="width:8%;">
							<col style="width:8%;">
							<col style="width:8%;">
							<col style="width:8%;">
						</colgroup>
						<thead>
							<tr>
								<th><spring:message code="TODO.KEY" text="구분"/></th>
								<th><spring:message code="TODO.KEY" text="전처리"/></th>
								<th colspan="2"><spring:message code="TODO.KEY" text="전착"/></th>
								<th colspan="2">Primer</th>
								<th colspan="2">Base</th>
								<th colspan="2">Clear</th>
								<th colspan="2">Total</th>
							</tr>
							<tr>
								<th><spring:message code="TODO.KEY" text="차종"/></th>
								<th><spring:message code="TODO.KEY" text="전처리"/></th>
								<th><spring:message code="TODO.KEY" text="수평"/></th>
								<th><spring:message code="TODO.KEY" text="수직"/></th>
								<th><spring:message code="TODO.KEY" text="수평"/></th>
								<th><spring:message code="TODO.KEY" text="수직"/></th>
								<th><spring:message code="TODO.KEY" text="수평"/></th>
								<th><spring:message code="TODO.KEY" text="수직"/></th>
								<th><spring:message code="TODO.KEY" text="수평"/></th>
								<th><spring:message code="TODO.KEY" text="수직"/></th>
								<th><spring:message code="TODO.KEY" text="수평"/></th>
								<th><spring:message code="TODO.KEY" text="수직"/></th>
							</tr>
						</thead>
						<tbody id="js-car-spec-detail-popup-spec-ft-list">
						</tbody>
					</table>
					<table>
						<caption><spring:message code="TODO.KEY" text="도막 두께"/></caption>
						<colgroup>
							<col style="width:13%;">
							<col style="width:auto">
						</colgroup>
						<tbody>
							<tr>
								<th><spring:message code="TODO.KEY" text="비고"/></th>
								<td class="wp-al"><span id="js-car-spec-detail-popup-spec-ft-remark"></span></td>
							</tr>
						</tbody>
					</table>
					</div>
					<div class="wp-table-top">
						<h3><spring:message code="TODO.KEY" text="외관 품질"/></h3>
						(<spring:message code="TODO.KEY" text="단위 cf"/> : <spring:message code="TODO.KEY" text="영상 선명도"/> ( CF= 0.5*OP+0.35*SH+0.15*LU)   <spring:message code="TODO.KEY" text="조도"/> : <spring:message code="TODO.KEY" text="Ra(측정방식)기준 ,0.8cm(측정거리)"/>)
					</div>
					<div class="wp-table-st1 h-center">
					<table>
						<caption><spring:message code="TODO.KEY" text="외관 품질"/></caption>
						<colgroup>
							<col style="width:auto">
							<col style="width:12%;">
							<col style="width:12%;">
							<col style="width:12%;">
							<col style="width:12%;">
							<col style="width:12%;">
							<col style="width:12%;">
							<col style="width:12%;">
						</colgroup>
						<thead>
							<tr>
								<th><spring:message code="TODO.KEY" text="구분"/></th>
								<th colspan="2"><spring:message code="TODO.KEY" text="하도"/>(<spring:message code="TODO.KEY" text="전착"/>) <spring:message code="TODO.KEY" text="조도"/>(<spring:message code="TODO.KEY" text="단위㎛"/>)</th>
								<th colspan="2"><spring:message code="TODO.KEY" text="하도"/>(<spring:message code="TODO.KEY" text="전착"/>) <spring:message code="TODO.KEY" text="광택"/></th>
								<th colspan="3"><spring:message code="TODO.KEY" text="상도"/> ( <spring:message code="TODO.KEY" text="단위 cf"/> : <spring:message code="TODO.KEY" text="영상 선명도"/> )</th>
							</tr>
							<tr>
								<th><spring:message code="TODO.KEY" text="차종"/></th>
								<th><spring:message code="TODO.KEY" text="수평"/></th>
								<th><spring:message code="TODO.KEY" text="수직"/></th>
								<th><spring:message code="TODO.KEY" text="수평"/></th>
								<th><spring:message code="TODO.KEY" text="수직"/></th>
								<th><spring:message code="TODO.KEY" text="수평"/></th>
								<th><spring:message code="TODO.KEY" text="수직"/></th>
								<th><spring:message code="TODO.KEY" text="취약부"/></th>
							</tr>
						</thead>
						<tbody id="js-car-spec-detail-popup-spec-su-list">
						</tbody>
					</table>
					<table>
						<caption><spring:message code="TODO.KEY" text="외관 품질"/></caption>
						<colgroup>
							<col style="width:13%;">
							<col style="width:auto">
						</colgroup>
						<tbody>
							<tr>
								<th><spring:message code="TODO.KEY" text="비고"/></th>
								<td class="wp-al"><span id="js-car-spec-detail-popup-spec-su-remark"></span></td>
							</tr>
						</tbody>
					</table>
					</div>
					<h3><spring:message code="TODO.KEY" text="색상 품질"/></h3>
					<div class="wp-table-st1 h-center">
					<table>
						<caption><spring:message code="TODO.KEY" text="색차"/></caption>
						<colgroup>
							<col style="width:13%;">
							<col style="width:auto">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar">Δ  E</th>
								<td class="wp-al"><span id="js-car-spec-detail-popup-delta-e-value"></span></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="비고"/></th>
								<td class="wp-al"><span id="js-car-spec-detail-popup-co-spec-remark"></span></td>
							</tr>
						</tbody>
					</table>
					</div>
		
					<h3><spring:message code="TODO.KEY" text="보관 및 운반 조건"/></h3>
					<div class="wp-table-st1 h-center">
					<table>
						<caption><spring:message code="TODO.KEY" text="보관 및 운반 조건"/></caption>
						<colgroup>
							<col style="width:13%;">
							<col style="width:auto">
						</colgroup>
						<tbody id="js-car-spec-detail-popup-etc-spec-list">
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="보관"/></th>
								<td class="wp-al"><spring:message code="TODO.KEY" text="온도"/>: <span id="js-car-spec-detail-popup-st-temp"></span>&nbsp;&nbsp;<spring:message code="TODO.KEY" text="습도"/>: <span id="js-car-spec-detail-popup-st-humid"></span></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="운송"/></th>
								<td class="wp-al"><spring:message code="TODO.KEY" text="온도"/>: <span id="js-car-spec-detail-popup-mo-temp"></span>&nbsp;&nbsp;<spring:message code="TODO.KEY" text="습도"/>: <span id="js-car-spec-detail-popup-mo-humid"></span></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="비고"/></th>
								<td class="wp-al">
									<span id="js-car-spec-detail-popup-etc-spec-remark"></span>
								</td>
							</tr>
						</tbody>
					</table>
					</div>
				</div>
				<!-- //round-box -->
		
			<!--// content-->
			<!-- // scroll Area -->
			</div>
		
				</div>
			</div>
		</div>
		
		<script id="js-template-spec-detail-popup-prod-list" type="text/x-handlebars-template">
			<td>{{pt}}</td>
			<td>{{ed}}</td>
			<td>{{pm}}</td>
			<td>{{bs}}</td>
			<td>{{cr}}</td>
		</script>
		
		<script id="js-template-spec-detail-popup-spec-ft-list" type="text/x-handlebars-template">
			{{#rows}}
				<tr>
					<td>{{modelId}}</td>
					<td>{{ptFtMinValue}}~{{ptFtMaxValue}}</td>
					<td>{{edHoFtMinValue}}~{{edHoFtMaxValue}}</td>
					<td>{{edVeFtMinValue}}~{{edVeFtMaxValue}}</td>
					<td>{{pmHoFtMinValue}}~{{pmHoFtMaxValue}}</td>
					<td>{{pmVeFtMinValue}}~{{pmVeFtMaxValue}}</td>
					<td>{{bsHoFtMinValue}}~{{bsHoFtMaxValue}}</td>
					<td>{{bsVeFtMinValue}}~{{bsVeFtMaxValue}}</td>
					<td>{{crHoFtMinValue}}~{{crHoFtMaxValue}}</td>
					<td>{{crVeFtMinValue}}~{{crVeFtMaxValue}}</td>
					<td>{{totHoMin}}~{{totHoMax}}</td>
					<td>{{totVeMin}}~{{totVeMax}}</td>
				</tr>
			{{/rows}}
		</script>
		
		<script id="js-template-spec-detail-popup-spec-su-list" type="text/x-handlebars-template">
			{{#rows}}
				<tr>
					<td>{{modelId}}</td>
					<td>{{edHoIlMinValue}}~{{edHoIlMaxValue}}</td>
					<td>{{edVeIlMinValue}}~{{edVeIlMaxValue}}</td>
					<td>{{edHoLuMinValue}}~{{edHoLuMaxValue}}</td>
					<td>{{edVeLuMinValue}}~{{edVeLuMaxValue}}</td>
					<td>{{bcHoCfMinValue}}~{{bcHoCfMaxValue}}</td>
					<td>{{bcVeCfMinValue}}~{{bcVeCfMaxValue}}</td>
					<td>{{bcWpCfMinValue}}~{{bcWpCfMaxValue}}</td>
				</tr>
			{{/rows}}
		</script>
		
		<script type="text/javascript">
		
		var carSpecDetailPopupProdListTemplate;
		var carSpecDetailPopupSpecFtListTemplate;
		var carSpecDetailPopupSpecSuListTemplate;
		
		var initCarSpecDetailPopup = function(colorId){
			
			//Handlebar 초기화
			var source = $('#js-template-spec-detail-popup-prod-list').html();
			carSpecDetailPopupProdListTemplate = Handlebars.compile(source);
			
			var source = $('#js-template-spec-detail-popup-spec-ft-list').html();
			carSpecDetailPopupSpecFtListTemplate = Handlebars.compile(source);
			
			var source = $('#js-template-spec-detail-popup-spec-su-list').html();
			carSpecDetailPopupSpecSuListTemplate = Handlebars.compile(source);
			
			//초기화
			$('#js-car-spec-detail-popup-prod-list').find('tr').find('td').remove();
			$('#js-car-spec-detail-popup-spec-ft-list').empty();
			$('#js-car-spec-detail-popup-spec-ft-remark').text('');
			$('#js-car-spec-detail-popup-spec-su-list').empty();
			$('#js-car-spec-detail-popup-spec-su-remark').text('');
			$('#js-car-spec-detail-popup-color-id').text('');
			$('#js-car-spec-detail-popup-color-name').text('');
			$('#js-car-spec-detail-popup-model-maker').text('');
			$('#js-car-spec-detail-popup-delta-e-value').text('');
			$('#js-car-spec-detail-popup-co-spec-remark').text('');
			$('#js-car-spec-detail-popup-st-temp').text('<spring:message code="TODO.KEY" text="없음"/>');
			$('#js-car-spec-detail-popup-st-humid').text('<spring:message code="TODO.KEY" text="없음"/>');
			$('#js-car-spec-detail-popup-mo-temp').text('<spring:message code="TODO.KEY" text="없음"/>');
			$('#js-car-spec-detail-popup-mo-humid').text('<spring:message code="TODO.KEY" text="없음"/>');
			$('#js-car-spec-detail-popup-etc-spec-remark').text('');
			
			//조회
			retrieveColorInfo.detail.request(colorId);
			retrieveCarItemsView.request(colorId);
			retrieveItemsSpecFt.detail.request(colorId);
			retrieveItemsSpecSu.detail.request(colorId);
			retrieveItemsSpecCo.detail.request(colorId);
			retrieveItemsSpecEtc.detail.request(colorId);
		}
		
		var retrieveColorInfo = {
				detail : {
					success : function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								if(response.rs != null){
									
									$('#js-car-spec-detail-popup-color-id').text(response.rs.colorInfo.colorId);
									$('#js-car-spec-detail-popup-color-name').text(response.rs.colorInfo.colorNm);
									$('#js-car-spec-detail-popup-model-maker').text(response.rs.colorInfo.modelMaker);
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
					request : function(colorId) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						
						var params = {
								service : 'car.prodspec',
								method : 'retrieveColorInfo',
								carPlant : $('#js-car-header-car-plant').val(),
								colorId : colorId
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				step1 : {
					success : function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								if(response.rs != null){
									
									$('#js-car-spec-step1-popup-color-id').val(response.rs.colorInfo.colorId);
									$('#js-car-spec-step1-popup-color-name').val(response.rs.colorInfo.colorNm);
									
									var data = {
										rows : response.rs.modelMakerList
									};
									
									addCarSpecStep1Popup(data);
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
					request : function(colorId) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						
						var params = {
								service : 'car.prodspec',
								method : 'retrieveColorInfo',
								carPlant : $('#js-car-header-car-plant').val(),
								colorId : colorId
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				}
		};
		
		var retrieveCarItemsView = {
				success : function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							
							$('#js-car-spec-detail-popup-prod-list').find('tr').find('td').remove();
							
							for(var i=0; i<7; i++){
								
								var data = response.rs[i];
								
								if(typeof data == "undefined")
								{
									data = {
										pt : '-',
										ed : '-',
										pm : '-',
										bs : '-',
										cr : '-'
									}
								}
								
								var html = carSpecDetailPopupProdListTemplate(data);
								
								$('#js-car-spec-detail-popup-prod-list').find('tr').eq(i).append(html);
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
				request : function(colorId) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					
					var params = {
							service : 'car.prodspec',
							method : 'retrieveCarItemsView',
							carPlant : $('#js-car-header-car-plant').val(),
							colorId : colorId
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
		};
		
		var retrieveItemsSpecFt = {
				detail : {
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
								
								var html = carSpecDetailPopupSpecFtListTemplate(data);
								
								$('#js-car-spec-detail-popup-spec-ft-list').empty().append(html);
								
								$('#js-car-spec-detail-popup-spec-ft-list').find('td').each(function(){
									
									var value = $(this).text();
									
									if(value == '~')
									{
										$(this).text('-');
									}
									else if(value.substring(0,1) == '~')
									{
										$(this).html(value.substring(1) + '<span class="wp-fc-down"><spring:message code="TODO.KEY" text="이하"/></span>');
									}
									else if(value.substring(value.length - 1) == '~')
									{
										$(this).html(value.substring(0, value.length - 1) + '<span class="wp-fc-up"><spring:message code="TODO.KEY" text="이상"/></span>');
									}
								});
								
								var ftRemark = '';
								
								for(var i=0; i<response.rs.length; i++)
								{
									if(app.utils.isEmpty(response.rs[i].ftSpecRemark))
									{
										continue;
									}
									
									if(ftRemark != '')
									{
										ftRemark += '<br>';
									}
									
									ftRemark += response.rs[i].ftSpecRemark;
								}
								
								$('#js-car-spec-detail-popup-spec-ft-remark').html(ftRemark);
								
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
					request : function(colorId) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						
						var params = {
								service : 'car.prodspec',
								method : 'retrieveItemsSpecFt',
								carPlant : $('#js-car-header-car-plant').val(),
								colorId : colorId
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				step3 : {
					success : function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								if(response.rs.length > 0)
								{
									$('#js-car-spec-step3-popup-pt-min').val(response.rs[0].ptFtMinValue);
									$('#js-car-spec-step3-popup-pt-max').val(response.rs[0].ptFtMaxValue);
									$('#js-car-spec-step3-popup-ed-ho-min').val(response.rs[0].edHoFtMinValue);
									$('#js-car-spec-step3-popup-ed-ho-max').val(response.rs[0].edHoFtMaxValue);
									$('#js-car-spec-step3-popup-ed-ve-min').val(response.rs[0].edVeFtMinValue);
									$('#js-car-spec-step3-popup-ed-ve-max').val(response.rs[0].edVeFtMaxValue);
									$('#js-car-spec-step3-popup-pm-ho-min').val(response.rs[0].pmHoFtMinValue);
									$('#js-car-spec-step3-popup-pm-ho-max').val(response.rs[0].pmHoFtMaxValue);
									$('#js-car-spec-step3-popup-pm-ve-min').val(response.rs[0].pmVeFtMinValue);
									$('#js-car-spec-step3-popup-pm-ve-max').val(response.rs[0].pmVeFtMaxValue);
									$('#js-car-spec-step3-popup-bs-ho-min').val(response.rs[0].bsHoFtMinValue);
									$('#js-car-spec-step3-popup-bs-ho-max').val(response.rs[0].bsHoFtMaxValue);
									$('#js-car-spec-step3-popup-bs-ve-min').val(response.rs[0].bsVeFtMinValue);
									$('#js-car-spec-step3-popup-bs-ve-max').val(response.rs[0].bsVeFtMaxValue);
									$('#js-car-spec-step3-popup-cr-ho-min').val(response.rs[0].crHoFtMinValue);
									$('#js-car-spec-step3-popup-cr-ho-max').val(response.rs[0].crHoFtMaxValue);
									$('#js-car-spec-step3-popup-cr-ve-min').val(response.rs[0].crVeFtMinValue);
									$('#js-car-spec-step3-popup-cr-ve-max').val(response.rs[0].crVeFtMaxValue);
									$('#js-car-spec-step3-popup-tot-ho-min').val(response.rs[0].totHoMin);
									$('#js-car-spec-step3-popup-tot-ho-max').val(response.rs[0].totHoMax);
									$('#js-car-spec-step3-popup-tot-ve-min').val(response.rs[0].totVeMin);
									$('#js-car-spec-step3-popup-tot-ve-max').val(response.rs[0].totVeMax);
									$('#js-car-spec-step3-popup-ft-remark').val(response.rs[0].ftSpecRemark);
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
					request : function(colorId, modelId) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						
						var params = {
								service : 'car.prodspec',
								method : 'retrieveItemsSpecFt',
								carPlant : $('#js-car-header-car-plant').val(),
								colorId : colorId,
								modelId : modelId
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				}
		};
		
		var retrieveItemsSpecSu = {
				detail : {
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
								
								var html = carSpecDetailPopupSpecSuListTemplate(data);
								
								$('#js-car-spec-detail-popup-spec-su-list').empty().append(html);
								
								$('#js-car-spec-detail-popup-spec-su-list').find('td').each(function(index){
									
									var value = $(this).text();
									
									if(value == '~')
									{
										$(this).text('-');
									}
									else if(value.substring(0,1) == '~')
									{
										$(this).html(value.substring(1) + '<span class="wp-fc-down"><spring:message code="TODO.KEY" text="이하"/></span>');
									}
									else if(value.substring(value.length - 1) == '~')
									{
										$(this).html(value.substring(0, value.length - 1) + '<span class="wp-fc-up"><spring:message code="TODO.KEY" text="이상"/></span>');
									}
								});
								
								var suRemark = '';
								
								for(var i=0; i<response.rs.length; i++)
								{
									if(app.utils.isEmpty(response.rs[i].suSpecRemark))
									{
										continue;
									}
									
									if(suRemark != '')
									{
										suRemark += '<br>';
									}
									
									suRemark += response.rs[i].suSpecRemark;
								}
								
								$('#js-car-spec-detail-popup-spec-su-remark').html(suRemark);
								
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
					request : function(colorId) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						
						var params = {
								service : 'car.prodspec',
								method : 'retrieveItemsSpecSu',
								carPlant : $('#js-car-header-car-plant').val(),
								colorId : colorId
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				step3 : {
					success : function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								if(response.rs.length > 0)
								{
									$('#js-car-spec-step3-popup-ed-ho-il-min').val(response.rs[0].edHoIlMinValue);
									$('#js-car-spec-step3-popup-ed-ho-il-max').val(response.rs[0].edHoIlMaxValue);
									$('#js-car-spec-step3-popup-ed-ve-il-min').val(response.rs[0].edVeIlMinValue);
									$('#js-car-spec-step3-popup-ed-ve-il-max').val(response.rs[0].edVeIlMaxValue);
									$('#js-car-spec-step3-popup-ed-ho-lu-min').val(response.rs[0].edHoLuMinValue);
									$('#js-car-spec-step3-popup-ed-ho-lu-max').val(response.rs[0].edHoLuMaxValue);
									$('#js-car-spec-step3-popup-ed-ve-lu-min').val(response.rs[0].edVeLuMinValue);
									$('#js-car-spec-step3-popup-ed-ve-lu-max').val(response.rs[0].edVeLuMaxValue);
									$('#js-car-spec-step3-popup-bc-ho-cf-min').val(response.rs[0].bcHoCfMinValue);
									$('#js-car-spec-step3-popup-bc-ho-cf-max').val(response.rs[0].bcHoCfMaxValue);
									$('#js-car-spec-step3-popup-bc-ve-cf-min').val(response.rs[0].bcVeCfMinValue);
									$('#js-car-spec-step3-popup-bc-ve-cf-max').val(response.rs[0].bcVeCfMaxValue);
									$('#js-car-spec-step3-popup-bc-wp-cf-min').val(response.rs[0].bcWpCfMinValue);
									$('#js-car-spec-step3-popup-bc-wp-cf-max').val(response.rs[0].bcWpCfMaxValue);
									$('#js-car-spec-step3-popup-su-remark').val(response.rs[0].suSpecRemark);
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
					request : function(colorId, modelId) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						
						var params = {
								service : 'car.prodspec',
								method : 'retrieveItemsSpecSu',
								carPlant : $('#js-car-header-car-plant').val(),
								colorId : colorId,
								modelId : modelId
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				}
		};
		
		var retrieveItemsSpecCo = {
				detail : {
					success : function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								if(response.rs != null){
									
									$('#js-car-spec-detail-popup-delta-e-value').text(response.rs.deltaEValue);
									$('#js-car-spec-detail-popup-co-spec-remark').text(response.rs.coSpecRemark);
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
					request : function(colorId) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						
						var params = {
								service : 'car.prodspec',
								method : 'retrieveItemsSpecCo',
								carPlant : $('#js-car-header-car-plant').val(),
								colorId : colorId
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				step3 : {
					success : function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								if(response.rs != null){
									
									$('#js-car-spec-step3-popup-delta-e-value').val(response.rs.deltaEValue);
									$('#js-car-spec-step3-popup-co-spec-remark').val(response.rs.coSpecRemark);
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
					request : function(colorId) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						
						var params = {
								service : 'car.prodspec',
								method : 'retrieveItemsSpecCo',
								carPlant : $('#js-car-header-car-plant').val(),
								colorId : colorId
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				}
		};
		
		var retrieveItemsSpecEtc = {
				detail : {
					success : function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								if(response.rs != null){
									
									var stTempMinValue = response.rs.stTempMinValue != null ? response.rs.stTempMinValue : '';
									var stTempMaxValue = response.rs.stTempMaxValue != null ? response.rs.stTempMaxValue : '';
									var stHumidMinValue = response.rs.stHumidMinValue != null ? response.rs.stHumidMinValue : '';
									var stHumidMaxValue = response.rs.stHumidMaxValue != null ? response.rs.stHumidMaxValue : '';
									var moTempMinValue = response.rs.moTempMinValue != null ? response.rs.moTempMinValue : '';
									var moTempMaxValue = response.rs.moTempMaxValue != null ? response.rs.moTempMaxValue : '';
									var moHumidMinValue = response.rs.moHumidMinValue != null ? response.rs.moHumidMinValue : '';
									var moHumidMaxValue = response.rs.moHumidMaxValue != null ? response.rs.moHumidMaxValue : '';
									
									$('#js-car-spec-detail-popup-st-temp').text(stTempMinValue + '℃ ~ ' + stTempMaxValue + '℃');
									$('#js-car-spec-detail-popup-st-humid').text(stHumidMinValue + '% ~ ' + stHumidMaxValue + '%');
									$('#js-car-spec-detail-popup-mo-temp').text(moTempMinValue + '℃ ~ ' + moTempMaxValue + '℃');
									$('#js-car-spec-detail-popup-mo-humid').text(moHumidMinValue + '% ~ ' + moHumidMaxValue + '%');
									
									//비고
									$('#js-car-spec-detail-popup-etc-spec-remark').text(response.rs.etcSpecRemark);
									
									$('#js-car-spec-detail-popup-etc-spec-list').find('span[id*=js-car-spec-detail-popup-]').each(function(){
										
										var value = $(this).text();
										
										if(value == '℃ ~ ℃' || value == '% ~ %')
										{
											$(this).text('<spring:message code="TODO.KEY" text="없음"/>');
										}
										else if(value.substring(0,3) == '℃ ~' || value.substring(0,3) == '% ~')
										{
											$(this).html(value.substring(3) + '<span class="wp-fc-down"><spring:message code="TODO.KEY" text="이하"/></span>');
										}
										else if(value.substring(value.length - 3) == '~ ℃' || value.substring(value.length - 3) == '~ %')
										{
											$(this).html(value.substring(0, value.length - 3) + '<span class="wp-fc-up"><spring:message code="TODO.KEY" text="이상"/></span>');
										}
									});
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
					request : function(colorId) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						
						var params = {
								service : 'car.prodspec',
								method : 'retrieveItemsSpecEtc',
								carPlant : $('#js-car-header-car-plant').val(),
								colorId : colorId
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				step3 : {
					success : function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								if(response.rs != null){
									
									$('#js-car-spec-step3-popup-st-temp-min').val(response.rs.stTempMinValue);
									$('#js-car-spec-step3-popup-st-temp-max').val(response.rs.stTempMaxValue);
									$('#js-car-spec-step3-popup-st-humid-min').val(response.rs.stHumidMinValue);
									$('#js-car-spec-step3-popup-st-humid-max').val(response.rs.stHumidMaxValue);
									$('#js-car-spec-step3-popup-mo-temp-min').val(response.rs.moTempMinValue);
									$('#js-car-spec-step3-popup-mo-temp-max').val(response.rs.moTempMaxValue);
									$('#js-car-spec-step3-popup-mo-humid-min').val(response.rs.moHumidMinValue);
									$('#js-car-spec-step3-popup-mo-humid-max').val(response.rs.moHumidMaxValue);
									
									//비고
									$('#js-car-spec-step3-popup-etc-spec-remark').val(response.rs.etcSpecRemark);
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
					request : function(colorId) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						
						var params = {
								service : 'car.prodspec',
								method : 'retrieveItemsSpecEtc',
								carPlant : $('#js-car-header-car-plant').val(),
								colorId : colorId
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				}
		};
		
		</script>
		
		<!-- 컬러 현황 관리 등록 - 1단계 -->
		<div class="wp-dim-layer">
			<div class="wp-dimBg"></div>
			<div id="js-car-spec-step1-popup" class="wp-pop-layer wp-pop-w700 wp-box-sizing wp-car-popup wp-report-pop-section">
				<div class="wp-pop-title">
					<h1><spring:message code="TODO.KEY" text="컬러 현황 관리"/></h1>
					<button id="js-car-spec-step1-popup-close" type="button" class="wp-btn-close-layer wp-spr-btn"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
					<input type="hidden" id="js-car-spec-step1-popup-flag">
				</div>
				<div class="wp-pop-conts">
				<h2 class="wp-title wp-mt0"><spring:message code="TODO.KEY" text="등록현황"/></h2>
				<div class="wp-step-area">
					<ul>
						<li class="active"><span><spring:message code="TODO.KEY" text="기본 정보"/></span></li>
						<li class=""><span><spring:message code="TODO.KEY" text="제품 정보"/></span></li>
						<li class=""><span><spring:message code="TODO.KEY" text="Spec. 정보"/></span></li>
					</ul>
				</div>
					<!-- scroll Area -->
					<div class="wp-pop-cont-scrollable">
					<!--content //-->
						<h2 class="wp-title"><spring:message code="TODO.KEY" text="기본 정보"/></h2>
						<div class="wp-table-st1 wp-issue-apply">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:18%">
									<col style="width:32%">
									<col style="width:18%">
									<col style="width:32%">
								</colgroup>
								<tbody>
									<tr>
										<th class="wp-ar"><spring:message code="TODO.KEY" text="칼라코드"/></th>
										<td><input type="text" id="js-car-spec-step1-popup-color-id" title="<spring:message code='TODO.KEY' text='내용입력' />" style="text-transform: uppercase" /></td>
										<th class="wp-ar"><spring:message code="TODO.KEY" text="칼라명"/></th>
										<td><input type="text" id="js-car-spec-step1-popup-color-name" title="<spring:message code='TODO.KEY' text='내용입력'/>"></td>
									</tr>
									<tr>
										<th class="wp-ar"><spring:message code="TODO.KEY" text="차종별"/><br><spring:message code="TODO.KEY" text="범퍼 도료 Maker"/></th>
										<td colspan="3" class="wp-add-btn">
											<div class="wp-style-sel wp-wd450 wp-no-btn">
												<ul id="js-car-spec-step1-popup-list">
												</ul>
											</div>
											<button type="button" id="js-car-spec-step1-popup-add" data-link="js-car-model-maker-popup" data-depth="2" class="wp-btn gray cr3 wp-btn-pop"><spring:message code="TODO.KEY" text="등록"/></button>
										</td>
									</tr>
							</table>
						</div>
						<!-- btn-area -->
						<div class="wp-btn-area">
							<button type="button" id="js-car-spec-step1-popup-save" data-link="js-car-spec-step2-popup" data-depth="1" class="wp-btn blue1 cr3"><spring:message code="TODO.KEY" text="제품 정보 등록하기"/><span class="next"></span></button>
						</div>
						<!-- //btn-area -->
						<!--// content-->
					</div><!-- // scroll Area -->
				</div> <!-- // wp-pop-conts -->
			</div> <!-- // wp-pop-layer -->
		</div> <!-- // wp-dim-layer -->
		
		<script id="js-template-color-step1-popup-list" type="text/x-handlebars-template">
			{{#rows}}
				{{#ifEquals useYn 'Y'}}
				<li>
					{{modelId}}-{{makerNm}}
					<input type="hidden" id="js-car-spec-step1-popup-model-id" value="{{modelId}}">
					<input type="hidden" id="js-car-spec-step1-popup-use-yn" value="{{useYn}}">
					<input type="hidden" id="js-car-spec-step1-popup-maker-id" value="{{makerId}}">
				</li>
				{{/ifEquals}}
			{{/rows}}
		</script>
		
		<script type="text/javascript">
		
			var carSpecStep1PopupListTemplate;
			
			var initCarSpecStep1Popup = function(colorId){
				
				//Handlebar 초기화
				var source = $('#js-template-color-step1-popup-list').html();
				carSpecStep1PopupListTemplate = Handlebars.compile(source);
				
				//초기화
				$('#js-car-spec-step1-popup-color-id').attr('diabled', false);
				$('#js-car-spec-step1-popup-color-id').val('');
				$('#js-car-spec-step1-popup-color-name').val('');
				$('#js-car-spec-step1-popup-list').empty();
				$('#js-car-spec-step1-popup-flag').val('N');
				
				//추가 버튼
				$('#js-car-spec-step1-popup-add').off().on('click', function(){
					initCarModelMakerPopup(colorId);
				});
				
				//저장 버튼
				$('#js-car-spec-step1-popup-save').off().on('click', function(){
					saveCarColorInfo.request();
				});
				
				if(typeof colorId !== "undefined")
				{
					$('#js-car-spec-step1-popup-color-id').attr('diabled', true);
					$('#js-car-spec-step1-popup-flag').val('');
					retrieveColorInfo.step1.request(colorId);
				}
			}
			
			var saveCarColorInfo = {
					success : function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								// TODO
								$('#js-car-spec-step1-popup-close').click();
								
								var code = $('#js-car-spec-step1-popup-color-id').val();
								initCarSpecStep2Popup(code);
								
								fn_openPop($('#js-car-spec-step1-popup-save'));
								
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
						
						var flag = $('#js-car-spec-step1-popup-flag').val();
						var colorId = $('#js-car-spec-step1-popup-color-id').val();
						var colorNm = $('#js-car-spec-step1-popup-color-name').val();
						var modelMakerList = [];
						
						$('#js-car-spec-step1-popup-list').find('li').each(function(){
							
							var row = {
								modelId : $(this).find('#js-car-spec-step1-popup-model-id').val(),
								useYn : $(this).find('#js-car-spec-step1-popup-use-yn').val(),
								makerId : $(this).find('#js-car-spec-step1-popup-maker-id').val()
							};
								
							modelMakerList.push(row);
						});
						
						if(app.utils.isEmpty(colorId))
						{
							app.message.alert({
								title: '<spring:message code="TODO.KEY" text="알림"/>', message: '<spring:message code="TODO.KEY" text="칼라코드를 입력해 주세요."/>', confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>',
								callback: {
									confirm: function() {
										$('#js-car-spec-step1-popup-color-id').focus();
									}
								}
							});
							
							return;
						}
						if(app.utils.isEmpty(colorNm))
						{
							app.message.alert({
								title: '<spring:message code="TODO.KEY" text="알림"/>', message: '<spring:message code="TODO.KEY" text="칼라명을 입력해 주세요."/>', confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>',
								callback: {
									confirm: function() {
										$('#js-car-spec-step1-popup-color-name').focus();
									}
								}
							});
							
							return;
						}
						
						var params = {
								service : 'car.prodspec',
								method : 'saveCarColorInfo',
								carPlant : $('#js-car-header-car-plant').val(),
								flag : flag,
								colorId : colorId,
								colorNm : colorNm,
								modelMakerList : JSON.stringify(modelMakerList)
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			var addCarSpecStep1Popup = function(data){
				
				var html = carSpecStep1PopupListTemplate(data);
				
				$('#js-car-spec-step1-popup-list').empty().append(html);
			}
		
		</script>
		
		<!-- 컬러 현황 관리 등록 - 2단계 -->
		<div class="wp-dim-layer">
			<div class="wp-dimBg"></div>
			<div id="js-car-spec-step2-popup" class="wp-pop-layer wp-pop-w700 wp-box-sizing wp-car-popup wp-report-pop-section">
				<div class="wp-pop-title">
					<h1><spring:message code="TODO.KEY" text="칼라 현황 관리"/></h1>
					<button id="js-car-spec-step2-popup-close" type="button" class="wp-btn-close-layer wp-spr-btn"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
					<input type="hidden" id="js-car-spec-step2-popup-color-id">
				</div>
				<div class="wp-pop-conts">
				<h2 class="wp-title wp-mt0"><spring:message code="TODO.KEY" text="등록현황"/></h2>
				<div class="wp-step-area">
					<ul>
						<li class="active"><span><spring:message code="TODO.KEY" text="기본 정보"/></span></li>
						<li class="active"><span><spring:message code="TODO.KEY" text="제품 정보"/></span></li>
						<li class=""><span><spring:message code="TODO.KEY" text="Spec. 정보"/></span></li>
					</ul>
				</div>
					<!-- scroll Area -->
					<div class="wp-pop-cont-scrollable">
					<!--content //-->
						<h2 class="wp-title"><spring:message code="TODO.KEY" text="제품 정보"/></h2>
						<div class="wp-table-st1 wp-issue-apply">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:18%">
									<col style="width:82%">
								</colgroup>
								<tbody>
									<tr>
										<th class="wp-ar"><spring:message code="TODO.KEY" text="전처리"/></th>
										<td class="wp-al">
											<div class="wp-ui-select wp-wd150">
												<select id="js-car-spec-step2-popup-pt-maker-id">
												</select>
											</div>
											<input type="hidden" id="js-car-spec-step2-popup-pt-items">
											<input type="text" id="js-car-spec-step2-popup-pt-items-name" data-link="js-car-prod-popup" data-depth="2" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd360" placeholder="<spring:message code='TODO.KEY' text='제품명'/>">
										</td>
									</tr>
									<tr>
										<th class="wp-ar"><spring:message code="TODO.KEY" text="전착"/></th>
										<td class="wp-al">
											<div class="wp-ui-select wp-wd150">
												<select id="js-car-spec-step2-popup-ed-maker-id">
												</select>
											</div>
											<input type="hidden" id="js-car-spec-step2-popup-ed-items">
											<input type="text" id="js-car-spec-step2-popup-ed-items-name" data-link="js-car-prod-popup" data-depth="2" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd360" placeholder="<spring:message code='TODO.KEY' text='제품명'/>">
										</td>
									</tr>
									<tr>
										<th class="wp-ar">Primer</th>
										<td class="wp-al">
											<div class="wp-mb5">
												<div class="wp-ui-select wp-wd150">
													<select id="js-car-spec-step2-popup-pm-maker-id">
													</select>
												</div>
												<input type="hidden" id="js-car-spec-step2-popup-pm-items">
												<input type="text" id="js-car-spec-step2-popup-pm-items-name" data-link="js-car-prod-popup" data-depth="2" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd360" placeholder="<spring:message code='TODO.KEY' text='제품명'/>">
											</div>
											<div class="wp-mb5">
												<input type="text" id="js-car-spec-step2-popup-pm-visco-lsl" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd108" placeholder="<spring:message code='TODO.KEY' text='점도상한'/>">
												<input type="text" id="js-car-spec-step2-popup-pm-visco-usl" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd108" placeholder="<spring:message code='TODO.KEY' text='점도하한'/>">
												<div class="wp-ui-select wp-wd150">
													<select id="js-car-spec-step2-popup-pm-items-measure">
													</select>
												</div>
											</div>
											<div>
												<input type="text" id="js-car-spec-step2-popup-pm-temp-lsl" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd108" placeholder="<spring:message code='TODO.KEY' text='온도상한'/>">
												<input type="text" id="js-car-spec-step2-popup-pm-temp-usl" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd108" placeholder="<spring:message code='TODO.KEY' text='온도하한'/>">
											</div>
										</td>
									</tr>
									<tr>
										<th class="wp-ar">Base</th>
										<td class="wp-al">
											<div class="wp-mb5">
												<div class="wp-ui-select wp-wd150">
													<select id="js-car-spec-step2-popup-bs-maker-id">
													</select>
												</div>
												<input type="hidden" id="js-car-spec-step2-popup-bs-items">
												<input type="text" id="js-car-spec-step2-popup-bs-items-name" data-link="js-car-prod-popup" data-depth="2" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd360" placeholder="<spring:message code='TODO.KEY' text='제품명'/>">
											</div>
											<div class="wp-mb5">
												<input type="text" id="js-car-spec-step2-popup-bs-visco-lsl" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd108" placeholder="<spring:message code='TODO.KEY' text='점도상한'/>">
												<input type="text" id="js-car-spec-step2-popup-bs-visco-usl" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd108" placeholder="<spring:message code='TODO.KEY' text='점도하한'/>">
												<div class="wp-ui-select wp-wd150">
													<select id="js-car-spec-step2-popup-bs-items-measure">
													</select>
												</div>
											</div>
											<div>
												<input type="text" id="js-car-spec-step2-popup-bs-temp-lsl" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd108" placeholder="<spring:message code='TODO.KEY' text='온도상한'/>">
												<input type="text" id="js-car-spec-step2-popup-bs-temp-usl" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd108" placeholder="<spring:message code='TODO.KEY' text='온도하한'/>">
											</div>
										</td>
									</tr>
									<tr>
										<th class="wp-ar">Clear</th>
										<td class="wp-al">
											<div class="wp-mb5">
												<div class="wp-ui-select wp-wd150">
													<select id="js-car-spec-step2-popup-cr-maker-id">
													</select>
												</div>
												<input type="hidden" id="js-car-spec-step2-popup-cr-items">
												<input type="text" id="js-car-spec-step2-popup-cr-items-name" data-link="js-car-prod-popup" data-depth="2" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd360" placeholder="<spring:message code='TODO.KEY' text='제품명'/>">
											</div>
											<div class="wp-mb5">
												<input type="text" id="js-car-spec-step2-popup-cr-visco-lsl" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd108" placeholder="<spring:message code='TODO.KEY' text='점도상한'/>">
												<input type="text" id="js-car-spec-step2-popup-cr-visco-usl" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd108" placeholder="<spring:message code='TODO.KEY' text='점도하한'/>">
												<div class="wp-ui-select wp-wd150">
													<select id="js-car-spec-step2-popup-cr-items-measure">
													</select>
												</div>
											</div>
											<div>
												<input type="text" id="js-car-spec-step2-popup-cr-temp-lsl" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd108" placeholder="<spring:message code='TODO.KEY' text='온도상한'/>">
												<input type="text" id="js-car-spec-step2-popup-cr-temp-usl" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd108" placeholder="<spring:message code='TODO.KEY' text='온도하한'/>">
											</div>
										</td>
									</tr>
							</table>
						</div>
						<!-- btn-area -->
						<div class="wp-btn-area">
							<button type="button" id="js-car-spec-step2-popup-prev" data-link="js-car-spec-step1-popup" class="wp-btn darkgray cr3"><span class="prev"></span><spring:message code="TODO.KEY" text="이전"/></button>
							<button type="button" id="js-car-spec-step2-popup-save" data-link="js-car-spec-step3-popup" class="wp-btn blue1 cr3"><spring:message code="TODO.KEY" text="Spec 등록하기"/><span class="next"></span></button>
						</div>
						<!-- //btn-area -->
						<!--// content-->
					</div><!-- // scroll Area -->
				</div> <!-- // wp-pop-conts -->
			</div> <!-- // wp-pop-layer -->
		</div> <!-- // wp-dim-layer -->
		
		<script type="text/javascript">
		
			var initCarSpecStep2Popup = function(colorId){
				
				//초기화
				$('#js-car-spec-step2-popup-pm-temp-lsl').val('');
				$('#js-car-spec-step2-popup-pm-temp-usl').val('');
				$('#js-car-spec-step2-popup-pm-visco-lsl').val('');
				$('#js-car-spec-step2-popup-pm-visco-usl').val('');
				$('#js-car-spec-step2-popup-bs-temp-lsl').val('');
				$('#js-car-spec-step2-popup-bs-temp-usl').val('');
				$('#js-car-spec-step2-popup-bs-visco-lsl').val('');
				$('#js-car-spec-step2-popup-bs-visco-usl').val('');
				$('#js-car-spec-step2-popup-cr-temp-lsl').val('');
				$('#js-car-spec-step2-popup-cr-temp-usl').val('');
				$('#js-car-spec-step2-popup-cr-visco-lsl').val('');
				$('#js-car-spec-step2-popup-cr-visco-usl').val('');
				
				//change 이벤트
				$('#js-car-spec-step2-popup-pt-maker-id').off().on('change', function(){
					
					if($(this).val() == 'M01')
					{
						$('#js-car-spec-step2-popup-pt-items').val('');
						$('#js-car-spec-step2-popup-pt-items-name').val('');
						
						$('#js-car-spec-step2-popup-pt-items-name').attr('readOnly', true);
						
						$('#js-car-spec-step2-popup-pt-items-name').off().on('click', function(){
							initCarProdPopup('js-car-spec-step2-popup-pt-items');
							
							fn_openPop($(this));
						});
					}
					else
					{
						$('#js-car-spec-step2-popup-pt-items').val('');
						$('#js-car-spec-step2-popup-pt-items-name').val('');
						
						$('#js-car-spec-step2-popup-pt-items-name').attr('readOnly', false);
						
						$('#js-car-spec-step2-popup-pt-items-name').off().on('keyup', function(){
							var value = $(this).val().replace(/(\s*)/g, '');
							
							$(this).val(value);
						});
					}
				});
				$('#js-car-spec-step2-popup-ed-maker-id').off().on('change', function(){
					
					if($(this).val() == 'M01')
					{
						$('#js-car-spec-step2-popup-ed-items').val('');
						$('#js-car-spec-step2-popup-ed-items-name').val('');
						
						$('#js-car-spec-step2-popup-ed-items-name').attr('readOnly', true);
						
						$('#js-car-spec-step2-popup-ed-items-name').off().on('click', function(){
							initCarProdPopup('js-car-spec-step2-popup-ed-items');
							
							fn_openPop($(this));
						});
					}
					else
					{
						$('#js-car-spec-step2-popup-ed-items').val('');
						$('#js-car-spec-step2-popup-ed-items-name').val('');
						
						$('#js-car-spec-step2-popup-ed-items-name').attr('readOnly', false);
						
						$('#js-car-spec-step2-popup-ed-items-name').off().on('keyup', function(){
							var value = $(this).val().replace(/(\s*)/g, '');
							
							$(this).val(value);
						});
					}
				});
				$('#js-car-spec-step2-popup-pm-maker-id').off().on('change', function(){
					
					if($(this).val() == 'M01')
					{
						$('#js-car-spec-step2-popup-pm-items').val('');
						$('#js-car-spec-step2-popup-pm-items-name').val('');
						
						$('#js-car-spec-step2-popup-pm-items-name').attr('readOnly', true);
						
						$('#js-car-spec-step2-popup-pm-items-name').off().on('click', function(){
							initCarProdPopup('js-car-spec-step2-popup-pm-items');
							
							fn_openPop($(this));
						});
					}
					else
					{
						$('#js-car-spec-step2-popup-pm-items').val('');
						$('#js-car-spec-step2-popup-pm-items-name').val('');
						
						$('#js-car-spec-step2-popup-pm-items-name').attr('readOnly', false);
						
						$('#js-car-spec-step2-popup-pm-items-name').off().on('keyup', function(){
							var value = $(this).val().replace(/(\s*)/g, '');
							
							$(this).val(value);
						});
					}
				});
				$('#js-car-spec-step2-popup-bs-maker-id').off().on('change', function(){
					
					if($(this).val() == 'M01')
					{
						$('#js-car-spec-step2-popup-bs-items').val('');
						$('#js-car-spec-step2-popup-bs-items-name').val('');
						
						$('#js-car-spec-step2-popup-bs-items-name').attr('readOnly', true);
						
						$('#js-car-spec-step2-popup-bs-items-name').off().on('click', function(){
							initCarProdPopup('js-car-spec-step2-popup-bs-items');
							
							fn_openPop($(this));
						});
					}
					else
					{
						$('#js-car-spec-step2-popup-bs-items').val('');
						$('#js-car-spec-step2-popup-bs-items-name').val('');
						
						$('#js-car-spec-step2-popup-bs-items-name').attr('readOnly', false);
						
						$('#js-car-spec-step2-popup-bs-items-name').off().on('keyup', function(){
							var value = $(this).val().replace(/(\s*)/g, '');
							
							$(this).val(value);
						});
					}
				});
				$('#js-car-spec-step2-popup-cr-maker-id').off().on('change', function(){
					
					if($(this).val() == 'M01')
					{
						$('#js-car-spec-step2-popup-cr-items').val('');
						$('#js-car-spec-step2-popup-cr-items-name').val('');
						
						$('#js-car-spec-step2-popup-cr-items-name').attr('readOnly', true);
						
						$('#js-car-spec-step2-popup-cr-items-name').off().on('click', function(){
							initCarProdPopup('js-car-spec-step2-popup-cr-items');
							
							fn_openPop($(this));
						});
					}
					else
					{
						$('#js-car-spec-step2-popup-cr-items').val('');
						$('#js-car-spec-step2-popup-cr-items-name').val('');
						
						$('#js-car-spec-step2-popup-cr-items-name').attr('readOnly', false);
						
						$('#js-car-spec-step2-popup-cr-items-name').off().on('keyup', function(){
							var value = $(this).val().replace(/(\s*)/g, '');
							
							$(this).val(value);
						});
					}
				});
				
				//소수점만 받기
				onlyDecimal($('#js-car-spec-step2-popup-pm-temp-lsl, #js-car-spec-step2-popup-pm-temp-usl, #js-car-spec-step2-popup-pm-visco-lsl, #js-car-spec-step2-popup-pm-visco-usl'), 10, 1);
				onlyDecimal($('#js-car-spec-step2-popup-bs-temp-lsl, #js-car-spec-step2-popup-bs-temp-usl, #js-car-spec-step2-popup-bs-visco-lsl, #js-car-spec-step2-popup-bs-visco-usl'), 10, 1);
				onlyDecimal($('#js-car-spec-step2-popup-cr-temp-lsl, #js-car-spec-step2-popup-cr-temp-usl, #js-car-spec-step2-popup-cr-visco-lsl, #js-car-spec-step2-popup-cr-visco-usl'), 10, 1);
				
				//이전 버튼
				$('#js-car-spec-step2-popup-prev').off().on('click', function(){
					
					$('#js-car-spec-step2-popup-close').click();
					
					initCarSpecStep1Popup(colorId);
					
					fn_openPop($('#js-car-spec-step2-popup-prev'));
				});
				
				//저장 버튼
				$('#js-car-spec-step2-popup-save').off().on('click', function(){
					saveCarItemsInfo.request();
				});
				
				//콤보 조회
				retrievePaintMaker.step2.request();
				retrieveCarInspTool.request();
				
				//이벤트 적용
				$('#js-car-spec-step2-popup-pt-maker-id').trigger('change');
				$('#js-car-spec-step2-popup-ed-maker-id').trigger('change');
				$('#js-car-spec-step2-popup-pm-maker-id').trigger('change');
				$('#js-car-spec-step2-popup-bs-maker-id').trigger('change');
				$('#js-car-spec-step2-popup-cr-maker-id').trigger('change');
				
				$('#js-car-spec-step2-popup-color-id').val(colorId);
 				retrieveItemsInfo.request(colorId);
			}
			
			var retrievePaintMaker = {
					step2 : {
						success : function(response, status, jqueryXHR) {
							// ------------------------------------
							// response json structure - {message: '', error: '' rs: null}
							// ------------------------------------
							if (typeof response.message !== 'undefined') {
								var message = response.message || '';
								
								if (message === 'OK') {
									
									// TODO
									
									//전처리
									$('#js-car-spec-step2-popup-pt-maker-id').find('option').remove();
									$('#js-car-spec-step2-popup-pt-maker-id').append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");									
									for(var i=0; i<response.rs.length; i++)
									{
										$('#js-car-spec-step2-popup-pt-maker-id').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
									}
									
									$('#js-car-spec-step2-popup-pt-maker-id').attr("title", response.rs.length+" <spring:message code='TODO.KEY' text='건'/>");
									
									//전작
									$('#js-car-spec-step2-popup-ed-maker-id').find('option').remove();
									$('#js-car-spec-step2-popup-ed-maker-id').append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");									
									for(var i=0; i<response.rs.length; i++)
									{
										$('#js-car-spec-step2-popup-ed-maker-id').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
									}
									
									$('#js-car-spec-step2-popup-ed-maker-id').attr("title", response.rs.length+" <spring:message code='TODO.KEY' text='건'/>");
									
									//중도
									$('#js-car-spec-step2-popup-pm-maker-id').find('option').remove();
									$('#js-car-spec-step2-popup-pm-maker-id').append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");									
									for(var i=0; i<response.rs.length; i++)
									{
										$('#js-car-spec-step2-popup-pm-maker-id').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
									}
									
									$('#js-car-spec-step2-popup-pm-maker-id').attr("title", response.rs.length+" <spring:message code='TODO.KEY' text='건'/>");
									
									//Base
									$('#js-car-spec-step2-popup-bs-maker-id').find('option').remove();
									$('#js-car-spec-step2-popup-bs-maker-id').append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");									
									for(var i=0; i<response.rs.length; i++)
									{
										$('#js-car-spec-step2-popup-bs-maker-id').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
									}
									
									$('#js-car-spec-step2-popup-bs-maker-id').attr("title", response.rs.length+" <spring:message code='TODO.KEY' text='건'/>");
									
									//Clear
									$('#js-car-spec-step2-popup-cr-maker-id').find('option').remove();
									$('#js-car-spec-step2-popup-cr-maker-id').append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");									
									for(var i=0; i<response.rs.length; i++)
									{
										$('#js-car-spec-step2-popup-cr-maker-id').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
									}
									
									$('#js-car-spec-step2-popup-cr-maker-id').attr("title", response.rs.length+" <spring:message code='TODO.KEY' text='건'/>");
									
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
									service : 'car.prodspec',
									method : 'retrievePaintMaker',
									carPlant : $('#js-car-header-car-plant').val()
							};
							
							app.mask.pageLock();
							var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
							ajax.done(this.success);
							ajax.fail(this.error);
							ajax.always(this.complete);
						}
					},
					model : {
						success : function(response, status, jqueryXHR) {
							// ------------------------------------
							// response json structure - {message: '', error: '' rs: null}
							// ------------------------------------
							if (typeof response.message !== 'undefined') {
								var message = response.message || '';
								
								if (message === 'OK') {
									
									// TODO
									
									$('select[id=js-car-model-maker-popup-maker-id]').find('option').remove();
									
									for(var i=0; i<response.rs.length; i++)
									{
										$('select[id=js-car-model-maker-popup-maker-id]').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
									}
									
									$('select[id=js-car-model-maker-popup-maker-id]').attr("title", response.rs.length+" <spring:message code='TODO.KEY' text='건'/>");
									
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
									service : 'car.prodspec',
									method : 'retrievePaintMaker',
									carPlant : $('#js-car-header-car-plant').val()
							};
							
							app.mask.pageLock();
							var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
							ajax.done(this.success);
							ajax.fail(this.error);
							ajax.always(this.complete);
						}
					}
			};
			
			var retrieveItemsInfo = {
					success : function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								if(response.rs != null){
									
									$('#js-car-spec-step2-popup-pt-maker-id').val(response.rs.ptMakerId);
									$('#js-car-spec-step2-popup-pt-items').val(response.rs.ptItems);
									$('#js-car-spec-step2-popup-pt-items-name').val(response.rs.ptItemsNm);
									
									$('#js-car-spec-step2-popup-ed-maker-id').val(response.rs.edMakerId);
									$('#js-car-spec-step2-popup-ed-items').val(response.rs.edItems);
									$('#js-car-spec-step2-popup-ed-items-name').val(response.rs.edItemsNm);
									
									$('#js-car-spec-step2-popup-pm-maker-id').val(response.rs.pmMakerId);
									$('#js-car-spec-step2-popup-pm-items').val(response.rs.pmItems);
									$('#js-car-spec-step2-popup-pm-items-name').val(response.rs.pmItemsNm);
									$('#js-car-spec-step2-popup-pm-temp-lsl').val(response.rs.pmItemsTempLsl);
									$('#js-car-spec-step2-popup-pm-temp-usl').val(response.rs.pmItemsTempUsl);
									$('#js-car-spec-step2-popup-pm-visco-lsl').val(response.rs.pmItemsViscoLsl);
									$('#js-car-spec-step2-popup-pm-visco-usl').val(response.rs.pmItemsViscoUsl);
									$('#js-car-spec-step2-popup-pm-items-measure').val(response.rs.pmItemsMeasureEqp);
									
									$('#js-car-spec-step2-popup-bs-maker-id').val(response.rs.bsMakerId);
									$('#js-car-spec-step2-popup-bs-items').val(response.rs.bsItems);
									$('#js-car-spec-step2-popup-bs-items-name').val(response.rs.bsItemsNm);
									
									$('#js-car-spec-step2-popup-bs-temp-lsl').val(response.rs.bsItemsTempLsl);
									$('#js-car-spec-step2-popup-bs-temp-usl').val(response.rs.bsItemsTempUsl);
									$('#js-car-spec-step2-popup-bs-visco-lsl').val(response.rs.bsItemsViscoLsl);
									$('#js-car-spec-step2-popup-bs-visco-usl').val(response.rs.bsItemsViscoUsl);
									$('#js-car-spec-step2-popup-bs-items-measure').val(response.rs.bsItemsMeasureEqp);
									
									$('#js-car-spec-step2-popup-cr-maker-id').val(response.rs.crMakerId);
									$('#js-car-spec-step2-popup-cr-items').val(response.rs.crItems);
									$('#js-car-spec-step2-popup-cr-items-name').val(response.rs.crItemsNm);
									$('#js-car-spec-step2-popup-cr-temp-lsl').val(response.rs.crItemsTempLsl);
									$('#js-car-spec-step2-popup-cr-temp-usl').val(response.rs.crItemsTempUsl);
									$('#js-car-spec-step2-popup-cr-visco-lsl').val(response.rs.crItemsViscoLsl);
									$('#js-car-spec-step2-popup-cr-visco-usl').val(response.rs.crItemsViscoUsl);
									$('#js-car-spec-step2-popup-cr-items-measure').val(response.rs.crItemsMeasureEqp);
									
									
									
									if($('#js-car-spec-step2-popup-pt-maker-id').val() == 'M01')
									{
										$('#js-car-spec-step2-popup-pt-items-name').attr('readOnly', true);
										
										$('#js-car-spec-step2-popup-pt-items-name').off().on('click', function(){
											initCarProdPopup('js-car-spec-step2-popup-pt-items');
											
											fn_openPop($(this));
										});
									}
									else
									{
										$('#js-car-spec-step2-popup-pt-items-name').attr('readOnly', false);
										
										$('#js-car-spec-step2-popup-pt-items-name').off().on('keyup', function(){
											var value = $(this).val().replace(/(\s*)/g, '');
											
											$(this).val(value);
										});
									}
									
									
										
									if($('#js-car-spec-step2-popup-ed-maker-id').val() == 'M01')
									{
										$('#js-car-spec-step2-popup-ed-items-name').attr('readOnly', true);
										
										$('#js-car-spec-step2-popup-ed-items-name').off().on('click', function(){
											initCarProdPopup('js-car-spec-step2-popup-ed-items');
											
											fn_openPop($(this));
										});
									}
									else
									{
										$('#js-car-spec-step2-popup-ed-items-name').attr('readOnly', false);
										
										$('#js-car-spec-step2-popup-ed-items-name').off().on('keyup', function(){
											var value = $(this).val().replace(/(\s*)/g, '');
											
											$(this).val(value);
										});
									}
									
									
									if($('#js-car-spec-step2-popup-pm-maker-id').val() == 'M01')
									{
										$('#js-car-spec-step2-popup-pm-items-name').attr('readOnly', true);
										
										$('#js-car-spec-step2-popup-pm-items-name').off().on('click', function(){
											initCarProdPopup('js-car-spec-step2-popup-pm-items');
											
											fn_openPop($(this));
										});
									}
									else
									{
										$('#js-car-spec-step2-popup-pm-items-name').attr('readOnly', false);
										
										$('#js-car-spec-step2-popup-pm-items-name').off().on('keyup', function(){
											var value = $(this).val().replace(/(\s*)/g, '');
											
											$(this).val(value);
										});
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
					request : function(colorId) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						
						var params = {
								service : 'car.prodspec',
								method : 'retrieveItemsInfo',
								carPlant : $('#js-car-header-car-plant').val(),
								colorId : colorId
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			var applyCarSpecStep2Popup = function(objId, data){
				
				$('#'+objId).val(data.items);
				$('#'+objId+'-name').val(data.itemsNm);
			}
			
			var retrieveCarInspTool = {
					success : function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								//중도
								$('#js-car-spec-step2-popup-pm-items-measure').find('option').remove();
								$('#js-car-spec-step2-popup-pm-items-measure').append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-spec-step2-popup-pm-items-measure').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								$('#js-car-spec-step2-popup-pm-items-measure').attr("title", response.rs.length+" <spring:message code='TODO.KEY' text='건'/>");
								
								//Base
								$('#js-car-spec-step2-popup-bs-items-measure').find('option').remove();
								$('#js-car-spec-step2-popup-bs-items-measure').append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-spec-step2-popup-bs-items-measure').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								$('#js-car-spec-step2-popup-bs-items-measure').attr("title", response.rs.length+" <spring:message code='TODO.KEY' text='건'/>");
								
								//Clear
								$('#js-car-spec-step2-popup-cr-items-measure').find('option').remove();
								$('#js-car-spec-step2-popup-cr-items-measure').append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-spec-step2-popup-cr-items-measure').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								$('#js-car-spec-step2-popup-cr-items-measure').attr("title", response.rs.length+" <spring:message code='TODO.KEY' text='건'/>");
								
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
								service : 'car.prodspec',
								method : 'retrieveCarInspTool'
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			var saveCarItemsInfo = {
					success : function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								// TODO
								$('#js-car-spec-step2-popup-close').click();
								
								var code = $('#js-car-spec-step2-popup-color-id').val();
								initCarSpecStep3Popup(code);
								
								fn_openPop($('#js-car-spec-step2-popup-save'));
								
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
						
						var colorId = $('#js-car-spec-step2-popup-color-id').val();
						var ptMakerId = $('#js-car-spec-step2-popup-pt-maker-id').val();
						var ptItems = $('#js-car-spec-step2-popup-pt-items').val();
						var ptItemsNm = $('#js-car-spec-step2-popup-pt-items-name').val();
						var edMakerId = $('#js-car-spec-step2-popup-ed-maker-id').val();
						var edItems = $('#js-car-spec-step2-popup-ed-items').val();
						var edItemsNm = $('#js-car-spec-step2-popup-ed-items-name').val();
						var pmMakerId = $('#js-car-spec-step2-popup-pm-maker-id').val();
						var pmItems = $('#js-car-spec-step2-popup-pm-items').val();
						var pmItemsNm = $('#js-car-spec-step2-popup-pm-items-name').val();
						var pmItemsTempLsl = $('#js-car-spec-step2-popup-pm-temp-lsl').val();
						var pmItemsTempUsl = $('#js-car-spec-step2-popup-pm-temp-usl').val();
						var pmItemsViscoLsl = $('#js-car-spec-step2-popup-pm-visco-lsl').val();
						var pmItemsViscoUsl = $('#js-car-spec-step2-popup-pm-visco-usl').val();
						var pmItemsMeasureEqp = $('#js-car-spec-step2-popup-pm-items-measure').val();
						var bsMakerId = $('#js-car-spec-step2-popup-bs-maker-id').val();
						var bsItems = $('#js-car-spec-step2-popup-bs-items').val();
						var bsItemsNm = $('#js-car-spec-step2-popup-bs-items-name').val();
						var bsItemsTempLsl = $('#js-car-spec-step2-popup-bs-temp-lsl').val();
						var bsItemsTempUsl = $('#js-car-spec-step2-popup-bs-temp-usl').val();
						var bsItemsViscoLsl = $('#js-car-spec-step2-popup-bs-visco-lsl').val();
						var bsItemsViscoUsl = $('#js-car-spec-step2-popup-bs-visco-usl').val();
						var bsItemsMeasureEqp = $('#js-car-spec-step2-popup-bs-items-measure').val();
						var crMakerId = $('#js-car-spec-step2-popup-cr-maker-id').val();
						var crItems = $('#js-car-spec-step2-popup-cr-items').val();
						var crItemsNm = $('#js-car-spec-step2-popup-cr-items-name').val();
						var crItemsTempLsl = $('#js-car-spec-step2-popup-cr-temp-lsl').val();
						var crItemsTempUsl = $('#js-car-spec-step2-popup-cr-temp-usl').val();
						var crItemsViscoLsl = $('#js-car-spec-step2-popup-cr-visco-lsl').val();
						var crItemsViscoUsl = $('#js-car-spec-step2-popup-cr-visco-usl').val();
						var crItemsMeasureEqp = $('#js-car-spec-step2-popup-cr-items-measure').val();
						
						var params = {
								service : 'car.prodspec',
								method : 'saveCarItemsInfo',
								carPlant : $('#js-car-header-car-plant').val(),
								colorId : colorId,
								ptMakerId : ptMakerId,
								ptItems : ptItems,
								ptItemsNm : ptItemsNm,
								edMakerId : edMakerId,
								edItems : edItems,
								edItemsNm : edItemsNm,
								pmMakerId : pmMakerId,
								pmItems : pmItems,
								pmItemsNm : pmItemsNm,
								pmItemsTempLsl : pmItemsTempLsl,
								pmItemsTempUsl : pmItemsTempUsl,
								pmItemsViscoLsl : pmItemsViscoLsl,
								pmItemsViscoUsl : pmItemsViscoUsl,
								pmItemsMeasureEqp : pmItemsMeasureEqp,
								bsMakerId : bsMakerId,
								bsItems : bsItems,
								bsItemsNm : bsItemsNm,
								bsItemsTempLsl : bsItemsTempLsl,
								bsItemsTempUsl : bsItemsTempUsl,
								bsItemsViscoLsl : bsItemsViscoLsl,
								bsItemsViscoUsl : bsItemsViscoUsl,
								bsItemsMeasureEqp : bsItemsMeasureEqp,
								crMakerId : crMakerId,
								crItems : crItems,
								crItemsNm : crItemsNm,
								crItemsTempLsl : crItemsTempLsl,
								crItemsTempUsl : crItemsTempUsl,
								crItemsViscoLsl : crItemsViscoLsl,
								crItemsViscoUsl : crItemsViscoUsl,
								crItemsMeasureEqp : crItemsMeasureEqp
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
		
		</script>
		
		<!-- 컬러 현황 관리 등록 - 3단계 -->
		<div class="wp-dim-layer">
			<div class="wp-dimBg"></div>
			<div id="js-car-spec-step3-popup" class="wp-pop-layer wp-pop-w700 wp-box-sizing wp-car-popup wp-report-pop-section">
				<div class="wp-pop-title">
					<h1><spring:message code="TODO.KEY" text="칼라 현황 관리"/></h1>
					<button id="js-car-spec-step3-popup-close" type="button" class="wp-btn-close-layer wp-spr-btn"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
					<input type="hidden" id="js-car-spec-step3-popup-color-id">
				</div>
				<div class="wp-pop-conts">
				<h2 class="wp-title wp-mt0"><spring:message code="TODO.KEY" text="등록현황"/></h2>
				<div class="wp-step-area">
					<ul>
						<li class="active"><span><spring:message code="TODO.KEY" text="기본 정보"/></span></li>
						<li class="active"><span><spring:message code="TODO.KEY" text="제품 정보"/></span></li>
						<li class="active"><span><spring:message code="TODO.KEY" text="Spec. 정보"/></span></li>
					</ul>
				</div>
					<!-- scroll Area -->
					<div class="wp-pop-cont-scrollable">
					<!--content //-->
						<h2 class="wp-title wp-mt0 wp-border-bottom"><spring:message code="TODO.KEY" text="Spec. 정보"/></h2>
						<div class="wp-ui-btn-switch wp-clearfix noborder-switch">
							<ul id="js-car-spec-step3-popup-ft-model-list">
							</ul>
						</div>
						<div class="wp-clearfix">
							<h3 class="wp-title-section wp-fl"><spring:message code="TODO.KEY" text="도막두께"/></h3>
							<div class="wp-blue-comment wp-fr wp-mt20">(<spring:message code="TODO.KEY" text="단위"/>: ㎛)</div>
						</div>
						<div class="wp-table-st1 wp-issue-apply">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:18%">
								<col style="width:32%">
								<col style="width:18%">
								<col style="width:32%">
							</colgroup>
							<tbody>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="전처리"/></th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-pt-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>">
										<input type="text" id="js-car-spec-step3-popup-pt-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>">
									</td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="전착"/>(<spring:message code="TODO.KEY" text="수직"/>)</th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-ed-ho-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>">
										<input type="text" id="js-car-spec-step3-popup-ed-ho-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>">
									</td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="전착"/>(<spring:message code="TODO.KEY" text="수평"/>)</th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-ed-ve-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>">
										<input type="text" id="js-car-spec-step3-popup-ed-ve-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>">
									</td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="중도"/>(<spring:message code="TODO.KEY" text="수직"/>)</th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-pm-ho-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>">
										<input type="text" id="js-car-spec-step3-popup-pm-ho-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>">
									</td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="중도"/>(<spring:message code="TODO.KEY" text="수평"/>)</th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-pm-ve-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>">
										<input type="text" id="js-car-spec-step3-popup-pm-ve-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>">
									</td>
									<th class="wp-ar">Base(<spring:message code="TODO.KEY" text="수직"/>)</th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-bs-ho-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>">
										<input type="text" id="js-car-spec-step3-popup-bs-ho-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>">
									</td>
								</tr>
								<tr>
									<th class="wp-ar">Base(<spring:message code="TODO.KEY" text="수평"/>)</th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-bs-ve-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>">
										<input type="text" id="js-car-spec-step3-popup-bs-ve-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>">
									</td>
									<th class="wp-ar">Clear(<spring:message code="TODO.KEY" text="수직"/>)</th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-cr-ho-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>">
										<input type="text" id="js-car-spec-step3-popup-cr-ho-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>">
									</td>
								</tr>
								<tr>
									<th class="wp-ar">Clear(<spring:message code="TODO.KEY" text="수평"/>)</th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-cr-ve-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>">
										<input type="text" id="js-car-spec-step3-popup-cr-ve-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>">
									</td>
									<th class="wp-ar">Total(<spring:message code="TODO.KEY" text="수직"/>)</th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-tot-ho-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>" disabled>
										<input type="text" id="js-car-spec-step3-popup-tot-ho-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>" disabled>
									</td>
								</tr>
								<tr>
									<th class="wp-ar">Total(<spring:message code="TODO.KEY" text="수평"/>)</th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-tot-ve-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>" disabled>
										<input type="text" id="js-car-spec-step3-popup-tot-ve-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>" disabled>
									</td>
									<td colspan="2"></td>
								</tr>
						</table>
						<textarea id="js-car-spec-step3-popup-ft-remark" class="wp-wd100p wp-mt13" placeholder="<spring:message code='TODO.KEY' text='비고에 들어갈 내용을 입력해주세요.'/>"></textarea>
						</div>
						<!-- btn-area -->
						<div class="wp-btn-area">
							<button type="button" id="js-car-spec-step3-popup-ft-reset" class="wp-btn darkgray cr3 wp-no-icon"><spring:message code="TODO.KEY" text="초기화"/></button>
							<button type="button" id="js-car-spec-step3-popup-ft-save" class="wp-btn blue1 cr3 wp-no-icon"><spring:message code="TODO.KEY" text="저장"/></button>
						</div>
						<!-- //btn-area -->
		
		
						<div class="wp-ui-btn-switch wp-clearfix noborder-switch">
							<ul id="js-car-spec-step3-popup-su-model-list">
							</ul>
						</div>
						<div class="wp-clearfix">
							<h3 class="wp-title-section wp-fl"><spring:message code="TODO.KEY" text="외관 품질"/></h3>
							<div class="wp-blue-comment wp-fr wp-mt20">(<spring:message code="TODO.KEY" text="하도 단위"/>: ㎛, <spring:message code="TODO.KEY" text="상도 단위"/>: CF)</div>
						</div>
						<div class="wp-table-st1 wp-issue-apply">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:21%">
								<col style="width:29%">
								<col style="width:21%">
								<col style="width:29%">
							</colgroup>
							<tbody>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="하도"/>(<spring:message code="TODO.KEY" text="전착"/>)<spring:message code="TODO.KEY" text="조도"/>(<spring:message code="TODO.KEY" text="수평"/>)</th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-ed-ho-il-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>">
										<input type="text" id="js-car-spec-step3-popup-ed-ho-il-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>">
									</td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="하도"/>(<spring:message code="TODO.KEY" text="전착"/>)<spring:message code="TODO.KEY" text="조도"/>(<spring:message code="TODO.KEY" text="수직"/>)</th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-ed-ve-il-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>">
										<input type="text" id="js-car-spec-step3-popup-ed-ve-il-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>">
									</td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="하도"/>(<spring:message code="TODO.KEY" text="전착"/>)<spring:message code="TODO.KEY" text="광택"/>(<spring:message code="TODO.KEY" text="수평"/>)</th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-ed-ho-lu-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>">
										<input type="text" id="js-car-spec-step3-popup-ed-ho-lu-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>">
									</td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="하도"/>(<spring:message code="TODO.KEY" text="전착"/>)<spring:message code="TODO.KEY" text="광택"/>(<spring:message code="TODO.KEY" text="수직"/>)</th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-ed-ve-lu-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>">
										<input type="text" id="js-car-spec-step3-popup-ed-ve-lu-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>">
									</td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="상도"/>(<spring:message code="TODO.KEY" text="수평"/>)</th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-bc-ho-cf-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>">
										<input type="text" id="js-car-spec-step3-popup-bc-ho-cf-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>">
									</td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="상도"/>(<spring:message code="TODO.KEY" text="수직"/>)</th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-bc-ve-cf-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>">
										<input type="text" id="js-car-spec-step3-popup-bc-ve-cf-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>">
									</td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="상도"/>(<spring:message code="TODO.KEY" text="취약부"/>)</th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-bc-wp-cf-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>">
										<input type="text" id="js-car-spec-step3-popup-bc-wp-cf-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>">
									</td>
									<td colspan="2"></td>
								</tr>
						</table>
						<textarea id="js-car-spec-step3-popup-su-remark" class="wp-wd100p wp-mt13" placeholder="<spring:message code='TODO.KEY' text='비고에 들어갈 내용을 입력해주세요.'/>"></textarea>
						</div>
						<!-- btn-area -->
						<div class="wp-btn-area">
							<button type="button" id="js-car-spec-step3-popup-su-reset" class="wp-btn darkgray cr3 wp-no-icon"><spring:message code="TODO.KEY" text="초기화"/></button>
							<button type="button" id="js-car-spec-step3-popup-su-save" class="wp-btn blue1 cr3 wp-no-icon"><spring:message code="TODO.KEY" text="저장"/></button>
						</div>
						<!-- //btn-area -->
		
						<h3 class="wp-title-section"><spring:message code="TODO.KEY" text="색차"/></h3>
						<div class="wp-table-st1 wp-issue-apply">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:18%">
								<col style="width:82%">
							</colgroup>
							<tbody>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="ΔE"/></th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-delta-e-value" title="<spring:message code='TODO.KEY' text='내용입력'/>">
									</td>
								</tr>
							</tbody>
						</table>
						<textarea id="js-car-spec-step3-popup-co-spec-remark" class="wp-wd100p wp-mt13" placeholder="<spring:message code='TODO.KEY' text='비고에 들어갈 내용을 입력해주세요.'/>"></textarea>
						</div>
		
						<div class="wp-clearfix">
							<h3 class="wp-title-section wp-fl"><spring:message code="TODO.KEY" text="운송 및 보관 조건"/></h3>
							<div class="wp-blue-comment wp-fr wp-mt20">(<spring:message code="TODO.KEY" text="온도 단위"/>: ℃  <spring:message code="TODO.KEY" text="습도 단위"/>: %)</div>
						</div>
						<div class="wp-table-st1 wp-issue-apply">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:18%">
								<col style="width:32%">
								<col style="width:18%">
								<col style="width:32%">
							</colgroup>
							<tbody>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="운송 온도"/></th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-st-temp-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>">
										<input type="text" id="js-car-spec-step3-popup-st-temp-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>">
									</td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="운송 습도"/></th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-st-humid-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>">
										<input type="text" id="js-car-spec-step3-popup-st-humid-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>">
									</td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="보관 온도"/></th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-mo-temp-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>">
										<input type="text" id="js-car-spec-step3-popup-mo-temp-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>">
									</td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="보관 습도"/></th>
									<td>
										<input type="text" id="js-car-spec-step3-popup-mo-humid-min" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='상한'/>">
										<input type="text" id="js-car-spec-step3-popup-mo-humid-max" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd49p" placeholder="<spring:message code='TODO.KEY' text='하한'/>">
									</td>
								</tr>
							</tbody>
						</table>
						<textarea id="js-car-spec-step3-popup-etc-spec-remark" class="wp-wd100p wp-mt13" placeholder="<spring:message code='TODO.KEY' text='비고에 들어갈 내용을 입력해주세요.'/>"></textarea>
						</div>
						<!-- btn-area -->
						<div class="wp-btn-area">
							<button type="button" id="js-car-spec-step3-popup-prev" data-link="js-car-spec-step2-popup" class="wp-btn darkgray cr3"><span class="prev"></span><spring:message code="TODO.KEY" text="이전"/></button>
							<button type="button" id="js-car-spec-step3-popup-save" data-link="js-car-spec-step3-popup" class="wp-btn blue1 cr3 wp-no-icon"><spring:message code="TODO.KEY" text="저장 후 종료"/><span class="next"></span></button>
						</div>
						<!-- //btn-area -->
						<!--// content-->
					</div><!-- // scroll Area -->
				</div> <!-- // wp-pop-conts -->
			</div> <!-- // wp-pop-layer -->
		</div> <!-- // wp-dim-layer -->
		
		<script id="js-template-car-spec-step3-list" type="text/x-handlebars-template">
			{{#rows}}
				<li><button type="button" id="{{modelId}}" class=""><strong class="icon_folder {{dataYn}}"></strong>{{model}}</button></li>
			{{/rows}}
		</script>
		
		<script type="text/javascript">
		
			var initCarSpecStep3Popup = function(colorId){
				
				//Handlebar 초기화
				var source = $('#js-template-car-spec-step3-list').html();
				carSpecStep3PopupListTemplate = Handlebars.compile(source);
				
				//초기화
				resetCarSpecStep3PopupFt();
				resetCarSpecStep3PopupSu();
				$('#js-car-spec-step3-popup-delta-e-value').val('');
				$('#js-car-spec-step3-popup-co-spec-remark').val('');
				
				//change 이벤트
				$('#js-car-spec-step3-popup-ed-ho-min, #js-car-spec-step3-popup-pm-ho-min, #js-car-spec-step3-popup-bs-ho-min, #js-car-spec-step3-popup-cr-ho-min').off().on('change', function(){
					
					var total = Number($('#js-car-spec-step3-popup-ed-ho-min').val()) + Number($('#js-car-spec-step3-popup-pm-ho-min').val()) 
								+ Number($('#js-car-spec-step3-popup-bs-ho-min').val()) + Number($('#js-car-spec-step3-popup-cr-ho-min').val());
					
					$('#js-car-spec-step3-popup-tot-ho-min').val(total);
				});
				$('#js-car-spec-step3-popup-ed-ho-max, #js-car-spec-step3-popup-pm-ho-max, #js-car-spec-step3-popup-bs-ho-max, #js-car-spec-step3-popup-cr-ho-max').off().on('change', function(){
					
					var total = Number($('#js-car-spec-step3-popup-ed-ho-max').val()) + Number($('#js-car-spec-step3-popup-pm-ho-max').val()) 
								+ Number($('#js-car-spec-step3-popup-bs-ho-max').val()) + Number($('#js-car-spec-step3-popup-cr-ho-max').val());
					
					$('#js-car-spec-step3-popup-tot-ho-max').val(total);
				});
				$('#js-car-spec-step3-popup-ed-ve-min, #js-car-spec-step3-popup-pm-ve-min, #js-car-spec-step3-popup-bs-ve-min, #js-car-spec-step3-popup-cr-ve-min').off().on('change', function(){
					
					var total = Number($('#js-car-spec-step3-popup-ed-ve-min').val()) + Number($('#js-car-spec-step3-popup-pm-ve-min').val()) 
								+ Number($('#js-car-spec-step3-popup-bs-ve-min').val()) + Number($('#js-car-spec-step3-popup-cr-ve-min').val());
					
					$('#js-car-spec-step3-popup-tot-ve-min').val(total);
				});
				$('#js-car-spec-step3-popup-ed-ve-max, #js-car-spec-step3-popup-pm-ve-max, #js-car-spec-step3-popup-bs-ve-max, #js-car-spec-step3-popup-cr-ve-max').off().on('change', function(){
					
					var total = Number($('#js-car-spec-step3-popup-ed-ve-max').val()) + Number($('#js-car-spec-step3-popup-pm-ve-max').val()) 
								+ Number($('#js-car-spec-step3-popup-bs-ve-max').val()) + Number($('#js-car-spec-step3-popup-cr-ve-max').val());
					
					$('#js-car-spec-step3-popup-tot-ve-max').val(total);
				});
				
				//소수점만 받기
				onlyDecimal($('#js-car-spec-step3-popup-pt-min, #js-car-spec-step3-popup-pt-max'), 10, 1);
				onlyDecimal($('#js-car-spec-step3-popup-ed-ho-min, #js-car-spec-step3-popup-ed-ho-max, #js-car-spec-step3-popup-ed-ve-min, #js-car-spec-step3-popup-ed-ve-max'), 10, 1);
				onlyDecimal($('#js-car-spec-step3-popup-pm-ho-min, #js-car-spec-step3-popup-pm-ho-max, #js-car-spec-step3-popup-pm-ve-min, #js-car-spec-step3-popup-pm-ve-max'), 10, 1);
				onlyDecimal($('#js-car-spec-step3-popup-bs-ho-min, #js-car-spec-step3-popup-bs-ho-max, #js-car-spec-step3-popup-bs-ve-min, #js-car-spec-step3-popup-bs-ve-max'), 10, 1);
				onlyDecimal($('#js-car-spec-step3-popup-cr-ho-min, #js-car-spec-step3-popup-cr-ho-max, #js-car-spec-step3-popup-cr-ve-min, #js-car-spec-step3-popup-cr-ve-max'), 10, 1);
				onlyDecimal($('#js-car-spec-step3-popup-tot-ho-min, #js-car-spec-step3-popup-tot-ho-max, #js-car-spec-step3-popup-tot-ve-min, #js-car-spec-step3-popup-tot-ve-max'), 10, 1);
				onlyDecimal($('#js-car-spec-step3-popup-ed-ho-il-min, #js-car-spec-step3-popup-ed-ho-il-max, #js-car-spec-step3-popup-ed-ve-il-min, #js-car-spec-step3-popup-ed-ve-il-max'), 10, 1);
				onlyDecimal($('#js-car-spec-step3-popup-ed-ho-lu-min, #js-car-spec-step3-popup-ed-ho-lu-max, #js-car-spec-step3-popup-ed-ve-lu-min, #js-car-spec-step3-popup-ed-ve-lu-max'), 10, 1);
				onlyDecimal($('#js-car-spec-step3-popup-bc-ho-cf-min, #js-car-spec-step3-popup-bc-ho-cf-max, #js-car-spec-step3-popup-bc-ve-cf-min, #js-car-spec-step3-popup-bc-ve-cf-max'), 10, 1);
				onlyDecimal($('#js-car-spec-step3-popup-bc-wp-cf-min, #js-car-spec-step3-popup-bc-wp-cf-max'), 10, 1);
				
				//탭 버튼
				$('#js-car-spec-step3-popup-ft-model-list').off().on('click', 'button', function(){
					resetCarSpecStep3PopupFt();
					var modelId = this.id;
					retrieveItemsSpecFt.step3.request(colorId, modelId);
				});
				$('#js-car-spec-step3-popup-su-model-list').off().on('click', 'button', function(){
					resetCarSpecStep3PopupSu();
					var modelId = this.id;
					retrieveItemsSpecSu.step3.request(colorId, modelId);
				});
				
				//초기화 버튼
				$('#js-car-spec-step3-popup-ft-reset').off().on('click', function(){
					resetCarSpecStep3PopupFt();
				});
				
				//저장 버튼
				$('#js-car-spec-step3-popup-ft-save').off().on('click', function(){
					saveCarItemsSpecFt.request();
				});
				
				//초기화 버튼
				$('#js-car-spec-step3-popup-su-reset').off().on('click', function(){
					resetCarSpecStep3PopupSu();
				});
				
				//저장 버튼
				$('#js-car-spec-step3-popup-su-save').off().on('click', function(){
					saveCarItemsSpecSu.request();
				});
				
				//이전 버튼
				$('#js-car-spec-step3-popup-prev').off().on('click', function(){
					
					$('#js-car-spec-step3-popup-close').click();
					
					initCarSpecStep2Popup(colorId);
					
					fn_openPop($('#js-car-spec-step3-popup-prev'));
				});
				
				//저장 버튼
				$('#js-car-spec-step3-popup-save').off().on('click', function(){
					saveCarItemsSpecCoEtc.request();
				});
				
				//탭 조회
				retrieveModel.step3.request(colorId);
				
				$('#js-car-spec-step3-popup-color-id').val(colorId);
 				retrieveItemsSpecCo.step3.request(colorId);
 				retrieveItemsSpecEtc.step3.request(colorId);
			}
			
			var resetCarSpecStep3PopupFt = function(){
				
				$('#js-car-spec-step3-popup-ft-model-list').find('button').removeClass('on');
				
				$('#js-car-spec-step3-popup-pt-min').val('');
				$('#js-car-spec-step3-popup-pt-max').val('');
				$('#js-car-spec-step3-popup-ed-ho-min').val('');
				$('#js-car-spec-step3-popup-ed-ho-max').val('');
				$('#js-car-spec-step3-popup-ed-ve-min').val('');
				$('#js-car-spec-step3-popup-ed-ve-max').val('');
				$('#js-car-spec-step3-popup-pm-ho-min').val('');
				$('#js-car-spec-step3-popup-pm-ho-max').val('');
				$('#js-car-spec-step3-popup-pm-ve-min').val('');
				$('#js-car-spec-step3-popup-pm-ve-max').val('');
				$('#js-car-spec-step3-popup-bs-ho-min').val('');
				$('#js-car-spec-step3-popup-bs-ho-max').val('');
				$('#js-car-spec-step3-popup-bs-ve-min').val('');
				$('#js-car-spec-step3-popup-bs-ve-max').val('');
				$('#js-car-spec-step3-popup-cr-ho-min').val('');
				$('#js-car-spec-step3-popup-cr-ho-max').val('');
				$('#js-car-spec-step3-popup-cr-ve-min').val('');
				$('#js-car-spec-step3-popup-cr-ve-max').val('');
				$('#js-car-spec-step3-popup-tot-ho-min').val('');
				$('#js-car-spec-step3-popup-tot-ho-max').val('');
				$('#js-car-spec-step3-popup-tot-ve-min').val('');
				$('#js-car-spec-step3-popup-tot-ve-max').val('');
				$('#js-car-spec-step3-popup-ft-remark').val('');
			}
			
			var resetCarSpecStep3PopupSu = function(){
				
				$('#js-car-spec-step3-popup-su-model-list').find('button').removeClass('on');
				
				$('#js-car-spec-step3-popup-ed-ho-il-min').val('');
				$('#js-car-spec-step3-popup-ed-ho-il-max').val('');
				$('#js-car-spec-step3-popup-ed-ve-il-min').val('');
				$('#js-car-spec-step3-popup-ed-ve-il-max').val('');
				$('#js-car-spec-step3-popup-ed-ho-lu-min').val('');
				$('#js-car-spec-step3-popup-ed-ho-lu-max').val('');
				$('#js-car-spec-step3-popup-ed-ve-lu-min').val('');
				$('#js-car-spec-step3-popup-ed-ve-lu-max').val('');
				$('#js-car-spec-step3-popup-bc-ho-cf-min').val('');
				$('#js-car-spec-step3-popup-bc-ho-cf-max').val('');
				$('#js-car-spec-step3-popup-bc-ve-cf-min').val('');
				$('#js-car-spec-step3-popup-bc-ve-cf-max').val('');
				$('#js-car-spec-step3-popup-bc-wp-cf-min').val('');
				$('#js-car-spec-step3-popup-bc-wp-cf-max').val('');
				$('#js-car-spec-step3-popup-su-remark').val('');
			}
			
			var retrieveModel = {
					step3 : {
						success : function(response, status, jqueryXHR) {
							// ------------------------------------
							// response json structure - {message: '', error: '' rs: null}
							// ------------------------------------
							if (typeof response.message !== 'undefined') {
								var message = response.message || '';
								
								if (message === 'OK') {
									
									// TODO
									var data = {
										rows : response.rs.ftModel
									};
									
									var html = carSpecStep3PopupListTemplate(data);
									
									$('#js-car-spec-step3-popup-ft-model-list').empty().append(html);
									
									var data = {
										rows : response.rs.suModel
									};
									
									var html = carSpecStep3PopupListTemplate(data);
									
									$('#js-car-spec-step3-popup-su-model-list').empty().append(html);
									
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
						request : function(colorId) {
							// ------------------------------------
							// ajax request
							// ------------------------------------
							
							var params = {
									service : 'car.prodspec',
									method : 'retrieveModelStep3',
									carPlant : $('#js-car-header-car-plant').val(),
									colorId : colorId
							};
							
							app.mask.pageLock();
							var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
							ajax.done(this.success);
							ajax.fail(this.error);
							ajax.always(this.complete);
						}
					},
					model : {
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
									
									var html = carModelMakerPopupListTemplate(data);
									
									$('#js-car-model-maker-popup-list').empty().append(html);
									
									//Maker 조회
									retrievePaintMaker.model.request();
									
									//값 셋팅
									for(var i=0; i<response.rs.length; i++)
									{
										if(!app.utils.isEmpty(response.rs[i].useYn))
										{
											$('#js-car-model-maker-popup-list').find('select[id=js-car-model-maker-popup-use-yn]').eq(i).val(response.rs[i].useYn);
										}
										
										if(!app.utils.isEmpty(response.rs[i].makerId))
										{
											$('#js-car-model-maker-popup-list').find('select[id=js-car-model-maker-popup-maker-id]').eq(i).val(response.rs[i].makerId);
										}
									}
									
									//화면 위치 조절
									uiDesign.layer_popup('js-car-model-maker-popup', '42');
									
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
						request : function(colorId) {
							// ------------------------------------
							// ajax request
							// ------------------------------------
							
							var params = {
									service : 'car.prodspec',
									method : 'retrieveModel',
									carPlant : $('#js-car-header-car-plant').val(),
									colorId : colorId
							};
							
							app.mask.pageLock();
							var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
							ajax.done(this.success);
							ajax.fail(this.error);
							ajax.always(this.complete);
						}
					}
			};
			
			var saveCarItemsSpecFt = {
					success : function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								// TODO
								app.message.alert({
									title: '<spring:message code="TODO.KEY" text="알림"/>', message: '<spring:message code="TODO.KEY" text="저장되었습니다."/>', confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>',
									callback: {
										confirm: function() {
											var colorId = $('#js-car-spec-step3-popup-color-id').val();
											var modelId = $('#js-car-spec-step3-popup-ft-model-list').find('.on').attr('id');
											
											retrieveItemsSpecFt.step3.request(colorId, modelId);
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
					request : function() {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						
						var colorId = $('#js-car-spec-step3-popup-color-id').val();
						var modelId = $('#js-car-spec-step3-popup-ft-model-list').find('.on').attr('id');
						var ptFtMinValue = $('#js-car-spec-step3-popup-pt-min').val();
						var ptFtMaxValue = $('#js-car-spec-step3-popup-pt-max').val();
						var edHoFtMinValue = $('#js-car-spec-step3-popup-ed-ho-min').val();
						var edHoFtMaxValue = $('#js-car-spec-step3-popup-ed-ho-max').val();
						var edVeFtMinValue = $('#js-car-spec-step3-popup-ed-ve-min').val();
						var edVeFtMaxValue = $('#js-car-spec-step3-popup-ed-ve-max').val();
						var pmHoFtMinValue = $('#js-car-spec-step3-popup-pm-ho-min').val();
						var pmHoFtMaxValue = $('#js-car-spec-step3-popup-pm-ho-max').val();
						var pmVeFtMinValue = $('#js-car-spec-step3-popup-pm-ve-min').val();
						var pmVeFtMaxValue = $('#js-car-spec-step3-popup-pm-ve-max').val();
						var bsHoFtMinValue = $('#js-car-spec-step3-popup-bs-ho-min').val();
						var bsHoFtMaxValue = $('#js-car-spec-step3-popup-bs-ho-max').val();
						var bsVeFtMinValue = $('#js-car-spec-step3-popup-bs-ve-min').val();
						var bsVeFtMaxValue = $('#js-car-spec-step3-popup-bs-ve-max').val();
						var crHoFtMinValue = $('#js-car-spec-step3-popup-cr-ho-min').val();
						var crHoFtMaxValue = $('#js-car-spec-step3-popup-cr-ho-max').val();
						var crVeFtMinValue = $('#js-car-spec-step3-popup-cr-ve-min').val();
						var crVeFtMaxValue = $('#js-car-spec-step3-popup-cr-ve-max').val();
						var ftSpecRemark = $('#js-car-spec-step3-popup-ft-remark').val();
						
						if(app.utils.isEmpty(modelId))
						{
							app.message.alert({
								title: '<spring:message code="TODO.KEY" text="알림"/>', message: '<spring:message code="TODO.KEY" text="차종을 선택해 주세요."/>', confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>'
							});
							
							return;
						}
						
						var params = {
								service : 'car.prodspec',
								method : 'saveCarItemsSpecFt',
								carPlant : $('#js-car-header-car-plant').val(),
								colorId : colorId,
								modelId : modelId,
								ptFtMinValue : ptFtMinValue,
								ptFtMaxValue : ptFtMaxValue,
								edHoFtMinValue : edHoFtMinValue,
								edHoFtMaxValue : edHoFtMaxValue,
								edVeFtMinValue : edVeFtMinValue,
								edVeFtMaxValue : edVeFtMaxValue,
								pmHoFtMinValue : pmHoFtMinValue,
								pmHoFtMaxValue : pmHoFtMaxValue,
								pmVeFtMinValue : pmVeFtMinValue,
								pmVeFtMaxValue : pmVeFtMaxValue,
								bsHoFtMinValue : bsHoFtMinValue,
								bsHoFtMaxValue : bsHoFtMaxValue,
								bsVeFtMinValue : bsVeFtMinValue,
								bsVeFtMaxValue : bsVeFtMaxValue,
								crHoFtMinValue : crHoFtMinValue,
								crHoFtMaxValue : crHoFtMaxValue,
								crVeFtMinValue : crVeFtMinValue,
								crVeFtMaxValue : crVeFtMaxValue,
								ftSpecRemark : ftSpecRemark
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			var saveCarItemsSpecSu = {
					success : function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								// TODO
								app.message.alert({
									title: '<spring:message code="TODO.KEY" text="알림"/>', message: '<spring:message code="TODO.KEY" text="저장되었습니다."/>', confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>',
									callback: {
										confirm: function() {
											var colorId = $('#js-car-spec-step3-popup-color-id').val();
											var modelId = $('#js-car-spec-step3-popup-su-model-list').find('.on').attr('id');
											
											retrieveItemsSpecSu.step3.request(colorId, modelId);
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
					request : function() {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						
						var colorId = $('#js-car-spec-step3-popup-color-id').val();
						var modelId = $('#js-car-spec-step3-popup-su-model-list').find('.on').attr('id');
						var edHoIlMinValue = $('#js-car-spec-step3-popup-ed-ho-il-min').val();
						var edHoIlMaxValue = $('#js-car-spec-step3-popup-ed-ho-il-max').val();
						var edVeIlMinValue = $('#js-car-spec-step3-popup-ed-ve-il-min').val();
						var edVeIlMaxValue = $('#js-car-spec-step3-popup-ed-ve-il-max').val();
						var edHoLuMinValue = $('#js-car-spec-step3-popup-ed-ho-lu-min').val();
						var edHoLuMaxValue = $('#js-car-spec-step3-popup-ed-ho-lu-max').val();
						var edVeLuMinValue = $('#js-car-spec-step3-popup-ed-ve-lu-min').val();
						var edVeLuMaxValue = $('#js-car-spec-step3-popup-ed-ve-lu-max').val();
						var bcHoCfMinValue = $('#js-car-spec-step3-popup-bc-ho-cf-min').val();
						var bcHoCfMaxValue = $('#js-car-spec-step3-popup-bc-ho-cf-max').val();
						var bcVeCfMinValue = $('#js-car-spec-step3-popup-bc-ve-cf-min').val();
						var bcVeCfMaxValue = $('#js-car-spec-step3-popup-bc-ve-cf-max').val();
						var bcWpCfMinValue = $('#js-car-spec-step3-popup-bc-wp-cf-min').val();
						var bcWpCfMaxValue = $('#js-car-spec-step3-popup-bc-wp-cf-max').val();
						var suSpecRemark = $('#js-car-spec-step3-popup-su-remark').val();
						
						if(app.utils.isEmpty(modelId))
						{
							app.message.alert({
								title: '<spring:message code="TODO.KEY" text="알림"/>', message: '<spring:message code="TODO.KEY" text="차종을 선택해 주세요."/>', confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>'
							});
							
							return;
						}
						
						var params = {
								service : 'car.prodspec',
								method : 'saveCarItemsSpecSu',
								carPlant : $('#js-car-header-car-plant').val(),
								colorId : colorId,
								modelId : modelId,
								edHoIlMinValue : edHoIlMinValue,
								edHoIlMaxValue : edHoIlMaxValue,
								edVeIlMinValue : edVeIlMinValue,
								edVeIlMaxValue : edVeIlMaxValue,
								edHoLuMinValue : edHoLuMinValue,
								edHoLuMaxValue : edHoLuMaxValue,
								edVeLuMinValue : edVeLuMinValue,
								edVeLuMaxValue : edVeLuMaxValue,
								bcHoCfMinValue : bcHoCfMinValue,
								bcHoCfMaxValue : bcHoCfMaxValue,
								bcVeCfMinValue : bcVeCfMinValue,
								bcVeCfMaxValue : bcVeCfMaxValue,
								bcWpCfMinValue : bcWpCfMinValue,
								bcWpCfMaxValue : bcWpCfMaxValue,
								suSpecRemark : suSpecRemark
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			var saveCarItemsSpecCoEtc = {
					success : function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								// TODO
								app.message.alert({
									title: '<spring:message code="TODO.KEY" text="알림"/>', message: '<spring:message code="TODO.KEY" text="저장되었습니다."/>', confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>',
									callback: {
										confirm: function() {
											$('#js-car-spec-step3-popup-close').click();
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
					request : function() {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						
						var colorId = $('#js-car-spec-step3-popup-color-id').val();
						var deltaEValue = $('#js-car-spec-step3-popup-delta-e-value').val();
						var coSpecRemark = $('#js-car-spec-step3-popup-co-spec-remark').val();
						var stTempMinValue = $('#js-car-spec-step3-popup-st-temp-min').val();
						var stTempMaxValue = $('#js-car-spec-step3-popup-st-temp-max').val();
						var stHumidMinValue = $('#js-car-spec-step3-popup-st-humid-min').val();
						var stHumidMaxValue = $('#js-car-spec-step3-popup-st-humid-max').val();
						var moTempMinValue = $('#js-car-spec-step3-popup-mo-temp-min').val();
						var moTempMaxValue = $('#js-car-spec-step3-popup-mo-temp-max').val();
						var moHumidMinValue = $('#js-car-spec-step3-popup-mo-humid-min').val();
						var moHumidMaxValue = $('#js-car-spec-step3-popup-mo-humid-max').val();
						var etcSpecRemark = $('#js-car-spec-step3-popup-etc-spec-remark').val();
						
						var params = {
								service : 'car.prodspec',
								method : 'saveCarItemsSpecCoEtc',
								carPlant : $('#js-car-header-car-plant').val(),
								colorId : colorId,
								deltaEValue : deltaEValue,
								coSpecRemark : coSpecRemark,
								stTempMinValue : stTempMinValue,
								stTempMaxValue : stTempMaxValue,
								stHumidMinValue : stHumidMinValue,
								stHumidMaxValue : stHumidMaxValue,
								moTempMinValue : moTempMinValue,
								moTempMaxValue : moTempMaxValue,
								moHumidMinValue : moHumidMinValue,
								moHumidMaxValue : moHumidMaxValue,
								etcSpecRemark : etcSpecRemark
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
		
		</script>
		
		<!-- 적용 차종/범퍼 도료 Maker 선택 -->
		<div class="wp-dim-layer">
			<div class="wp-dimBg"></div>
			<div id="js-car-model-maker-popup" class="wp-pop-layer wp-pop-w500 wp-box-sizing wp-car-popup">
				<div class="wp-pop-title">
					<spring:message code="TODO.KEY" text="적용 차종/범퍼 도료 Maker 선택"/>
					<button type="button" id="js-car-model-maker-popup-close" class="wp-btn-close-layer wp-spr-btn"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
				</div>
				<div class="wp-pop-conts">
					<!-- scroll Area -->
					<div class="wp-pop-cont-scrollable">
					<!--content //-->
						<div class="wp-table-st1 wp-issue-apply">
							<table>
								<caption><spring:message code="TODO.KEY" text="적용 차종/범퍼 도료 Maker 선택"/></caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:30%;">
									<col style="width:auto">
								</colgroup>
								<thead>
									<tr>
										<th><spring:message code="TODO.KEY" text="차종"/></th>
										<th><spring:message code="TODO.KEY" text="사용 여부"/></th>
										<th><spring:message code="TODO.KEY" text="범퍼 도료 Maker"/></th>
									</tr>
								</thead>
								<tbody id="js-car-model-maker-popup-list">
								</tbody>
							</table>
						</div>
					<!--// content-->
					<!-- // scroll Area -->
					</div>
					
					<div class="wp-btn-area">
						<button type="button" id="js-car-model-maker-popup-confirm" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="확인"/></button>
					</div>
					
				</div>
			</div>
		</div>
		
		<script id="js-template-car-model-maker-popup-list" type="text/x-handlebars-template">
			{{#rows}}
				<tr>
					<input type="hidden" id="js-car-model-maker-popup-model-id" value="{{modelId}}">
					<th><span id="js-car-model-maker-popup-model">{{model}}</span></th>
					<td>
						<div class="wp-ui-select wp-wd100p">
							<select id="js-car-model-maker-popup-use-yn" title="2 건">
								<option value="Y"><spring:message code="TODO.KEY" text="사용"/></option>
								<option value="N"><spring:message code="TODO.KEY" text="미사용"/></option>
							</select>
						</div>
					</td>
					<td>
						<div class="wp-ui-select wp-wd100p">
							<select id="js-car-model-maker-popup-maker-id">
							</select>
						</div>
					</td>
				</tr>
			{{/rows}}
		</script>
		
		<script type="text/javascript">
		
			var carModelMakerPopupListTemplate;
			
			var initCarModelMakerPopup = function(colorId){
				
				//Handlebar 초기화
				var source = $('#js-template-car-model-maker-popup-list').html();
				carModelMakerPopupListTemplate = Handlebars.compile(source);
				
				//확인 버튼
				$('#js-car-model-maker-popup-confirm').off().on('click', function(){
					confirmCarModelMakerPopup();
				});
				
				//조회
				retrieveModel.model.request(colorId);
			}
			
			var confirmCarModelMakerPopup = function(){
				
				var data = {
					rows: []
				};
				
				$('#js-car-model-maker-popup-list').find('tr').each(function(){
					var row = {
						model : $(this).find('#js-car-model-maker-popup-model').text(),
						modelId : $(this).find('#js-car-model-maker-popup-model-id').val(),
						useYn : $(this).find('#js-car-model-maker-popup-use-yn').val(),
						makerId : $(this).find('#js-car-model-maker-popup-maker-id').val(),
						makerNm : $(this).find("#js-car-model-maker-popup-maker-id option:selected").text()
					};
					
					data.rows.push(row);
				});
				
				addCarSpecStep1Popup(data);
				
				$('#js-car-model-maker-popup-close').click();
			}
			
		</script>
		
		<div class="wp-dim-layer">
			<div class="wp-dimBg"></div>
			<div id="js-car-spec-model-popup" class="wp-pop-layer wp-pop-w800 wp-box-sizing wp-car-popup">
				<div class="wp-pop-title">
					<spring:message code="TODO.KEY" text="차종 관리"/>
					<button type="button" class="wp-btn-close-layer wp-spr-btn"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
				</div>
				<div class="wp-pop-conts">
			<!-- scroll Area -->
			<div class="wp-pop-cont-scrollable">
			<!--content //-->
				<div class="wp-table-st1 wp-issue-apply wp-mb10">
					<table>
						<caption><spring:message code="TODO.KEY" text="차종 관리"/></caption>
						<colgroup>
							<col style="width:auto">
							<col style="width:13%;">
							<col style="width:13%;">
							<col style="width:13%;">
							<col style="width:13%;">
							<col style="width:13%;">
						</colgroup>
						<thead>
							<tr>
								<th><spring:message code="TODO.KEY" text="프로젝트명"/></th>
								<th><spring:message code="TODO.KEY" text="공장"/></th>
								<th><spring:message code="TODO.KEY" text="차종코드"/></th>
								<th><spring:message code="TODO.KEY" text="차종구분"/></th>
								<th><spring:message code="TODO.KEY" text="차종명"/></th>
								<th><spring:message code="TODO.KEY" text="단종"/></th>
							</tr>
						</thead>
						<tbody>
							<tr class="wp-td-padding0">
								<td class="wp-al wp-vm">
									<input type="text" id="js-car-spec-model-popup-project-nm" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd204" disabled>
									<input type="hidden" id="js-car-spec-model-popup-project-no">
									<button type="button" id="js-car-spec-model-popup-project-popup-button" class="wp-btn small gray cr3 wp-btn-pop" data-link="js-car-proj-popup" data-depth="2"><spring:message code="TODO.KEY" text="조회"/></button>
								</td>
								<td><input type="text" id="js-car-spec-model-popup-car-plant" title="<spring:message code='TODO.KEY' text='내용입력'/>" disabled></td>
								<td><input type="text" id="js-car-spec-model-popup-model-id" title="<spring:message code='TODO.KEY' text='내용입력'/>" style="text-transform: uppercase" /></td>
								<td>
									<div class="wp-ui-select wp-wd100p">
										<select id="js-car-spec-model-popup-model-type">
										</select>
									</div>
								</td>
								<td><input type="text" id="js-car-spec-model-popup-model-name" title="<spring:message code='TODO.KEY' text='내용입력'/>"></td>
								<td>
									<div class="wp-ui-select wp-wd100p">
										<select id="js-car-spec-model-popup-discontinue-yn">
											<option value="Y">예</option>
											<option value="N" selected>아니오</option>
										</select>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="wp-ar wp-mb30">
					<button type="button" id="js-car-spec-model-popup-save" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="등록"/></button>
				</div>
				<div class="wp-table-st1 h-center">
					<table>
						<caption><spring:message code="TODO.KEY" text="리스트"/></caption>
						<colgroup>
							<col style="width:auto">
							<col style="width:13%;">
							<col style="width:13%;">
							<col style="width:13%;">
							<col style="width:13%;">
							<col style="width:13%;">
						</colgroup>
						<thead>
							<tr>
								<th><spring:message code="TODO.KEY" text="프로젝트명"/></th>
								<th><spring:message code="TODO.KEY" text="공장"/></th>
								<th><spring:message code="TODO.KEY" text="차종코드"/></th>
								<th><spring:message code="TODO.KEY" text="차종구분"/></th>
								<th><spring:message code="TODO.KEY" text="차종명"/></th>
								<th><spring:message code="TODO.KEY" text="단종"/></th>
							</tr>
						</thead>
						<tbody id="js-car-spec-model-popup-list">
						</tbody>
					</table>
				</div>
			<!--// content-->
			<!-- // scroll Area -->
			</div>
		
				</div>
			</div>
		</div>
		
		<script id="js-template-car-spec-model-popup-list" type="text/x-handlebars-template">
			{{#rows}}
				<tr>
					<td class="wp-al">{{projectNm}}</td>
					<td>{{carPlant}}</td>
					<td>{{modelId}}</td>
					<td>
						{{modelTypeNm}}
						<input type="hidden" value="{{modelType}}" >
					</td>
					<td>{{modelNm}}</td>
					<td>{{discontinueYn}}</td>
				</tr>
			{{/rows}}
		</script>
		
		<script type="text/javascript">
		
			var carSpecModelPopupListTemplate;
			
			var initCarSpecModelPopup = function(colorId){
				
				//Handlebar 초기화
				var source = $('#js-template-car-spec-model-popup-list').html();
				carSpecModelPopupListTemplate = Handlebars.compile(source);
				
				//초기화
				$('#js-car-spec-model-popup-project-nm').val('');
				$('#js-car-spec-model-popup-model-id').val('');
				$('#js-car-spec-model-popup-model-type').val('');
				$('#js-car-spec-model-popup-model-name').val('');
				$('#js-car-spec-model-popup-discontinue-yn').val('');
								
				$('#js-car-spec-model-popup-car-plant').val($('#js-car-header-car-plant').val());
				
				//버튼
				$('#js-car-spec-model-popup-save').off().on('click', function(){
					saveCarModelInfo.request();
				});
				
				$('#js-car-spec-model-popup-project-popup-button').off().on('click', function(){
					initCarProjListPopup("carSpecModelPopup");
				});
				
				$('#js-car-spec-model-popup-list').off().on('click', 'tr', function(){
					var projectNm = $(this).find('td').eq(0).text();
					var modelId = $(this).find('td').eq(2).text();
					var modelTypeNm = $(this).find('td').eq(3).text();
					var modelType = $(this).find('td').eq(3).find("input").val();
					var modelNm = $(this).find('td').eq(4).text();
					var discontinueYn = $(this).find('td').eq(5).text();
					
					$('#js-car-spec-model-popup-project-nm').val(projectNm);
					$('#js-car-spec-model-popup-model-id').val(modelId);
					$('#js-car-spec-model-popup-model-type').val(modelType);
					$('#js-car-spec-model-popup-model-name').val(modelNm);
					$('#js-car-spec-model-popup-discontinue-yn').val(discontinueYn);
				});
				
				//콤보 조회
				retrieveModelType.request();
				
				//조회
				retrieveCarModelInfo.request();
			}
			
			var applyCarProjInfoToCarSpecModelPopup = function(data){
// 				data = {
// 					projNo       : projNo       ,
// 					projNm       : projNm       ,
// 					carPlantNm   : carPlantNm   ,
// 					carType      : carType      ,
// 					carTypeNm    : carTypeNm    ,
// 					domExpId     : domExpId     ,
// 					domExpNm     : domExpNm     ,
// 					nation       : nation       ,
// 					nationNm     : nationNm     ,
// 					projClosingId: projClosingId,
// 					projClosingNm: projClosingNm
// 				};
				$('#js-car-spec-model-popup-list td:nth-child(1)').text(data.projNm);
				$('#js-car-spec-model-popup-project-no').val(data.projNo);
				$('#js-car-spec-model-popup-project-nm').val(data.projNm);
			}
			
			var saveCarModelInfo = {
				success : function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							
							// TODO
							app.message.alert({
								title: '<spring:message code="TODO.KEY" text="알림"/>', message: '<spring:message code="TODO.KEY" text="저장되었습니다."/>', confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>',
								callback: {
									confirm: function() {
										retrieveCarModelInfo.request();
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
				request : function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					
					var projectNo = $('#js-car-spec-model-popup-project-no').val();
					var modelId = $('#js-car-spec-model-popup-model-id').val();
					var modelType = $('#js-car-spec-model-popup-model-type').val();
					var modelNm = $('#js-car-spec-model-popup-model-name').val();
					var discontinueYn = $('#js-car-spec-model-popup-discontinue-yn').val();
					
					if(app.utils.isEmpty(projectNo))
					{
						app.message.alert({
							title: '<spring:message code="TODO.KEY" text="알림"/>', message: '<spring:message code="TODO.KEY" text="프로젝트를 선택해 주세요."/>', confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>'
						});
						
						return;
					}
					if(app.utils.isEmpty(modelId))
					{
						app.message.alert({
							title: '<spring:message code="TODO.KEY" text="알림"/>', message: '<spring:message code="TODO.KEY" text="차종코드를 입력해 주세요."/>', confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>',
							callback: {
								confirm: function() {
									$('#js-car-spec-model-popup-model-id').focus();
								}
							}
						});
						
						return;
					}
					if(app.utils.isEmpty(modelNm))
					{
						app.message.alert({
							title: '<spring:message code="TODO.KEY" text="알림"/>', message: '<spring:message code="TODO.KEY" text="차종명을 입력해 주세요."/>', confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>',
							callback: {
								confirm: function() {
									$('#js-car-spec-model-popup-model-name').focus();
								}
							}
						});
						
						return;
					}
					
					var params = {
							service : 'car.prodspec',
							method : 'saveCarModelInfo',
							carPlant : $('#js-car-header-car-plant').val(),
							projectNo : projectNo,
							modelId : modelId,
							modelType : modelType,
							modelNm : modelNm,
							discontinueYn : discontinueYn
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			var retrieveModelType = {
					success : function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								// TODO
								
								$('#js-car-spec-model-popup-model-type').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-spec-model-popup-model-type').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								$('#js-car-spec-model-popup-model-type').attr("title", response.rs.length+" <spring:message code='TODO.KEY' text='건'/>");
								
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
								service : 'car.prodspec',
								method : 'retrieveModelType'
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			var retrieveCarModelInfo = {
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
							
							var html = carSpecModelPopupListTemplate(data);
							$('#js-car-spec-model-popup-list').empty().append(html);
							
							//화면 위치 조절
							uiDesign.layer_popup('js-car-spec-model-popup', '41');
							
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
							service : 'car.prodspec',
							method : 'retrieveCarModelInfo',
							carPlant : $('#js-car-header-car-plant').val()
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
	<!-- 팝업 콘텐츠 E -->
	
</tiles:insertDefinition>
