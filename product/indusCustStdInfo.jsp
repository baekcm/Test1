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
					<h1>거래선 정보</h1>
					<div class="wp-location"><span>일반운영</span><span class="wp-fc-54">거래선 정보</span></div>
				</header>
				<div class="wp-table-width">
					<!-- title area -->
					<div class="wp-title-section">
						<h2 class="wp-section-title">거래선 목록</h2>
						<div class="wp-btn-area">
							<div class="wp-input-search wp-wd293">
								<input type="text" id="searchTop" placeholder="거래선 코드 또는 거래선 명칭을 입력해주세요.">
								<input type="hidden" id="js-indus-cust-std-info-reg-pop-item-type">
								<input type="hidden" id="js-indus-cust-std-info-reg-pop-cust">
								<input type="hidden" id="js-indus-cust-std-info-reg-pop-pcust">
								<input type="hidden" id="js-indus-cust-std-info-reg-pop-factory-id">
								<input type="hidden" id="js-indus-cust-std-info-reg-pop-line-id">
								<button type="button" class="wp-btn-search"><span>검색</span></button>
							</div>
							<!-- <button type="button" class="wp-btn cr3 darkgray small wp-ml5">즐겨찾기 거래선 조회</button> -->
							<button type="button" class="wp-btn small blue1 cr3 search-white">검색</button>
							<button type="button" class="wp-btn small skyblue cr3 upload-white" id="js-indus-cust-std-info-reg-popup-button" data-link="js-indus-cust-std-info-detail-popup" data-depth="1">거래선 정보 등록</button>
						</div>
					</div>
					<!-- //title area -->
					
					<!-- rootcause-list -->
					<div class="wp-rootcause-list wp-car-list2">
						<div class="wp-rc-box">
							<div class="wp-rc-box-in" id="js-indus-cust-std-info-list">
							</div>
						</div>
					</div>
					<!-- //rootcause-list -->
				</div>
				<!-- //content end -->
			</div>
		</section>
	
	</tiles:putAttribute>

	<tiles:putAttribute name="page-level-js">
		<script id="js-template-indus-cust-std-info-list" type="text/x-handlebars-template">
			{{#rows}}
				<div class="wp-rc-cont wp-h100 wp-rc-cont-color01">
					<div class="wp-rc-cont-top">
						<div class="wp-rp-right">
							<div class="wp-rp-r-title">{{custNm}}<span class="wp-ml10 wp-name-benner wp-factory">{{makerList}}</span></div>
							<div class="wp-rp-r-desc wp-right-btn">
								<span class="wp-rp-r-info"><em>최종 수정일자&nbsp;:&nbsp;</em>{{finalDate}}</span>
								<span class="wp-rp-r-info"><em>감리 담당자&nbsp;:&nbsp;</em>{{tsdEmpNm}}</span>
								<span class="wp-rp-r-info"><em>KCC 주 사용 제품&nbsp;:&nbsp;</em>{{items}}</span>
								<span class="wp-rp-r-info"><em>소재지&nbsp;:&nbsp;</em>{{site}}</span>
							</div>
						</div>
						<div class="wp-rp-bttn">
							<button type="button" class="wp-btn small white bgray detail-view" id="js-industry-indus-proc-info-detail-button-{{CUST}}" data-depth="1" data-link="js-indus-cust-std-info-detail-popup" data-cust="{{CUST}}"><span><spring:message code="TODO.KEY" text="상세" /></span></button>
							<button type="button" class="wp-btn small white bgray mody" id="js-industry-indus-proc-info-modify-button-{{CUST}}" data-link="js-indus-cust-std-info-detail-popup"><span><spring:message code="TODO.KEY" text="수정" /></span></button>
						</div>
					</div>
				</div>
			{{/rows}}
		</script>
		
		
		<script type="text/javascript">
		
			var indusCustStdInfoListTemplate;
			var indusCustStdInfoLineListTemplate;
			var indusCustStdInfoStep2ListTemplate;
			var indusCustStdInfoStep3ListTemplate;
			var indusCustStdInfoStep4ListTemplate;
			var indusCustStdInfoStep5ListTemplate;
			var indusCustStdInfoStep3DetailListTemplate;
			var indusCustStdInfoStep4DetailListTemplate;
			var indusCustStdInfoStep5DetailListTemplate;
			
			var gvListIndusColorMeasureInfoInspSeq = [];
			var gvListIndusCustStdLineInfoInspSeq = [];
			var gvListIndusCustStdProcInfoInspSeq = [];

			
			//메시지 파라미터 정의함수
			var messageParam = {
				title: '에러',
				message: '',
				confirmButtonText: '확인'
			};
			
			var pageBodyHandler = {

				init: function() {

	 				// Handlebar 초기화
	 				initHandlebarsTemplate();
	 				
	 				$("#js-indus-cust-std-info-reg-pop-item-type").val(jsCommon.itemType.getItem().code);

	 				//검색 버튼
	 				$("#js-indus-prod-std-info-search-button").off().on('click', function() {
	 					retrieveStdProdInfo.request();
	 				});
					
	 				// 거래선 정보 등록 버튼
	 				$("#js-indus-cust-std-info-reg-popup-button").off().on('click', function(){
	 					fn_openPop($(this));
	 					initIndusCustStdInfoRegPopup();
	 				});
	 				
	 				//--- 상단 헤더 영역 제품유형 변경 콜백 펑션 설정
					jsCommon.itemType.changed(retrieveIndCustStdInfoAll);
					
					//--- 본문 데이터 조회
					retrieveStdCustInfo.request();
	 				
				}
			};
			
			//-------------------------------------------------
			// 거래선 정보 조회 - 거래선 목록 제품유형 콤보 조회 완료 후
			//-------------------------------------------------
			var retrieveIndCustStdInfoAll = function(){
			};
			
			
			var initHandlebarsTemplate = function() {
				//list 영역 템플릿 컴파일
				var source = $('#js-template-indus-cust-std-info-list').html();
				indusCustStdInfoListTemplate = Handlebars.compile(source);
				
				var source = $('#js-template-indus-cust-std-step2-info-list').html();
				indusCustStdInfoStep2ListTemplate = Handlebars.compile(source);
				
				var source = $('#js-template-indus-cust-std-step3-info-list').html();
				indusCustStdInfoStep3ListTemplate = Handlebars.compile(source);
				
				var source = $('#js-template-indus-cust-std-step4-info-list').html();
				indusCustStdInfoStep4ListTemplate = Handlebars.compile(source);
				
				var source = $('#js-template-indus-cust-std-step5-info-list').html();
				indusCustStdInfoStep5ListTemplate = Handlebars.compile(source);
				
				
				
				var source = $('#js-template-indus-cust-std-step3-detail-info-list').html();
				indusCustStdInfoStep3DetailListTemplate = Handlebars.compile(source);
				
				var source = $('#js-template-indus-cust-std-step4-detail-info-list').html();
				indusCustStdInfoStep4DetailListTemplate = Handlebars.compile(source);
				
				var source = $('#js-template-indus-cust-std-step5-detail-info-list').html();
				indusCustStdInfoStep5DetailListTemplate = Handlebars.compile(source);
				
			};
			
			
			// ------------------------------------------------
			// 거래선 정보 - 거래선 목록 조회
			// ------------------------------------------------
			var retrieveStdCustInfo = {
				success : function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							// TODO
							var data = {
								rows : response.rs.CustList
							};
							
							var html = indusCustStdInfoListTemplate(data);
							$('#js-indus-cust-std-info-list').empty().append(html);
							
							
							// 거래선 공정정보 수정 버튼
							$("button[id^=js-industry-indus-proc-info-detail-button]").off().on('click', function(){
								var cust = $(this).attr("data-cust");
								fn_openPop($(this));
								initIndusCustStdInfoRegPopup(cust);
							});
							
							 
							// 삭제 버튼 클릭
							/* 
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
							*/
							
							
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
				request : function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						service 	: 'ind.custInfo',
						method 		: 'retrieveStdCustInfo',
						itemType 	: jsCommon.itemType.getItem().code
					};
					
					app.mask.pageLock();					
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
	
		</script>
	
	
	<!-- 거래선 선택 indusCustSelPopup -->
	<c:import url="/WEB-INF/static/industry/popup/custSel.popup.industry.jsp" charEncoding="utf-8"></c:import>
	
	<c:import url="/WEB-INF/static/industry/popup/empRetrieve.popup.industry.jsp" charEncoding="utf-8"></c:import>
	<c:import url="/WEB-INF/static/industry/popup/prodSearch.popup.industry.jsp" charEncoding="utf-8"></c:import>
		
	</tiles:putAttribute>
	
	<!-- 팝업 콘텐츠 S -->
	<!-- [s] 페이지 레벨 팝업 컨텐츠 -->
	<tiles:putAttribute name="popup-content">
	
		<div class="wp-dim-layer">
		    <div class="wp-dimBg"></div>
		    <div id="js-indus-cust-std-info-detail-popup" class="wp-pop-layer wp-pop-w940 wp-box-sizing wp-ship-popup wp-report-pop-section wp-repair-pop-section">
		    	<div class="wp-pop-title">
		    		<h1><spring:message code="TODO.KEY" text="거래선 정보 등록" /></h1>
		    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-indus-cust-std-info-reg-popup-close-button"><span>닫기</span></button>
		    	</div>
		        <div class="wp-pop-conts">
				<div class="wp-step-area wp-pop-step5">
					<ul>
						<li class="active"><span>거래선 정보</span></li>
						<li class=""><span>도장업체 정보</span></li>
						<li class=""><span>공장 정보</span></li>
						<li class=""><span>라인 정보</span></li>
						<li class=""><span>공정 정보</span></li>
					</ul> 
				</div>
					<!-- scroll Area -->
					<div class="wp-pop-cont-scrollable">
					<!--content //-->
		
						<h2 class="wp-title">거래선 정보</h2>
						<div class="wp-table-st1 h-center h-registration">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:13%">
									<col style="width:20%">
									<col style="width:13%">
									<col style="width:20%">
									<col style="width:14%">
									<col style="width:20%">
								</colgroup>
								<tbody id="js-template-indus-cust-std-step1-info-reg-pop-list">
							</table>
						</div>
					</div>
					<!--// content-->
					<!-- btn-area -->
					<div class="wp-btn-area">
						<button type="button" class="wp-btn blue1 cr3" id="js-indus-cust-std-info-step2-reg-pop">실도장업체 정보 등록하기<span class="next"></span></button>
						<button type="button" id="js-indus-cust-std-info-reg-popup-step2-button" data-link="js-indus-cust-std-info-detail-step2-popup" class="wp-btn-pop" style="display:none"></button>
					</div>
					<!-- //btn-area -->
				</div><!-- // scroll Area -->
		    </div> <!-- // wp-pop-conts -->
		</div> <!-- // wp-pop-layer -->
		
		
		<script type="text/x-handlebars-template" id="js-template-indus-cust-std-info-step1-reg-pop-list">
			<tr>
				<th class="wp-ar">거래선</th>
				<td colspan="5" class="wp-al">
					<input type="text" name="" id="js-indus-cust-std-info-reg-pop-cust-cust-nm" title="내용입력" class="wp-wd700" readonly="readonly">
					<input type="hidden" id="js-indus-cust-std-info-reg-pop-cust-cust">
					<button type="button" class="wp-btn small gray cr3 wp-btn-pop" id="js-indus-cust-std-info-reg-pop-cust-search-button" data-link="js-indus-cust-popup" data-depth="2">선택</button>
				</td>
			</tr>
			<tr>
				<th class="wp-ar">대표자</th>
				<td><input type="text" name="" id="js-indus-cust-std-info-reg-pop-cust-rep-nm" disabled=""></td>
				<th class="wp-ar">전화번호</th>
				<td><input type="text" name="" id="js-indus-cust-std-info-reg-pop-cust-phone" disabled=""></td>
			</tr>
			<tr>
				<th class="wp-ar">주소지</th>
				<td colspan="5" class="wp-al">
					<input type="text" name="" id="js-indus-cust-std-info-reg-pop-cust-addr" class="wp-wd100p" disabled="">
					
				</td>
			</tr>
		</script>
		
		
		<script type="text/javascript">
		
			var indusCustStdInfoStep1RegPopupTemplate;
			
			var initIndusCustStdInfoRegPopup = function(cust){
			
				var source = $('#js-template-indus-cust-std-info-step1-reg-pop-list').html();
				indusCustStdInfoStep1RegPopupTemplate = Handlebars.compile(source);
				
				retrieveStdCustInfoStep1.request(cust);
				
			}
			
			
			// ------------------------------------------------
			// 거래선 정보 정보 조회(Step1)
			// ------------------------------------------------
			var retrieveStdCustInfoStep1 = {
				success : function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							
							var data = response.rs;
							
							var html = indusCustStdInfoStep1RegPopupTemplate(data);
							$('#js-template-indus-cust-std-step1-info-reg-pop-list').empty().append(html);
							
							//검색팝업 - 거래선 팝업 버튼
							$("#js-indus-cust-std-info-reg-pop-cust-search-button").off().on("click", function() {
								initIndusCustListPopup("indusCustStdInfo");
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
				request : function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						service 	: 'ind.custInfo',
						method 		: 'retrieveStdCustInfoStep1',
						itemType 	: jsCommon.itemType.getItem().code,
						cust 		: $("#js-indus-cust-std-info-reg-pop-cust").val()
					};
					
					app.mask.pageLock();					
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			//검색팝업 - 선주사 팝업 선택
			var initIndusCustStdInfoPopup = function(data) {
				$("#js-indus-cust-std-info-reg-pop-cust-cust").val(data.cust);
				$("#js-indus-cust-std-info-reg-pop-cust-cust-nm").val(data.custNm);
				$("#js-indus-cust-std-info-reg-pop-cust-rep-nm").val(data.repNm);
				$("#js-indus-cust-std-info-reg-pop-cust-phone").val(data.phone);
				$("#js-indus-cust-std-info-reg-pop-cust-addr").val(data.addr);
				
				$("#js-indus-cust-std-info-reg-pop-cust").val(data.cust);
			}
		
		</script>

		
		<div class="wp-dim-layer">
		    <div class="wp-dimBg"></div>
		    <div id="js-indus-cust-std-info-detail-step2-popup" class="wp-pop-layer wp-pop-w940 wp-box-sizing wp-ship-popup wp-report-pop-section wp-repair-pop-section">
		    	<div class="wp-pop-title">
		    		<h1>거래선 정보 등록</h1>
		    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-indus-cust-std-info-reg-popup-step2-close-button"><span>닫기</span></button>
		    	</div>
		        <div class="wp-pop-conts">
			        <!-- scroll Area -->
			        <div class="wp-pop-cont-scrollable">
				        <!--content //-->
						<div class="wp-step-area wp-pop-step5">
							<ul>
								<li class="active"><span>거래선 정보</span></li>
								<li class="active"><span>도장업체 정보</span></li>
								<li class=""><span>공장 정보</span></li>
								<li class=""><span>라인 정보</span></li>
								<li class=""><span>공정 정보</span></li>
							</ul>
						</div>
						<div class="wp-clearfix">
							<h2 class="wp-title wp-fl wp-mt5">거래선별 실도장업체 정보<span class="wp-fc-blue2" id="js-indus-cust-std-info-reg-pop-step2-info-pCustNm">-</span></h2>
							<button type="button" class="wp-btn small white bgray plus wp-fr" id="js-indus-cust-std-info-reg-pop-step2-info-add" data-link="js-indus-cust-std-info-detail-step2-reg-popup">추가</button>
						</div>
						<!-- table -->
						<div class="wp-table-st1">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:15%">
									<col style="width:30%">
									<col style="width:15%">
									<col style="width:30%">
									<col style="width:10%">
								</colgroup>
								<tbody id="js-indus-cust-std-info-reg-pop-step2-info-list">
							</table>
						</div>
						<!-- //table -->
					</div>
					<!--// content-->
					<!-- btn-area -->
					<div class="wp-btn-area">
						<button type="button" class="wp-btn darkgray cr3" id="js-indus-cust-std-info-prev-step2-reg-pop" data-link="js-indus-cust-std-info-detail-popup"><span class="prev"></span>이전</button>
						<button type="button" class="wp-btn blue1 cr3" id="js-indus-cust-std-info-step3-reg-pop">공장 정보 등록하기<span class="next"></span></button>
						<button type="button" id="js-indus-cust-std-info-reg-popup-step3-button" data-link="js-indus-cust-std-info-detail-step3-popup" class="wp-btn-pop" style="display:none"></button>
					</div>
					<!-- //btn-area -->
				</div><!-- // scroll Area -->
		    </div> <!-- // wp-pop-conts -->
		</div> <!-- // wp-pop-layer -->
		
		
		<script id="js-template-indus-cust-std-step2-info-list" type="text/x-handlebars-template">
			{{#rows}}
				<tr>
					<th class="wp-ar">도장업체</th>
					<td colspan="3" class="wp-al" id="js-indus-cust-std-info-detail-step2-popup-pCustNm">
						{{pCustNm}}
						<input type="hidden" id="js-indus-cust-std-info-detail-step2-popup-pCust" value="{{pcust}}">
					</td>
					<td rowspan="6">
						<button type="button" class="wp-btn small white bgray mody" name="js-indus-cust-std-info-detail-step2-popup-mod-button" id="js-indus-cust-std-info-detail-step2-popup-mod-button-{{pcust}}" data-cust="{{cust}}" data-itemType="{{itemType}}" data-link="js-indus-cust-std-info-detail-step2-reg-popup"><span>수정</span></button>
					</td>
				</tr>
				<tr>
					<th class="wp-ar">연간 도료 사용량(㎘)</th>
					<td class="wp-al" id="js-indus-cust-std-info-detail-step2-popup-yearlyUsageVqty">{{yearlyUsageVqty}}</td>
					<th class="wp-ar">KCC 점유율(%)</th>
					<td class="wp-al" id="js-indus-cust-std-info-detail-step2-popup-kccPaintRate">{{kccPaintRate}}</td>
				</tr>
				<tr>
					<th class="wp-ar">후가공업체</th>
					<td class="wp-al" id="js-indus-cust-std-info-detail-step2-popup-afterProcComp">{{afterProcComp}}</td>
					<th class="wp-ar">주 원청사</th>
					<td class="wp-al" id="js-indus-cust-std-info-detail-step2-popup-mainComp">{{mainComp}}</td>
				</tr>
				<tr>
					<th class="wp-ar">주 사용 도료 Maker</th>
					<td colspan="3" class="wp-al" id="js-indus-cust-std-info-detail-step2-popup-makerInfo">{{makerInfo}}</td>
				</tr>
				<tr>
					<th class="wp-ar">KCC 사용 제품</th>
					<td colspan="3" class="wp-al" id="js-indus-cust-std-info-detail-step2-popup-custItems">{{custItems}}</td>
				</tr>
				<tr>
					<th class="wp-ar">경쟁사 사용 제품</th>
					<td colspan="3" class="wp-al" id="js-indus-cust-std-info-detail-step2-popup-kccItems">{{kccItems}}</td>
				</tr>
			{{/rows}}
		</script>
		
		
		<div class="wp-dim-layer">
		    <div class="wp-dimBg"></div>
		    <div id="js-indus-cust-std-info-detail-step2-reg-popup" class="wp-pop-layer wp-pop-w700 wp-box-sizing wp-ship-popup wp-report-pop-section wp-repair-pop-section">
		    	<div class="wp-pop-title">
		    		<h1>도장업체 정보 등록</h1>
		    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-indus-cust-std-info-detail-step2-close-button"><span>닫기</span></button>
		    	</div>
		        <div class="wp-pop-conts">
					<!-- scroll Area -->
					<div class="wp-pop-cont-scrollable">
						<!--content //-->
						<div class="wp-table-st1 h-registration">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:20%">
									<col style="width:30%">
									<col style="width:20%">
									<col style="width:30%">
								</colgroup>
								<tbody>
									<tr>
										<th class="wp-ar">도장업체</th>
										<td class="wp-al" colspan="3">
											<div class="wp-ui-select wp-wd100p">
												<select title="항목 개수 설정" id="js-indus-cust-std-info-reg-pop-step2-detail-reg-paintCust-combo">
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<th class="wp-ar">연간 도료 사용량</th>
										<td><input type="text" name="" id="js-indus-cust-std-info-reg-pop-step2-detail-reg-yearlyUsageVqty" title="내용입력"></td>
										<th class="wp-ar">KCC 점유율</th>
										<td><input type="text" name="" id="js-indus-cust-std-info-reg-pop-step2-detail-reg-kccPaintRate" title="내용입력"></td>
									</tr>
									<tr>
										<th class="wp-ar">후가공업체</th>
										<td><input type="text" name="" id="js-indus-cust-std-info-reg-pop-step2-detail-reg-afterProcComp" title="내용입력"></td>
										<th class="wp-ar">주 원청사</th>
										<td><input type="text" name="" id="js-indus-cust-std-info-reg-pop-step2-detail-reg-mainComp" title="내용입력"></td>
									</tr>
									<tr>
										<th class="wp-ar">주 사용 도료 Maker</th>
										<td colspan="3" class="wp-al">
											<div class="wp-ui-select wp-wd85 wp-mr10">
												<select title="항목 개수 설정" id="js-indus-cust-std-info-reg-pop-step2-detail-reg-makerId-combo">
												</select>
											</div>
											<div class="wp-style-sel wp-inblock wp-wd406">
												<ul id="js-indus-cust-std-info-reg-pop-step2-detail-reg-makerId-ul">
												</ul>
											</div>
										</td>
									</tr>
									<tr>
										<th class="wp-ar">경쟁사 사용 제품</th>
										<td colspan="3" class="wp-al">
											<div class="wp-style-sel wp-wd100p">
												<ul id="js-indus-cust-std-info-reg-pop-step2-detail-reg-productNmList">
												</ul>
												<input type="text" id="js-indus-cust-std-info-reg-pop-step2-detail-reg-productNm" class="wp-nodesign">
											</div>
										</td>
									</tr>
									<tr>
										<th class="wp-ar">KCC 사용 제품</th>
										<td colspan="3" class="wp-al">
											<div class="wp-style-sel wp-wd450 wp-inblock">
												<ul id="js-indus-cust-std-info-reg-pop-step2-detail-reg-kccNmList">
												</ul>
											</div>
											<button type="button" class="wp-btn small gray cr3 wp-btn-pop" id="js-indus-cust-std-info-reg-pop-step2-detail-reg-prod-button" data-link="js-prod-info-popup" data-depth="3">선택</button>
										</td>
									</tr>
							</table>
						</div>
					</div>
					<!--// content-->
					<!-- btn-area -->
					<div class="wp-btn-area">
						<button type="button" class="wp-btn blue1 cr3" id="js-indus-cust-std-info-reg-pop-step2-pcust-detail-reg-button">저장</button>
					</div>
					<!-- //btn-area -->
				</div><!-- // scroll Area -->
		    </div> <!-- // wp-pop-conts -->
		</div> <!-- // wp-pop-layer -->
		
		
		<script type="text/javascript">
		
			var makerList	= [];
			var cprodList 	= [];
			var prodList 	= [];
			
			var makerJsonList	= "";
			var cprodJsonList	= "";
			var prodJsonList	= "";
		
			$("#js-indus-cust-std-info-step2-reg-pop").off().on("click", function(){
				
				if($("#js-indus-cust-std-info-reg-pop-cust-cust-nm").val() == ""){
					alert("거래선을 선택해 주십시오.");
					return;
				}
					
				// 거래선 정보 등록 팝업 닫기
				$("#js-indus-cust-std-info-reg-popup-close-button").click();
				
				// 도장업체정보 팝업 띄우기
				$("#js-indus-cust-std-info-reg-popup-step2-button").click();
				
				fn_openPop($(this));
				initIndusCustStdInfoRegPopup();
				
			});
			
			
			// 이전
			$("#js-indus-cust-std-info-prev-step2-reg-pop").off().on("click", function(){
				fn_openPop($(this));
				initIndusCustStdInfoRegPopup();
				// 거래선 정보 등록 팝업 닫기
				$("#js-indus-cust-std-info-reg-popup-step2-close-button").click();
				
			});
			
			
			// 거래선 정보 등록 버튼
			$("#js-indus-cust-std-info-reg-popup-step2-button").off().on('click', function(){
				retrievePcustInfoStep2.request();
			});
			
			
			// + 도장업체 정보 등록 버튼
			$("#js-indus-cust-std-info-reg-pop-step2-info-add").off().on('click', function(){
				var params = {};
				params.type = '';
				params.cust = '';
				fn_openPop($(this));
				retrieveCustStdInfoStep2(params);
			});
			
			
			
			// 경쟁사 사용 제품 추가
			$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-productNm').off().on('keyup', function(e) {
				if(!(e.keyCode >= 37 && e.keyCode <= 40)) {
					$(this).val($(this).val().replace(/[^a-z0-9]/gi,'').toUpperCase());
				}
				
				if(e.which == 13 || this.value.length == 10){
					indusCustStdInfoChkRegPopupAddProductNo(this.id);
					$("#"+ this.id).focus();
					return;
				}
				
				//focus
				$("#"+ this.id).focus();
				
			});
			
			
			//------------------------------------------------
			// 경쟁사 사용 제품 추가
			//------------------------------------------------
			var indusCustStdInfoChkRegPopupAddProductNo = function(id){
				var lotNo = $("#"+id).val();
				
				if(lotNo){
					var listCheck = true;
					
					$("#"+id+"List").find("li[id*="+id+"]").each(function() {
						var code = this.id.substring(id.length + 1);
						if(lotNo == code){
							listCheck = false;
							false;
						}
					});
					
					if(listCheck){
						var html = '<li id="'+ id + '-' + lotNo + '">'+ lotNo + '<button type="button" id="'+ id + '-remove-'+ lotNo +'" class="wp-spr-btn wp-close-sel"><span>닫기</span></button></li>';
						$("#"+id+"List").append(html);
						
						cprodList.push({
							productNm : lotNo
						});
						
						$("#"+id).val('');
					} else {
						//이미 추가됨
						fn_alertInfo('A', '이미 추가된 Lot No. 입니다.', function(){
							$("#"+id).val('');
							$("#"+id).focus();						
						});
					}
				}
				
				$("#"+id+'-remove-'+lotNo).off().on('click', function() {
					removeSelectedProductNo(this.id);
				});
				
			};
			
			
			// 경쟁사 사용 제품 삭제
			var removeSelectedProductNo = function(id){
				id = id.replace("-remove-", "-");
				$("#"+id).remove();
			}
			
			
			// 제품코드 조회 버튼 클릭
			$("#js-indus-cust-std-info-reg-pop-step2-detail-reg-prod-button").off().on("click", function(){
				initRetrieveProdItemsInfoList("js-indus-cust-std-info-reg-popup");
			});
			
			
			// 제품코드 선택
			var applyIndusCustStdInfoRegPopupProdData = function(data){
				
				var html = '<li id=js-indus-cust-std-info-reg-pop-step2-detail-reg-li-' + data.items + '>'+ data.itemsNm + '<button type="button" id=js-indus-cust-std-info-reg-pop-step2-detail-reg-remove-btn-'+ data.items +' class="wp-spr-btn wp-close-sel"><span>닫기</span></button></li>';
				$("#js-indus-cust-std-info-reg-pop-step2-detail-reg-kccNmList").append(html);
				
				prodList.push({
					items : data.items
				});
				
				// 삭제
				$("button[id^=js-indus-cust-std-info-reg-pop-step2-detail-reg-remove-btn-").off().on('click', function() {
					$(this).parent("li").remove();
				});
				
			}
			
			
			// + 도장업체 정보 등록 버튼 클릭 시 팝업 띄운 이후 실행
			var retrieveCustStdInfoStep2 = function(params){
				
				// step2 상세 도장업체 콤보 조회
				retrieveStep2DetailRegCustList.request(params);
				retrievePcustInfoStepReg2Detail.request();
				
				if(params.itemType != undefined){
					//console.log("등록 params.itemType "+ params.itemType);
					retrievePcustInfoStep2Detail.request(params);
				}
				
			}
			
			
			// 거래선별 실도장업체 정보 등록(Step2)
			$("#js-indus-cust-std-info-reg-pop-step2-pcust-detail-reg-button").off().on('click', function() {
				
				var makerArray 	= new Array();
				var cprodArray 	= new Array();
				var prodArray 	= new Array();
				
				$("#js-indus-cust-std-info-reg-pop-step2-detail-reg-makerId-ul li").each(function(i){
					var makerIdVal = this.id.substring("js-indus-cust-std-info-reg-pop-step2-detail-reg-makerIdNm".length + 1);
					makerArray.push({
						makerId : makerIdVal
					});
				});
				
				$("#js-indus-cust-std-info-reg-pop-step2-detail-reg-productNmList li").each(function(i){
					var productNmVal = this.id.substring("js-indus-cust-std-info-reg-pop-step2-detail-reg-productNm".length + 1);
					cprodArray.push({
						productNm : productNmVal
					});
				});
				
				$("#js-indus-cust-std-info-reg-pop-step2-detail-reg-kccNmList li").each(function(i){
					var itemsVal = this.id.substring("js-indus-cust-std-info-reg-pop-step2-detail-reg-li".length + 1);
					prodArray.push({
						items : itemsVal
					});
				});
				
				makerJsonList 	= "";
				makerJsonList 	= JSON.stringify(makerArray);
				cprodJsonList 	= "";
				cprodJsonList 	= JSON.stringify(cprodArray);
				prodJsonList 	= "";
				prodJsonList 	= JSON.stringify(prodArray);
				
				// 거래선별 실도장업체 정보 등록(Step2)
				//savePcustStep2.request(makerJsonList, cprodJsonList, prodJsonList);
				savePcustStep2.request(makerJsonList, cprodJsonList, prodJsonList);
				
			});
			
			
			// 팝업 닫을 때 초기화
			$("#js-indus-cust-std-info-detail-step2-close-button").off().on('click', function() {
				
				$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-yearlyUsageVqty').val("");
				$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-kccPaintRate').val("");
				$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-afterProcComp').val("");
				$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-mainComp').val("");
				
				$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-makerId-ul li').remove();
				$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-productNmList li').remove();
				$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-kccNmList li').remove();
				
			});
			
			// ------------------------------------------------
			// step2 상세 도장업체 콤보 조회
			// ------------------------------------------------
			var retrieveStep2DetailRegCustList = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							
							console.log("retrievePcustList 도장업체 콤보 조회 ");
							
							var data = response.rs;
							
							$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-paintCust-combo').find('option').remove();
							
							for(var i=0; i < data.length; i++)
							{
								$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-paintCust-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
							}
							
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
				request: function(params) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						service		: 'ind.common',
						method		: 'retrievePcustList',
						itemType 	: jsCommon.itemType.getItem().code,
						cust 		: $('#js-indus-cust-std-info-reg-pop-cust').val()
					};

					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			
			// ------------------------------------------------
			// step2 상세 도장업체 정보 등록
			// ------------------------------------------------
			var retrievePcustInfoStepReg2Detail = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							
							var data = response.rs.makerList;
							
							// 주 사용 도료 Maker Combo
							$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-makerId-combo').find('option').remove();
							
							for(var i=0; i < data.length; i++)
							{
								if(i == 0){
									$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-makerId-combo').append("<option value=''>선택</option>");
								}
								
								//console.log("data[i].makerId "+ data[i].code);
								//console.log("data[i].makerIdNm "+ data[i].codeNm);
								
								$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-makerId-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
							}
							
							// 주 사용 도료 Maker
							$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-makerId-combo').off().on("change", function(){
								var selectedMakerId = $("#js-indus-cust-std-info-reg-pop-step2-detail-reg-makerId-combo option:selected").val();
								var selectedMakerIdNm = $("#js-indus-cust-std-info-reg-pop-step2-detail-reg-makerId-combo option:selected").text();
								
								var html = "<li id=js-indus-cust-std-info-reg-pop-step2-detail-reg-makerIdNm-"+ selectedMakerId + "\>"+ selectedMakerIdNm +"<button type=\"button\" class=\"wp-spr-btn wp-close-sel\" id=js-indus-cust-std-info-reg-pop-step2-detail-reg-makerIdNm-remove-"+ selectedMakerId +"><span>닫기</span></button></li>";
								$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-makerId-ul').append(html);

								// 제거
								$("button[id=js-indus-cust-std-info-reg-pop-step2-detail-reg-makerIdNm-remove-"+ selectedMakerId +"]").off().on('click', function() {
									$("#js-indus-cust-std-info-reg-pop-step2-detail-reg-makerIdNm-"+ selectedMakerId).remove();
								});
								
								makerList.push({
									makerId : selectedMakerId
								});
								
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
				request: function(params) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						service		: 'ind.custInfo',
						method		: 'retrievePcustInfoStep2Detail',
						itemType 	: jsCommon.itemType.getItem().code,
						cust 		: $("#js-indus-cust-std-info-reg-pop-cust").val(),
						pcust 		: $("#js-indus-cust-std-info-detail-step2-popup-pCust").val()
					};

					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			
			// ------------------------------------------------
			// step2 상세 도장업체 정보 등록
			// ------------------------------------------------
			var retrievePcustInfoStep2Detail = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							
							makerList = [];
							
							var data = response.rs.makerInfo;
							
							if(data.length > 0){
								$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-makerId-combo').val(data[0].makerId);
								
								$("#js-indus-cust-std-info-reg-pop-pcust").val(response.rs.stdInfo[0].pcust);
							}
							
							// 주 사용 도료 Maker
							$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-makerId-combo').off().on("change", function(){
								var selectedMakerId = $("#js-indus-cust-std-info-reg-pop-step2-detail-reg-makerId-combo option:selected").val();
								var selectedMakerIdNm = $("#js-indus-cust-std-info-reg-pop-step2-detail-reg-makerId-combo option:selected").text();
								
								var html = "<li id=js-indus-cust-std-info-reg-pop-step2-detail-reg-makerIdNm-"+ selectedMakerId + "\>"+ selectedMakerIdNm +"<button type=\"button\" class=\"wp-spr-btn wp-close-sel\" id=js-indus-cust-std-info-reg-pop-step2-detail-reg-makerIdNm-remove-"+ selectedMakerId +"><span>닫기</span></button></li>";
								$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-makerId-ul').append(html);

								// 제거
								$("button[id=js-indus-cust-std-info-reg-pop-step2-detail-reg-makerIdNm-remove-"+ selectedMakerId +"]").off().on('click', function() {
									$("#js-indus-cust-std-info-reg-pop-step2-detail-reg-makerIdNm-"+ selectedMakerId).remove();
								});
								
								makerList.push({
									makerId : selectedMakerId
								});
								
							});
							
							var data = response.rs.stdInfo;
							
							$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-yearlyUsageVqty').val(data[0].yearlyUsageVqty);
							$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-kccPaintRate').val(data[0].kccPaintRate);
							$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-afterProcComp').val(data[0].afterProcComp);
							$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-mainComp').val(data[0].afterProcComp);
							
							var data = response.rs.makerInfo;
							
							for(var i=0; i < data.length; i++){
								var html = "<li id=js-indus-cust-std-info-reg-pop-step2-detail-reg-makerIdNm-"+ data[i].makerId + "\>"+ data[i].makerIdNm +"<button type=\"button\" class=\"wp-spr-btn wp-close-sel\" id=js-indus-cust-std-info-reg-pop-step2-detail-reg-makerIdNm-remove-"+ data[i].makerId +"><span>닫기</span></button></li>";
								$('#js-indus-cust-std-info-reg-pop-step2-detail-reg-makerId-ul').append(html);
							}
							
							// 제거
							$("button[id^=js-indus-cust-std-info-reg-pop-step2-detail-reg-makerIdNm-remove-]").off().on('click', function() {
								var id = this.id;
								$("#"+ id).parent("li").remove();
							});
							
							var data = response.rs.cprodInfo;
							
							for(var i=0; i < data.length; i++){
								var html = '<li id="js-indus-cust-std-info-reg-pop-step2-detail-reg-productNm-' + data[i].productNm + '">'+ data[i].productNm + '<button type="button" id="js-indus-cust-std-info-reg-pop-step2-detail-reg-productNm-remove-"'+ data[i].productNm +' class="wp-spr-btn wp-close-sel"><span>닫기</span></button></li>';
								$("#js-indus-cust-std-info-reg-pop-step2-detail-reg-productNmList").append(html);
							}
							
							// 제거
							$("button[id^=js-indus-cust-std-info-reg-pop-step2-detail-reg-productNm-remove-]").off().on('click', function() {
								var id = this.id;
								$("#"+ id).parent("li").remove();
							});
							
							var data = response.rs.prodInfo;
							
							for(var i=0; i < data.length; i++){
								var html = '<li id="js-indus-cust-std-info-reg-pop-step2-detail-reg-li-' + data[i].items + '">'+ data[i].itemsNm + '<button type="button" id=js-indus-cust-std-info-reg-pop-step2-detail-reg-remove-btn-'+ data[i].items +' class="wp-spr-btn wp-close-sel"><span>닫기</span></button></li>';
								$("#js-indus-cust-std-info-reg-pop-step2-detail-reg-kccNmList").append(html);
							}
							
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
				request: function(params) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						service		: 'ind.custInfo',
						method		: 'retrievePcustInfoStep2Detail',
						itemType 	: 'PCM',
						cust 		: $("#js-indus-cust-std-info-reg-pop-cust").val(),
						pcust 		: $("#js-indus-cust-std-info-detail-step2-popup-pCust").val()
					};

					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			
			// ------------------------------------------------
			// 거래선별 실도장업체 정보 등록(Step2)
			// ------------------------------------------------
			var savePcustStep2 = {
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
								, callback          : {
									confirm: function() {
										makerList = [];
										cprodList = [];
										prodList = [];
										
										makerJsonList = "";
										cprodJsonList = "";
										prodJsonList = "";
									}
								}
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
				request: function(makerJsonList, cprodJsonList, prodJsonList) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						service			: 'ind.custInfo',
						method			: 'savePcustStep2',
						itemType		: jsCommon.itemType.getItem().code,
						cust			: $("#js-indus-cust-std-info-reg-pop-cust").val(),
						pcust			: $("#js-indus-cust-std-info-reg-pop-step2-detail-reg-paintCust-combo").val(),
						makerList 		: makerJsonList,
						cprodList 		: cprodJsonList,
						prodList		: prodJsonList,
						yearlyUsageVqty	: $('#js-indus-cust-std-info-reg-pop-step2-detail-reg-yearlyUsageVqty').val(),
						kccPaintRate	: $('#js-indus-cust-std-info-reg-pop-step2-detail-reg-kccPaintRate').val(),
						afterProcComp	: $('#js-indus-cust-std-info-reg-pop-step2-detail-reg-afterProcComp').val(),
						mainComp		: $('#js-indus-cust-std-info-reg-pop-step2-detail-reg-mainComp').val()
					};

					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			
			// ------------------------------------------------
			// 거래선 정보 정보 조회(Step2)
			// ------------------------------------------------
			var retrievePcustInfoStep2 = {
				success : function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							
							var data = {
								rows : response.rs.PcustList
							};

							var html = indusCustStdInfoStep2ListTemplate(data);
							$('#js-indus-cust-std-info-reg-pop-step2-info-list').empty().append(html);
							
							$('#js-indus-cust-std-info-reg-pop-step2-info-pCustNm').text(" – " + data.rows[0].pCustNm);
							
							// 거래선별 실도장업체 정보 - 수정
							$("button[name=js-indus-cust-std-info-detail-step2-popup-mod-button]").off().on('click', function() {
								
								var params		= {};
								
								var itemType 	= $(this).attr("data-itemtype");
								var cust 		= $(this).attr("data-cust");
								
								params.itemType	= itemType;
								params.cust		= cust;
								
								fn_openPop($(this));
								retrieveCustStdInfoStep2(params);
								
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
				request : function(cust) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						service 	: 'ind.custInfo',
						method 		: 'retrievePcustInfoStep2',
						itemType 	: jsCommon.itemType.getItem().code,
						cust 		: $("#js-indus-cust-std-info-reg-pop-cust").val()
					};
					
					app.mask.pageLock();					
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
		
		</script>
		
		
		
		<div class="wp-dim-layer">
	    	<div class="wp-dimBg"></div>
		    <div id="js-indus-cust-std-info-detail-step3-popup" class="wp-pop-layer wp-pop-w940 wp-box-sizing wp-ship-popup wp-report-pop-section wp-repair-pop-section">
		    	<div class="wp-pop-title">
		    		<h1>거래선 정보 등록</h1>
		    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-indus-cust-std-info-reg-popup-step3-close-button"><span>닫기</span></button>
		    	</div>
		        <div class="wp-pop-conts">
			        <!-- scroll Area -->
					<div class="wp-pop-cont-scrollable">
						<!--content //-->
						<div class="wp-step-area wp-pop-step5">
							<ul>
								<li class="active"><span>거래선 정보</span></li>
								<li class="active"><span>도장업체 정보</span></li>
								<li class="active"><span>공장 정보</span></li>
								<li class=""><span>라인 정보</span></li>
								<li class=""><span>공정 정보</span></li>
							</ul>
						</div>
						<div class="wp-clearfix">
							<h2 class="wp-title wp-fl wp-mt5">도장업체별 공장 정보<span class="wp-fc-blue2" id="js-indus-cust-std-info-reg-pop-step3-info-pCustNm">–</span></h2>
							<button type="button" class="wp-btn small white bgray plus wp-fr" id="js-indus-cust-std-info-reg-pop-step3-info-add" data-link="js-indus-cust-std-info-detail-step3-reg-popup">추가</button>
						</div>
						<div class="wp-table-st1 h-center h-registration">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:15%">
									<col style="width:85%">
								</colgroup>
								<tbody>
									<tr>
										<th class="wp-ar">도장업체</th>
										<td class="wp-al">
											<div class="wp-ui-select wp-wd100p">
												<select title="항목 개수 설정" id="js-indus-cust-std-info-reg-pop-paintCust-combo">
												</select>
											</div>
										</td>
									</tr>
							</table>
						</div>
						<div class="wp-clearfix wp-mb10" id="js-indus-cust-std-info-reg-pop-step3-info-list">
							
						</div>
						
						<!-- table -->
						
						<!-- //table -->
						
					</div>
					<!--// content-->
					<!-- btn-area -->
					<div class="wp-btn-area">
						<button type="button" class="wp-btn darkgray cr3" id="js-indus-cust-std-info-prev-step3-reg-pop" data-link="js-indus-cust-std-info-detail-step2-popup"><span class="prev"></span>이전</button>
						<button type="button" class="wp-btn blue1 cr3" id="js-indus-cust-std-info-step4-reg-pop">라인 정보 등록하기<span class="next"></span></button>
						<button type="button" id="js-indus-cust-std-info-reg-popup-step4-button" data-link="js-indus-cust-std-info-detail-step4-popup" class="wp-btn-pop" style="display:none"></button>
					</div>
					<!-- //btn-area -->
				</div><!-- // scroll Area -->
			</div> <!-- // wp-pop-conts -->
		</div> <!-- // wp-pop-layer -->
	    
	    
	    <script id="js-template-indus-cust-std-step3-info-list" type="text/x-handlebars-template">
			{{#rows}}
				<div class="wp-table-st1 h-registration" id="js-indus-cust-std-info-reg-pop-step3-info-list-{{@index}}">
					<table>
						<caption></caption>
						<colgroup>
							<col style="width:15%">
							<col style="width:30%">
							<col style="width:15%">
							<col style="width:30%">
							<col style="width:10%">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar">공장</th>
								<td class="wp-al" id="js-indus-cust-std-info-detail-step3-popup-factoryNm">
									{{factoryNm}}
									<input type="hidden" id="js-indus-cust-std-info-detail-step3-popup-factoryId" value="{{factoryId}}">
								</td>
								<th class="wp-ar">소재지</th>
								<td class="wp-al" id="js-indus-cust-std-info-detail-step3-popup-location">{{location}}</td>
								<td rowspan="6">
									<button type="button" class="wp-btn small white bgray mody" name="js-indus-cust-std-info-detail-step3-popup-mod-button" id="js-indus-cust-std-info-detail-step3-popup-mod-button-{{factoryId}}" data-link="js-indus-cust-std-info-detail-step3-reg-popup"><span>수정</span></button>
								</td>
							</tr>
							<tr>
								<th class="wp-ar">Annual Capa.(ton)</th>
								<td class="wp-al" id="js-indus-cust-std-info-detail-step3-popup-annualCapa">{{annualCapa}}</td>
								<th class="wp-ar">주력 생산품</th>
								<td class="wp-al" id="js-indus-cust-std-info-detail-step3-popup-mainProduct">{{mainProduct}}</td>
							</tr>
							<tr>
								<th class="wp-ar">감리 담당자(정)</th>
								<td class="wp-al" id="js-indus-cust-std-info-detail-step3-popup-mainEmpNm">{{mainEmpNm}}
									<input type="hidden" id="js-indus-cust-std-info-detail-step3-popup-mainEmp" value="{{mainEmp}}">
								</td>
								<th class="wp-ar">감리 담당자(부)</th>
								<td class="wp-al" id="js-indus-cust-std-info-detail-step3-popup-subEmpNm">{{subEmpNm}}
									<input type="hidden" id="js-indus-cust-std-info-detail-step3-popup-subEmp" value="{{subEmp}}">
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			{{/rows}}
		</script>
		
		
		<div class="wp-dim-layer">
		    <div class="wp-dimBg"></div>
		    <div id="js-indus-cust-std-info-detail-step3-reg-popup" class="wp-pop-layer wp-pop-w700 wp-box-sizing wp-ship-popup wp-report-pop-section wp-repair-pop-section">
		    	<div class="wp-pop-title">
		    		<h1>도장업체별 공장 정보 항목별 값 등록</h1>
		    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-indus-cust-std-info-detail-step3-close-button"><span>닫기</span></button>
		    	</div>
		        <div class="wp-pop-conts">
					<!-- scroll Area -->
					<div class="wp-pop-cont-scrollable">
					<!--content //-->
						<div class="wp-table-st1 h-registration">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:20%">
									<col style="width:30%">
									<col style="width:20%">
									<col style="width:30%">
								</colgroup>
								<tbody>
									<tr>
										<th class="wp-ar">도장업체</th>
										<td class="wp-al wp-fc-blue2">
											<div class="wp-ui-select wp-wd100p">
												<select title="항목 개수 설정" name="js-indus-cust-std-info-reg-pop-step3-detail-reg-paintCust-combo" id="js-indus-cust-std-info-reg-pop-step3-detail-reg-paintCust-combo">
												</select>
											</div>
										</td>
										<th class="wp-ar">공장명</th>
										<td class="wp-al wp-fc-blue2">
											<div class="wp-ui-select wp-wd100p">
												<select title="항목 개수 설정" id="js-indus-cust-std-info-reg-pop-step3-factoryId-combo">
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<th class="wp-ar">소재지</th>
										<td colspan="4" class="wp-al">
											<div class="wp-ui-select wp-wd110">
												<select title="항목 개수 설정" id="js-indus-cust-std-info-reg-pop-step3-detail-reg-location1-combo">
												</select>
											</div>
											<div class="wp-ui-select wp-wd110">
												<select title="항목 개수 설정" id="js-indus-cust-std-info-reg-pop-step3-detail-reg-location2-combo">
												</select>
											</div>
											<div class="wp-ui-select wp-wd110">
												<select title="항목 개수 설정" id="js-indus-cust-std-info-reg-pop-step3-detail-reg-location3-combo">
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<th class="wp-ar">등록자</th>
										<td colspan="5" class="wp-al" id="js-indus-cust-std-info-reg-pop-step3-detail-reg-mainEmpNm"></td>
									</tr>
							</table>
						</div>
						<!-- table -->
						<div class="wp-clearfix wp-mb10">
							<button type="button" class="wp-btn small white bgray plus wp-fr" id="js-indus-cust-std-info-reg-pop-step3-detail-info-add">추가</button>
						</div>
						<div class="wp-table-st1 h-center">
							<table>
								<caption>검사 정보</caption>
								<colgroup>
									<col style="width:33%;">
									<col style="width:33%;">
									<col style="width:34%;">
								</colgroup>
								<thead>
									<tr>
										<th>항목</th>
										<th>변경 전</th>
										<th>변경 후</th>
									</tr>
								</thead>
								<tbody id="js-indus-cust-std-info-reg-pop-step3-detail-info-list">
								</tbody>
							</table>
				            </div>
						<!-- //table -->
					</div>
					<!--// content-->
					<!-- btn-area -->
					<div class="wp-btn-area">
						<button type="button" class="wp-btn blue1 cr3" id="js-indus-cust-std-info-reg-pop-step3-factory-detail-reg-button">저장</button>
					</div>
					<!-- //btn-area -->
				</div><!-- // scroll Area -->
		    </div> <!-- // wp-pop-conts -->
		</div> <!-- // wp-pop-layer -->
		
		
		
		<script id="js-template-indus-cust-std-step3-detail-info-list" type="text/x-handlebars-template">
			<tr name="js-indus-cust-std-detail-info-reg-pop-factoryList-tr" dataIndex="{{index}}">
				<td>
					<div class="wp-ui-select wp-wd100p">
						<select title="항목 개수 설정" id="js-indus-cust-std-info-reg-pop-step3-detail-reg-proc-combo-{{dataIndex}}" name="js-indus-cust-std-info-reg-pop-step3-detail-reg-proc-combo" dataIndex="{{dataIndex}}">
						</select>
					</div>
				</td>
				<td name="js-indus-cust-std-info-reg-pop-step3-detail-reg-prevValue" id="js-indus-cust-std-info-reg-pop-step3-detail-reg-prevValue-{{dataIndex}}" dataIndex="{{dataIndex}}">
				</td>
				<td>
					<input type="text" id="js-indus-cust-std-info-reg-pop-step3-detail-reg-currentValue-{{dataIndex}}" name="js-indus-cust-std-info-reg-pop-step3-detail-reg-currentValue" dataIndex="{{dataIndex}}" title="내용입력" class="wp-wd150">
					<input type="hidden" id="js-indus-cust-std-info-reg-pop-step3-detail-reg-valueType-{{dataIndex}}" value="{{valueType}}">
					<button type="button" class="wp-btn small gray cr3" id="js-indus-cust-std-info-reg-pop-step3-detail-delete-button-{{dataIndex}}" name="js-indus-cust-std-info-reg-pop-step3-detail-delete-button">삭제</button>
				</td>
			</tr>
		</script>
		
		
		<script type="text/javascript">
			
				// + 공장 정보 등록 버튼
				$("#js-indus-cust-std-info-reg-pop-step3-info-add").off().on('click', function(){
					fn_openPop($(this));
					retrieveCustStdInfoStep3('I');
				});
				
				
				// + 공장 정보 등록 버튼 클릭 시 팝업 띄운 이후 실행
				var retrieveCustStdInfoStep3 = function(chk){
					
					retrieveDetailPcustList.request();
					
					// step3 도장업체별 공장 정보 항목별 값 등록 상세 조회
					if(chk == 'I'){
						retrieveFactoryInfoStep3DetailInit.request();
					}
					else
					{
						retrieveStep3FactoryList.request();
						retrieveFactoryInfoStep3Detail.request();
					}
					
				}
				
				
				// ------------------------------------------------
				// step3 소재지 콤보박스1 조회
				// ------------------------------------------------
				var retrieveLocation1List = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								console.log("retrieveLocation1List 소재지1 콤보 조회 ");
								
								var data = response.rs;
								
								$('#js-indus-cust-std-info-reg-pop-step3-detail-reg-location1-combo').find('option').remove();
								
								for(var i=0; i < data.length; i++)
								{
									$('#js-indus-cust-std-info-reg-pop-step3-detail-reg-location1-combo').append("<option value='"+ data[i].location1 +"'>"+ data[i].location1 +"</option>");
								}
								
								// 공장명/소재지 combo1 change
								$('#js-indus-cust-std-info-reg-pop-step3-detail-reg-location1-combo').off().on("change", function(){
									retrieveLocation2List.request();
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
					request: function() {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						var params = {
							service		: 'ind.common',
							method		: 'retrieveLocation1List',
							itemType 	: jsCommon.itemType.getItem().code,
							cust 		: $("#js-indus-cust-std-info-reg-pop-cust").val(),
							pcust 		: $("#js-indus-cust-std-info-reg-pop-step3-detail-reg-paintCust-combo").val(),
							factoryId 	: $("#js-indus-cust-std-info-reg-pop-step3-factoryId-combo").val()
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				};
				
				
				// ------------------------------------------------
				// step3 소재지 콤보박스2 조회
				// ------------------------------------------------
				var retrieveLocation2List = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								console.log("retrieveLocation1List2 소재지 콤보 조회 ");
								
								var data = response.rs;
								
								$('#js-indus-cust-std-info-reg-pop-step3-detail-reg-location2-combo').find('option').remove();
								
								for(var i=0; i < data.length; i++)
								{
									$('#js-indus-cust-std-info-reg-pop-step3-detail-reg-location2-combo').append("<option value='"+ data[i].location2 +"'>"+ data[i].location2 +"</option>");
								}
								
								// 공장명/소재지 combo2 change
								$('#js-indus-cust-std-info-reg-pop-step3-detail-reg-location2-combo').off().on("change", function(){
									retrieveLocation3List.request();
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
					request: function() {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						//var cust = $("#js-indus-cust-std-info-reg-pop-cust").val() == '' ? '0092492' : $("#js-indus-cust-std-info-reg-pop-cust").val();
						//var cust = params.cust == '' ? '0092492' : params.cust;
						var params = {
							service		: 'ind.common',
							method		: 'retrieveLocation2List',
							itemType 	: jsCommon.itemType.getItem().code,
							cust 		: $("#js-indus-cust-std-info-reg-pop-cust").val(),
							pcust 		: $("#js-indus-cust-std-info-reg-pop-step3-detail-reg-paintCust-combo").val(),
							factoryId 	: $("#js-indus-cust-std-info-reg-pop-step3-factoryId-combo").val(),
							location1 	: $('#js-indus-cust-std-info-reg-pop-step3-detail-reg-location1-combo').val()
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				};
				
				
				
				// ------------------------------------------------
				// step3 소재지 콤보박스3 조회
				// ------------------------------------------------
				var retrieveLocation3List = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								console.log("retrieveLocation1List3 소재지 콤보 조회 ");
								
								var data = response.rs;
								
								$('#js-indus-cust-std-info-reg-pop-step3-detail-reg-location3-combo').find('option').remove();
								
								for(var i=0; i < data.length; i++)
								{
									$('#js-indus-cust-std-info-reg-pop-step3-detail-reg-location3-combo').append("<option value='"+ data[i].location3 +"'>"+ data[i].location3 +"</option>");
								}
								
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
					request: function() {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						//var cust = $("#js-indus-cust-std-info-reg-pop-cust").val() == '' ? '0092492' : $("#js-indus-cust-std-info-reg-pop-cust").val();
						//var cust = params.cust == '' ? '0092492' : params.cust;
						var params = {
							service		: 'ind.common',
							method		: 'retrieveLocation3List',
							itemType 	: jsCommon.itemType.getItem().code,
							cust 		: $("#js-indus-cust-std-info-reg-pop-cust").val(),
							pcust 		: $("#js-indus-cust-std-info-reg-pop-step3-detail-reg-paintCust-combo").val(),
							factoryId 	: $("#js-indus-cust-std-info-reg-pop-step3-factoryId-combo").val(),
							location1 	: $('#js-indus-cust-std-info-reg-pop-step3-detail-reg-location1-combo').val(),
							location2 	: $('#js-indus-cust-std-info-reg-pop-step3-detail-reg-location2-combo').val()
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				};
				
				
				
				// 공장 콤보 조회
				var retrieveStep3FactoryList = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
			
							if (message === 'OK') {
								
								console.log("retrieveStep3FactoryList 공장 콤보 조회 3 ");
								
								var data = response.rs;
								
								$('#js-indus-cust-std-info-reg-pop-step3-factoryId-combo').find('option').remove();
								
								for(var i=0; i < data.length; i++)
								{
									$('#js-indus-cust-std-info-reg-pop-step3-factoryId-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
								}
								
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
					request: function(itemType, cust, paintCust) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						var params = {
							service		: 'ind.common',
							method		: 'retrieveFactoryList',
							itemType	: jsCommon.itemType.getItem().code,
							cust		: $("#js-indus-cust-std-info-reg-pop-cust").val(),
							paintCust	: $("#js-indus-cust-std-info-reg-pop-step3-detail-reg-paintCust-combo").val()
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);				
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				};
				
				
				
				// ------------------------------------------------
				// step3 도장업체별 공장 정보 항목별 값 등록 조회
				// ------------------------------------------------
				var retrieveFactoryInfoStep3Detail = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								console.log("retrieveFactoryInfoStep3Detail 도장업체별 공장 정보 항목별 값 등록 조회 ");
								
								$("#js-indus-cust-std-info-reg-pop-step3-detail-info-list").empty();
								
								
								retrieveStep3FactoryList.request();
								
								retrieveLocation1List.request();
								retrieveLocation2List.request();
								retrieveLocation3List.request();
								
								$("#js-indus-cust-std-info-reg-pop-step3-detail-reg-paintCust-td").css("display", "none");
								$("#js-indus-cust-std-info-reg-pop-step3-detail-reg-paintCust").css("display", "block");
								
								var maxIndex = 1;
								
								var data = response.rs.stdInfo;
								
								$("#js-indus-cust-std-info-reg-pop-step3-detail-reg-paintCust").text(data[0].pCustNm);
								$("#js-indus-cust-std-info-reg-pop-step3-detail-reg-mainEmpNm").text(data[0].inputEmpNm);
								$("#js-indus-cust-std-info-reg-pop-step3-detail-reg-factoryNm").val(data[0].factoryNm);
								
								$("#js-indus-cust-std-info-reg-pop-step3-detail-reg-location1-combo").val(data[0].location1).change();
								
								$("#js-indus-cust-std-info-reg-pop-step3-detail-reg-location2-combo").val(data[0].location2).change();
								
								$("#js-indus-cust-std-info-reg-pop-step3-detail-reg-location3-combo").val(data[0].location3);
								
								var data = response.rs.procIdList;
								var procCnt = data.length;
								gvListIndusColorMeasureInfoInspSeq = data;
								
								// 도장업체별 공장 정보 항목별 값 등록 항목
								var data = {
									procItemId  		: ""
									, procItemValueType : ""
									, procItemValue  	: ""
									, dataIndex       	: Number(maxIndex++)
									, valueType			: response.rs.detail[0].valueType
									, detail			: response.rs.detail
								};
								
								addRowIndusColorMeasureInfoRegPopList(data);
								
								for(var i=0; i < data.length; i++)
								{
									$("[name=js-indus-cust-std-info-reg-pop-step3-detail-reg-proc-combo]").append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
								}
								
								
								var data = response.rs.detail;
								
								for(var i=0; i < data.length; i++){
									
									if($("[name=js-indus-cust-std-info-reg-pop-step3-detail-reg-proc-combo]").val() == data[i].procItemId){
										$("[name=js-indus-cust-std-info-reg-pop-step3-detail-reg-prevValue][dataIndex='1']").text(data[i].currentValue);
									}
								}
								
								// 추가 버튼 클릭
								$('#js-indus-cust-std-info-reg-pop-step3-detail-info-add').off().on("click", function(){
									
									$("[name=js-indus-cust-std-detail-info-reg-pop-factoryList-tr]").each(function(){
										
										var dataIndex = Number($(this).attr("dataIndex"));
										
										if(maxIndex < dataIndex){
											maxIndex = dataIndex;
										}
										
									});
									
									var data = {
										procItemId  		: ""
										, procItemValueType : ""
										, procItemValue  	: ""
										, dataIndex       	: Number(maxIndex++)
										, detail			: response.rs.detail
									};
									
									addRowIndusColorMeasureInfoRegPopList(data);

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
					request: function() {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						//var cust = $("#js-indus-cust-std-info-reg-pop-cust").val() == '' ? '0092492' : $("#js-indus-cust-std-info-reg-pop-cust").val();
						//var cust = params.cust == '' ? '0092492' : params.cust;
						var params = {
							service		: 'ind.custInfo',
							method		: 'retrieveFactoryInfoStep3Detail',
							itemType 	: jsCommon.itemType.getItem().code,
							cust 		: $("#js-indus-cust-std-info-reg-pop-cust").val(),
							pcust 		: $("#js-indus-cust-std-info-reg-pop-paintCust-combo").val(),
							factoryId 	: $("#js-indus-cust-std-info-detail-step3-popup-factoryId").val()
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				};
				
				
				// ------------------------------------------------
				// step3 도장업체별 공장 정보 항목별 값 등록 조회
				// ------------------------------------------------
				var retrieveFactoryInfoStep3DetailInit = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								console.log("retrieveFactoryInfoStep3Detail 도장업체별 공장 정보 항목별 값 등록 조회 ");
								
								$("#js-indus-cust-std-info-reg-pop-step3-detail-info-list").empty();
								
								retrieveLocation1List.request();
								retrieveLocation2List.request();
								retrieveLocation3List.request();
								retrieveStep3FactoryList.request();
								
								$("#js-indus-cust-std-info-reg-pop-step3-detail-reg-paintCust").text("");
								$("#js-indus-cust-std-info-reg-pop-step3-detail-reg-paintCust-td").css("display", "block");
								$("#js-indus-cust-std-info-reg-pop-step3-detail-reg-paintCust").css("display", "none");
								$("#js-indus-cust-std-info-reg-pop-step3-detail-reg-factoryNm").val("");
								
								$("#js-indus-cust-std-info-reg-pop-step3-detail-reg-mainEmpNm").text("${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}");
								
								var maxIndex = 1;
								
								var data = response.rs.procIdList;
								gvListIndusColorMeasureInfoInspSeq = data;
								
								// 도장업체별 공장 정보 항목별 값 등록 항목
								var data = {
									procItemId  		: ""
									, procItemValueType : ""
									, procItemValue  	: ""
									, dataIndex       	: Number(maxIndex++)
									, valueType			: response.rs.detail[0].valueType
									, detail			: []
								};
								
								addRowIndusColorMeasureInfoRegPopList(data);
								
								for(var i=0; i < data.length; i++)
								{
									$("[name=js-indus-cust-std-info-reg-pop-step3-detail-reg-proc-combo]").append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
								}
								
								
								// 추가 버튼 클릭
								$('#js-indus-cust-std-info-reg-pop-step3-detail-info-add').off().on("click", function(){
									
									$("[name=js-indus-cust-std-detail-info-reg-pop-factoryList-tr]").each(function(){
										
										var dataIndex = Number($(this).attr("dataIndex"));
										
										if(maxIndex < dataIndex){
											maxIndex = dataIndex;
										}
										
									});
									
									var data = {
										procItemId  		: ""
										, procItemValueType : ""
										, procItemValue  	: ""
										, dataIndex       	: Number(maxIndex++)
										, detail			: response.rs.detail
									};
									
									addRowIndusColorMeasureInfoRegPopList(data);

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
					request: function() {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						var params = {
							service		: 'ind.custInfo',
							method		: 'retrieveFactoryInfoStep3Detail',
							itemType 	: jsCommon.itemType.getItem().code,
							cust 		: $("#js-indus-cust-std-info-reg-pop-cust").val(),
							pcust 		: $("#js-indus-cust-std-info-reg-pop-paintCust-combo").val(),
							factoryId 	: $("#js-indus-cust-std-info-detail-step3-popup-factoryId").val()
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				};
				
				
				
				// Row 추가
				var addRowIndusColorMeasureInfoRegPopList = function(data){
					
					var html = indusCustStdInfoStep3DetailListTemplate(data);
					$('#js-indus-cust-std-info-reg-pop-step3-detail-info-list').append(html);
					
					// 항목 콤보 세팅
					var comboData = gvListIndusColorMeasureInfoInspSeq;
					
					for(var i=0; i < comboData.length; i++)
					{
						$("[name=js-indus-cust-std-info-reg-pop-step3-detail-reg-proc-combo][dataIndex=" + data.dataIndex + "]").append("<option value='"+ comboData[i].code +"'>"+ comboData[i].codeNm +"</option>");
					}
					
					// 도장업체별 공장 정보 항목별 값 등록 항목 combo 변경 시 변경 전 값 변경
					$("[name=js-indus-cust-std-info-reg-pop-step3-detail-reg-proc-combo]").off().on("change", function(){
						
						console.log("change ::::::::::::::::::::::::::::::::::::: ");
						
						for(var i=0; i < data.detail.length; i++){
							if($(this).val() == data.detail[i].procItemId){
								$("#js-indus-cust-std-info-reg-pop-step3-detail-reg-prevValue-"+ $(this).attr("dataindex")).text(data.detail[i].currentValue);
								$("#js-indus-cust-std-info-reg-pop-step3-detail-reg-valueType-"+ $(this).attr("dataindex")).text(data.detail[i].valueType);
							}
						}
						
					});
					
					// 삭제 버튼 클릭
					$("[id^=js-indus-cust-std-info-reg-pop-step3-detail-delete-button]").off().on("click", function(){
						if($('#js-indus-cust-std-info-reg-pop-step3-detail-info-list tr').length > 1){
							$(this).parent().parent('tr').remove();
						}
					});
					
					
				}
				
				
				// 도장업체별 공장 정보 항목별 값 등록 저장
				$("#js-indus-cust-std-info-reg-pop-step3-factory-detail-reg-button").off().on("click", function(){
					
					var factoryArray 	= new Array();
					factoryJsonList 	= "";
					
					$("input[id^=js-indus-cust-std-info-reg-pop-step3-detail-reg-currentValue]").each(function(){
						
						if($(this).val() != ''){
							
							var dataindex = $(this).attr('dataindex');
							
							//if($(this).val() != $("#js-indus-cust-std-info-reg-pop-step3-detail-reg-prevValue-"+ dataindex).text()){
								
								factoryArray.push({
									procItemId 			: $("#js-indus-cust-std-info-reg-pop-step3-detail-reg-proc-combo-"+ dataindex).val(),
									procItemValueType 	: $("#js-indus-cust-std-info-reg-pop-step3-detail-reg-valueType-"+ dataindex).val(),
									procItemValue 		: $(this).val()
								});
								
								factoryJsonList = JSON.stringify(factoryArray);
								saveFactoryInfoStep3.request(factoryJsonList);
								
							//}
							
						}
						
					});
					
				});
				
				
				// ------------------------------------------------
				// 도장업체별 공장 정보 항목별 값 등록(Step3)
				// ------------------------------------------------
				var saveFactoryInfoStep3 = {
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
									, callback          : {
										confirm: function() {
											factoryArray = [];
											factoryJsonList = "";
										}
									}
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
					request: function(factoryJsonList) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						var params = {
							service			: 'ind.custInfo',
							method			: 'saveFactoryInfoStep3',
							itemType		: jsCommon.itemType.getItem().code,
							cust			: $("#js-indus-cust-std-info-reg-pop-cust").val(),
							pcust			: $("#js-indus-cust-std-info-reg-pop-step3-detail-reg-paintCust-combo").val(),
							factoryId		: $("#js-indus-cust-std-info-reg-pop-step3-factoryId-combo").val(),
							factoryNm		: $("#js-indus-cust-std-info-reg-pop-step3-factoryId-combo").text().trim(),
							location1		: $('#js-indus-cust-std-info-reg-pop-step3-detail-reg-location1-combo').val(),
							location2		: $('#js-indus-cust-std-info-reg-pop-step3-detail-reg-location2-combo').val(),
							location3		: $('#js-indus-cust-std-info-reg-pop-step3-detail-reg-location3-combo').val(),
							date			: fn_getBeforeDate(fn_getTodayDate().replace(/-/gi, "")),
							factoryInfo 	: factoryJsonList
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				};
			
			
		</script>
	    
		
		
		<script type="text/javascript">
		
		$("#js-indus-cust-std-info-step3-reg-pop").off().on("click", function(){
				
			// 거래선 정보 등록 팝업 닫기
			$("#js-indus-cust-std-info-reg-popup-step2-close-button").click();
			
			// 도장업체정보 팝업 띄우기
			$("#js-indus-cust-std-info-reg-popup-step3-button").click();
				
		});
		
		
		// 이전 2단계 가기
		$("#js-indus-cust-std-info-prev-step3-reg-pop").off().on("click", function(){
			
			fn_openPop($(this));
			// 공장 정보 등록 팝업 닫기
			$("#js-indus-cust-std-info-reg-popup-step3-close-button").click();
			
		});
		
		
		// 도장업체정보 버튼
		$("#js-indus-cust-std-info-reg-popup-step3-button").off().on('click', function(){
			retrievePcustList.request();
		});
		
		
		
		// ------------------------------------------------
		// 도장업체 콤보 조회
		// ------------------------------------------------
		var retrievePcustList = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					if (message === 'OK') {
						
						console.log("retrievePcustList 도장업체 콤보 조회 3 ");
						
						var data = response.rs;
						
						$('#js-indus-cust-std-info-reg-pop-paintCust-combo').find('option').remove();
						
						for(var i=0; i < data.length; i++)
						{
							$('#js-indus-cust-std-info-reg-pop-paintCust-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
						}
						
						// step3 조회
						retrieveFactoryInfoStep3.request();
						
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
					service		: 'ind.common',
					method		: 'retrievePcustList',
					itemType 	: jsCommon.itemType.getItem().code,
					cust 		: $("#js-indus-cust-std-info-reg-pop-cust").val()
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
		var retrieveDetailPcustList = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					if (message === 'OK') {
						
						console.log("retrievePcustList 도장업체 콤보 조회 3 ");
						
						var data = response.rs;
						
						$('#js-indus-cust-std-info-reg-pop-step3-detail-reg-paintCust-combo').find('option').remove();
						
						for(var i=0; i < data.length; i++)
						{
							$('#js-indus-cust-std-info-reg-pop-step3-detail-reg-paintCust-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
						}
						
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
					service		: 'ind.common',
					method		: 'retrievePcustList',
					itemType 	: jsCommon.itemType.getItem().code,
					cust 		: $("#js-indus-cust-std-info-reg-pop-cust").val()
				};

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		
		// ------------------------------------------------
		// 공장 정보 조회(Step3)
		// ------------------------------------------------
		var retrieveFactoryInfoStep3 = {
			success : function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					if (message === 'OK') {
						
						var data = {
							rows : response.rs.FactoryList
						};

						var html = indusCustStdInfoStep3ListTemplate(data);
						$('div[id^=js-indus-cust-std-info-reg-pop-step3-info-list-]').remove();
						$('#js-indus-cust-std-info-reg-pop-step3-info-list').after(html);
						
						$('#js-indus-cust-std-info-reg-pop-step3-info-pCustNm').text(" - " + $("#js-indus-cust-std-info-reg-pop-paintCust-combo").text());
						
						// 공장 정보 등록 수정
						$("button[name=js-indus-cust-std-info-detail-step3-popup-mod-button]").off().on("click", function(){
							
							var factoryId = this.id.substring("js-indus-cust-std-info-detail-step3-popup-mod-button".length + 1);
							fn_openPop($(this));
							retrieveCustStdInfoStep3('U', factoryId);
							
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
			request : function(cust) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					service 	: 'ind.custInfo',
					method 		: 'retrieveFactoryInfoStep3',
					itemType 	: jsCommon.itemType.getItem().code,
					cust 		: $("#js-indus-cust-std-info-reg-pop-cust").val(),
					pcust		: $("#js-indus-cust-std-info-reg-pop-paintCust-combo").val()
				};
				
				app.mask.pageLock();					
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};	
		
		
		</script>
		
		
		<div class="wp-dim-layer">
    		<div class="wp-dimBg"></div>
		    <div id="js-indus-cust-std-info-detail-step4-popup" class="wp-pop-layer wp-pop-w940 wp-box-sizing wp-ship-popup wp-report-pop-section wp-repair-pop-section">
		    	<div class="wp-pop-title">
		    		<h1>거래선 정보 등록</h1>
		    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-indus-cust-std-info-reg-popup-step4-close-button"><span>닫기</span></button>
		    	</div>
		        <div class="wp-pop-conts">
					<!-- scroll Area -->
					<div class="wp-pop-cont-scrollable">
						<!--content //-->
						<div class="wp-step-area wp-pop-step5">
							<ul>
								<li class="active"><span>거래선 정보</span></li>
								<li class="active"><span>도장업체 정보</span></li>
								<li class="active"><span>공장 정보</span></li>
								<li class="active"><span>라인 정보</span></li>
								<li class=""><span>공정 정보</span></li>
							</ul>
						</div>
						<div class="wp-clearfix">
							<h2 class="wp-title wp-fl wp-mt5">공장별 라인 정보<span class="wp-fc-blue2" id="js-indus-cust-std-info-reg-pop-step4-info-factoryNm">–</span></h2>
							<button type="button" class="wp-btn small white bgray plus wp-fr" id="js-indus-cust-std-info-reg-pop-step4-info-add" data-link="js-indus-cust-std-info-detail-step4-reg-popup">추가</button>
						</div>
						<div class="wp-table-st1 h-center h-registration">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:15%">
									<col style="width:35%">
									<col style="width:15%">
									<col style="width:35%">
								</colgroup>
								<tbody>
									<tr>
										<th class="wp-ar">도장업체</th>
										<td class="wp-al">
											<div class="wp-ui-select wp-wd100p">
												<select title="항목 개수 설정" id="js-indus-cust-std-info-reg-pop-step4-paintCust-combo">
												</select>
											</div>
										</td>
										<th class="wp-ar">공장</th>
										<td class="wp-al">
											<div class="wp-ui-select wp-wd100p">
												<select title="항목 개수 설정" id="js-indus-cust-std-info-reg-pop-step4-factoryId-combo">
												</select>
											</div>
										</td>
									</tr>
							</table>
						</div>
						<div class="wp-clearfix wp-mb10">
							
						</div>
						<!-- table -->
						<div class="wp-table-st1 h-registration">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:18%">
									<col style="width:27%">
									<col style="width:18%">
									<col style="width:27%">
									<col style="width:10%">
								</colgroup>
								<tbody id="js-indus-cust-std-info-reg-pop-step4-info-list">
									<tr>
										<th>라인</th>
										<td class="wp-al">1라인</td>
										<th>설치년도</th>
										<td class="wp-al">1979</td>
										<td rowspan="7">
											<button type="button" class="wp-btn small white bgray mody"><span>수정</span></button>
											<button type="button" class="wp-btn small white bgray trash-gray"><span>삭제</span></button>
										</td>
									</tr>
									<tr>
										<th>설비 Maker</th>
										<td class="wp-al">주가이로</td>
										<th>Print Lamina</th>
										<td class="wp-al"></td>
									</tr>
									<tr>
										<th>In Line 설비</th>
										<td class="wp-al">-</td>
										<th>공용하도(건재) 도료社</th>
										<td class="wp-al">KCC</td>
									</tr>
									<tr>
										<th>공용하도(가전) 도료社</th>
										<td class="wp-al"></td>
										<th>공용 Back 업체</th>
										<td class="wp-al">SPI/KCC</td>
									</tr>
									<tr>
										<th>열원</th>
										<td class="wp-al">Gas</td>
										<th>최대 설정 온도(℃)</th>
										<td class="wp-al">400</td>
									</tr>
									<tr>
										<th>Coating Type</th>
										<td class="wp-al">2Coat 2Bake</td>
										<th>W.Q->T.L 까지 거리(m)</th>
										<td class="wp-al">5</td>
									</tr>
									<tr>
										<th>T/L 투입직전 철판 온도(℃)</th>
										<td class="wp-al">35</td>
										<th>T/Leveller Roll 청소 주기(Hour)</th>
										<td class="wp-al">8</td>
									</tr>
									<tr>
										<th>라인</th>
										<td class="wp-al">1라인</td>
										<th>설치년도</th>
										<td class="wp-al">1979</td>
										<td rowspan="7">
											<button type="button" class="wp-btn small white bgray mody"><span>수정</span></button>
											<button type="button" class="wp-btn small white bgray trash-gray"><span>삭제</span></button>
										</td>
									</tr>
									<tr>
										<th>설비 Maker</th>
										<td class="wp-al">주가이로</td>
										<th>Print Lamina</th>
										<td class="wp-al"></td>
									</tr>
									<tr>
										<th>In Line 설비</th>
										<td class="wp-al">-</td>
										<th>공용하도(건재) 도료社</th>
										<td class="wp-al">KCC</td>
									</tr>
									<tr>
										<th>공용하도(가전) 도료社</th>
										<td class="wp-al"></td>
										<th>공용 Back 업체</th>
										<td class="wp-al">SPI/KCC</td>
									</tr>
									<tr>
										<th>열원</th>
										<td class="wp-al">Gas</td>
										<th>최대 설정 온도(℃)</th>
										<td class="wp-al">400</td>
									</tr>
									<tr>
										<th>Coating Type</th>
										<td class="wp-al">2Coat 2Bake</td>
										<th>W.Q->T.L 까지 거리(m)</th>
										<td class="wp-al">5</td>
									</tr>
									<tr>
										<th>T/L 투입직전 철판 온도(℃)</th>
										<td class="wp-al">35</td>
										<th>T/Leveller Roll 청소 주기(Hour)</th>
										<td class="wp-al">8</td>
									</tr>
									<tr>
										<th>라인</th>
										<td class="wp-al">1라인</td>
										<th>설치년도</th>
										<td class="wp-al">1979</td>
										<td rowspan="7">
											<button type="button" class="wp-btn small white bgray mody"><span>수정</span></button>
											<button type="button" class="wp-btn small white bgray trash-gray"><span>삭제</span></button>
										</td>
									</tr>
									<tr>
										<th>설비 Maker</th>
										<td class="wp-al">주가이로</td>
										<th>Print Lamina</th>
										<td class="wp-al"></td>
									</tr>
									<tr>
										<th>In Line 설비</th>
										<td class="wp-al">-</td>
										<th>공용하도(건재) 도료社</th>
										<td class="wp-al">KCC</td>
									</tr>
									<tr>
										<th>공용하도(가전) 도료社</th>
										<td class="wp-al"></td>
										<th>공용 Back 업체</th>
										<td class="wp-al">SPI/KCC</td>
									</tr>
									<tr>
										<th>열원</th>
										<td class="wp-al">Gas</td>
										<th>최대 설정 온도(℃)</th>
										<td class="wp-al">400</td>
									</tr>
									<tr>
										<th>Coating Type</th>
										<td class="wp-al">2Coat 2Bake</td>
										<th>W.Q->T.L 까지 거리(m)</th>
										<td class="wp-al">5</td>
									</tr>
									<tr>
										<th>T/L 투입직전 철판 온도(℃)</th>
										<td class="wp-al">35</td>
										<th>T/Leveller Roll 청소 주기(Hour)</th>
										<td class="wp-al">8</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- //table -->
					</div>
					<!--// content-->
					<!-- btn-area -->
					<div class="wp-btn-area">
						<button type="button" class="wp-btn darkgray cr3" id="js-indus-cust-std-info-prev-step4-reg-pop" data-link="js-indus-cust-std-info-detail-step3-popup"><span class="prev"></span>이전</button>
						<button type="button" class="wp-btn blue1 cr3" id="js-indus-cust-std-info-step5-reg-pop">공정 정보 등록하기<span class="next"></span></button>
						<button type="button" id="js-indus-cust-std-info-reg-popup-step5-button" data-link="js-indus-cust-std-info-detail-step5-popup" class="wp-btn-pop" style="display:none"></button>
					</div>
					<!-- //btn-area -->
				</div><!-- // scroll Area -->
		        </div> <!-- // wp-pop-conts -->
    	</div> <!-- // wp-pop-layer -->
    	
    	
    	<script id="js-template-indus-cust-std-step4-info-list" type="text/x-handlebars-template">		
			{{#rows}}
				<tr>
					<th class="wp-ar">라인</th>
					<td class="wp-al">{{lineId}}</td>
					<th class="wp-ar">설치년도</th>
					<td class="wp-al">{{foundYear}}</td>
					<td rowspan="7">
						<button type="button" class="wp-btn small white bgray mody" name="js-indus-cust-std-info-detail-step4-popup-mod-button" id="js-indus-cust-std-info-detail-step4-popup-mod-button-{{lineId}}" data-link="js-indus-cust-std-info-detail-step4-reg-popup"><span>수정</span></button>
					</td>
				</tr>
				<tr>
					<th class="wp-ar">설비 Maker</th>
					<td class="wp-al">{{procMaker}}</td>
					<th class="wp-ar">Print Lamina</th>
					<td class="wp-al">{{printLamina}}</td>
				</tr>
				<tr>
					<th class="wp-ar">In Line 설비</th>
					<td class="wp-al">{{inLineProc}}</td>
					<th class="wp-ar">공용하도(건재) 도료社</th>
					<td class="wp-al">{{firstCmPaint}}</td>
				</tr>
				<tr>
					<th class="wp-ar">공용하도(가전) 도료社</th>
					<td class="wp-al">{{firstHomepaint}}</td>
					<th class="wp-ar">공용 Back 업체</th>
					<td class="wp-al">{{commonBCust}}</td>
				</tr>
				<tr>
					<th class="wp-ar">열원</th>
					<td class="wp-al">{{heatSource}}</td>
					<th class="wp-ar">최대 설정 온도(℃)</th>
					<td class="wp-al">{{maxTemp}}</td>
				</tr>
				<tr>
					<th class="wp-ar">Coating Type</th>
					<td class="wp-al">{{coatType}}</td>
					<th class="wp-ar">W.Q->T.L 까지 거리(m)</th>
					<td class="wp-al">{{distance}}</td>
				</tr>
				<tr>
					<th class="wp-ar">T/L 투입직전 철판 온도(℃)</th>
					<td class="wp-al">{{steelTemp}}</td>
					<th class="wp-ar">T/Leveller Roll 청소 주기(Hour)</th>
					<td class="wp-al">{{hour}}</td>
				</tr>
			{{/rows}}
		</script>
		
		
		
		<script type="text/javascript">
		
			// ------------------------------------------------
			// 도장업체 콤보 조회
			// ------------------------------------------------
			var retrieveStep4PcustList = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							
							console.log("retrieveStep4PcustList 도장업체 콤보 조회 ");
							
							var data = response.rs;
							
							$('#js-indus-cust-std-info-reg-pop-step4-paintCust-combo').find('option').remove();
							
							for(var i=0; i < data.length; i++)
							{
								$('#js-indus-cust-std-info-reg-pop-step4-paintCust-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
							}
							
							// 공장코드조회
							retrieveStep4FactoryList.request();
							
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
						service		: 'ind.common',
						method		: 'retrievePcustList',
						itemType 	: jsCommon.itemType.getItem().code,
						cust 		: $("#js-indus-cust-std-info-reg-pop-cust").val()
					};

					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			// 공장 콤보 조회
			var retrieveStep4FactoryList = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
		
						if (message === 'OK') {
							
							console.log("retrieveStep4FactoryList 공장 콤보 조회 4 ");
							
							var data = response.rs;
							
							$('#js-indus-cust-std-info-reg-pop-step4-factoryId-combo').find('option').remove();
							
							for(var i=0; i < data.length; i++)
							{
								$('#js-indus-cust-std-info-reg-pop-step4-factoryId-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
							}
							
							// step4 조회
							retrieveLineInfoStep4.request();
							
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
				request: function(itemType, cust, paintCust) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						service		: 'ind.common',
						method		: 'retrieveFactoryList',
						itemType	: jsCommon.itemType.getItem().code,
						cust		: $("#js-indus-cust-std-info-reg-pop-cust").val(),
						paintCust	: $("#js-indus-cust-std-info-reg-pop-step4-paintCust-combo").val()
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);				
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
		
		</script>
		
		
		<div class="wp-dim-layer">
		    <div class="wp-dimBg"></div>
		    <div id="js-indus-cust-std-info-detail-step4-reg-popup" class="wp-pop-layer wp-pop-w700 wp-box-sizing wp-ship-popup wp-report-pop-section wp-repair-pop-section">
		    	<div class="wp-pop-title">
		    		<h1>공장별 라인 정보 항목별 값 등록</h1>
		    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-indus-cust-std-info-detail-step4-close-button"><span>닫기</span></button>
		    	</div>
		        <div class="wp-pop-conts">
					<!-- scroll Area -->
					<div class="wp-pop-cont-scrollable">
					<!--content //-->
						<div class="wp-table-st1 h-registration">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:20%">
									<col style="width:30%">
									<col style="width:20%">
									<col style="width:30%">
								</colgroup>
								<tbody>
									<tr>
										<th class="wp-ar">도장업체</th>
										<td class="wp-al">
											<div class="wp-ui-select wp-wd100p">
												<select title="항목 개수 설정" id="js-indus-cust-std-info-reg-pop-step4-detail-paintCust-combo">
												</select>
											</div>
										</td>
										<th class="wp-ar">공장</th>
										<td class="wp-al">
											<div class="wp-ui-select wp-wd100p">
												<select title="항목 개수 설정" id="js-indus-cust-std-info-reg-pop-step4-detail-factoryId-combo">
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<th class="wp-ar">라인명</th>
										<td class="wp-al">
										<div class="wp-ui-select wp-wd100p">
											<select title="항목 개수 설정" id="js-indus-cust-std-info-reg-pop-step4-line-combo">
											</select>
										</div>
										<th class="wp-ar">등록자</th>
										<td class="wp-al" id="js-indus-cust-std-info-reg-pop-step4-detail-reg-inputEmpNm"></td>
									</tr>
							</table>
						</div>
						<!-- table -->
						<div class="wp-clearfix wp-mb10">
							<button type="button" class="wp-btn small white bgray plus wp-fr" id="js-indus-cust-std-info-reg-pop-step4-detail-info-add">추가</button>
						</div>
						<div class="wp-table-st1 h-center">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:40%;">
									<col style="width:40%;">
									<col style="width:20%;">
								</colgroup>
								<thead>
									<tr>
										<th>항목</th>
										<th>값<th>
										<th><th>
									</tr>
								</thead>
								<tbody id="js-indus-cust-std-info-reg-pop-step4-detail-info-list">
								</tbody>
							</table>
				            </div>
						<!-- //table -->
					</div>
					<!--// content-->
					<!-- btn-area -->
					<div class="wp-btn-area">
						<button type="button" class="wp-btn blue1 cr3" id="js-indus-cust-std-info-reg-pop-step4-line-detail-reg-button">저장</button>
					</div>
					<!-- //btn-area -->
				</div><!-- // scroll Area -->
		    </div> <!-- // wp-pop-conts -->
		</div> <!-- // wp-pop-layer -->
		
		
		<script id="js-template-indus-cust-std-step4-detail-info-list" type="text/x-handlebars-template">
			<tr name="js-indus-cust-std-detail-info-reg-pop-lineList-tr" dataIndex="{{dataIndex}}">
				<td>
					<div class="wp-ui-select wp-wd100p">
						<select title="항목 개수 설정" name="js-indus-cust-std-info-reg-pop-step4-detail-reg-line-combo" id="js-indus-cust-std-info-reg-pop-step4-detail-reg-line-combo-{{dataIndex}}" dataIndex="{{dataIndex}}">
						</select>
					</div>
				</td>
				<td colspan="3">
					<input type="text" name="js-indus-cust-std-info-reg-pop-step4-detail-reg-lineCodeNm" id="js-indus-cust-std-info-reg-pop-step4-detail-reg-lineCodeNm-{{dataIndex}}" dataIndex="{{dataIndex}}" title="내용입력" class="wp-wd150">
					<input type="hidden" id="js-indus-cust-std-info-reg-pop-step4-detail-reg-valueType-{{dataIndex}}" value="{{valueType}}">
					<button type="button" class="wp-btn small gray cr3" id="js-indus-cust-std-info-reg-pop-step4-detail-delete-button-{{dataIndex}}" name="js-indus-cust-std-info-reg-pop-step4-detail-delete-button">삭제</button>
				</td>
			</tr>
		</script>
		
		
		<script type="text/javascript">
		
			// ------------------------------------------------
			// 도장업체 콤보 조회
			// ------------------------------------------------
			var retrieveStep4DetailPcustList = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							
							console.log("retrieveStep4DetailPcustList 도장업체 콤보 조회 ");
							
							var data = response.rs;
							
							$('#js-indus-cust-std-info-reg-pop-step4-detail-paintCust-combo').find('option').remove();
							
							for(var i=0; i < data.length; i++)
							{
								$('#js-indus-cust-std-info-reg-pop-step4-detail-paintCust-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
							}
							
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
						service		: 'ind.common',
						method		: 'retrievePcustList',
						itemType 	: jsCommon.itemType.getItem().code,
						cust 		: $("#js-indus-cust-std-info-reg-pop-cust").val()
					};

					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			// 공장 콤보 조회
			var retrieveStep4DetailFactoryList = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
		
						if (message === 'OK') {
							
							console.log("retrieveStep4DetailFactoryList 공장 콤보 조회 4 ");
							
							var data = response.rs;
							
							$('#js-indus-cust-std-info-reg-pop-step4-detail-factoryId-combo').find('option').remove();
							
							for(var i=0; i < data.length; i++)
							{
								$('#js-indus-cust-std-info-reg-pop-step4-detail-factoryId-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
							}
							
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
				request: function(itemType, cust, paintCust) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						service		: 'ind.common',
						method		: 'retrieveFactoryList',
						itemType	: jsCommon.itemType.getItem().code,
						cust		: $("#js-indus-cust-std-info-reg-pop-cust").val(),
						paintCust	: $("#js-indus-cust-std-info-reg-pop-step4-detail-paintCust-combo").val()
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);				
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			
			// 라인 콤보 조회
			var retrieveStep4LineList = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
		
						if (message === 'OK') {
							
							console.log("retrieveStep4LineList 라인 콤보 조회 4 ");
							
							var data = response.rs;
							
							$('#js-indus-cust-std-info-reg-pop-step4-line-combo').find('option').remove();
							
							for(var i=0; i < data.length; i++)
							{
								$('#js-indus-cust-std-info-reg-pop-step4-line-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
							}
							
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
				request: function(itemType, cust, paintCust, factoryId) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						service		: 'ind.common',
						method		: 'retrieveLineList',
						itemType	: jsCommon.itemType.getItem().code,
						cust		: $("#js-indus-cust-std-info-reg-pop-cust").val(),
						paintCust	: $("#js-indus-cust-std-info-reg-pop-step4-detail-paintCust-combo").val(),
						factoryId 	: $("#js-indus-cust-std-info-reg-pop-step4-detail-factoryId-combo").val()
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);				
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			// ------------------------------------------------
			// 공정 정보 정보 조회(Step4)
			// ------------------------------------------------
			var retrieveLineInfoStep4 = {
				success : function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							
							var data = {
								rows : response.rs.lineList
							};
							
							var html = indusCustStdInfoStep4ListTemplate(data);
							$("#js-indus-cust-std-info-reg-pop-step4-info-list").empty().append(html);
							
							
							$("#js-indus-cust-std-info-reg-pop-step4-info-factoryNm").text(" - "+ $("#js-indus-cust-std-info-reg-pop-step4-factoryId-combo").text());
							
							
							// 거래선별 실도장업체 정보 - 수정
							$("button[name=js-indus-cust-std-info-detail-step4-popup-mod-button]").off().on('click', function() {
								
								fn_openPop($(this));
								retrieveCustStdInfoStep4('U');
								
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
				request : function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						service 	: 'ind.custInfo',
						method 		: 'retrieveLineInfoStep4',
						itemType	: jsCommon.itemType.getItem().code,
						cust		: $("#js-indus-cust-std-info-reg-pop-cust").val(),
						pcust		: $("#js-indus-cust-std-info-reg-pop-step4-paintCust-combo").val(),
						factoryId 	: $("#js-indus-cust-std-info-reg-pop-step4-factoryId-combo").val()
					};
					
					app.mask.pageLock();					
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			
			// step4 라인 정보 상세 조회 - 등록
			var retrieveLineInfoStep4DetailInit = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
		
						if (message === 'OK') {
							
							console.log("retrieveLineInfoStep4DetailInit 라인 정보 상세 조회 ");
							
							$("#js-indus-cust-std-info-reg-pop-step4-detail-info-list").empty();
							
							var maxIndex = 1;
							
							var data = response.rs;
							
							// 라인 콤보 리스트 셋팅
							gvListIndusCustStdLineInfoInspSeq = data.procIdList;
							
							var data = {
								procItemId  		: ""
								, procItemValueType : ""
								, procItemValue  	: ""
								, dataIndex       	: Number(maxIndex++)
								, valueType			: ""
							};
							
							
							addRowIndusCustStdLineInfoRegPopList(data);
							
							
							// 추가 버튼 클릭
							$('#js-indus-cust-std-info-reg-pop-step4-detail-info-add').off().on("click", function(){
								
								$("[name=js-indus-cust-std-detail-info-reg-pop-lineList-tr]").each(function(){
									
									var dataIndex = Number($(this).attr("dataIndex"));
									
									if(maxIndex < dataIndex){
										maxIndex = dataIndex;
									}
									
								});
								
								var data = {
									procItemId  		: ""
									, procItemValueType : ""
									, procItemValue  	: ""
									, dataIndex       	: Number(maxIndex++)
								};
								
								addRowIndusCustStdLineInfoRegPopList(data);

							});
							
							$("#js-indus-cust-std-info-reg-pop-step4-detail-reg-inputEmpNm").text("${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}");
							
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
				request: function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						service		: 'ind.custInfo',
						method		: 'retrieveLineInfoStep4Detail',
						itemType	: jsCommon.itemType.getItem().code,
						cust		: $("#js-indus-cust-std-info-reg-pop-cust").val(),
						pcust		: $("#js-indus-cust-std-info-reg-pop-step4-detail-paintCust-combo").val(),
						factoryId 	: $("#js-indus-cust-std-info-reg-pop-step4-detail-factoryId-combo").val(),
						lineId		: $("#js-indus-cust-std-info-reg-pop-step4-line-combo").val()
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);				
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			
			// step4 라인 정보 상세 조회 - 수정
			var retrieveLineInfoStep4Detail = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
		
						if (message === 'OK') {
							
							console.log("retrieveLineInfoStep4Detail 라인 정보 상세 조회 ");
							
							$("#js-indus-cust-std-info-reg-pop-step4-detail-info-list").empty();
							
							var maxIndex = 1;
							
							var data = response.rs;
							
							// 라인 콤보 리스트 셋팅
							gvListIndusCustStdLineInfoInspSeq = data.procIdList;
							
							var data = {
								procItemId  		: ""
								, procItemValueType : ""
								, procItemValue  	: ""
								, dataIndex       	: Number(maxIndex++)
								, valueType			: ""
							};
							
							
							addRowIndusCustStdLineInfoRegPopList(data);
							
							
							// 추가 버튼 클릭
							$('#js-indus-cust-std-info-reg-pop-step4-detail-info-add').off().on("click", function(){
								
								$("[name=js-indus-cust-std-detail-info-reg-pop-lineList-tr]").each(function(){
									
									var dataIndex = Number($(this).attr("dataIndex"));
									
									if(maxIndex < dataIndex){
										maxIndex = dataIndex;
									}
									
								});
								
								var data = {
									procItemId  		: ""
									, procItemValueType : ""
									, procItemValue  	: ""
									, dataIndex       	: Number(maxIndex++)
								};
								
								addRowIndusCustStdLineInfoRegPopList(data);

							});
							
							
							var data = response.rs.detail;
							
							if(data.length > 0){
								$("#js-indus-cust-std-info-reg-pop-step4-detail-paintCust-combo").val(data[0].pcust);
								
								$("#js-indus-cust-std-info-reg-pop-step4-detail-paintCust-combo").val(data[0].pcust).change();
								
								$("#js-indus-cust-std-info-reg-pop-step4-detail-factoryId-combo").val(data[0].factoryId);
								
								$("#js-indus-cust-std-info-reg-pop-step4-detail-factoryId-combo").val(data[0].factoryId).change();
								
								$("#js-indus-cust-std-info-reg-pop-step4-line-combo").val(data[0].lineId);
								$("#js-indus-cust-std-info-reg-pop-step4-detail-reg-line-combo-1").val(data[0].procItemId);
								$("#js-indus-cust-std-info-reg-pop-step4-detail-reg-lineCodeNm-1").val(data[0].currentValue);
							}

							$("#js-indus-cust-std-info-reg-pop-step4-detail-reg-inputEmpNm").text(response.rs.stdInfo[0].inputEmpNm);
							
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
				request: function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						service		: 'ind.custInfo',
						method		: 'retrieveLineInfoStep4Detail',
						itemType	: jsCommon.itemType.getItem().code,
						cust		: $("#js-indus-cust-std-info-reg-pop-cust").val(),
						pcust		: $("#js-indus-cust-std-info-reg-pop-step4-detail-paintCust-combo").val(),
						factoryId 	: $("#js-indus-cust-std-info-reg-pop-step4-detail-factoryId-combo").val(),
						lineId		: $("#js-indus-cust-std-info-reg-pop-step4-line-combo").val()
					};
					//console.log('itemType ' + params.itemType + ', cust : '+ params.cust + ', pcust : '+ params.pcust + ', factoryId : '+ params.factoryId + ', lineId : '+ params.lineId);
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
		</script>
		
		
		<script type="text/javascript">
		
			$("#js-indus-cust-std-info-step4-reg-pop").off().on("click", function(){
				
				// 거래선 정보 등록 팝업 닫기
				$("#js-indus-cust-std-info-reg-popup-step3-close-button").click();
				
				// 도장업체정보 팝업 띄우기
				$("#js-indus-cust-std-info-reg-popup-step4-button").click();
					
			});
			
			
			// 이전 3단계 가기
			$("#js-indus-cust-std-info-prev-step4-reg-pop").off().on("click", function(){
				
				fn_openPop($(this));
				
				// 라인 정보 등록 팝업 닫기
				$("#js-indus-cust-std-info-reg-popup-step4-close-button").click();

			});
			
			
			// 라인 정보 버튼
			$("#js-indus-cust-std-info-reg-popup-step4-button").off().on('click', function(){
				retrieveStep4PcustList.request();
			});
			
			
			// + 공장별 라인 정보 항목별 값 등록 버튼
			$("#js-indus-cust-std-info-reg-pop-step4-info-add").off().on('click', function(){
				fn_openPop($(this));
				retrieveCustStdInfoStep4('I');
			});
			
			
			// + 공장 정보 등록 버튼 클릭 시 팝업 띄운 이후 실행
			var retrieveCustStdInfoStep4 = function(chk){
				
				retrieveStep4DetailPcustList.request();
				retrieveStep4DetailFactoryList.request();
				retrieveStep4LineList.request();

				// step3 도장업체별 공장 정보 항목별 값 등록 상세 조회
				if(chk == 'I'){
					retrieveLineInfoStep4DetailInit.request();
				}
				else
				{
					retrieveLineInfoStep4Detail.request();
				}
				
			}
			
			
			// 공장별 라인 정보 항목별 값 등록 - 항목 Row 추가
			var addRowIndusCustStdLineInfoRegPopList = function(data){
				
				var html = indusCustStdInfoStep4DetailListTemplate(data);
				$('#js-indus-cust-std-info-reg-pop-step4-detail-info-list').append(html);
				
				// 항목 콤보 세팅
				var comboData = gvListIndusCustStdLineInfoInspSeq;
				
				for(var i=0; i < comboData.length; i++)
				{
					$("[name=js-indus-cust-std-info-reg-pop-step4-detail-reg-line-combo][dataIndex=" + data.dataIndex + "]").append("<option value='"+ comboData[i].code +"'>"+ comboData[i].codeNm +"</option>");
				}
				

				// 삭제 버튼 클릭
				$("[id^=js-indus-cust-std-info-reg-pop-step4-detail-delete-button]").off().on("click", function(){
					if($('#js-indus-cust-std-info-reg-pop-step4-detail-info-list tr').length > 1){
						$(this).parent().parent('tr').remove();
					}
				});
				
			}
			
			
			// 공장별 라인 정보 항목별 값 등록 - 항목별 값 등록 저장
			$("#js-indus-cust-std-info-reg-pop-step4-line-detail-reg-button").off().on("click", function(){
				
				var lineArray 	= new Array();
				lineJsonList 	= "";
				
				$("input[id^=js-indus-cust-std-info-reg-pop-step4-detail-reg-lineCodeNm]").each(function(i){
					
					console.log('저장 횟수 ~ '+ i);
					
					if($(this).val() != ''){
						
						var dataindex = $(this).attr('dataindex');
						
						//if($(this).val() != $("#js-indus-cust-std-info-reg-pop-step4-detail-reg-lineCodeNm-"+ dataindex).text()){
							
							lineArray.push({
								procItemId 			: $("#js-indus-cust-std-info-reg-pop-step4-detail-reg-line-combo-"+ dataindex).val(),
								procItemValueType 	: $("#js-indus-cust-std-info-reg-pop-step4-detail-reg-valueType-"+ dataindex).val(),
								procItemValue 		: $(this).val()
							});
							
							lineJsonList = JSON.stringify(lineArray);
							saveLineInfoStep4.request(lineJsonList);
							
						//}
						
					}
					
				});
				
			});
			
			
			
			// ------------------------------------------------
			// 공장별 라인 정보 항목별 값 등록(Step4)
			// ------------------------------------------------
			var saveLineInfoStep4 = {
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
								, callback          : {
									confirm: function() {
										lineArray = [];
										lineJsonList = "";
									}
								}
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
				request: function(lineJsonList) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						service			: 'ind.custInfo',
						method			: 'saveLineInfoStep4',
						itemType		: jsCommon.itemType.getItem().code,
						cust			: $('#js-indus-cust-std-info-reg-pop-cust').val(),
						pcust			: $('#js-indus-cust-std-info-reg-pop-step4-detail-paintCust-combo').val(),
						factoryId		: $('#js-indus-cust-std-info-reg-pop-step4-detail-factoryId-combo').val(),
						factoryNm		: $('#js-indus-cust-std-info-reg-pop-step4-detail-factoryId-combo').text().trim(),
						lineId			: $('#js-indus-cust-std-info-reg-pop-step4-line-combo').val(),
						date			: fn_getBeforeDate(fn_getTodayDate().replace(/-/gi, "")),
						lineInfo 		: lineJsonList
					};

					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
		
		</script>
		
		
		<div class="wp-dim-layer">
		    <div class="wp-dimBg"></div>
		    <div id="js-indus-cust-std-info-detail-step5-popup" class="wp-pop-layer wp-pop-w940 wp-box-sizing wp-ship-popup wp-report-pop-section wp-repair-pop-section">
		    	<div class="wp-pop-title">
		    		<h1>거래선 정보 등록</h1>
		    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-indus-cust-std-info-reg-popup-step5-close-button"><span>닫기</span></button>
		    	</div>
		        <div class="wp-pop-conts">
					<!-- scroll Area -->
					<div class="wp-pop-cont-scrollable">
						<!--content //-->
						<div class="wp-step-area wp-pop-step5">
							<ul>
								<li class="active"><span>거래선 정보</span></li>
								<li class="active"><span>도장업체 정보</span></li>
								<li class="active"><span>공장 정보</span></li>
								<li class="active"><span>라인 정보</span></li>
								<li class="active"><span>공정 정보</span></li>
							</ul>
						</div>
						<div class="wp-clearfix">
							<h2 class="wp-title wp-fl wp-mt5">라인별 공정 정보<span class="wp-fc-blue2" id="js-indus-cust-std-info-reg-pop-step5-info-procNm">–</span></h2>
							<button type="button" class="wp-btn small white bgray plus wp-fr" id="js-indus-cust-std-info-reg-pop-step5-info-add" data-link="js-indus-cust-std-info-detail-step5-reg-popup">추가</button>
						</div>
						<div class="wp-table-st1 h-center h-registration">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:15%">
									<col style="width:35%">
									<col style="width:15%">
									<col style="width:35%">
								</colgroup>
								<tbody>
									<tr>
										<th class="wp-ar">도장업체</th>
										<td class="wp-al">
											<div class="wp-ui-select wp-wd100p">
												<select title="항목 개수 설정" id="js-indus-cust-std-info-reg-pop-step5-paintCust-combo">
												</select>
											</div>
										</td>
										<th class="wp-ar">공장</th>
										<td class="wp-al">
											<div class="wp-ui-select wp-wd100p">
												<select title="항목 개수 설정" id="js-indus-cust-std-info-reg-pop-step5-factoryId-combo">
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<th class="wp-ar">라인</th>
										<td colspan="3" class="wp-al">
											<div class="wp-ui-select wp-wd293">
												<select title="항목 개수 설정" id="js-indus-cust-std-info-reg-pop-step5-line-combo">
												</select>
											</div>
										</td>
									</tr>
							</table>
						</div>
						<div class="wp-clearfix wp-mb10">
							
						</div>
						<!-- table -->
						<div class="wp-table-st1 h-registration">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:18%">
									<col style="width:27%">
									<col style="width:18%">
									<col style="width:27%">
									<col style="width:10%">
								</colgroup>
								<tbody id="js-indus-cust-std-info-reg-pop-step5-info-list">
									<tr>
										<th>공정</th>
										<td class="wp-al">Primer</td>
										<th>Line Speed(m/min)</th>
										<td class="wp-al">150</td>
										<td rowspan="5">
											<button type="button" class="wp-btn small white bgray mody"><span>수정</span></button>
											<button type="button" class="wp-btn small white bgray trash-gray"><span>삭제</span></button>
										</td>
									</tr>
									<tr>
										<th>도료공급방식</th>
										<td class="wp-al"></td>
										<th>자마이더 형태</th>
										<td class="wp-al"></td>
									</tr>
									<tr>
										<th>Zone 수</th>
										<td class="wp-al">4</td>
										<th>Oven Length(m)</th>
										<td class="wp-al">45</td>
									</tr>
									<tr>
										<th>소부로 방식</th>
										<td class="wp-al">열풍</td>
										<th>열원</th>
										<td class="wp-al">LNG</td>
									</tr>
									<tr>
										<th>교반 방법</th>
										<td colspan="3" class="wp-al">Mixing</td>
									</tr>
									<tr>
										<th>공정</th>
										<td class="wp-al">Primer</td>
										<th>Line Speed(m/min)</th>
										<td class="wp-al">150</td>
										<td rowspan="5">
											<button type="button" class="wp-btn small white bgray mody"><span>수정</span></button>
											<button type="button" class="wp-btn small white bgray trash-gray"><span>삭제</span></button>
										</td>
									</tr>
									<tr>
										<th>도료공급방식</th>
										<td class="wp-al"></td>
										<th>자마이더 형태</th>
										<td class="wp-al"></td>
									</tr>
									<tr>
										<th>Zone 수</th>
										<td class="wp-al">4</td>
										<th>Oven Length(m)</th>
										<td class="wp-al">45</td>
									</tr>
									<tr>
										<th>소부로 방식</th>
										<td class="wp-al">열풍</td>
										<th>열원</th>
										<td class="wp-al">LNG</td>
									</tr>
									<tr>
										<th>교반 방법</th>
										<td colspan="3" class="wp-al">Mixing</td>
									</tr>
									<tr>
										<th>공정</th>
										<td class="wp-al">Primer</td>
										<th>Line Speed(m/min)</th>
										<td class="wp-al">150</td>
										<td rowspan="5">
											<button type="button" class="wp-btn small white bgray mody"><span>수정</span></button>
											<button type="button" class="wp-btn small white bgray trash-gray"><span>삭제</span></button>
										</td>
									</tr>
									<tr>
										<th>도료공급방식</th>
										<td class="wp-al"></td>
										<th>자마이더 형태</th>
										<td class="wp-al"></td>
									</tr>
									<tr>
										<th>Zone 수</th>
										<td class="wp-al">4</td>
										<th>Oven Length(m)</th>
										<td class="wp-al">45</td>
									</tr>
									<tr>
										<th>소부로 방식</th>
										<td class="wp-al">열풍</td>
										<th>열원</th>
										<td class="wp-al">LNG</td>
									</tr>
									<tr>
										<th>교반 방법</th>
										<td colspan="3" class="wp-al">Mixing</td>
									</tr>
									<tr>
										<th>공정</th>
										<td class="wp-al">Primer</td>
										<th>Line Speed(m/min)</th>
										<td class="wp-al">150</td>
										<td rowspan="5">
											<button type="button" class="wp-btn small white bgray mody"><span>수정</span></button>
											<button type="button" class="wp-btn small white bgray trash-gray"><span>삭제</span></button>
										</td>
									</tr>
									<tr>
										<th>도료공급방식</th>
										<td class="wp-al"></td>
										<th>자마이더 형태</th>
										<td class="wp-al"></td>
									</tr>
									<tr>
										<th>Zone 수</th>
										<td class="wp-al">4</td>
										<th>Oven Length(m)</th>
										<td class="wp-al">45</td>
									</tr>
									<tr>
										<th>소부로 방식</th>
										<td class="wp-al">열풍</td>
										<th>열원</th>
										<td class="wp-al">LNG</td>
									</tr>
									<tr>
										<th>교반 방법</th>
										<td colspan="3" class="wp-al">Mixing</td>
									</tr>
								</tbody>
								</table>
							</div>
							<!-- //table -->
						</div>
						<!--// content-->
						<!-- btn-area -->
						<div class="wp-btn-area">
							<button type="button" class="wp-btn darkgray cr3" id="js-indus-cust-std-info-prev-step5-reg-pop" data-link="js-indus-cust-std-info-detail-step4-popup"><span class="prev"></span>이전</button>
							<button type="button" class="wp-btn blue1 cr3" id="js-indus-cust-std-info-end-reg-pop">종료</button>
						</div>
						<!-- //btn-area -->
					</div><!-- // scroll Area -->
		        </div> <!-- // wp-pop-conts -->
		    </div> <!-- // wp-pop-layer -->
	    
	    
	    <script id="js-template-indus-cust-std-step5-info-list" type="text/x-handlebars-template">		
			{{#rows}}
				<tr>
					<th class="wp-ar">공정</th>
					<td class="wp-al" id="js-indus-cust-std-info-reg-pop-step5-procId">{{procId}}</td>
					<th class="wp-ar">Line Speed(m/min)</th>
					<td class="wp-al">{{lineSpeed}}</td>
					<td rowspan="5">
						<button type="button" class="wp-btn small white bgray mody" name="js-indus-cust-std-info-detail-step5-popup-mod-button" id="js-indus-cust-std-info-detail-step5-popup-mod-button-{{procId}}" data-link="js-indus-cust-std-info-detail-step5-reg-popup"><span>수정</span></button>
					</td>
				</tr>
				<tr>
					<th class="wp-ar">도료공급방식</th>
					<td class="wp-al">{{paintSupply}}</td>
					<th class="wp-ar">자마이더 형태</th>
					<td class="wp-al">{{jamaider}}</td>
				</tr>
				<tr>
					<th class="wp-ar">Zone 수</th>
					<td class="wp-al">{{zoneCnt}}</td>
					<th class="wp-ar">Oven Length(m)</th>
					<td class="wp-al">{{ovenLength}}</td>
				</tr>
				<tr>
					<th class="wp-ar">소부로 방식</th>
					<td class="wp-al">{{soburo}}</td>
					<th class="wp-ar">열원</th>
					<td class="wp-al">{{heatSource}}</td>
				</tr>
				<tr>
					<th class="wp-ar">교반 방법</th>
					<td colspan="3" class="wp-al">{{agitation}}</td>
				</tr>
			{{/rows}}
		
		</script>
		
		
		<div class="wp-dim-layer">
		    <div class="wp-dimBg"></div>
		    <div id="js-indus-cust-std-info-detail-step5-reg-popup" class="wp-pop-layer wp-pop-w700 wp-box-sizing wp-ship-popup wp-report-pop-section wp-repair-pop-section">
		    	<div class="wp-pop-title">
		    		<h1>공장별 라인 정보 항목별 값 등록</h1>
		    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-indus-cust-std-info-detail-step5-close-button"><span>닫기</span></button>
		    	</div>
		        <div class="wp-pop-conts">
					<!-- scroll Area -->
					<div class="wp-pop-cont-scrollable">
						<!--content //-->
						<div class="wp-table-st1 h-registration">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:20%">
									<col style="width:30%">
									<col style="width:20%">
									<col style="width:30%">
								</colgroup>
								<tbody>
									<tr>
										<th class="wp-ar">도장업체</th>
										<td class="wp-al">
											<div class="wp-ui-select wp-wd100p">
												<select title="항목 개수 설정" id="js-indus-cust-std-info-reg-pop-step5-detail-paintCust-combo">
												</select>
											</div>
										</td>
										<th class="wp-ar">공장</th>
										<td class="wp-al">
											<div class="wp-ui-select wp-wd100p">
												<select title="항목 개수 설정" id="js-indus-cust-std-info-reg-pop-step5-detail-factoryId-combo">
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<th class="wp-ar">라인</th>
										<td class="wp-al">
											<div class="wp-ui-select wp-wd100p">
												<select title="항목 개수 설정" id="js-indus-cust-std-info-reg-pop-step5-detail-line-combo">
												</select>
											</div>
										</td>
										<th class="wp-ar">공정명</th>
										<td class="wp-al">
											<div class="wp-ui-select wp-wd100p">
												<select title="항목 개수 설정" id="js-indus-cust-std-info-reg-pop-step5-detail-proc-combo">
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<th class="wp-ar">등록자</th>
										<td class="wp-al" colspan="3" id="js-indus-cust-std-info-reg-pop-step5-detail-reg-inputEmpNm"></td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- table -->
						<div class="wp-clearfix wp-mb10">
							<button type="button" class="wp-btn small white bgray plus wp-fr" id="js-indus-cust-std-info-reg-pop-step5-detail-info-add">추가</button>
						</div>
						<div class="wp-table-st1 h-center">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:45%;">
									<col style="width:45%;">
									<col style="width:10%;">
								</colgroup>
								<thead>
									<tr>
										<th>항목</th>
										<th>값<th>
										<th><th>
									</tr>
								</thead>
								<tbody id="js-indus-cust-std-info-reg-pop-step5-detail-info-list">
								</tbody>
							</table>
				            </div>
						<!-- //table -->
					</div>
					<!--// content-->
					<!-- btn-area -->
					<div class="wp-btn-area">
						<button type="button" class="wp-btn blue1 cr3" id="js-indus-cust-std-info-reg-pop-step5-proc-detail-reg-button">저장</button>
					</div>
					<!-- //btn-area -->
				</div><!-- // scroll Area -->
	        </div> <!-- // wp-pop-conts -->
	    </div> <!-- // wp-pop-layer -->
	    
	    
	    
	    <script id="js-template-indus-cust-std-step5-detail-info-list" type="text/x-handlebars-template">
			<tr name="js-indus-cust-std-detail-info-reg-pop-procList-tr" dataIndex="{{dataIndex}}">
				<td>
					<div class="wp-ui-select wp-wd100p">
						<select title="항목 개수 설정" name="js-indus-cust-std-info-reg-pop-step5-detail-reg-proc-combo" id="js-indus-cust-std-info-reg-pop-step5-detail-reg-proc-combo-{{dataIndex}}" dataIndex="{{dataIndex}}">
						</select>
					</div>
				</td>
				<td colspan="3">
					<input type="text" name="js-indus-cust-std-info-reg-pop-step5-detail-reg-procCodeNm" id="js-indus-cust-std-info-reg-pop-step5-detail-reg-procCodeNm-{{dataIndex}}" dataIndex="{{dataIndex}}" title="내용입력" class="wp-wd150">
					<input type="hidden" id="js-indus-cust-std-info-reg-pop-step5-detail-reg-valueType-{{dataIndex}}" value="{{valueType}}">
					<button type="button" class="wp-btn small gray cr3" id="js-indus-cust-std-info-reg-pop-step5-detail-delete-button-{{dataIndex}}" name="js-indus-cust-std-info-reg-pop-step5-detail-delete-button">삭제</button>
				</td>
			</tr>
		</script>
		
		
		<script type="text/javascript">
		
		$("#js-indus-cust-std-info-step5-reg-pop").off().on("click", function(){
			
			// 거래선 정보 등록 팝업 닫기
			$("#js-indus-cust-std-info-reg-popup-step4-close-button").click();
			
			// 공정 정보 팝업 띄우기
			$("#js-indus-cust-std-info-reg-popup-step5-button").click();
			
		});
		
		
		// 이전 4단계 가기
		$("#js-indus-cust-std-info-prev-step5-reg-pop").off().on("click", function(){
			
			fn_openPop($(this));
			
			// 거래선 정보 등록 팝업 닫기
			$("#js-indus-cust-std-info-reg-popup-step5-close-button").click();
			
		});
		
		
		// 라인 정보 버튼
		$("#js-indus-cust-std-info-reg-popup-step5-button").off().on('click', function(){
			
			retrieveStep5PcustList.request();
			
		});
		
		
		// ------------------------------------------------
		// 도장업체 콤보 조회
		// ------------------------------------------------
		var retrieveStep5PcustList = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					if (message === 'OK') {
						
						console.log("retrieveStep5PcustList 도장업체 콤보 조회 ");
						
						var data = response.rs;
						
						$('#js-indus-cust-std-info-reg-pop-step5-paintCust-combo').find('option').remove();
						
						for(var i=0; i < data.length; i++)
						{
							$('#js-indus-cust-std-info-reg-pop-step5-paintCust-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
						}
						
						// 공장코드조회
						retrieveStep5FactoryList.request();
						
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
					service		: 'ind.common',
					method		: 'retrievePcustList',
					itemType	: jsCommon.itemType.getItem().code,
					cust		: $('#js-indus-cust-std-info-reg-pop-cust').val()
				};

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		
		// 공장 콤보 조회
		var retrieveStep5FactoryList = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
	
					if (message === 'OK') {
						
						console.log("retrieveStep5FactoryList 공장 콤보 조회 ");
						
						var data = response.rs;
						
						$('#js-indus-cust-std-info-reg-pop-step5-factoryId-combo').find('option').remove();
						
						for(var i=0; i < data.length; i++)
						{
							$('#js-indus-cust-std-info-reg-pop-step5-factoryId-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
						}
						
						// 라인코드조회
						retrieveStep5LineList.request();
						
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
			request: function() {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					service		: 'ind.common',
					method		: 'retrieveFactoryList',
					itemType	: jsCommon.itemType.getItem().code,
					cust		: $('#js-indus-cust-std-info-reg-pop-cust').val(),
					paintCust	: $('#js-indus-cust-std-info-reg-pop-step5-paintCust-combo').val()
				};
				
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);				
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		
		// 라인 콤보 조회
		var retrieveStep5LineList = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
	
					if (message === 'OK') {
						
						console.log("retrieveLineList 라인 콤보 조회 5 ");
						
						var data = response.rs;
						
						$('#js-indus-cust-std-info-reg-pop-step5-line-combo').find('option').remove();
						
						for(var i=0; i < data.length; i++)
						{
							$('#js-indus-cust-std-info-reg-pop-step5-line-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
						}
						
						// 라인 combo change
						$('#js-indus-cust-std-info-reg-pop-step5-line-combo').off().on("change", function(){
							retrieveProcInfoStep5.request();
						});
						
						// step5 조회
						retrieveProcInfoStep5.request();
						
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
			request: function() {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					service		: 'ind.common',
					method		: 'retrieveLineList',
					itemType	: jsCommon.itemType.getItem().code,
					cust		: $('#js-indus-cust-std-info-reg-pop-cust').val(),
					paintCust	: $('#js-indus-cust-std-info-reg-pop-step5-paintCust-combo').val(),
					factoryId 	: $('#js-indus-cust-std-info-reg-pop-step5-factoryId-combo').val()
				};
				
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);				
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		
		// ------------------------------------------------
		// 공정 정보 정보 조회(Step5)
		// ------------------------------------------------
		var retrieveProcInfoStep5 = {
			success : function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					if (message === 'OK') {
						
						var data = {
							rows : response.rs.procList
						};
						
						var html = indusCustStdInfoStep5ListTemplate(data);
						$("#js-indus-cust-std-info-reg-pop-step5-info-list").empty().append(html);
						
						
						$("#js-indus-cust-std-info-reg-pop-step5-info-procNm").text(" - " + $("#js-indus-cust-std-info-reg-pop-step5-line-combo option:selected").text());
						
						
						// 거래선별 실도장업체 정보 - 수정
						$("button[name=js-indus-cust-std-info-detail-step5-popup-mod-button]").off().on('click', function() {
							
							var procId = this.id.substring("js-indus-cust-std-info-detail-step5-popup-mod-button".length + 1);
							
							fn_openPop($(this));
							retrieveCustStdInfoStep5('U');
							
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
			request : function(cust) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					service 	: 'ind.custInfo',
					method 		: 'retrieveProcInfoStep5',
					itemType	: jsCommon.itemType.getItem().code,
					cust		: $('#js-indus-cust-std-info-reg-pop-cust').val(),
					pcust		: $('#js-indus-cust-std-info-reg-pop-step5-paintCust-combo').val(),
					factoryId 	: $('#js-indus-cust-std-info-reg-pop-step5-factoryId-combo').val(),
					lineId		: $('#js-indus-cust-std-info-reg-pop-step5-line-combo').val()
				};
				
				app.mask.pageLock();					
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		
		// ------------------------------------------------
		// 상세 - 도장업체 콤보 조회
		// ------------------------------------------------
		var retrieveStep5DetailPcustList = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					if (message === 'OK') {
						
						console.log("retrieveStep5DetailPcustList 도장업체 콤보 조회 ");
						
						var data = response.rs;
						
						$('#js-indus-cust-std-info-reg-pop-step5-detail-paintCust-combo').find('option').remove();
						
						for(var i=0; i < data.length; i++)
						{
							$('#js-indus-cust-std-info-reg-pop-step5-detail-paintCust-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
						}
						
						// 도장업체 combo1 change
						$('#js-indus-cust-std-info-reg-pop-step5-detail-paintCust-combo').off().on("change", function(){
							retrieveStep5DetailFactoryList.request();
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
					service		: 'ind.common',
					method		: 'retrievePcustList',
					itemType	: jsCommon.itemType.getItem().code,
					cust		: $('#js-indus-cust-std-info-reg-pop-cust').val()
				};

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		
		// 상세 - 공장 콤보 조회
		var retrieveStep5DetailFactoryList = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
	
					if (message === 'OK') {
						
						console.log("retrieveStep5DetailFactoryList 공장 콤보 조회 ");
						
						var data = response.rs;
						
						$('#js-indus-cust-std-info-reg-pop-step5-detail-factoryId-combo').find('option').remove();
						
						for(var i=0; i < data.length; i++)
						{
							$('#js-indus-cust-std-info-reg-pop-step5-detail-factoryId-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
						}
						
						// 공장 combo2 change
						$('#js-indus-cust-std-info-reg-pop-step5-detail-factoryId-combo').off().on("change", function(){
							retrieveStep5DetailLineList.request();
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
			request: function(itemType, cust, paintCust) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					service		: 'ind.common',
					method		: 'retrieveFactoryList',
					itemType	: jsCommon.itemType.getItem().code,
					cust		: $('#js-indus-cust-std-info-reg-pop-cust').val(),
					paintCust	: $('#js-indus-cust-std-info-reg-pop-step5-paintCust-combo').val()
				};
				
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);				
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		
		// 상세 - 라인 콤보 조회
		var retrieveStep5DetailLineList = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
	
					if (message === 'OK') {
						
						console.log("retrieveStep5DetailLineList 라인 콤보 조회 5 ");
						
						var data = response.rs;
						
						$('#js-indus-cust-std-info-reg-pop-step5-detail-line-combo').find('option').remove();
						
						for(var i=0; i < data.length; i++)
						{
							$('#js-indus-cust-std-info-reg-pop-step5-detail-line-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
						}
						
						// 라인 combo3 change
						$('#js-indus-cust-std-info-reg-pop-step5-detail-line-combo').off().on("change", function(){
							retrieveStep5DetailProcList.request();
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
			request: function(itemType, cust, paintCust, factoryId) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					service		: 'ind.common',
					method		: 'retrieveLineList',
					itemType	: jsCommon.itemType.getItem().code,
					cust		: $('#js-indus-cust-std-info-reg-pop-cust').val(),
					paintCust	: $('#js-indus-cust-std-info-reg-pop-step5-paintCust-combo').val(),
					factoryId 	: $('#js-indus-cust-std-info-reg-pop-step5-factoryId-combo').val()
				};
				
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);				
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		
		
		// 상세 - 공정 콤보 조회
		var retrieveStep5DetailProcList = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
	
					if (message === 'OK') {
						
						console.log("retrieveStep5DetailProcList 공정 콤보 조회 5 ");
						
						var data = response.rs.procList;
						
						$('#js-indus-cust-std-info-reg-pop-step5-detail-proc-combo').find('option').remove();
						
						for(var i=0; i < data.length; i++)
						{
							$('#js-indus-cust-std-info-reg-pop-step5-detail-proc-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
						}
						
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
			request: function() {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					service		: 'ind.custInfo',
					method		: 'retrieveProcInfoStep5Detail',
					itemType	: jsCommon.itemType.getItem().code,
					cust		: $('#js-indus-cust-std-info-reg-pop-cust').val(),
					pcust		: $('#js-indus-cust-std-info-reg-pop-step5-paintCust-combo').val(),
					factoryId	: $('#js-indus-cust-std-info-reg-pop-step5-factoryId-combo').val(),
					lineId		: $('#js-indus-cust-std-info-reg-pop-step5-line-combo').val(),
					procId		: $('#js-indus-cust-std-info-reg-pop-step5-procId').text()
				};
				
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);				
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		
		
		// + 공장별 라인 정보 항목별 값 등록 버튼
		$("#js-indus-cust-std-info-reg-pop-step5-info-add").off().on('click', function(){
			fn_openPop($(this));
			retrieveCustStdInfoStep5('I');
		});
		
		
		// + 공장별 라인 정보 등록 버튼 클릭 시 팝업 띄운 이후 실행
		var retrieveCustStdInfoStep5 = function(chk){
			
			// step3 도장업체별 공장 정보 항목별 값 등록 상세 조회
			if(chk == 'I'){
				retrieveProcInfoStep5DetailInit.request();
			}
			else
			{
				retrieveProcInfoStep5Detail.request();
			}
			
		}
		
		
		// step5 라인 정보 상세 조회
		var retrieveProcInfoStep5DetailInit = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
	
					if (message === 'OK') {
						
						console.log("retrieveProcInfoStep5DetailInit 라인 정보 상세 조회 ");
						
						$("#js-indus-cust-std-info-reg-pop-step5-detail-info-list").empty();
						
						var data = response.rs;
						
						retrieveStep5DetailPcustList.request();
						retrieveStep5DetailFactoryList.request();
						retrieveStep5DetailLineList.request();
						retrieveStep5DetailProcList.request();
						
						$("#js-indus-cust-std-info-reg-pop-step4-detail-info-list").empty();
						
						var maxIndex = 1;
						
						var data = response.rs;
						
						// 공정 콤보 리스트 셋팅
						gvListIndusCustStdProcInfoInspSeq = data.procIdList;
						
						var data = {
							procItemId  		: ""
							, procItemValueType : ""
							, procItemValue  	: ""
							, dataIndex       	: Number(maxIndex++)
							, valueType			: ""
						};
						
						
						addRowIndusCustStdProcInfoRegPopList(data);
						
						
						// 추가 버튼 클릭
						$('#js-indus-cust-std-info-reg-pop-step5-detail-info-add').off().on("click", function(){
							
							$("[name=js-indus-cust-std-detail-info-reg-pop-procList-tr]").each(function(){
								
								var dataIndex = Number($(this).attr("dataIndex"));
								
								if(maxIndex < dataIndex){
									maxIndex = dataIndex;
								}
								
							});
							
							var data = {
								procItemId  		: ""
								, procItemValueType : ""
								, procItemValue  	: ""
								, dataIndex       	: Number(maxIndex++)
							};
							
							addRowIndusCustStdProcInfoRegPopList(data);

						});
						
						$("#js-indus-cust-std-info-reg-pop-step5-detail-reg-inputEmpNm").text("${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}");
						
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
			request: function(itemType, cust, paintCust) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					service			: 'ind.custInfo',
					method			: 'retrieveProcInfoStep5Detail',
					itemType		: jsCommon.itemType.getItem().code,
					cust			: $('#js-indus-cust-std-info-reg-pop-cust').val(),
					pcust			: $('#js-indus-cust-std-info-reg-pop-step5-paintCust-combo').val(),
					factoryId		: $('#js-indus-cust-std-info-reg-pop-step5-factoryId-combo').val(),
					factoryNm		: $('#js-indus-cust-std-info-reg-pop-step5-factoryId-combo').text().trim(),
					lineId			: $('#js-indus-cust-std-info-reg-pop-step5-line-combo').val(),
					procId			: $('#js-indus-cust-std-info-reg-pop-step5-procId').text().trim(),
				};
				
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);				
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		
		
		// step5 라인 정보 상세 조회
		var retrieveProcInfoStep5Detail = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
	
					if (message === 'OK') {
						
						console.log("retrieveProcInfoStep5Detail 라인 정보 상세 조회 ");
						
						$("#js-indus-cust-std-info-reg-pop-step5-detail-info-list").empty();
						
						var data = response.rs;
						
						retrieveStep5DetailPcustList.request();
						retrieveStep5DetailFactoryList.request();
						retrieveStep5DetailLineList.request();
						retrieveStep5DetailProcList.request();
						
						$("#js-indus-cust-std-info-reg-pop-step4-detail-info-list").empty();
						
						var maxIndex = 1;
						
						var data = response.rs;
						
						// 공정 콤보 리스트 셋팅
						gvListIndusCustStdProcInfoInspSeq = data.procIdList;
						
						var data = {
							procItemId  		: ""
							, procItemValueType : ""
							, procItemValue  	: ""
							, dataIndex       	: Number(maxIndex++)
							, valueType			: ""
						};
						
						
						addRowIndusCustStdProcInfoRegPopList(data);
						
						
						// 추가 버튼 클릭
						$('#js-indus-cust-std-info-reg-pop-step5-detail-info-add').off().on("click", function(){
							
							$("[name=js-indus-cust-std-detail-info-reg-pop-procList-tr]").each(function(){
								
								var dataIndex = Number($(this).attr("dataIndex"));
								
								if(maxIndex < dataIndex){
									maxIndex = dataIndex;
								}
								
							});
							
							var data = {
								procItemId  		: ""
								, procItemValueType : ""
								, procItemValue  	: ""
								, dataIndex       	: Number(maxIndex++)
							};
							
							addRowIndusCustStdProcInfoRegPopList(data);

						});
						
						
						var data = response.rs.detail;
						
						if(data.length > 0){
							
							$("#js-indus-cust-std-info-reg-pop-step5-detail-paintCust-combo").val(data[0].pcust);
							
							$("#js-indus-cust-std-info-reg-pop-step5-detail-paintCust-combo").val(data[0].pcust).change();
							
							$("#js-indus-cust-std-info-reg-pop-step5-detail-factoryId-combo").val(data[0].factoryId);
							
							$("#js-indus-cust-std-info-reg-pop-step5-detail-factoryId-combo").val(data[0].factoryId).change();
							
							$("#js-indus-cust-std-info-reg-pop-step5-detail-line-combo").val(data[0].lineId);
							
							$("#js-indus-cust-std-info-reg-pop-step5-detail-line-combo").val(data[0].lineId).change();
							
							$("#js-indus-cust-std-info-reg-pop-step5-detail-proc-combo").val(data[0].procId);
							
							$("#js-indus-cust-std-info-reg-pop-step5-detail-proc-combo").val(data[0].procId).change();
							
							$("#js-indus-cust-std-info-reg-pop-step5-detail-reg-proc-combo-1").val(data[0].procItemId);
							$("#js-indus-cust-std-info-reg-pop-step5-detail-reg-lineCodeNm-1").val(data[0].currentValue);
							
							$("#js-indus-cust-std-info-reg-pop-step5-detail-reg-inputEmpNm").text(response.rs.stdInfo[0].inputEmpNm);
							
						}
						
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
			request: function(itemType, cust, paintCust) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					service		: 'ind.custInfo',
					method		: 'retrieveProcInfoStep5Detail',
					itemType		: jsCommon.itemType.getItem().code,
					cust			: $('#js-indus-cust-std-info-reg-pop-cust').val(),
					pcust			: $('#js-indus-cust-std-info-reg-pop-step5-paintCust-combo').val(),
					factoryId		: $('#js-indus-cust-std-info-reg-pop-step5-factoryId-combo').val(),
					factoryNm		: $('#js-indus-cust-std-info-reg-pop-step5-factoryId-combo').text().trim(),
					lineId			: $('#js-indus-cust-std-info-reg-pop-step5-line-combo').val(),
					procId			: $('#js-indus-cust-std-info-reg-pop-step5-procId').text().trim(),
				};
				
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);				
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		
		// 공장별 라인 정보 항목별 값 등록 - 항목 Row 추가
		var addRowIndusCustStdProcInfoRegPopList = function(data){
			
			var html = indusCustStdInfoStep5DetailListTemplate(data);
			$('#js-indus-cust-std-info-reg-pop-step5-detail-info-list').append(html);
			
			// 항목 콤보 세팅
			var comboData = gvListIndusCustStdProcInfoInspSeq;
			
			for(var i=0; i < comboData.length; i++)
			{
				$("[name=js-indus-cust-std-info-reg-pop-step5-detail-reg-proc-combo][dataIndex=" + data.dataIndex + "]").append("<option value='"+ comboData[i].code +"'>"+ comboData[i].codeNm +"</option>");
			}
			

			// 삭제 버튼 클릭
			$("[id^=js-indus-cust-std-info-reg-pop-step5-detail-delete-button]").off().on("click", function(){
				if($('#js-indus-cust-std-info-reg-pop-step5-detail-info-list tr').length > 1){
					$(this).parent().parent('tr').remove();
				}
			});
			
		}
		
		
		
		// step5 공장별 라인 정보 항목별 값 등록 - 항목별 값 등록 저장
		$("#js-indus-cust-std-info-reg-pop-step5-proc-detail-reg-button").off().on("click", function(){
			
			var procArray 	= new Array();
			procJsonList 	= "";
			
			$("input[id^=js-indus-cust-std-info-reg-pop-step5-detail-reg-procCodeNm]").each(function(i){
				
				if($(this).val() != ''){
					
					var dataindex = $(this).attr('dataindex');
					
					procArray.push({
						procItemId 			: $("#js-indus-cust-std-info-reg-pop-step5-detail-reg-proc-combo-"+ dataindex).val(),
						procItemValueType 	: $("#js-indus-cust-std-info-reg-pop-step5-detail-reg-valueType-"+ dataindex).val(),
						procItemValue 		: $(this).val()
					});
					
					procJsonList = JSON.stringify(procArray);
					saveProcInfoStep5.request(procJsonList);

				}
				
			});
			
		});
		
		
		// ------------------------------------------------
		// 공장별 라인 정보 항목별 값 등록(Step5)
		// ------------------------------------------------
		var saveProcInfoStep5 = {
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
							, callback          : {
								confirm: function() {
									procArray = [];
									procJsonList = "";
								}
							}
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
			request: function(procJsonList) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					service			: 'ind.custInfo',
					method			: 'saveProcInfoStep5',
					itemType		: jsCommon.itemType.getItem().code,
					cust			: $('#js-indus-cust-std-info-reg-pop-cust').val(),
					pcust			: $('#js-indus-cust-std-info-reg-pop-step5-detail-paintCust-combo').val(),
					factoryId		: $('#js-indus-cust-std-info-reg-pop-step5-detail-factoryId-combo').val(),
					factoryNm		: $('#js-indus-cust-std-info-reg-pop-step5-detail-factoryId-combo').text().trim(),
					lineId			: $('#js-indus-cust-std-info-reg-pop-step5-detail-line-combo').val(),
					procId			: $('#js-indus-cust-std-info-reg-pop-step5-detail-proc-combo').val(),
					date			: fn_getBeforeDate(fn_getTodayDate().replace(/-/gi, "")),
					procInfo 		: procJsonList
				};

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		
		// 저장 후 종료 버튼
		$("#js-indus-cust-std-info-end-reg-pop").off().on("click", function(){
			
			// 공정 정보 등록 팝업 닫기
			$("#js-indus-cust-std-info-reg-popup-step5-close-button").click();
			
		});
		
		</script>
		
	
	</tiles:putAttribute>
	<!-- 팝업 콘텐츠 E -->
	<!-- [e] 페이지 레벨 팝업 컨텐츠 -->
	
</tiles:insertDefinition>