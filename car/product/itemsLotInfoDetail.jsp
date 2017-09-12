<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.08.22] 자동차 제품 출고 이력 상세" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.car.popup">
	<%-- 본문 페이지 --%>
	<tiles:putAttribute name="page-content">
		<div class="wp-pop-layer wp-box-sizing wp-car-popup">
			<div class="wp-pop-title">
				<h1><spring:message code="TODO.KEY" text="LOT 이력 상세"/></h1>
			</div>
			<div class="wp-pop-conts wp-mr20">
				<!--content //-->
		         <div class="wp-product-title"><span id="js-items-lot-info-detail-title"></span></div>
				<!-- 주문/생산 정보 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="주문/생산 정보"/></h2>
				<!-- wp-process-wrap -->
				<div class="wp-process-wrap">
					<div class="wp-process">
						<div class="wp-quay" style="left:0%;">
							<div class="wp-state" id="js-items-lot-info-detail-pyo-orderNo"></div>
							<spring:message code="TODO.KEY" text="주문"/><span id="js-items-lot-info-detail-pyo-orderDate"></span>
						</div>
						<div class="wp-quay" style="left: 20%;">
							<div class="wp-state" id="js-items-lot-info-detail-pyo-prodOrderNo"></div>
							<spring:message code="TODO.KEY" text="제조지시"/><span id="js-items-lot-info-detail-pyo-issueDate"></span>
						</div>
						<div class="wp-quay" style="left: 50%;">
							<div class="wp-state" id="js-items-lot-info-detail-pyo-prodSt-prodOrderNo"></div>
							<spring:message code="TODO.KEY" text="생산시작"/><span id="js-items-lot-info-detail-pyo-prodStartDate"></span>
						</div>
						<div class="wp-quay" style="left: 70%;">
							<div class="wp-state" id="js-items-lot-info-detail-pyo-prodEd-prodOrderNo"></div>
							<spring:message code="TODO.KEY" text="생산종료"/><span id="js-items-lot-info-detail-pyo-prodEndDate"></span>
						</div>
						<div class="wp-quay" style="right:0%;">
							<div class="wp-state" id="js-items-lot-info-detail-pyo-outNo"></div>
							<spring:message code="TODO.KEY" text="출고"/><span id="js-items-lot-info-detail-pyo-outDate"></span>
						</div>
						<!-- <div class="wp-seatrial" style="left: 510px; width: 191px;"></div> -->
					</div>
				</div>
				<!-- //wp-process-wrap -->
		
				<!-- 주문정보 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="주문정보"/></h2>
				<div class="wp-table-st1 h-center">
					<table>
						<caption><spring:message code="TODO.KEY" text="주문정보"/></caption>
						<colgroup>
							<col style="width:14%">
							<col style="width:20%;">
							<col style="width:13%">
							<col style="width:20%;">
							<col style="width:13%">
							<col style="width:20%;">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="주문번호"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-orderNo"></span></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="거래선"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-custNm"></span></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="영업소"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-salesOfficeNm"></span></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="제품코드"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-items"></span></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="제품명"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-itemsNm"></span></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="상비구분"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-resrvId"></span></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="규격 / 단위"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-psize-unit"></span></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="주문수량"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-orderQty"></span></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="주문물량"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-orderVqty"></span></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="주문일자"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-orderDate"></span></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="주문자"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-orderEmp"></span></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="납기일자"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-limitDate"></span></td>
							</tr>	
						</tbody>
					</table>
		            </div>
		
				<!-- 생산정보 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="생산정보"/></h2>
				<div class="wp-table-st1 h-center">
					<table>
						<caption><spring:message code="TODO.KEY" text="생산정보"/></caption>
						<colgroup>
							<col style="width:14%">
							<col style="width:20%;">
							<col style="width:13%">
							<col style="width:20%;">
							<col style="width:13%">
							<col style="width:20%;">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="생산공장"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-prodPlantNm"></span></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="생산부서"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-repProdDept"></span></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="생산과"/></th>
								<td class="wp-al wp-bubble"><span id="js-items-lot-info-detail-prodDeptNm"></span></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="작업지시번호"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-prodOrderNo"></span></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="작지발행일자"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-issueDate"></span></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="작업지시량"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-prodOrderVqty"></span></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="작업구분"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-taskId"></span></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="LOT No."/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-lotNo"></span></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="Formula No."/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-formula"></span></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="수율(%)"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-yield"></span></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="생산시작일자"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-prodStartDate"></span></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="생산종료일자"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-prodEndDate"></span></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="입고일자/입고량"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-prodInDate-prodInVqty"></span></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="출고일자/출고량"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-outDate-outVqty"></span></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="재고"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-stockVqty"></span></td>
							</tr>
						</tbody>
					</table>
		            </div>
		
				<!-- 배합정보 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="배합정보"/></h2>
				<div class="wp-table-st1 h-center">
					<table>
						<caption><spring:message code="TODO.KEY" text="배합정보"/></caption>
						<colgroup>
							<col style="width:14%">
							<col style="width:20%;">
							<col style="width:13%">
							<col style="width:20%;">
							<col style="width:13%">
							<col style="width:20%;">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="배합번호"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-formula-formula"></span></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="이전배합"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-formula-prevFormula"></span></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="배합작성자"/></th>
								<td class="wp-al"><span id="js-items-lot-info-detail-formula-formulator"></span></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="최초설계부서/일자"/></th>
								<td class="wp-al" colspan="5"><span id="js-items-lot-info-detail-formula-fstDesignDept"></span>/<span id="js-items-lot-info-detail-formula-fstApprvDate"></span></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="최종설계부서/일자"/></th>
								<td class="wp-al" colspan="5"><span id="js-items-lot-info-detail-formula-lastDesignDept"></span>/<span id="js-items-lot-info-detail-formula-lastApprvDate"></span></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="변경사유"/></th>
								<td colspan="5" class="wp-al"><span id="js-items-lot-info-detail-formula-changeReason"></span></td>
							</tr>
						</tbody>
					</table>
				</div>
		
				<!-- 배합 Feedback -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="배합 Feedback"/></h2>
				<div class="wp-table-st1">
					<table>
						<caption><spring:message code="TODO.KEY" text="배합 Feedback"/></caption>
						<colgroup>
							<col style="width:100%">
						</colgroup>
						<thead>
							<th class="wp-al"><spring:message code="TODO.KEY" text="생산공장"/>: <span class="wp-mr20"><span class="wp-mr20" id="js-items-lot-info-detail-feedback-prodPlant"></span></span>
								<spring:message code="TODO.KEY" text="생산일자"/>: <span class="wp-mr20"><span class="wp-mr20" id="js-items-lot-info-detail-feedback-prodDate"></span></span>
								<spring:message code="TODO.KEY" text="제품번호"/>: <span class="wp-mr20"><span class="wp-mr20" id="js-items-lot-info-detail-feedback-lotNo"></span></span>
								<spring:message code="TODO.KEY" text="배합번호"/>: <span class="wp-mr20"><span class="wp-mr20" id="js-items-lot-info-detail-feedback-formula"></span></span> 
								<spring:message code="TODO.KEY" text="진행상태"/>: <span><span id="js-items-lot-info-detail-feedback-feedbackStatus"></span></span>
							</th>
						</thead>
						<tbody>
							<tr>
								<td><span id="js-items-lot-info-detail-feedback-reqContent"></span></td>
							</tr>
						</tbody>
					</table>
		        </div>
		
				<!-- 검사 정보 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="검사 정보"/></h2>
				<div class="wp-table-st1 h-center wp-vertical-line">
					<table id="js-items-lot-info-detail-inspection-list">
					</table>
				</div>
				
				<!-- 인검 정보 -->
		        <h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="인검 정보"/></h2>
		        <div class="wp-table-st1 h-center">
					<table>
						<caption><spring:message code="TODO.KEY" text="인검 정보"/></caption>
						<colgroup>
							<col style="width:14%">
							<col style="width:20%;">
							<col style="width:13%">
							<col style="width:20%;">
							<col style="width:13%">
							<col style="width:20%;">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="거래선"/></th>
								<td class="wp-al" id="js-items-lot-info-detail-insp-result-info-cust-codenm"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="거래선 공장"/></th>
								<td class="wp-al" id="js-items-lot-info-detail-insp-result-info-factory-codenm"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="마감 T/K"/></th>
								<td class="wp-al" id="js-items-lot-info-detail-insp-result-info-tank-code"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="조색착수일자"/></th>
								<td class="wp-al" id="js-items-lot-info-detail-insp-result-info-color-start-date"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="인검담당자(고객사)"/></th>
								<td class="wp-al" id="js-items-lot-info-detail-insp-result-info-insp-user"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="LQC 합격일자"/></th>
								<td class="wp-al" id="js-items-lot-info-detail-insp-result-info-lqc-date"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="작업자(조색사)"/></th>
								<td class="wp-al" id="js-items-lot-info-detail-insp-result-info-color-user"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="최종 승인일자"/></th>
								<td class="wp-al" id="js-items-lot-info-detail-insp-result-info-last-date"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="최종 승인"/></th>
								<td class="wp-al" id="js-items-lot-info-detail-insp-result-info-judge"></td>
							</tr>
						</tbody>
					</table>
					<table>
						<caption><spring:message code="TODO.KEY" text="인검 정보"/></caption>
						<colgroup>
							<col style="width:5%;">
							<col style="width:10%;">
							<col style="width:10%;">
							<col style="width:75;">
						</colgroup>
						<thead>
							<tr>
								<th><spring:message code="TODO.KEY" text="회차"/></th>
								<th><spring:message code="TODO.KEY" text="승인결과"/></th>
								<th><spring:message code="TODO.KEY" text="인검일자"/></th>
								<th><spring:message code="TODO.KEY" text="특이사항"/></th>
							</tr>
						</thead>
						<tbody id="js-items-lot-info-detail-insp-result-info-list">
						</tbody>
					</table>
		        </div>
				
				<!-- 품질이슈 -->
				<div class="wp-title-btn-area wp-mb10">
					<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="품질이슈"/></h2>
					<div class="wp-fr wp-vt">
						<button type="button" class="wp-btn small white bgray prev" name="js-items-lot-info-detail-paging-button" value="js-quality-issue"><span><spring:message code="TODO.KEY" text="이전"/></span></button>
						<div class="wp-btn-paging"><span class="wp-ship-fc-blue" id="js-quality-issue-current-page">1</span>/<span id="js-quality-issue-total-page">1</span></div>
						<button type="button" class="wp-btn small white bgray next" name="js-items-lot-info-detail-paging-button" value="js-quality-issue"><span><spring:message code="TODO.KEY" text="다음"/></span></button>
						<button type="button" class="wp-btn small white bblue plus" id="js-quality-issue-q-voc-link" value="js-quality-issue"><spring:message code="TODO.KEY" text="Q-VoC"/></button>
					</div>
				</div>
				<script id="js-template-quality-issue-list" type="text/x-handlebars-template">
				{{#rows}}
					<li>
						<a class="wp-title" style="cursor:default" name="js-ship-main-quality-issue-type-link"><span class="wp-proc-ship {{setIssueTypeClass issueType}}">{{issueType}}</span> {{title}} <button type="button" class="wp-btn small2 white cr3 bblue" style="cursor:default">{{stepId}}</button></a>
						<div class="wp-blue-comment wp-uppercase"><span><spring:message code="TODO.KEY" text="거래선"/>&nbsp;:&nbsp;</span>{{custNm}}<span><spring:message code="TODO.KEY" text="발생일시"/>&nbsp;:&nbsp;</span>{{occurDatetime}}<span><spring:message code="TODO.KEY" text="등록자"/>&nbsp;:&nbsp;</span>{{inputDeptNm}}&nbsp;{{inputEmpNm}}&nbsp;{{inputEmpRankNm}}</div>
						<div class="wp-blue-comment wp-uppercase"><span><spring:message code="TODO.KEY" text="발생원천"/>&nbsp;:&nbsp;</span>{{issueType}}<span><spring:message code="TODO.KEY" text="제품명"/>&nbsp;:&nbsp;</span>{{itemsNm}}<span>Lot No&nbsp;:&nbsp;</span>{{lotNo}}<span><spring:message code="TODO.KEY" text="불만유형(대)"/>&nbsp;:&nbsp;</span>{{badOcType}}<span><spring:message code="TODO.KEY" text="불만유형(소)"/>&nbsp;:&nbsp;</span>{{badReasonId}}</div>
						<div class="wp-btn-section"><button type="button" class="wp-btn small white bgray file-txt" name="js-quality-issue-link" value="{{docNo}}"><spring:message code="TODO.KEY" text="Q-VoC"/></button></div>
					</li>
				{{/rows}}
				</script>			
				<ul class="wp-ship-main-list" id="js-quality-issue-list">									
				</ul>
				<input type="hidden" name="js-items-lot-info-detail-prodPlant-val" id="js-items-lot-info-detail-prodPlant-val" value="">
				<input type="hidden" name="js-items-lot-info-detail-items-val" id="js-items-lot-info-detail-items-val" value="">
				<input type="hidden" name="js-items-lot-info-detail-lotNo-val" id="js-items-lot-info-detail-lotNo-val" value="">
				<!--//content-->
			</div>
		</div>
		
		<script id="js-template-items-lot-info-detail-inspection-list" type="text/x-handlebars-template">
		{{!-- 검사 정보 목록 --}}
		{{#if rows.length}}
			{{#rowHtmlData rows}}
			{{/rowHtmlData}}
		{{else}}
			<td class="wp-nodata"><spring:message code="TODO.KEY" text="조회된 내역이 없습니다."/></td>
		{{/if}}
		</script>
		
		<script id="js-template-items-lot-info-detail-insp-result-info-list" type="text/x-handlebars-template">
		{{#if rows.length}}
			{{#rows}}
			<tr>
				<td>{{seq}}</td>
				<td>{{judgeCodeNm}}</td>
				<td>{{custInspDatetime}}</td>
				<td>{{comments}}</td>
			</tr>
			{{/rows}}
		{{else}}
			<td class="wp-nodata" colspan="4"><spring:message code="TODO.KEY" text="조회된 내역이 없습니다."/></td>
		{{/if}}
		</script>	
	</tiles:putAttribute>
	
	
	
	<%-- 자바스크립트 --%>
	<tiles:putAttribute name="page-level-js">
		<script type="text/javascript">
			
			var itemslotinfoDetailinspectionListTemplate;
			var qualityIssueListTemplate;
			var inspResultInfoListTemplate;
			
			// ------------------------------------------------
			// Handlebar 초기화
			// ------------------------------------------------
			var initHandlebarsTemplateDetail = function(sParam) {
				
				//검사정보 영역 템플릿 컴파일
				var source = $('#js-template-items-lot-info-detail-inspection-list').html();
				itemslotinfoDetailinspectionListTemplate = Handlebars.compile(source);
				
				//그룹중 첫번째 여부 체크
				Handlebars.registerHelper('isYearYn', function(options) {
					if (this.rk == 1){
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				
				// 페이징 버튼 초기화
				initPageButton();
				
				// 품질이슈 - Q-VoC 버튼 클릭
				$('#js-quality-issue-q-voc-link').off().on('click', function(){
					window.open('http://kais.kccworld.co.kr/kaismenu/main.jsp?InitPage=S0503QmsIussReg_E&InitPage=S0503QmsIussList_Q');
			    });
				
				// ------------------------------------------------
				// 품질 이슈
				// ------------------------------------------------
				source = $('#js-template-quality-issue-list').html();
				qualityIssueListTemplate = Handlebars.compile(source);
				
				Handlebars.registerHelper('setIssueTypeClass', function(issueType) {
					issueType = issueType.trim();
					if(issueType == "클레임"){
						return "wp-sta-1";
					} else if(issueType == "컴플레인"){
						return "wp-sta-2";
					} else if(issueType == "기술지원"){
						return "wp-sta-3";
					} else {
						return "";
					}
				});
				
				// ------------------------------------------------
				// 인검 정보
				// ------------------------------------------------
				source = $('#js-template-items-lot-info-detail-insp-result-info-list').html();
				inspResultInfoListTemplate = Handlebars.compile(source);
				
				Handlebars.registerHelper('setDateFormatHyphen', function(date) {
					date = date + "";
					if(date.length == 8){
						return date.substring(0, 4) + "-" + date.substring(4, 6) + "-" + date.substring(6, 8); 
					} else {
						return date;
					}
				});
				
				Handlebars.registerHelper('setIndex', function(value) {
					return Number(value) + 1;
				});	
	
			};
			
			// ++++++++++++++++++++++++++++++++++++++++++++++++
			// Handlebars Helper 클래스
			// ++++++++++++++++++++++++++++++++++++++++++++++++
			var docHtmlHandlebarHelper = {
				rowHtmlData: function(data){
					
					// 검사정보 Table thead data
					var headArray = new Array();
					// 검사정보 검사항목 목록 data
					var inspItemArray = new Array();
					var jobj = new Object();
					var jhobj = new Object();
					var inspInfos = data;
					// 검사정보 thead, 검사항목 목록 취합
					for(var i=0; i<inspInfos.length; i++){
						jobj = new Object();
						jobj.inspItem = inspInfos[i].inspItem;		// 검사항목
						jobj.condition = inspInfos[i].condition;	// 검사조건
						jobj.range = inspInfos[i].range;			// 검사범위
						jobj.all = inspInfos[i].inspItem + "/" + inspInfos[i].condition + "/" + inspInfos[i].range;
						
						if(JSON.stringify(inspItemArray).indexOf(jobj.all) == -1){
							inspItemArray.push(jobj);
						}
						
						jhobj = new Object();
						jhobj.seq = inspInfos[i].seq;			// 차수
						jhobj.inspDate = inspInfos[i].inspDate;	// 일자
						jhobj.lotNoformulaNo = inspInfos[i].lotNo + "&nbsp;-&nbsp;" + inspInfos[i].formula;	// 넘버
						jhobj.all = inspInfos[i].seq + "/" + inspInfos[i].inspDate + "/" + inspInfos[i].lotNo + "-" + inspInfos[i].formula;
						if(JSON.stringify(headArray).indexOf(jhobj.all) == -1){
							headArray.push(jhobj);
						}
					}
					
					// 검사정보 Table thead html
					var headHtml = "<caption><spring:message code='TODO.KEY' text='검사 정보'/></caption>";
					// 검사정보 Table thead 1단 html
					var headerTitle1 = "";
					// 검사정보 Table thead 2단 html
					var headerTitle2 = "";
					// 검사정보 Table thead 3단 html
					var headerTitle3 = "";
					
					// 검사정보 Table thead html 생성
					for(var i=0; i<headArray.length; i++){
						if(i == 0){
							headHtml += "<colgroup>";
							headHtml += "<col span=\"" + (headArray.length*2+3) + "\" style=\"width:auto\">";
							headHtml += "</colgroup>";
							headHtml += "<thead>";
							
							headerTitle1 += "<th rowspan=\"3\"><spring:message code='TODO.KEY' text='검사항목'/></th>";
							headerTitle1 += "<th rowspan=\"3\"><spring:message code='TODO.KEY' text='검사조건'/></th>";
							headerTitle1 += "<th rowspan=\"3\"><spring:message code='TODO.KEY' text='검사범위'/></th>";
						}
						jhobj = headArray[i];
						
						headerTitle1 += "<th>" + jhobj.seq + "</th>";
						headerTitle1 += "<th>" + jhobj.inspDate + "</th>";
						
						headerTitle2 += "<th colspan=\"2\">" + jhobj.lotNoformulaNo + "</th>";
						
						headerTitle3 += "<th><spring:message code='TODO.KEY' text='검사값'/></th>";
						headerTitle3 += "<th><spring:message code='TODO.KEY' text='판정'/></th>";
					}
					headHtml += "<tr>";
					headHtml += headerTitle1;
					headHtml += "</tr>";
					headHtml += "<tr>";
					headHtml += headerTitle2;
					headHtml += "</tr>";
					headHtml += "<tr>";
					headHtml += headerTitle3;
					headHtml += "</tr>";
					headHtml += "</thead>";
					
					// 검사정보 Table tbody html
					var bodyHtml = "<tbody>";
					var checkValue = "";
					var checkFlag = false;
					
					// 검사정보 Table tbody html 생성
					for(var i=0; i<inspItemArray.length; i++){
						bodyHtml += "<tr>";
						jobj = inspItemArray[i];
						bodyHtml += "<td>" + jobj.inspItem + "</td>";							// 검사항목
						bodyHtml += "<td class=\"wp-bubble\">" + jobj.condition + "</td>";		// 검사조건
						bodyHtml += "<td>" + jobj.range + "</td>";								// 검사범위
						for(var j=0; j<headArray.length; j++){
							jhobj = headArray[j];
							checkValue = jobj.all + "/" + jhobj.all;
							checkFlag = false;
							for(var k=0; k<inspInfos.length; k++){
								if(checkValue == inspInfos[k].inspItem + "/" + inspInfos[k].condition + "/" + inspInfos[k].range + "/" + inspInfos[k].seq + "/" + inspInfos[k].inspDate + "/" + inspInfos[k].lotNo + "-" + inspInfos[k].formula){
									bodyHtml += "<td>" + inspInfos[k].result + "</td>";			// 검사값
									bodyHtml += "<td>" + inspInfos[k].passYn + "</td>";			// 판정	
									checkFlag = true;
									break;
								}
							}
							if(!checkFlag){
								bodyHtml += "<td></td>";
								bodyHtml += "<td></td>";
							}
						}
						bodyHtml += "</tr>";
					}
					bodyHtml += "</tbody>";
					
					return new Handlebars.SafeString(headHtml + bodyHtml);
					
				},			
				init: function() {
					if (typeof Handlebars !== 'undefined') {
						Handlebars.registerHelper("rowHtmlData", this.rowHtmlData);
					}
				}			
			};	
			
			var fn_detailinit = function(){
				
				// 상세내역 초기화
				// 타이틀및 이미지 데이터 영역
				$('#js-items-lot-info-detail-title').text("");
				$('#js-items-lot-info-detail-pyo-orderNo').text("");
				$('#js-items-lot-info-detail-pyo-orderDate').text("");
				$('#js-items-lot-info-detail-pyo-prodOrderNo').text("");
				$('#js-items-lot-info-detail-pyo-issueDate').text("");
				$('#js-items-lot-info-detail-pyo-prodSt-prodOrderNo').text("");
				$('#js-items-lot-info-detail-pyo-prodStartDate').text("");
				$('#js-items-lot-info-detail-pyo-prodEd-prodOrderNo').text("");
				$('#js-items-lot-info-detail-pyo-prodEndDate').text("");
				$('#js-items-lot-info-detail-pyo-outNo').text("");
				$('#js-items-lot-info-detail-pyo-outDate').text("");
		
				// 주문정보 영역
				$('#js-items-lot-info-detail-orderNo').text("");
				$('#js-items-lot-info-detail-custNm').text("");
				$('#js-items-lot-info-detail-salesOfficeNm').text("");
				$('#js-items-lot-info-detail-items').text("");
				$('#js-items-lot-info-detail-itemsNm').text("");
				$('#js-items-lot-info-detail-resrvId').text("");
				$('#js-items-lot-info-detail-psize-unit').text("");
				$('#js-items-lot-info-detail-orderQty').text("");
				$('#js-items-lot-info-detail-orderVqty').text("");
				$('#js-items-lot-info-detail-orderDate').text("");
				$('#js-items-lot-info-detail-orderEmp').text("");
				$('#js-items-lot-info-detail-limitDate').text("");
			
				// 생산정보 영역
				$('#js-items-lot-info-detail-prodPlantNm').text("");
				$('#js-items-lot-info-detail-repProdDept').text("");
				$('#js-items-lot-info-detail-prodDeptNm').text("");
				$('#js-items-lot-info-detail-prodOrderNo').text("");
				$('#js-items-lot-info-detail-issueDate').text("");
				$('#js-items-lot-info-detail-prodOrderVqty').text("");
				$('#js-items-lot-info-detail-taskId').text("");
				$('#js-items-lot-info-detail-lotNo').text("");
				$('#js-items-lot-info-detail-formula').text("");
				$('#js-items-lot-info-detail-yield').text("");
				$('#js-items-lot-info-detail-prodStartDate').text("");
				$('#js-items-lot-info-detail-prodEndDate').text("");
				$('#js-items-lot-info-detail-prodInDate-prodInVqty').text("");
				$('#js-items-lot-info-detail-outDate-outVqty').text("");
				$('#js-items-lot-info-detail-stockVqty').text("");
				
				// 배합정보 영역
				$('#js-items-lot-info-detail-formula-formula').text("");
				$('#js-items-lot-info-detail-formula-prevFormula').text("");
				$('#js-items-lot-info-detail-formula-formulator').text("");
				$('#js-items-lot-info-detail-formula-changeReason').text("");
				$('#js-items-lot-info-detail-formula-fstDesignDept').text("");
				$('#js-items-lot-info-detail-formula-fstApprvDate').text("");
				$('#js-items-lot-info-detail-formula-lastDesignDept').text("");
				$('#js-items-lot-info-detail-formula-lastApprvDate').text("");
		
				// 배합Feedback 영역
				$('#js-items-lot-info-detail-feedback-prodPlant').text("");
				$('#js-items-lot-info-detail-feedback-prodDate').text("");
				$('#js-items-lot-info-detail-feedback-lotNo').text("");
				$('#js-items-lot-info-detail-feedback-formula').text("");
				$('#js-items-lot-info-detail-feedback-feedbackStatus').text("");
				$('#js-items-lot-info-detail-feedback-reqContent').text("");
				
				// 인검 정보
				$("#js-items-lot-info-detail-insp-result-info-cust-codenm").text("");
				$("#js-items-lot-info-detail-insp-result-info-factory-codenm").text("");
				$("#js-items-lot-info-detail-insp-result-info-tank-code").text("");
				$("#js-items-lot-info-detail-insp-result-info-color-start-date").text("");
				$("#js-items-lot-info-detail-insp-result-info-insp-user").text("");
				$("#js-items-lot-info-detail-insp-result-info-lqc-date").text("");
				$("#js-items-lot-info-detail-insp-result-info-color-user").text("");
				$("#js-items-lot-info-detail-insp-result-info-last-date").text("");
				$("#js-items-lot-info-detail-insp-result-info-judge").text("");
			}
			
			// ------------------------------------------------
			// 주문/생산 상세내역 조회 - 자동차 별도 서비스 추가됨에 따라 공통 사용에서 별도로 추가. 2017-06-28 백춘만.
			// ------------------------------------------------
			var retrieveCarOrderInfoDetail = {
				success : function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							
							//타이틀 및 표영역
							$('#js-items-lot-info-detail-title').text(response.rs.prodInfo[0].lotNo + "(" + response.rs.orderInfo[0].itemsNm + ")");
							$('#js-items-lot-info-detail-pyo-orderNo').text(response.rs.orderInfo[0].orderNo);
							$('#js-items-lot-info-detail-pyo-orderDate').text(response.rs.orderInfo[0].orderDate);
							$('#js-items-lot-info-detail-pyo-prodOrderNo').text(response.rs.prodInfo[0].prodOrderNo);
							$('#js-items-lot-info-detail-pyo-issueDate').text(response.rs.prodInfo[0].issueDate);
							$('#js-items-lot-info-detail-pyo-prodSt-prodOrderNo').text(response.rs.prodInfo[0].prodOrderNo);
							$('#js-items-lot-info-detail-pyo-prodStartDate').text(response.rs.prodInfo[0].prodStartDate);
							$('#js-items-lot-info-detail-pyo-prodEd-prodOrderNo').text(response.rs.prodInfo[0].prodOrderNo);
							$('#js-items-lot-info-detail-pyo-prodEndDate').text(response.rs.prodInfo[0].prodEndDate);
							$('#js-items-lot-info-detail-pyo-outNo').text(response.rs.prodInfo[0].outNo);
							$('#js-items-lot-info-detail-pyo-outDate').text(response.rs.prodInfo[0].outDate);				
							
							//주문정보 영역
							$('#js-items-lot-info-detail-orderNo').text(response.rs.orderInfo[0].orderNo);
							$('#js-items-lot-info-detail-custNm').text(response.rs.orderInfo[0].custNm);
							$('#js-items-lot-info-detail-salesOfficeNm').text(response.rs.orderInfo[0].salesOfficeNm);
							$('#js-items-lot-info-detail-items').text(response.rs.orderInfo[0].items);
							$('#js-items-lot-info-detail-itemsNm').text(response.rs.orderInfo[0].itemsNm);
							$('#js-items-lot-info-detail-resrvId').text(response.rs.orderInfo[0].resrvId);
							$('#js-items-lot-info-detail-psize-unit').text(response.rs.orderInfo[0].psize + " / " + response.rs.orderInfo[0].unit);
							$('#js-items-lot-info-detail-orderQty').text($.number(parseInt(response.rs.orderInfo[0].orderQty)));
							$('#js-items-lot-info-detail-orderVqty').text($.number(parseInt(response.rs.orderInfo[0].orderVqty)));
							$('#js-items-lot-info-detail-orderDate').text(response.rs.orderInfo[0].orderDate);
							$('#js-items-lot-info-detail-orderEmp').text(response.rs.orderInfo[0].orderEmp);
							$('#js-items-lot-info-detail-limitDate').text(response.rs.orderInfo[0].limitDate);					
						
							//생산정보 영역
							$('#js-items-lot-info-detail-prodPlantNm').text(response.rs.prodInfo[0].prodPlant);
							$('#js-items-lot-info-detail-repProdDept').text(response.rs.prodInfo[0].fstDesignDept);
							$('#js-items-lot-info-detail-prodDeptNm').text(response.rs.prodInfo[0].prodDept);
							$('#js-items-lot-info-detail-prodOrderNo').text(response.rs.prodInfo[0].prodOrderNo);
							$('#js-items-lot-info-detail-issueDate').text(response.rs.prodInfo[0].issueDate);
							$('#js-items-lot-info-detail-prodOrderVqty').text($.number(parseInt(response.rs.prodInfo[0].prodOrderVqty)));
							$('#js-items-lot-info-detail-taskId').text(response.rs.prodInfo[0].taskId);
							$('#js-items-lot-info-detail-lotNo').text(response.rs.prodInfo[0].lotNo);
							$('#js-items-lot-info-detail-formula').text(response.rs.prodInfo[0].formula);					
							$('#js-items-lot-info-detail-yield').text($.number(response.rs.prodInfo[0].yield, 1));
							$('#js-items-lot-info-detail-prodStartDate').text(response.rs.prodInfo[0].prodStartDate);
							$('#js-items-lot-info-detail-prodEndDate').text(response.rs.prodInfo[0].prodEndDate);
							$('#js-items-lot-info-detail-prodInDate-prodInVqty').text(response.rs.prodInfo[0].prodInDate + " / " + $.number(parseInt(response.rs.prodInfo[0].prodInVqty)));
							$('#js-items-lot-info-detail-outDate-outVqty').text(response.rs.prodInfo[0].outDate + " / " + $.number(parseInt(response.rs.prodInfo[0].outVqty)));
							$('#js-items-lot-info-detail-stockVqty').text($.number(parseInt(response.rs.prodInfo[0].stockVqty)));
							
							if(response.rs.prodInfo != null && response.rs.prodInfo.length > 0){
								
								//배합정보
								$('#js-items-lot-info-detail-formula-formula').text(response.rs.prodInfo[0].formula);
								$('#js-items-lot-info-detail-formula-prevFormula').text(response.rs.prodInfo[0].prevFormula);
								$('#js-items-lot-info-detail-formula-formulator').text(response.rs.prodInfo[0].formulator);
								$('#js-items-lot-info-detail-formula-changeReason').text(response.rs.prodInfo[0].formulaChgReason);
								$('#js-items-lot-info-detail-formula-fstDesignDept').text(response.rs.prodInfo[0].fstDesignDept);
								$('#js-items-lot-info-detail-formula-fstApprvDate').text(response.rs.prodInfo[0].fstApprvDate);
								$('#js-items-lot-info-detail-formula-lastDesignDept').text(response.rs.prodInfo[0].lastDesignDept);
								$('#js-items-lot-info-detail-formula-lastApprvDate').text(response.rs.prodInfo[0].lastApprvDate);
								
								//배합Feedback
								$('#js-items-lot-info-detail-feedback-prodPlant').text(response.rs.prodInfo[0].prodPlant);
								$('#js-items-lot-info-detail-feedback-prodDate').text(response.rs.prodInfo[0].prodDate);
								$('#js-items-lot-info-detail-feedback-lotNo').text(response.rs.prodInfo[0].lotNo);
								$('#js-items-lot-info-detail-feedback-formula').text(response.rs.prodInfo[0].formula);
								$('#js-items-lot-info-detail-feedback-feedbackStatus').text(response.rs.prodInfo[0].feedbackStatus);
								$('#js-items-lot-info-detail-feedback-reqContent').text(response.rs.prodInfo[0].reqContent);
								
							}
							
							// TODO
							var data = {
								rows : response.rs.inspInfo
							};
							
							//검사정보 리스트
							var html = itemslotinfoDetailinspectionListTemplate(data);							
							$('#js-items-lot-info-detail-inspection-list').empty().append(html);
							
							
							//인검정보 영역
							data = {
								rows : response.rs.custInspInfo || {}
							};
							
							//인검정보 리스트
							var html = inspResultInfoListTemplate(data);							
							$('#js-items-lot-info-detail-insp-result-info-list').empty().append(html);
							
							if(data.rows.length > 0){
								var inspInfo = data.rows;
								
								inspInfo.sort(function(a,b) {
									    if ( a.custInspDatetime+"/"+a.seq > b.custInspDatetime+"/"+b.seq )
									        return -1;
									    if ( a.custInspDatetime+"/"+a.seq < b.custInspDatetime+"/"+b.seq )
									        return 1;
									    return 0;
								});
								$("#js-items-lot-info-detail-insp-result-info-cust-codenm").text(inspInfo[0].custCodeNm);
								$("#js-items-lot-info-detail-insp-result-info-factory-codenm").text(inspInfo[0].custFactoryCodeNm);
								$("#js-items-lot-info-detail-insp-result-info-tank-code").text(inspInfo[0].tankCode);
								$("#js-items-lot-info-detail-insp-result-info-color-start-date").text(inspInfo[0].colorStartDatetime);
								$("#js-items-lot-info-detail-insp-result-info-insp-user").text(inspInfo[0].inspUser);
								$("#js-items-lot-info-detail-insp-result-info-lqc-date").text(inspInfo[0].lqcinspDatetime);
								$("#js-items-lot-info-detail-insp-result-info-color-user").text(inspInfo[0].colorUserId);
								$("#js-items-lot-info-detail-insp-result-info-last-date").text(inspInfo[0].custInspDatetime);
								$("#js-items-lot-info-detail-insp-result-info-judge").text(inspInfo[0].judgeCodeNm);
							}
							
							//품질이슈 호출
							retrieveQualityIssue.request();
							
						} else {
							// 서비스 요청 처리 오류 발생 메시지
							//console.log(message);
							fn_alertInfo('E', message);
							// 서비스 요청 처리 Exception 메시지
							console.log(response.error || '');
						}
					}
				},
				error : function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
					fn_alertInfo('E', errorText);
				},
				complete : function(jqueryXHR, status) {
					// ------------------------------------
					// http response complete
					// ------------------------------------
					app.mask.pageUnlock();
				},
				request : function(sDest, sItems, sLotNo, sOutNo, sOutSeq, sProdPlant, sFormula, outDate, outVqty, repOrderNo, orderId) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					
					//상세내역 초기화
					fn_detailinit();
					
					//페이징 처리로 인해 히든정보를 저장한다.
					$('#js-items-lot-info-detail-prodPlant-val').val(sProdPlant); 
					$('#js-items-lot-info-detail-items-val').val(sItems);
					$('#js-items-lot-info-detail-lotNo-val').val(sLotNo);
					
					console.log("cust : "+ sDest);
					console.log("outNo : "+ sOutNo);
					
					var params = {
						service 	: 'car.prodDispatch',
						method 		: 'retrieveProdDispatchDtInfo',
						cust   		: sDest,							// 착지(HMC공장코드)
						items 		: sItems,							// 제품코드
						lotNo 		: sLotNo,							// LOT No
						outNo 		: sOutNo,							// 출고번호
						outSeq 		: sOutSeq,							// 출고순번
						prodPlant 	: sProdPlant,						// 생산공장
						formula 	: sFormula,							// 배합번호
						outDate 	: outDate.replace(/-/gi, ""),		//
						outVqty 	: outVqty,							//
						repOrderNo 	: repOrderNo,						//
						orderId 	: orderId							//
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			// ------------------------------------------------
			// 품질이슈 - Q-VoC 링크 처리
			// ------------------------------------------------
			var initQualityIssueQVoCLink = function() {
				
				$('button[name=js-quality-issue-link]').off().on('click', function(){
					var docNo = $(this).val();
					window.open('http://kais.kccworld.co.kr/kaislogin.jsp?InitPage=S0503QmsIussReg_E&paramName1=' + docNo);
			    });
				
				$('a[name=js-items-lot-info-detail-quality-issue-type-link]').off().on('click', function(e){
					e.preventDefault();
			    });
				
			}
			
			
			// ------------------------------------------------
			// 페이징 버튼 초기화
			// ------------------------------------------------
			var initPageButton = function() {
		
				// 페이징 버튼 처리
				$('button[name=js-items-lot-info-detail-paging-button]').off().on('click', function(){
					
					var $currPage  = $("#" + $(this).val() + "-current-page");
					var $totalPage = $("#" + $(this).val() + "-total-page");
					
					var currPage  = Number($currPage.text());
					var totalPage = Number($totalPage.text());
					var paramPage = 0;
					
					// 이전
					if($(this).hasClass('prev')){
						if(currPage == null || currPage == 0 || currPage == 1){
							return;
						}
						paramPage = currPage - 1;
					} 
					// 다음
					else if($(this).hasClass('next')){
						if(currPage == null || currPage == totalPage){
							return;
						}
						paramPage = currPage + 1;
					}
					
					// 품질 이슈
					if($(this).val() == "js-quality-issue"){
						retrieveQualityIssue.request(paramPage);
						return;
					}
			    });
			}
			
			// ------------------------------------------------
			// 품질 이슈 조회
			// ------------------------------------------------
			var retrieveQualityIssue = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
	
						if (message === 'OK') {
							
							var data = {
									rows : response.rs.qvocInfo
							};
							
							var result = qualityIssueListTemplate(data);
							$("#js-quality-issue-list").empty().append(result);
							
							initQualityIssueQVoCLink();
							
							// 페이징 처리
							if(response.rs.qvocInfo.length > 0){
								$('#js-quality-issue-current-page').text(response.rs.qvocInfo[0].currPage);
								$('#js-quality-issue-total-page').text(response.rs.qvocInfo[0].totalPage);
	
								if(response.rs.qvocInfo[0].currPage == 1){
									$('button[name=js-items-lot-info-detail-paging-button][value=js-quality-issue].prev').addClass("disable");
								} else {
									$('button[name=js-items-lot-info-detail-paging-button][value=js-quality-issue].prev').removeClass("disable");
								}
								if(response.rs.qvocInfo[0].currPage == response.rs.qvocInfo[0].totalPage){
									$('button[name=js-items-lot-info-detail-paging-button][value=js-quality-issue].next').addClass("disable");
								} else {
									$('button[name=js-items-lot-info-detail-paging-button][value=js-quality-issue].next').removeClass("disable");
								}
							} else {
								$('button[name=js-items-lot-info-detail-paging-button][value=js-quality-issue]').addClass("disable");
							}
							
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
				request: function(currPage) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					if(currPage == null || currPage == 0){
						currPage = 1;
						app.mask.pageLock();
					}
					
					var sProdPlant = $('#js-items-lot-info-detail-prodPlant-val').val(); 
					var sItems = $('#js-items-lot-info-detail-items-val').val();
					var sLotNo = $('#js-items-lot-info-detail-lotNo-val').val();
					
					var params = {
						service: 'car.prodDispatch',
						method: 'retrieveQvocInfo',
						prodPlant : sProdPlant,
						items : sItems,
						lotNo : sLotNo,
						currPage: currPage
					};
	
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			// ++++++++++++++++++++++++++++++++++++++++++++++++
			// 자동차 제품 출고 이력 상세 페이지
			// ++++++++++++++++++++++++++++++++++++++++++++++++
			var pageBodyHandler = {
				init: function() {
					// ------------------------------------
					// init 메소드
					// ------------------------------------
					
					initHandlebarsTemplateDetail();
					docHtmlHandlebarHelper.init();
					
					retrieveCarOrderInfoDetail.request('${param.sDest}', '${param.sItems}', '${param.sLotNo}', '${param.sOutNo}'
							, '${param.sOutSeq}', '${param.sProdPlant}', '${param.sFormula}', '${param.outDate}', '${param.outVqty}'
							, '${param.repOrderNo}', '${param.orderId}');
					
				}
			};
	
		</script>
	</tiles:putAttribute>
	
</tiles:insertDefinition>
