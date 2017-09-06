<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.06.26] industry 제품정보-제품 출고 이력 정보" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.industry">

	<!-- 메인 콘텐츠 S -->
	<tiles:putAttribute name="page-content">

		<section class="wp-stat">
			<div class="wp-cont wp-car-sub">
			<!-- content start -->
				<header class="wp-contents-title">
					<h1><spring:message code="TODO.KEY" text="거래선 공정정보"/></h1>
					<div class="wp-location"><span><spring:message code="TODO.KEY" text="도장공정정보"/></span><span class="wp-fc-54"><spring:message code="TODO.KEY" text="거래선 공정정보"/></span></div>
				</header>
				<div class="wp-table-width">
					<!-- title area -->
					<div class="wp-title-section wp-no-line">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="거래선 공정정보 목록"/></h2>
							<div class="wp-btn-area">
								<button type="button" id="js-indus-proc-info-list-search-layer-popup-button" class="wp-layer-open wp-btn small blue1 cr3 search-white" data-link="js-indus-proc-info-list-search-layer-popup"><spring:message code="TODO.KEY" text="상세 검색"/></button>
								<button type="button" id="js-indus-proc-info-reg-popup-button"         class="wp-btn small skyblue cr3 upload-white" data-link="js-indus-proc-info-insp-reg-pcm-popup"        data-depth="1"><spring:message code="TODO.KEY" text="거래선 공정정보 등록" /></button>
								<button type="button" id="js-indus-proc-info-reg-powder-popup-button"  class="wp-btn small skyblue cr3 upload-white" data-link="js-indus-proc-info-insp-reg-powder-popup" style="display:none" data-depth="1"><spring:message code="TODO.KEY" text="거래선 공정정보 등록" /></button>
								<button type="button" id="js-indus-proc-info-reg-indus-popup-button"   class="wp-btn small skyblue cr3 upload-white" data-link="js-indus-proc-info-insp-reg-indus-popup"  style="display:none" data-depth="1"><spring:message code="TODO.KEY" text="거래선 공정정보 등록" /></button>
								<button type="button" id="js-indus-proc-info-reg-wheel-popup-button"   class="wp-btn small skyblue cr3 upload-white" data-link="js-indus-proc-info-insp-reg-alwheel-popup"  style="display:none" data-depth="1"><spring:message code="TODO.KEY" text="거래선 공정정보 등록" /></button>
							</div>
					</div>
					<!-- //title area -->
					<!-- wp-layerstyle -->
					<article id="js-indus-proc-info-list-search-layer-popup" class="wp-layerstyle wp-wd550" style="right: 32px;">
						<h1><spring:message code="TODO.KEY" text="거래선 공정정보 검색"/></h1>
							<div>
								<h2 class="wp-sub-title"><spring:message code="TODO.KEY" text="거래선"/></h2>
								<div class="wp-ui-select wp-wd33p">
									<select id="js-indus-proc-info-list-search-layer-popup-cust-combo" title="">
									</select>
								</div>
								<div class="wp-ui-select wp-wd33p">
									<select id="js-indus-proc-info-list-search-layer-popup-paint-cust-combo" title="">
									</select>
								</div>
								<div class="wp-ui-select wp-wd33p">
									<select id="js-indus-proc-info-list-search-layer-popup-factory-combo" title="">
									</select>
								</div>
								<div class="wp-ui-select wp-wd33p">
									<select id="js-indus-proc-info-list-search-layer-popup-line-combo" title="">
									</select>
								</div>
								<div class="wp-ui-select wp-wd33p">
									<select id="js-indus-proc-info-list-search-layer-popup-proc-combo" title="">
									</select>
								</div>
							</div>
							<div class="wp-section2">
								<div>
									<h2 class="wp-sub-title"><spring:message code="TODO.KEY" text="기간"/></h2>
									<input type="text" id="js-indus-proc-info-list-search-layer-popup-fromDate" name="js-indus-search-layer-popup-text" title="측정일자 기준" class="wp-inp-datepicker wp-wd100" placeholder="날짜입력">
									&nbsp;~&nbsp;
									<input type="text" id="js-indus-proc-info-list-search-layer-popup-toDate" name="js-indus-search-layer-popup-text" title="측정일자 기준" class="wp-inp-datepicker wp-wd100" placeholder="날짜입력">
								</div>
								<div>
									<h2 class="wp-sub-title"><spring:message code="TODO.KEY" text="측정자"/></h2>
									<input type="text" class="wp-wd190" id="js-indus-proc-info-list-search-layer-popup-empNm"  name="js-indus-search-layer-popup-text" disabled="disabled">
									<input type="hidden" id="js-indus-proc-info-list-search-layer-popup-emp" name="js-indus-search-layer-popup-text">
									<button type="button" id="js-indus-proc-info-list-search-layer-popup-emp-button" data-link="js-industry-emp-retrieve-popup" data-depth="2" class="wp-btn small gray cr3 wp-btn-pop"><spring:message code="TODO.KEY" text="조회"/></button>
								</div>
							</div>
							<div>
								<h2 class="wp-sub-title"><spring:message code="TODO.KEY" text="제품코드/제품명/Lot No."/></h2>
								<div class="wp-ui-select wp-wd80 wp-fn">
									<select id="js-indus-proc-info-list-search-layer-popup-keywordId" title="">
										<option value="I"><spring:message code="TODO.KEY" text="제품코드"/></option>
										<option value="N"><spring:message code="TODO.KEY" text="제품명"/></option>
										<option value="L"><spring:message code="TODO.KEY" text="Lot No."/></option>
									</select>
								</div>
								<input type="text" id="js-indus-proc-info-list-search-layer-popup-keyword2" name="js-indus-search-layer-popup-text" class="wp-wd160">
							</div>
						<div class="wp-ac wp-mt20 wp-wd100p">
							<button type="button" id="js-indus-proc-info-list-search-layer-popup-search-button" class="wp-btn blue cr3"><spring:message code="TODO.KEY" text="옵션 적용"/></button>
							<button type="button" id="js-indus-proc-info-list-search-layer-popup-clear-button" class="wp-btn skyblue cr3"><spring:message code="TODO.KEY" text="옵션 초기화"/></button>
						</div>
					</article>
					<!-- //wp-layerstyle -->
					<!-- table -->
					<div class="wp-table-st1 wp-sel-radio">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:16%">
								<col style="width:26%">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:17%">
								<col style="width:7%">
								<col style="width:10%">
							</colgroup>
							<thead>
								<tr>
								<th><spring:message code="TODO.KEY" text="거래선명"/></th>
								<th><spring:message code="TODO.KEY" text="거래선 상세"/></th>
								<th><spring:message code="TODO.KEY" text="적용 공정"/></th>
								<th><spring:message code="TODO.KEY" text="측정일자"/></th>
								<th><spring:message code="TODO.KEY" text="측정자"/></th>
								<th><spring:message code="TODO.KEY" text="제품명"/></th>
								<th><spring:message code="TODO.KEY" text="LOT No."/></th>
								<th><spring:message code="TODO.KEY" text="수정/삭제"/></th>
								</tr>
							</thead>
							<tbody id="js-indus-proc-info-list">
							</tbody>
						</table>
					</div>
					<div class="wp-table-select-area" style="display:none">
						<span class="wp-txt"><em id="js-template-indus-proc-checkCount">0개</em><spring:message code="TODO.KEY" text="선택"/></span>
						<div class="wp-btn">
							<button type="button" class="wp-btn blue1 cr3"><spring:message code="TODO.KEY" text="선택공정정보상세조회"/></button>
						</div>
					</div>
				</div>
					<!-- //title area -->
			</div>
			<!-- //content end -->
		</section>
	</tiles:putAttribute>

	<tiles:putAttribute name="page-level-js">
		<script id="js-template-indus-proc-info-list" type="text/x-handlebars-template">
			{{#rows}}
				<tr>
					<td class="wp-bubble">{{custNm}}</td>
					<td class="wp-bubble">{{custNms}}</td>
					<td>{{formatProcNm paintProc}}</td>
					<td>{{measureDate}}</td>
					<td>{{measureEmpNm}}</td>
					<td class="wp-bubble">{{items}}</td>
					<td>{{lotNo}}</td>
					<td>
						<button type="button" class="wp-btn white small bgray mody" id="js-industry-indus-proc-info-modify-button{{docNo}}" data-link="js-indus-proc-info-insp-mod-{{lower_itemType}}-popup" data-depth="1" data-docNo="{{docNo}}" data-itemType="{{itemType}}"><span><spring:message code="TODO.KEY" text="수정" /></span></button>
						<button type="button" class="wp-btn white small bgray trash-gray" id="js-industry-indus-proc-info-delete-button-{{docNo}}" data-docNo="{{docNo}}" data-itemType="{{itemType}}"><span><spring:message code="TODO.KEY" text="삭제" /></span></button>
					</td>
				</tr>
			{{/rows}}
		</script>
		
		
		<script type="text/javascript">
			var indusProcInfoListTemplate;

			var itemType = $('#js-industry-header-item-type').val();
				
			//메시지 파라미터 정의함수
			var messageParam = {
				title: '에러',
				message: '',
				confirmButtonText: '확인'				
			};
			 
			
			if ( "PCM" == jsCommon.itemType.getItem().code) { 				// PCM
				$("#js-indus-proc-info-reg-popup-button").show();
				$("#js-indus-proc-info-reg-powder-popup-button").hide();
				$("#js-indus-proc-info-reg-indus-popup-button").hide();
				$("#js-indus-proc-info-reg-wheel-popup-button").hide();
			} else if ("POWDER" == jsCommon.itemType.getItem().code) {		// 본체
				$("#js-indus-proc-info-reg-powder-popup-button").show();
				$("#js-indus-proc-info-reg-popup-button").hide();
				$("#js-indus-proc-info-reg-indus-popup-button").hide();
				$("#js-indus-proc-info-reg-wheel-popup-button").hide();	 					
			} else if ("INDUS" == jsCommon.itemType.getItem().code) {		// 일반공업
				$("#js-indus-proc-info-reg-indus-popup-button").show();
				$("#js-indus-proc-info-reg-popup-button").hide();
				$("#js-indus-proc-info-reg-powder-popup-button").hide();
				$("#js-indus-proc-info-reg-wheel-popup-button").hide();				
			} else if ("ALWHEEL" == jsCommon.itemType.getItem().code) {			// AL-Wheel
				$("#js-indus-proc-info-reg-wheel-popup-button").show();
				$("#js-indus-proc-info-reg-popup-button").hide();
				$("#js-indus-proc-info-reg-powder-popup-button").hide();
				$("#js-indus-proc-info-reg-indus-popup-button").hide();
			} else {
				
			}	 					
			
			
			var pageBodyHandler = {
				init: function() {
					// ------------------------------------
					// 타일즈 레이아웃 템플릿에서 호출되는 페이지 init 메소드
					// ------------------------------------

					// Handlebar 초기화
	 				initHandlebarsTemplate();
					
	 				// 거래선 공정정보 등록 버튼
	 				$("#js-indus-proc-info-reg-popup-button").off().on('click', function(){
	 					fn_openPop($(this));
	 					indusProcInfoInspRegPCM.init("", jsCommon.itemType.getItem().code);
	 				});
	 				
	 				// 본체 거래선 공정정보 등록 버튼
	 				$("#js-indus-proc-info-reg-powder-popup-button").off().on('click', function(){
	 					fn_openPop($(this));
	 					indusProcInfoInspRegPowder.init("", jsCommon.itemType.getItem().code);
	 				});
	 				
	 				// 일반공업 거래선 공정정보 등록 버튼
	 				$("#js-indus-proc-info-reg-indus-popup-button").off().on('click', function(){ 
	 					fn_openPop($(this));
	 					indusProcInfoInspRegIndus.init("", jsCommon.itemType.getItem().code);
	 				});
	 				
	 				// AL-Wheel 거래선 공정정보 등록 버튼
	 				$("#js-indus-proc-info-reg-wheel-popup-button").off().on('click', function(){
	 					fn_openPop($(this));
	 					indusProcInfoInspRegAlWheel.init("", jsCommon.itemType.getItem().code);
	 				});	 				
	 				
	 				// 거래선 공정정보 목록 checkbox 카운트
	 				$('#js-indus-proc-info-list').on('click', '#procCheckBox', function(e){
	 					$("#js-template-indus-proc-checkCount").text($('input:checkbox[name="procCheckBox"]:checked').length+ "개");
	 					
	 				});
	 				
	 				//사번 조회
					$("#js-indus-proc-info-list-search-layer-popup-emp-button").off().on('click', function() {
						initIndustryEmpRetrievePopup('js-indus-proc-info-list-search-layer-popup');
					});
	 				
	 				// 검색 layer popup - 검색 버튼 클릭
					$("#js-indus-proc-info-list-search-layer-popup-search-button").off().on('click', function(){
						// 경쟁사 제품 정보 리스트 조회
						retrieveIndProcInfo.request(jsCommon.itemType.getItem().code);
						$("#js-indus-proc-info-list-search-layer-popup-button").click();
					});
					
					// 검색 layer popup - 초기화 버튼 클릭
					$("#js-indus-proc-info-list-search-layer-popup-clear-button").off().on('click', function(){
						retrieveCustListSearch.request();
						retrievePcustListSearch.request();
						retrieveFactoryListSearch.request();
						retrieveLineListSearch.request();
						retrieveProcListSearch.request();
						$("[name=js-indus-search-layer-popup-text]").val("");
					});
					
					docHtmlHandlebarHelper.init();
	 		
	 				//--- 상단 헤더 영역 제품유형 변경 콜백 펑션 설정
					jsCommon.itemType.changed(retrieveIndProcInfoAll);
					
					//--- 본문 데이터 조회
					retrieveIndProcInfo.request(jsCommon.itemType.getItem().code);
					
					retrieveCustListSearch.request();
					retrievePcustListSearch.request();
					retrieveFactoryListSearch.request();
					retrieveLineListSearch.request();
					retrieveProcListSearch.request();
					
				}
			};
			
			var applyIndusProcInfoSearchLayerPopupEmpData = function(data){
				$("#js-indus-proc-info-list-search-layer-popup-emp").val(data.emp);
				$("#js-indus-proc-info-list-search-layer-popup-empNm").val(data.empNm);
			}
			
			//-------------------------------------------------
			// 거래선 공정정보 조회 - 자동차 공장 콤보 조회 완료 후
			//-------------------------------------------------
			var retrieveIndProcInfoAll = function(itemType) {
				if ( "PCM" == jsCommon.itemType.getItem().code) { 				// PCM
					$("#js-indus-proc-info-reg-popup-button").show();
					$("#js-indus-proc-info-reg-powder-popup-button").hide();
					$("#js-indus-proc-info-reg-indus-popup-button").hide();
					$("#js-indus-proc-info-reg-wheel-popup-button").hide();
				} else if ("POWDER" == jsCommon.itemType.getItem().code) {		// 본체
					$("#js-indus-proc-info-reg-powder-popup-button").show();
					$("#js-indus-proc-info-reg-popup-button").hide();
					$("#js-indus-proc-info-reg-indus-popup-button").hide();
					$("#js-indus-proc-info-reg-wheel-popup-button").hide();	 					
				} else if ("INDUS" == jsCommon.itemType.getItem().code) {		// 일반공업
					$("#js-indus-proc-info-reg-indus-popup-button").show();
					$("#js-indus-proc-info-reg-popup-button").hide();
					$("#js-indus-proc-info-reg-powder-popup-button").hide();
					$("#js-indus-proc-info-reg-wheel-popup-button").hide();				
				} else if ("ALWHEEL" == jsCommon.itemType.getItem().code) {			// AL-Wheel
					$("#js-indus-proc-info-reg-wheel-popup-button").show();
					$("#js-indus-proc-info-reg-popup-button").hide();
					$("#js-indus-proc-info-reg-powder-popup-button").hide();
					$("#js-indus-proc-info-reg-indus-popup-button").hide();
				} 	 					
				
				retrieveIndProcInfo.request(jsCommon.itemType.getItem().code);
				
				retrieveCustListSearch.request();
				retrievePcustListSearch.request();
				retrieveFactoryListSearch.request();
				retrieveLineListSearch.request();
				retrieveProcListSearch.request();
			}
			
			var initHandlebarsTemplate = function() {
			 
				//list 영역 템플릿 컴파일
				var source = $('#js-template-indus-proc-info-list').html();
				indusProcInfoListTemplate = Handlebars.compile(source);
			};
			
			// ++++++++++++++++++++++++++++++++++++++++++++++++
			// Handlebars Helper 클래스
			// ++++++++++++++++++++++++++++++++++++++++++++++++
			var docHtmlHandlebarHelper = {
				formatProcNm: function(paintProc) {
					if(paintProc == null){
						return "";
					}else{
						return new Handlebars.SafeString(paintProc.replace(/,/gi,"<br>"));
					}
				},
				init: function() {
					if (typeof Handlebars !== 'undefined') {
						Handlebars.registerHelper("formatProcNm", this.formatProcNm);
					}
				}			
			};
			
			// ------------------------------------------------
			// 거래선 콤보 조회
			// ------------------------------------------------
			var retrieveCustListSearch = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							var data = response.rs;
							
							$('#js-indus-proc-info-list-search-layer-popup-cust-combo').find('option').remove();
							$('#js-indus-proc-info-list-search-layer-popup-cust-combo').append("<option value=''><spring:message code='TODO.KEY' text='전체'/></option>");
							for(var i=0; i < data.length; i++) {
								$('#js-indus-proc-info-list-search-layer-popup-cust-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
							}
							
							// 거래선 변경 시 도장업체 combo 재조회
							$('#js-indus-proc-info-list-search-layer-popup-cust-combo').off().on("change", function(){
								retrievePcustListSearch.request();
								retrieveFactoryListSearch.request();
								retrieveLineListSearch.request();
								retrieveProcListSearch.request();
							});
						}
						else
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
				request: function(itemType) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					//alert("retrieveCustList itemType : "+ itemType);
					
					var params = {
						service: 'ind.common',
						method: 'retrieveCustList',
						itemType : jsCommon.itemType.getItem().code
					};

					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			// ------------------------------------------------
			// 도장업체 콤보 조회
			// ------------------------------------------------
			var retrievePcustListSearch = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							var data = response.rs;
							
							$('#js-indus-proc-info-list-search-layer-popup-paint-cust-combo').find('option').remove();
							$('#js-indus-proc-info-list-search-layer-popup-paint-cust-combo').append("<option value=''><spring:message code='TODO.KEY' text='전체'/></option>");
							for(var i=0; i < data.length; i++) {
								$('#js-indus-proc-info-list-search-layer-popup-paint-cust-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
							}
							
							// 도장업체 변경 시 공장 combo 재조회
							$('#js-indus-proc-info-list-search-layer-popup-paint-cust-combo').off().on("change", function(){
								retrieveFactoryListSearch.request();
								retrieveLineListSearch.request();
								retrieveProcListSearch.request();
							});
						}
						else
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
				request: function(itemType, cust) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						service   : 'ind.common',
						method    : 'retrievePcustList',
						itemType  : jsCommon.itemType.getItem().code,
						cust      : $('#js-indus-proc-info-list-search-layer-popup-cust-combo').val()
					};

					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			// 공장 콤보 조회
			var retrieveFactoryListSearch = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
		
						if (message === 'OK') {
							var data = response.rs;
							 
							$('#js-indus-proc-info-list-search-layer-popup-factory-combo').find('option').remove();
							$('#js-indus-proc-info-list-search-layer-popup-factory-combo').append("<option value=''><spring:message code='TODO.KEY' text='전체'/></option>");
							for(var i=0; i < data.length; i++) {
								$('#js-indus-proc-info-list-search-layer-popup-factory-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
							}
							
							// 공장 변경 시 - 라인 combo 재조회
							$('#js-indus-proc-info-list-search-layer-popup-factory-combo').off().on("change", function(){
								retrieveLineListSearch.request();
								retrieveProcListSearch.request();
							});
							
						}else
						{
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
				request: function(itemType, cust, pcust) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						service   : 'ind.common',
						method    : 'retrieveFactoryList',
						itemType  : jsCommon.itemType.getItem().code,
						cust      : $('#js-indus-proc-info-list-search-layer-popup-cust-combo').val(),
						paintCust : $('#js-indus-proc-info-list-search-layer-popup-paint-cust-combo').val()
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);				
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			// 라인 콤보 조회
			var retrieveLineListSearch = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
		
						if (message === 'OK') {
							var data = response.rs;
							 
							$('#js-indus-proc-info-list-search-layer-popup-line-combo').find('option').remove();
							$('#js-indus-proc-info-list-search-layer-popup-line-combo').append("<option value=''><spring:message code='TODO.KEY' text='전체'/></option>");
							for(var i=0; i < data.length; i++) {
								$('#js-indus-proc-info-list-search-layer-popup-line-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
							}
							
							// 라인 변경 시 - 공정 combo 재조회
							$('#js-indus-proc-info-list-search-layer-popup-line-combo').off().on("change", function(){
								retrieveProcListSearch.request();
							});
							
						} else {
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
				request: function(itemType, cust, pcust, factoryId) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						service   : 'ind.common',
						method    : 'retrieveLineList',
						itemType  : jsCommon.itemType.getItem().code,
						cust      : $('#js-indus-proc-info-list-search-layer-popup-cust-combo').val(),
						paintCust : $('#js-indus-proc-info-list-search-layer-popup-paint-cust-combo').val(),
						factoryId : $('#js-indus-proc-info-list-search-layer-popup-factory-combo').val()
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);				
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			// 공정 콤보 조회
			var retrieveProcListSearch = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
		
						if (message === 'OK') {
							var data = response.rs;
							 
							$('#js-indus-proc-info-list-search-layer-popup-proc-combo').find('option').remove();
							$('#js-indus-proc-info-list-search-layer-popup-proc-combo').append("<option value=''><spring:message code='TODO.KEY' text='전체'/></option>");
							for(var i=0; i < data.length; i++) {
								$('#js-indus-proc-info-list-search-layer-popup-proc-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
							}
							
						} else {
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
				request: function(itemType, cust, pcust, factoryId) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						service   : 'ind.common',
						method    : 'retrieveProcList',
						itemType  : jsCommon.itemType.getItem().code,
						cust      : $('#js-indus-proc-info-list-search-layer-popup-cust-combo').val(),
						paintCust : $('#js-indus-proc-info-list-search-layer-popup-paint-cust-combo').val(),
						factoryId : $('#js-indus-proc-info-list-search-layer-popup-factory-combo').val(),
						lineId    : $('#js-indus-proc-info-list-search-layer-popup-line-combo').val()
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);				
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			// ------------------------------------------------
			// 거래선 공정 정보 조회
			// ------------------------------------------------
			var retrieveIndProcInfo = {
				success : function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							// TODO
							var data = {
								rows : response.rs.stdInfo
							};
							
							var html = indusProcInfoListTemplate(data);
							$('#js-indus-proc-info-list').empty().append(html);
							
							// checkbox 클릭 시 checked 개수 셋팅
							$("input:checkbox[id=js-industry-indus-proc-info-chk]").on("click", function(){
								var cnt = $("input:checkbox[id=js-industry-indus-proc-info-chk]:checked").length;
								$('#js-indus-proc-info-cnt').text(cnt + '개');
							});
							
							// 거래선 공정정보 수정 버튼
							$("button[id^=js-industry-indus-proc-info-modify-button]").off().on('click', function(){ 
								var docNo = $(this).attr("data-docNo"); 		// 문서번호
								var itemType = $(this).attr("data-itemType"); 	// 제품유형코드
								fn_openPop($(this));

								if ( "PCM" == jsCommon.itemType.getItem().code) { 				// PCM
									indusProcInfoInspModPCM.init(docNo, itemType);
								} else if ("POWDER" == jsCommon.itemType.getItem().code) {		// 본체
									indusProcInfoInspModPowder.init(docNo, itemType);
								} else if ("INDUS" == jsCommon.itemType.getItem().code) {		// 일반공업
									indusProcInfoInspModIndus.init(docNo, itemType);
								} else if ("ALWHEEL" == jsCommon.itemType.getItem().code) {		// AL-Wheel
									indusProcInfoInspModAlWheel.init(docNo, itemType);
								}  	
							});
							
							// 삭제 버튼 클릭
							$("button[id^=js-industry-indus-proc-info-delete-button]").off().on("click", function(){
								var docNo = $(this).attr("data-docNo"); 		// 문서번호
								
								if(docNo){
									app.message.confirm({
										  title             : '<spring:message code="TODO.KEY" text="삭제"/>'
										, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
										, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
										, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
										, callback          : {
											confirm: function() {
												delIndProcInfo.request(docNo);
											}
										}
									});					
								} else {
									app.message.alert({
										  title             : '<spring:message code="TODO.KEY" text="에러"/>'
										, message           : '<spring:message code="TODO.KEY" text="문서번호가 없습니다."/>'
										, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
									});
								}
							});
							
							
						} else {
							// 서비스 요청 처리 오류 발생 메시지
							
							messageParam.title = "에러";
							messageParam.message = message;
							app.message.alert(messageParam);
							// 서비스 요청 처리 Exception 메시지
							console.log(response.error || '');
						}
					}
				},
				error : function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
					messageParam.title = "에러";
					messageParam.message = errorText;
					app.message.alert(messageParam);
				},
				complete : function(jqueryXHR, status) {
					// ------------------------------------
					// http response complete
					// ------------------------------------
					app.mask.pageUnlock();
				},
				request : function(itemType) { 
					// ------------------------------------
					// ajax request
					// ------------------------------------
					
					var custOption     = $("#js-indus-proc-info-list-search-layer-popup-cust-combo").val();
					var pcustOption    = $("#js-indus-proc-info-list-search-layer-popup-paint-cust-combo").val();
					var factoryOption  = $("#js-indus-proc-info-list-search-layer-popup-factory-combo").val();
					var lineOption     = $("#js-indus-proc-info-list-search-layer-popup-line-combo").val();
					var procOption     = $("#js-indus-proc-info-list-search-layer-popup-proc-combo").val();
					var fromDate       = $("#js-indus-proc-info-list-search-layer-popup-fromDate").val();
					var toDate         = $("#js-indus-proc-info-list-search-layer-popup-toDate").val();
					var empNo          = $("#js-indus-proc-info-list-search-layer-popup-emp").val();
					var keywordId      = $("#js-indus-proc-info-list-search-layer-popup-keywordId").val();
					var keyword2       = $("#js-indus-proc-info-list-search-layer-popup-keyword2").val();
					
					var params = {
						service 	   : 'ind.procInfo',
						method 		   : 'retrieveIndProcInfoNew',
						itemType 	   : itemType,
						custOption     : custOption,
						pcustOption    : pcustOption,
						factoryOption  : factoryOption,
						lineOption     : lineOption,
						procOption     : procOption,
						fromDate       : fromDate,
						toDate         : toDate,
						empNo          : empNo,
						keywordId      : keywordId,
						keyword2       : keyword2
					};
					
					app.mask.pageLock();					
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			// 거래선정보 삭제
			var delIndProcInfo = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
		
						if (message === 'OK') {
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="삭제 완료 되었습니다."/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
								, callback          : {
									confirm: function() {
										retrieveIndProcInfo.request(jsCommon.itemType.getItem().code);
									}
								}
							});
						}
						else
						{
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
						service: 'ind.procInfo',
						method: 'delIndProcInfoNew',
						docNo: docNo
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
	<!-- [s] 페이지 레벨 팝업 컨텐츠 -->
	<tiles:putAttribute name="popup-content">
	<c:import url="/WEB-INF/static/industry/popup/badOcType.popup.industry.jsp" charEncoding="utf-8"></c:import>
	<c:import url="/WEB-INF/static/industry/popup/empRetrieve.popup.industry.jsp" charEncoding="utf-8"></c:import>
	<c:import url="/WEB-INF/static/industry/popup/prodSearch.popup.industry.jsp" charEncoding="utf-8"></c:import>

	<!-- 등록 팝업 -->
	<%-- PCM --%>
	<c:import url="./indusProcInfoInspRegPCM.jsp" charEncoding="utf-8"></c:import>
	<c:import url="./indusProcInfoInspDtRegPCM.jsp" charEncoding="utf-8"></c:import>
	<c:import url="./indusProcInfoInspModPCM.jsp" charEncoding="utf-8"></c:import>
	<c:import url="./indusProcInfoInspDtModPCM.jsp" charEncoding="utf-8"></c:import>
	<%-- 분체 --%>
	<c:import url="./indusProcInfoInspRegPowder.jsp" charEncoding="utf-8"></c:import>
	<c:import url="./indusProcInfoInspDtRegPowder.jsp" charEncoding="utf-8"></c:import>
	<c:import url="./indusProcInfoInspModPowder.jsp" charEncoding="utf-8"></c:import>
	<c:import url="./indusProcInfoInspDtModPowder.jsp" charEncoding="utf-8"></c:import>
	<%-- 일반공업 --%>
	<c:import url="./indusProcInfoInspRegIndus.jsp" charEncoding="utf-8"></c:import>
	<c:import url="./indusProcInfoInspDtRegIndus.jsp" charEncoding="utf-8"></c:import>
	<c:import url="./indusProcInfoInspModIndus.jsp" charEncoding="utf-8"></c:import>
	<c:import url="./indusProcInfoInspDtModIndus.jsp" charEncoding="utf-8"></c:import>
	<%-- Al-Wheel --%>
	<c:import url="./indusProcInfoInspRegAlWheel.jsp" charEncoding="utf-8"></c:import>
	<c:import url="./indusProcInfoInspDtRegAlWheel.jsp" charEncoding="utf-8"></c:import>
	<c:import url="./indusProcInfoInspModAlWheel.jsp" charEncoding="utf-8"></c:import>
	<c:import url="./indusProcInfoInspDtModAlWheel.jsp" charEncoding="utf-8"></c:import>
	
	<%--c:import url="./indusProcInfoInspPowderReg.jsp" charEncoding="utf-8"></c:import  --%>
	<%--c:import url="./indusProcInfoInspIndusReg.jsp" charEncoding="utf-8"></c:import  --%>
	<%--c:import url="./indusProcInfoInspAlWheelReg.jsp" charEncoding="utf-8"></c:import --%>
	</tiles:putAttribute>
	<!-- 팝업 콘텐츠 E -->
	<!-- [e] 페이지 레벨 팝업 컨텐츠 -->
	
</tiles:insertDefinition>