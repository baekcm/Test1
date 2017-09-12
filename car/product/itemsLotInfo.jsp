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
					<h1><spring:message code="TODO.KEY" text="제품 출고 이력 정보"/></h1>
					<div class="wp-location"><span><spring:message code="TODO.KEY" text="제품정보"/></span><span class="wp-fc-54"><spring:message code="TODO.KEY" text="제품 출고 이력 정보"/></span><span class="wp-fc-54"><spring:message code="TODO.KEY" text="LOT별 생산 이력 정보"/></span></div>
				</header>
				<div class="wp-table-width">
					<!-- title area -->
					<div class="wp-title-section">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="LOT별 생산/검사/출고 이력 정보"/></h2>						
					</div>
					<!-- //title area -->
					<!-- wp-layerstyle -->
					<div class="wp-search-area">
					<div class="wp-ui-select wp-wd85">						
						<select id="js-items-lot-info-search-date-type" title="<spring:message code='TODO.KEY' text='일자구분'/>">
						</select>
					</div>
					<input type="text" id="js-items-lot-info-search-from-date" name="js-items-lot-info-search-from-date" class="wp-inp-datepicker wp-wd113" placeholder="<spring:message code='TODO.KEY' text='날짜입력'/>">
					&nbsp;~&nbsp;
					<input type="text" id="js-items-lot-info-search-to-date" name="js-items-lot-info-search-to-date" class="wp-inp-datepicker wp-wd113" placeholder="<spring:message code='TODO.KEY' text='날짜입력'/>">					
					<div class="wp-ui-select wp-wd130">
						<select id="js-items-lot-info-search-item-type" title="<spring:message code='TODO.KEY' text='제품구분'/>">
						</select>
					</div>
					<div class="wp-input-search wp-wd250">
						<input type="text" id="js-items-lot-info-search-keyword" placeholder="검색어를 입력해 주세요.">
						<button type="button" class="wp-btn-search" id="js-items-lot-info-search-button"><span><spring:message code="TODO.KEY" text="검색"/></span></button>
					</div>
					
				</div>
				<!-- //search area -->
				<!-- search -->
				<div class="wp-folding-search">					
				</div>					
					<!-- //wp-layerstyle -->
							
						<!-- wp-box-section -->
						<div id="js-items-lot-info-list">						
						</div>
						<!-- //wp-box-section -->
					
				</div>
				
				
				<!-- //content end -->
			</div>
		</section>
		
	</tiles:putAttribute>
	<!-- 메인 콘텐츠 E -->
	
	<!-- 페이지 레벨 스크립트 S -->
	<tiles:putAttribute name="page-level-js">
	
		<!-- 제품출고이력정보 리스트 - 스크립트 -->
		<script id="js-template-items-lot-info-list" type="text/x-handlebars-template">		
			<div class="wp-timeline">
				<ul class="wp-info-icon">
				</ul>
				{{#rows}}
					{{#isYearYn}}
						<h3 class="wp-title"><span>{{setOutDateTl outDateTline}}</span></h3>
					{{/isYearYn}}
					<div class="wp-box-section {{setClassGubun formulaChangeYn lotChangeYn expiredYn}}">
						<h3 class="wp-box-title">
							<span>LOT No.: {{lotNo}}</span>
							<span>보관기간: {{shelfLife}}</span>
							<span>만료일:{{expiryDate}}</span>
							<span>Formula No.: {{formula}}</span>
						</h3>
						<div class="wp-box-cont">
							<span>{{formulaChgReason}}</span>
						</div>
						<div class="wp-box-etc">
							<span>입고일: {{lastInDate}}</span>
							<span>생산공장: {{repProdPlantNm}}</span>
							<span>제품명: {{itemsNm}}</span>
							<span>LOT No.: {{lotNo}}</span>
							<span>출고량({{unit}}): {{setComma outVqty}}</span>
						</div>
						<div class="wp-btn-section">
							<button type="button" class="wp-btn wp-btn-pop small white bgray" id="js-items-lot-info-detail-reqist-{{outNo}}-{{outSeq}}" name="js-items-lot-info-detail-popup-button-all" data-link="js-items-lot-info-detail-popup" data-depth="1" value="{{dest}}" data-items = "{{items}}" data-lotNo = "{{lotNo}}" data-outNo = "{{outNo}}" data-outSeq = "{{outSeq}}" data-prodPlant = "{{prodPlant}}" data-formula = "{{formula}}" data-outDate="{{outDate}}" data-outVqty="{{outVqty}}" data-repOrderNo="{{repOrderNo}}" data-orderId="{{orderId}}">자세히보기</button>							
						</div>
					</div>
				{{/rows}}
			</div>
		</script>
		

		<script type="text/javascript">
		
			var itemslotinfoListTemplate;
			
			//메시지 파라미터 정의함수
			var messageParam = {
				title: '에러',
				message: '',
				confirmButtonText: '확인'				
			};
			
			$(document).ready(function() {
	
				// Handlebar 초기화
				initHandlebarsTemplate();
				
				// ------------------------------------------------
				// 검색조건 날짜 세팅 
				// 시작일은 현재일 -6일로 세팅한다.
				// ------------------------------------------------				
				var date = app.utils.formatDate(new Date(), "YYYYMMDD");
				var beforeDate =  fn_getBeforeDate(date, 0, 0,6);
				
				$('#js-items-lot-info-search-from-date').val(app.utils.formatDate(beforeDate, "YYYY-MM-DD"));
				$('#js-items-lot-info-search-to-date').val(app.utils.formatDate(date, "YYYY-MM-DD"));
				
				//검색 버튼
				$("#js-items-lot-info-search-button").off().on('click', function() {
					retrieveProdLotHist.request();				
				});
				
				//검색조건 세팅
				initSearch();
				
			});
			
			// ------------------------------------------------
			// 전체 초기화 (header 조선소 콤보 조회 완료 후, 실행됨)
			// ------------------------------------------------
			var retrieveProdLotHistAll = function() {
				
				//자동조회
				retrieveProdLotHist.request();
				
			}
			
			// ------------------------------------------------
			// Handlebar 초기화
			// ------------------------------------------------
			var initHandlebarsTemplate = function() {
				//list 영역 템플릿 컴파일
				var source = $('#js-template-items-lot-info-list').html();
				itemslotinfoListTemplate = Handlebars.compile(source);
				
				//변경유무에 따라 색상을 변경한다.
				Handlebars.registerHelper('setClassGubun', function(formulaChangeYn, lotChangeYn, expiredYn) {					
					
					if (formulaChangeYn == "Y"){
						return "wp-bg-formula-title-area";						
					} else if (lotChangeYn == "Y"){
						return "wp-bg-lot-title-area";
					} else if (expiredYn == "Y"){
						return "wp-bg-expire-title-area";
					}
				});
				
				//타임 날짜값 변경
				Handlebars.registerHelper('setOutDateTl', function(outDateTl) {					
					
					outDateTl    = outDateTl.replace(/-/gi,"");
					var year   = outDateTl.substring(0, 4);
					var month  = outDateTl.substring(4, 6);
					var day    = outDateTl.substring(6, 8);					
					
					return month + "-" + day;
					
				});
				
				//타임 날짜 데이터 존재여부 확인 -- 있으면 보여준다
				Handlebars.registerHelper('isYearYn', function(options) {
					if (this.outDateTline){
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				
				//숫자에 콤마 적용
				Handlebars.registerHelper('setComma', function(sVal) {
					
					return $.number(parseInt(sVal))
					
				});
				
			};
			
			//일자및제품구분 콤보 조회
			var initSearch = function(){
				//일자구분 combo 조회
				retrieveSearchOptionData.request();				
				
				//제품구분 combo 조회
				retrieveSearchOptionItem.request();
			}
			
			//일자구분 combo 조회
			var retrieveSearchOptionData = {
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
							$('#js-items-lot-info-search-date-type').find('option').remove();
							for(var i=0; i<response.rs.length; i++) 	{
								$('#js-items-lot-info-search-date-type').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								comboCnt++;									
							}
							$('#js-items-lot-info-search-date-type').attr("title", comboCnt+" <spring:message code='TODO.KEY' text='건'/>");
						} else 	{
							// 서비스 요청 처리 오류 발생 메시지
							
							messageParam.title = "에러";
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
					messageParam.title = "에러";
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
						service: 'ship.common',
						method: 'retrieveSearchOption',
						codeGroupSub : 'DATE'
						
					};

					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//제품구분 combo 조회
			var retrieveSearchOptionItem = {
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
							$('#js-items-lot-info-search-item-type').find('option').remove();
							for(var i=0; i<response.rs.length; i++) 	{
								$('#js-items-lot-info-search-item-type').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								comboCnt++;									
							}
							$('#js-items-lot-info-search-item-type').attr("title", comboCnt+" <spring:message code='TODO.KEY' text='건'/>");
							$('#js-items-lot-info-search-item-type').val('NAME');
						} else 	{
							// 서비스 요청 처리 오류 발생 메시지
							
							messageParam.title = "에러";
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
					
					messageParam.title = "에러";
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
						service: 'ship.common',
						method: 'retrieveSearchOption',
						codeGroupSub : 'ITEM'
						
					};

					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			// ------------------------------------
			// 자동차 제품 출고 이력 정보 상세 윈도우 오픈
			// ------------------------------------
			var winOpenHandler = {
				createProductHistoryDetail : function(params) {
					
					var screenHeight = screen.availHeight;
					var screenWidth = screen.width;

					// ------------------------------------
					// set height and width of a open window
					// ------------------------------------
					var maxWidth = 1400;
					var minWidth = 960;
					var winHeight = screenHeight - 120;
					var winWidth = 1400;

					if (screenWidth <= maxWidth) {
						winWidth = minWidth;
					}

					// ------------------------------------
					// set position of a open window
					// ------------------------------------
					var posLeft = (screenWidth - winWidth) / 2;
					var posTop = 40;

					//--- make window.open options 
					var options = [ 
						'toolbar=no,menubar=no,status=no,scrollbars=yes,resizable=yes', 
						'left=' + posLeft, 
						'top=' + posTop, 
						'height=' + winHeight, 
						'width=' + winWidth, 
					].join(','); 

					//--- make form parameters 
					var params = params;

					//--- open new window 
					app.utils.window.open({ 
						url: '/car/product/itemsLotInfoDetail.do', options: options, params: params 
					}); 
					
				}
			};
			
			// ------------------------------------------------
			// 제품 출고 이력 정보 조회
			// ------------------------------------------------
			var retrieveProdLotHist = {
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
							
							var html = itemslotinfoListTemplate(data);
							$('#js-items-lot-info-list').empty().append(html);
							
							//자세히보기 버튼 클릭 이벤트 추가				
							$("button[name=js-items-lot-info-detail-popup-button-all]").off().on('click', function() {	
								
								var params = { 
									sDest:$(this).val(),						//착지(HMC공장코드)
									sItems:$(this).attr("data-items"),			//제품코드
									sLotNo:$(this).attr("data-lotNo"),			//LOTNo
									sOutNo:$(this).attr("data-outNo"),			//출고번호
									sOutSeq:$(this).attr("data-outSeq"),		//출고순번
									sProdPlant:$(this).attr("data-prodPlant"),	//생산공장
									sFormula:$(this).attr("data-formula"),		//배합번호
									outDate:$(this).attr("data-outDate"),
									outVqty:$(this).attr("data-outVqty"),
									repOrderNo:$(this).attr("data-repOrderNo"),
									orderId:$(this).attr("data-orderId")
								}; 
								
								winOpenHandler.createProductHistoryDetail(params);
								return false;
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
				request : function(gubun) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					
					var sDest 	  	= $('#js-car-header-car-plant').val();					
					var sDateType 	= $('#js-items-lot-info-search-date-type').val();					
					var sFromDate 	= $('#js-items-lot-info-search-from-date').val();
					var sToDate   	= $('#js-items-lot-info-search-to-date').val();					
					var sItemType 	= $('#js-items-lot-info-search-item-type').val();
					var sItems    	= $('#js-items-lot-info-search-keyword').val().trim();
					
					console.log("sDest : "+ sDest);
					console.log("sDateType : "+ sDateType);
					console.log("sFromDate : "+ sFromDate);
					console.log("sToDate : "+ sToDate);
					console.log("sItemType : "+ sItemType);
					console.log("sItems : "+ sItems);
					
					if(sDest == '')
					{						
						app.message.alert({
							title: '알림', message: '<spring:message code="TODO.KEY" text="착지(HMC공장코드)은 필수입력 항목입니다."/>', confirmButtonText: '확인',
							callback: {
								confirm: function() {
									$('#js-car-header-car-plant').focus();
								}
							}
						});												
						return;
					}
					
					if(sDateType == '')
					{						
						app.message.alert({
							title: '알림', message: '<spring:message code="TODO.KEY" text="일자구분은 필수입력 항목입니다."/>', confirmButtonText: '확인',
							callback: {
								confirm: function() {
									$('#js-items-lot-info-search-date-type').focus();
								}
							}
						});
						return;
					}
					
					if(sFromDate == '')
					{
						app.message.alert({
							title: '알림', message: '<spring:message code="TODO.KEY" text="시작일은 필수입력 항목입니다."/>', confirmButtonText: '확인',
							callback: {
								confirm: function() {
									$('#js-items-lot-info-search-from-date').focus();
								}
							}
						});						
						return;
					}
					
					if(!chkDate(sFromDate))
					{
						app.message.alert({
							title: '알림', message: '<spring:message code="TODO.KEY" text="유효하지 않은 날짜 형식입니다."/>', confirmButtonText: '확인',
							callback: {
								confirm: function() {
									$('#js-items-lot-info-search-from-date').focus();
								}
							}
						});	
						return;
					}
					
					if(sToDate == '')
					{
						app.message.alert({
							title: '알림', message: '<spring:message code="TODO.KEY" text="종료일은 필수입력 항목입니다."/>', confirmButtonText: '확인',
							callback: {
								confirm: function() {
									$('#js-items-lot-info-search-to-date').focus();
								}
							}
						});						
						return;
					}
					
					if(!chkDate(sToDate))
					{
						app.message.alert({
							title: '알림', message: '<spring:message code="TODO.KEY" text="유효하지 않은 날짜 형식입니다."/>', confirmButtonText: '확인',
							callback: {
								confirm: function() {
									$('#js-items-lot-info-search-to-date').focus();
								}
							}
						});
						return;
					}
					
					if(fn_getDaysBetween(sFromDate.replace(/-/gi,""), sToDate.replace(/-/gi,"")) < 0)
					{
						app.message.alert({
							title: '알림', message: '<spring:message code="TODO.KEY" text="시작일이 종료일보다 미래입니다."/>', confirmButtonText: '확인',
							callback: {
								confirm: function() {
									$('#js-items-lot-info-search-from-date').focus();
								}
							}
						});
						return;
					}
					
					var params = {
						service : 'car.prodDispatch',
						method : 'retrieveProdDispatchInfo',
						dest : sDest,								// 착지(HMC공장코드)
						dateType : sDateType,						// 일자구분
						fromDate : sFromDate.replace(/-/gi,""),		// 시작일자 
						toDate : sToDate.replace(/-/gi,""),			// 종료일자							
						itemType : sItemType,						// 제품구분
						items : sItems								// 제품코드(명)
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
	
</tiles:insertDefinition>
