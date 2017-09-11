<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.04.05] ship mobile 제품 출고 이력 정보 리스트" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.mobile">
	<!-- [s] 모바일 콘텐츠 -->
	<tiles:putAttribute name="page-content">
	<div class="wp-wrap">
	<!-- header -->
		<header class="wp-header"><!-- wp-fixed  를 추가하면 wp-fixed-header만 노출됨 -->
			<button type="button" class="wp-btn wp-left wp-prev-white"><spring:message code="TODO.KEY" text="이전"/></button>
			<h1><spring:message code="TODO.KEY" text="LOT별 생산 이력 정보"/></h1>
			<h1 class="wp-fixed-header"><spring:message code="TODO.KEY" text="출고일"/> : <font id="mainTitleDate"></font></h1>
			<button type="button" class="wp-btn wp-refrash-white"><spring:message code="TODO.KEY" text="새로고침"/></button>
			<button type="button" class="wp-btn wp-search-white"><spring:message code="TODO.KEY" text="검색"/></button>
		</header>
		<!-- //header -->
		<!-- wp-container -->
		<section class="wp-container wp-lot-section">
			<div class="wp-cont-area">
				<ul class="wp-info-icon">
					<li class=""><span><spring:message code="TODO.KEY" text="기본정보"/></span></li>
					<li><span class="wp-formula"><spring:message code="TODO.KEY" text="Formula 변경"/></span></li>
					<li><span class="wp-lot"><spring:message code="TODO.KEY" text="Lot 변경"/></span></li>					
					<li><span class="wp-expire"><spring:message code="TODO.KEY" text="저장기한 만료"/></span></li>
				</ul>
			</div>
			<hr>
			
			
			<div id="js-ship-mobile-items-lot-info-list"></div>
			<script id="js-template-ship-mobile-items-lot-info-list" type="text/x-handlebars-template">
				{{#rows}}
					{{!-- box content --}}
					<div class="wp-section" >{{!-- 펼쳤을때 add class open --}}
						<div class="wp-box-title">
							<span class="wp-icon">{{itemsNm}}</span>
							<span class="wp-date"><spring:message code="TODO.KEY" text="출고일"/> : {{outDate}}</span>
						</div>
						<div class="wp-box-cont">
							<div class="wp-text-section">
								<div class="wp-50p"><span><spring:message code="TODO.KEY" text="LOT No."/></span>{{lotNo}}</div>
								<div class="wp-50p"><span><spring:message code="TODO.KEY" text="보관기간"/></span>{{shelfLife}}</div>
								<div class="wp-50p"><span><spring:message code="TODO.KEY" text="만료일"/></span>{{expiryDate}}</div>
								<div class="wp-50p"><span><spring:message code="TODO.KEY" text="Formula No."/></span>{{formula}}</div>
								<div class="wp-50p"><span><spring:message code="TODO.KEY" text="생산공장"/></span>{{prodPlantNm}}</div>
								<div class="wp-50p"><span><spring:message code="TODO.KEY" text="재고"/></span><font id="{{dummyId}}-stockVqty"></font></div>
								<div class="wp-50p"><span><spring:message code="TODO.KEY" text="이전배합"/></span><font id="{{dummyId}}-formula-prevFormula"></font></div>
								<div class="wp-50p"><span><spring:message code="TODO.KEY" text="입고일"/></span>{{lastInDate}}</div>
								<div class="wp-50p"><span><spring:message code="TODO.KEY" text="피드백"/></span><font id="{{dummyId}}-feedbackYn"></font></div>
								<div class="wp-50p"><span><spring:message code="TODO.KEY" text="Q-VoC"/></span><font id="{{dummyId}}-qvocYn"></font></div>
								<div class="wp-100p"><span><spring:message code="TODO.KEY" text="변경 사유"/></span><font id="{{dummyId}}-changeReason"></font></div>
								<div class="wp-comt"><spring:message code="TODO.KEY" text="* 자세한 내용은 PC버전에서 확인 바랍니다."/></div>
								
								<div class="wp-table-top">
									<span class="wp-date"><spring:message code="TODO.KEY" text="검사일자"/> : <font id="{{dummyId}}-inspDate"></font></span>
									<span><spring:message code="TODO.KEY" text="차수"/> : <font id="{{dummyId}}-seq"></font></span>
								</div>															
								<div class="wp-table h-center wp-line wp-margin0">
								<table>
										<caption></caption>
										<colgroup>
											<col style="width:33%">
											<col style="width:33%">
											<col style="width:34%">
										</colgroup>
										<thead>
											<tr>
												<th>검사항목</th>
												<th>검사범위</th>
												<th>검사결과</th>
											</tr>
										</thead>
										<tbody id="{{dummyId}}">
										{{!--
											<tr>
												<td>불휘발분</td>
												<td>30~36%</td>
												<td>31</td>
											</tr>
											<tr>
												<td>비중</td>
												<td>0.99 ~1.05</td>
												<td>1.019</td>
											</tr>
											<tr>
												<td>pH</td>
												<td>8 ~ 8.5</td>
												<td>8.1</td>
											</tr>
										--}}
										</tbody>
								</table>
								</div>
							</div>
							<div class="wp-btn-area"><button type="button" class="wp-btn wp-arr-more js-click-lot-info-detail" name="js-mobile-items-lot-info-detail-button-all" value="{{dest}}" items = "{{items}}" lotNo = "{{lotNo}}" outNo = "{{outNo}}" outSeq = "{{outSeq}}" prodPlant = "{{prodPlant}}" formula = "{{formula}}" data-dummy-id="{{dummyId}}"><span>닫기</span></button></div>
							</div>
						</div>
					</div>
					<!-- //box content -->
				{{/rows}}
			</script>				
		</section>
		<!-- //wp-container -->
	</div>
	</tiles:putAttribute>
	<!-- [e] 모바일 콘텐츠 -->
	
	<!-- [s] 페이지 레벨 스크립트 -->
	<tiles:putAttribute name="page-level-js">
		
		<script id="js-template-ship-mobile-inspection-list" type="text/x-handlebars-template">
			{{#rows}}
				<tr>
					<td class="wp-al">{{inspItem}}</td>
					<td class="wp-al">{{range}}</td>
					<td class="wp-ar">{{result}}</td>
				</tr>
			{{/rows}}
		</script>
		
		<script type="text/javascript">
		
			var shipMobileItemsLotInfoTemplate;
			var shipMobileinspectionListTemplate;
			
			$(document).ready(function(){
				
				//
				//Handlebar 초기화
				var source = $('#js-template-ship-mobile-items-lot-info-list').html();
				shipMobileItemsLotInfoTemplate = Handlebars.compile(source);
				
				var source = $('#js-template-ship-mobile-inspection-list').html();
				shipMobileinspectionListTemplate = Handlebars.compile(source);
				
				//뒤로가기 버튼
				$('.wp-prev-white').on('click', function() {
					var url = '/mobile/ship/shipMobileMain.do';
					
					window.location.href = url;
				});
				
				//새로고침 버튼
				$('.wp-refrash-white').on('click', function() {
					var url = '/mobile/ship/mobileItemsLotInfo.do';
					
					var yardCode = getQuerystring('yardCode');
					var yardName = getQuerystring('yardName');
					
					url += '?yardCode='+yardCode+'&yardName='+yardName;
					
					window.location.href = url;
				});
				
				//검색 버튼
				$('.wp-search-white').on('click', function() {
					var url = '/mobile/ship/mobileItemsLotInfoSearch.do';
					
					var yardCode = getQuerystring('yardCode');
					var yardName = getQuerystring('yardName');
					
					if(app.utils.isEmpty(yardCode)){
						fn_alertInfo('A', '조선소 코드가 없습니다.');
						return;
					}
					
					if(app.utils.isEmpty(yardName)){
						fn_alertInfo('A', '조선소 코드명이 없습니다.');
						return;
					}
					
					url += '?yardCode='+yardCode+'&yardName='+yardName;
					
					window.location.href = url;
				});
				
				//변경유무에 따라 색상을 변경한다.
				Handlebars.registerHelper('setClassGubun', function(formulaChangeYn, lotChangeYn, expiredYn) {					
					
					if (formulaChangeYn == "Y"){
						return "wp-formula";						
					} else if (lotChangeYn == "Y"){
						return "wp-lot";
					} else if (expiredYn == "Y"){
						return "wp-expire";
					}
				});
				
				//숫자에 콤마 적용
				Handlebars.registerHelper('setComma', function(sVal) {
					
					return addNumberComma(sVal);
					
				});
				
				//조회
				retrieveProdLotHistMobile.request();
				
			});
			
			// LOT별 생산 이력 정보 조회 결과
			var retrieveProdLotHistMobile = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							var data = response.rs || [];
							
							for (var i = 0, count = data.length; i < count; i++) {
								data[i].dummyId = app.utils.createUniqueIdByTimestamp();
							}
							
							// HTML 엘리먼트 추가
							$('#js-ship-mobile-items-lot-info-list').empty().append(shipMobileItemsLotInfoTemplate({rows: data}));
						}else
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
					// ------------------------------------`
					// ajax request
					// ------------------------------------
					var yardCode = getQuerystring('yardCode');
					
					if(app.utils.isEmpty(yardCode)){
						fn_alertInfo('A', '조선소 코드가 없습니다.');
						return;
					}
					
					var sFromDate 	= getQuerystring('fromDate');
					var sToDate   	= getQuerystring('toDate');					
					var sItemsNm 	= getQuerystring('itemsNm');;
					var sItems    	= getQuerystring('items');;
					var sLotNo		= getQuerystring('lotNo');
					
					//시작날짜 파라미터 값이 없으면 현재날짜를 넣어준다.
					if(app.utils.isEmpty(sFromDate)){						
						var date = app.utils.formatDate(new Date(), "YYYYMMDD");
						sFromDate = date;
						sToDate = date;
					}
					
					var sMainTitle = "";
					
					//메인 타이틀 날짜 세팅
					if(sFromDate == sToDate){
						//메인 타이틀 날짜 
						sMainTitle = app.utils.formatDate(sFromDate, "YYYY-MM-DD");	
					}else{
						//메인 타이틀 날짜 
						sMainTitle = app.utils.formatDate(sFromDate, "YYYY-MM-DD") + "~" + app.utils.formatDate(sToDate, "YYYY-MM-DD");
					}
					
					$("#mainTitleDate").html(sMainTitle);
					
					var params = {
						service: 'ship.dispatchHist',
						method: 'retrieveProdLotHistMobile',
						dest : yardCode,							//조선소 코드
						fromDate : sFromDate.replace(/-/gi,""),		//시작일자 
						toDate : sToDate.replace(/-/gi,""),			//종료일자							
						itemsNm : sItemsNm,							//제품명
						items : sItems,								//제품코드
						lotNo : sLotNo								//LOT No.
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};

			// LOT별 생산 이력 정보 조회 결과 이벤트 바인딩
			$("#js-ship-mobile-items-lot-info-list").on('click', '.js-click-lot-info-detail', function(e) {								
				var $el = $(this);
				
				if ($el.hasClass('wp-arr-more')) {
					var sDest 	  	= $el.val();				//착지(HMC공장코드)
					var sItems    	= $el.attr("items");		//제품코드
					var sLotNo    	= $el.attr("lotNo");		//LOT No
					var sOutNo    	= $el.attr("outNo");		//출고번호
					var sOutSeq    	= $el.attr("outSeq");		//출고순번
					var sProdPlant	= $el.attr("prodPlant");	//생산공장
					var sFormula	= $el.attr("formula");		//배합번호
					var sDummyId	= $el.attr("data-dummy-id"); // 상세 정보를 추가할 HTML DOM ID
					
					// LOT 상세 정보 조회 요청
					retrieveProdLotDetailsMobile.request(sDest, sItems, sLotNo, sOutNo, sOutSeq, sProdPlant, sFormula, sDummyId);					
				}else{
					fn_detailinit($el.attr("data-dummy-id"));
				}
			});
			
			// LOT 상세 정보 조회
			var retrieveProdLotDetailsMobile = {
				success: function(id) {
					return function(response, status, jqueryXHR) {
						console.log('handlebar template append to  = ' + id);
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								
								// TODO - HTML 엘리먼트 추가
								console.log('------------------------------------');
								console.log('[debug] id = ' + id);
								console.log('------------------------------------');
								
								//재고
								$("#"+id+"-stockVqty").html(addNumberComma(response.rs.stockInfo[0].stockVqty));						
								//이전배합
								$("#"+id+"-formula-prevFormula").html(addNumberComma(response.rs.formulaChangeInfo[0].prevFormula));	
								
								//피드백 여부
								var feedBackYn = "없음";
								if(response.rs.feedbackInfo[0].cnt > 0){
									feedBackYn = "있음";
								}								
								$("#"+id+"-feedbackYn").html(feedBackYn);
								
								//Q-Voc 여부
								var qvocYn = "없음";
								if(response.rs.feedbackInfo[0].cnt > 0){
									qvocYn = "있음";
								}								
								$("#"+id+"-qvocYn").html(qvocYn);
								
								//배합 변경 사유
								$("#"+id+"-changeReason").html(response.rs.formulaChangeInfo[0].changeReason);
								
								var data = response.rs.inspInfo || [];
								
								//검사일자
								$("#"+id+"-inspDate").html(data[0].inspDate);
								
								//검사차수
								$("#"+id+"-seq").html(data[0].seq);
								
								// HTML 엘리먼트 추가
								$('#'+id).empty().append(shipMobileinspectionListTemplate({rows: data}));
								
							}else
							{
								// 서비스 요청 처리 오류 발생 메시지
								//console.log(message);
								fn_alertInfo('E', message);
								// 서비스 요청 처리 Exception 메시지
								console.log(response.error || '');
							}
						}
					};
				},
				error: function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
					fn_alertInfo('E', errorText);
					console.log(errorText);
				},
				complete: function(jqueryXHR, status) {
					// ------------------------------------
					// http response complete
					// ------------------------------------
					app.mask.pageUnlock();
				},
				request: function(sDest, sItems, sLotNo, sOutNo, sOutSeq, sProdPlant, sFormula, sDummyId) {
					// ------------------------------------`
					// ajax request
					// ------------------------------------
					
					var params = {
							service : 'ship.dispatchHist',
							method : 'retrieveProdLotDetailsMobile',
							dest : sDest,				//착지(HMC공장코드)					
							items : sItems,				//제품코드
							lotNo : sLotNo,				//LOT No
							outNo : sOutNo,				//출고번호
							outSeq : sOutSeq,			//출고순번
							prodPlant : sProdPlant,		//생산공장
							formula : sFormula			//배합번호
							
					};
					
					app.mask.pageLock();
					
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success(sDummyId));
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			var fn_detailinit = function(id){
				//재고
				$("#"+id+"-stockVqty").html("");						
				//이전배합
				$("#"+id+"-formula-prevFormula").html("");	
				
				//피드백 여부											
				$("#"+id+"-feedbackYn").html("");
				
				//q-voc 여부
				$("#"+id+"-qvocYn").html("");
				
				//배합 변경 사유
				$("#"+id+"-changeReason").html("");
				
				//검사차수
				$("#"+id+"-seq").html("");
				
				// HTML 엘리먼트 추가
				$('#'+id).empty().append(shipMobileinspectionListTemplate());
			}
			
		</script>
		
	</tiles:putAttribute>
	<!-- [e] 페이지 레벨 스크립트 -->
</tiles:insertDefinition>
