<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.04.11] car 도장공정정보-색상 검사" %>
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
				<h1><spring:message code='TODO.KEY' text='색상검사'/></h1>
				<div class="wp-location"><span><spring:message code='TODO.KEY' text='도장공정'/></span><span class="wp-fc-54"><spring:message code='TODO.KEY' text='색상검사'/></span></div>
			</header>
			<div class="wp-table-width">
				<!-- tab -->
				<ul class="wp-prod-tab wp-two">
					<li><a href="/car/inspection/carColorInspInfo.do"><spring:message code='TODO.KEY' text='색상검사'/></a></li>
					<li><a href="/car/inspection/carColorInspDetailBb.do" class="active"><spring:message code='TODO.KEY' text='색상검사 분석'/></a></li>
				</ul>
				<ul id="js-car-color-insp-detail-searchid" class="wp-info-title wp-prod3-popup">
					<li><a href="/car/inspection/carColorInspDetailBb.do" searchid="SI01"><spring:message code='TODO.KEY' text='Body/Bumper  측정값 비교'/></a></li>
					<li><a href="/car/inspection/carColorInspDetailLab.do" class="active" searchid="SI02"><spring:message code='TODO.KEY' text='L, a, b 수치 비교'/></a></li>
					<li><a href="/car/inspection/carColorInspDetailClrDiff.do" searchid="SI03"><spring:message code='TODO.KEY' text='색차 비교'/></a></li>
				</ul>
				<div class="wp-step-area wp-color">
					<ul>
						<li id="js-car-color-insp-detail-lab-step1-active" class="active"><span><spring:message code='TODO.KEY' text='대상 조회'/></span></li>
						<li id="js-car-color-insp-detail-lab-step2-active" class=""><span><spring:message code='TODO.KEY' text='대상 선택'/></span></li>
						<li id="js-car-color-insp-detail-lab-step3-active" class=""><span><spring:message code='TODO.KEY' text='대상 확인'/></span></li>
						<li id="js-car-color-insp-detail-lab-step4-active" class=""><span><spring:message code='TODO.KEY' text='분석 결과'/></span></li>
					</ul>
				</div>
				<!-- //tab -->
				<div id="js-car-color-insp-detail-lab-step1-div">
					<!-- title area -->
					<div class="wp-info-btn-area">
						<div class="wp-fl">
							<button type="button" id="js-car-color-insp-detail-lab-step1-select-object" class="wp-btn blue1 cr3 wp-btn-next"><spring:message code='TODO.KEY' text='색상 검사 대상 선택'/><span></span></button>
						</div>
						<div class="wp-fr">
							<!-- <button type="button" id="js-car-color-insp-detail-lab-step1-search-color-inspection-analysis-history" class="wp-btn small grayblue cr3"><spring:message code='TODO.KEY' text='색상 검사 분석 이력 조회'/></button> -->
						</div>
					</div>
					<!-- //title area -->
					<!-- table -->
					<div class="wp-table-st1 h-center">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:10%">
								<col style="width:80%">
								<col style="width:8%">
							</colgroup>
							<tbody id="js-car-color-insp-detail-lab-step1-search-requirement-list-append">
							</tbody>
						</table>
					</div>
					<!-- //table -->
					<div class="wp-btn-area wp-ar">
						<button type="button" id="js-car-color-insp-detail-lab-step1-search-button" class="wp-btn big blue1 cr3"><spring:message code='TODO.KEY' text='조회'/></button>
					</div>
					<!-- table -->
					<div class="wp-title-section wp-no-line wp-mt30">
						<h2 class="wp-section-title"><spring:message code='TODO.KEY' text='검사 대상'/> (<span id="js-car-color-insp-detail-lab-step1-selected-body-cnt">-</span><spring:message code='TODO.KEY' text='건 선택'/>)</h2>
						<div class="wp-fr"><spring:message code='TODO.KEY' text='전체'/> <span id="js-car-color-insp-detail-lab-step1-total-body-cnt">-</span> <spring:message code='TODO.KEY' text='건'/></div>
					</div>
					<div class="wp-table-st2 wp-sel-radio wp-h421">
						<div class="wp-table-resp-header"></div>
						<div class="wp-table-resp-body">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:5%">
									<col style="width:9%">
									<col style="width:8%">
									<col style="width:13%">
									<col style="width:16%">
									<col style="width:9%">
									<col style="width:10%">
									<col style="width:10%">
									<col style="width:10%">
									<col style="width:10%">
								</colgroup>
								<thead>
									<tr>
										<th style="width:5%"><div class="wp-table-resp-headcont"><span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" id="js-car-color-insp-detail-lab-step1-body-select-all"></span></div></th>
										<th style="width:9%"><div class="wp-table-resp-headcont"><spring:message code='TODO.KEY' text='검사일자'/></div></th>
										<th style="width:8%"><div class="wp-table-resp-headcont"><spring:message code='TODO.KEY' text='공장'/></div></th>
										<th style="width:13%"><div class="wp-table-resp-headcont"><spring:message code='TODO.KEY' text='차종'/></div></th>
										<th style="width:16%"><div class="wp-table-resp-headcont"><spring:message code='TODO.KEY' text='칼라'/></div></th>
										<th style="width:8%"><div class="wp-table-resp-headcont"><spring:message code='TODO.KEY' text='검사장소'/></div></th>
										<th style="width:10%"><div class="wp-table-resp-headcont"><spring:message code='TODO.KEY' text='Body No.'/></div></th>
										<th style="width:10%"><div class="wp-table-resp-headcont"><spring:message code='TODO.KEY' text='Lot No.'/></div></th>
										<th style="width:10%"><div class="wp-table-resp-headcont"><spring:message code='TODO.KEY' text='도장일자'/></div></th>
										<th style="width:10%"><div class="wp-table-resp-headcont"><spring:message code='TODO.KEY' text='부스 No.'/></div></th>
									</tr>
								</thead>
								<tbody id="js-car-color-insp-detail-lab-step1-body-list">
									<tr>
										<td colspan="10" class="wp-nodata"><spring:message code='TODO.KEY' text='조회된 내역이 없습니다. '/></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- //table -->
				</div>
				<div id="js-car-color-insp-detail-lab-step2-div" style="display: none">
					<!-- title area -->
					<div class="wp-info-btn-area">
						<div class="wp-fl">
							<button type="button" id="js-car-color-insp-detail-lab-step2-go-back-step1-button" class="wp-btn darkgray cr3 wp-btn-prev"><span></span><spring:message code='TODO.KEY' text='이전'/></button>
							<button type="button" id="js-car-color-insp-detail-lab-step2-verify-object" class="wp-btn blue1 cr3 wp-btn-next"><spring:message code='TODO.KEY' text='색상 검사 대상 확인'/><span></span></button>
							<!-- <button type="button" id="js-car-color-insp-detail-lab-step2-cancle-button" class="wp-btn gray cr3"><spring:message code='TODO.KEY' text='취소'/></button> -->
						</div>
						<div class="wp-fr">
							<!-- <button type="button" class="wp-btn small grayblue cr3"><spring:message code='TODO.KEY' text='색상 검사 분석 이력 조회'/></button> -->
						</div>
					</div>
					<!-- //title area -->
	
					<div class="wp-style-sel wp-mt20 wp-mb20">
						<!-- Body 와 Bumper가 모두 선택된 경우 // li에 add class="wp-color-Bb" -->
						<ul id="js-car-color-insp-detail-lab-step2-body-bumper-selected-list">
						</ul>
					</div>
	
					<!-- table -->
					<div class="wp-title-section wp-no-line">
						<h2 class="wp-section-title"><spring:message code='TODO.KEY' text='대상 조회'/></h2>
					</div>
					<div class="wp-table-st2 wp-sel-radio wp-h216">
						<div class="wp-table-resp-header"></div>
						<div class="wp-table-resp-body">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:10%">
									<col style="width:9%">
									<col style="width:8%">
									<col style="width:13%">
									<col style="width:16%">
									<col style="width:9%">
									<col style="width:9%">
									<col style="width:9%">
									<col style="width:9%">
									<col style="width:8%">
								</colgroup>
								<thead>
									<tr>
										<th style="width:10%"><div class="wp-table-resp-headcont"><spring:message code='TODO.KEY' text='그룹 No.'/></div></th>
										<th style="width:9%"><div class="wp-table-resp-headcont"><spring:message code='TODO.KEY' text='검사일자'/></div></th>
										<th style="width:8%"><div class="wp-table-resp-headcont"><spring:message code='TODO.KEY' text='공장'/></div></th>
										<th style="width:13%"><div class="wp-table-resp-headcont"><spring:message code='TODO.KEY' text='차종'/></div></th>
										<th style="width:16%"><div class="wp-table-resp-headcont"><spring:message code='TODO.KEY' text='칼라'/></div></th>
										<th style="width:9%"><div class="wp-table-resp-headcont"><spring:message code='TODO.KEY' text='검사장소'/></div></th>
										<th style="width:9%"><div class="wp-table-resp-headcont"><spring:message code='TODO.KEY' text='Body No.'/></div></th>
										<th style="width:9%"><div class="wp-table-resp-headcont"><spring:message code='TODO.KEY' text='Lot No.'/></div></th>
										<th style="width:9%"><div class="wp-table-resp-headcont"><spring:message code='TODO.KEY' text='도장일자'/></div></th>
										<th style="width:8%"><div class="wp-table-resp-headcont"><spring:message code='TODO.KEY' text='부스 No.'/></div></th>
									</tr>
								</thead>
								<tbody id="js-car-color-insp-detail-lab-step2-body-list">
									<tr>
										<td colspan="10" class="wp-nodata"><spring:message code='TODO.KEY' text='조회된 내역이 없습니다. '/></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- //table -->
				</div>
				<div id="js-car-color-insp-detail-lab-step3-div" style="display: none">
					<!-- title area -->
					<div class="wp-info-btn-area">
						<div class="wp-fl">
							<button type="button" id="js-car-color-insp-detail-lab-step3-go-back-step2-button" class="wp-btn darkgray cr3 wp-btn-prev"><span></span><spring:message code='TODO.KEY' text='이전'/></button>
							<button type="button" id="js-car-color-insp-detail-lab-step3-result-analysis" class="wp-btn blue1 cr3 wp-btn-next"><spring:message code='TODO.KEY' text='색상 검사 결과 분석'/><span></span></button>
							<input type="hidden" id="js-car-color-insp-detail-lab-step3-gDocNo" value="">
							<!-- <button type="button" class="wp-btn gray cr3"><spring:message code='TODO.KEY' text='취소'/></button> -->
						</div>
						<div class="wp-fr">
							<!-- <button type="button" class="wp-btn small grayblue cr3"><spring:message code='TODO.KEY' text='색상 검사 분석 이력 조회'/></button> -->
						</div>
					</div>
					<!-- //title area -->
					<!-- table -->
					<div class="wp-title-section wp-no-line">
						<h2 class="wp-section-title"><spring:message code='TODO.KEY' text='색상 검사 대상'/></h2>
					</div>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:7%">
								<col style="width:7%">
								<col style="width:8%">
								<col style="width:7%">
								<col style="width:13%">
								<col style="width:16%">
								<col style="width:8%">
								<col style="width:9%">
								<col style="width:9%">
								<col style="width:8%">
								<col style="width:8%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code='TODO.KEY' text='구분'/></th>
									<th><spring:message code='TODO.KEY' text='측정대상'/></th>
									<th><spring:message code='TODO.KEY' text='검사일자'/></th>
									<th><spring:message code='TODO.KEY' text='공장'/></th>
									<th><spring:message code='TODO.KEY' text='차종'/></th>
									<th><spring:message code='TODO.KEY' text='칼라'/></th>
									<th><spring:message code='TODO.KEY' text='검사장소'/></th>
									<th><spring:message code='TODO.KEY' text='Body No.'/></th>
									<th><spring:message code='TODO.KEY' text='Lot No.'/></th>
									<th><spring:message code='TODO.KEY' text='도장일자'/></th>
									<th><spring:message code='TODO.KEY' text='부스 No.'/></th>
								</tr>
							</thead>
							<tbody id="js-car-color-insp-detail-lab-step3-inspection-object-list">
							</tbody>
						</table>
					</div>
					<!-- //table -->
					
					<!-- table -->
					<div class="wp-title-section wp-no-line">
						<h2 class="wp-section-title"><spring:message code='TODO.KEY' text='분석 결과 출력 범위'/></h2>
					</div>
					<div class="wp-table-st1 h-center">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:10%">
								<col style="width:80%">
								<col style="width:8%">
							</colgroup>
							<tbody>
								<tr>
									<th><spring:message code='TODO.KEY' text='부위'/></th>
									<td id="js-car-color-insp-detail-lab-step3-partIdList-td" class="wp-al wp-check-padding" colspan="2">
									</td>
								</tr>
								<tr>
									<th><spring:message code='TODO.KEY' text='각도'/></th>
									<td id="js-car-color-insp-detail-lab-step3-angleList-td" class="wp-al wp-check-padding" colspan="2">
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //table -->
				</div>
				<div id="js-car-color-insp-detail-lab-step4-div" style="display: none">
					<!-- title area -->
					<div class="wp-info-btn-area">
						<div class="wp-fl">
							<button type="button" id="js-car-color-insp-detail-lab-step4-go-back-step3-button" class="wp-btn darkgray cr3 wp-btn-prev"><span></span><spring:message code='TODO.KEY' text='이전'/></button>
							<button type="button" id="js-car-color-insp-detail-lab-step4-analysis-result-save" class="wp-btn blue1 cr3"><spring:message code='TODO.KEY' text='색상 분석 결과 저장'/></button>
							<!-- <button type="button" class="wp-btn gray cr3"><spring:message code='TODO.KEY' text='취소'/></button> -->
						</div>
						<div class="wp-fr">
							<!-- <button type="button" class="wp-btn small grayblue cr3"><spring:message code='TODO.KEY' text='색상 검사 분석 이력 조회'/></button> -->
						</div>
					</div>
					<!-- //title area -->
					<!-- table -->
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:15%">
								<col style="width:auto">
							</colgroup>
							<tbody>
								<tr>
									<th><spring:message code='TODO.KEY' text='제목'/></th>
									<td><input type="text" id="js-car-color-insp-detail-lab-step4-title" title="<spring:message code='TODO.KEY' text='내용입력'/>" class="wp-wd100p"></td>
								</tr>
								<tr>
									<th><spring:message code='TODO.KEY' text='비고'/></th>
									<td><textarea cols="140" rows="5" id="js-car-color-insp-detail-lab-step4-remark"></textarea></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //table -->
					<!-- table -->
					<div class="wp-title-section wp-no-line">
						<h2 class="wp-section-title"><spring:message code='TODO.KEY' text='일반정보'/></h2>
					</div>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:7%">
								<col style="width:7%">
								<col style="width:8%">
								<col style="width:7%">
								<col style="width:13%">
								<col style="width:16%">
								<col style="width:8%">
								<col style="width:9%">
								<col style="width:9%">
								<col style="width:8%">
								<col style="width:8%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code='TODO.KEY' text='구분'/></th>
									<th><spring:message code='TODO.KEY' text='측정대상'/></th>
									<th><spring:message code='TODO.KEY' text='검사일자'/></th>
									<th><spring:message code='TODO.KEY' text='공장'/></th>
									<th><spring:message code='TODO.KEY' text='차종'/></th>
									<th><spring:message code='TODO.KEY' text='칼라'/></th>
									<th><spring:message code='TODO.KEY' text='검사장소'/></th>
									<th><spring:message code='TODO.KEY' text='Body No.'/></th>
									<th><spring:message code='TODO.KEY' text='Lot No.'/></th>
									<th><spring:message code='TODO.KEY' text='도장일자'/></th>
									<th><spring:message code='TODO.KEY' text='부스 No.'/></th>
								</tr>
							</thead>
							<tbody id="js-car-color-insp-detail-lab-step4-general-information-list">
							</tbody>
						</table>
					</div>
					<!-- //table -->
	
					<div class="wp-title-section wp-no-line">
						<h2 class="wp-section-title"><spring:message code='TODO.KEY' text='검사결과'/></h2>
					</div>
					<!-- scroll-table -->
					<!-- 좌측 영역 테이블 사이즈는 고정입니다. -->
					<div class="wp-hor-scroll-table wp-color-LabStep-scroll">
						<!-- 타이틀 영역 table -->
						<div class="wp-table-st1 h-center wp-title-section">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width: 60px">
								<col style="width: 70px">
								<col style="width: 70px">
								<col style="width: 70px">
								<col style="width: 70px">
							</colgroup>
							<thead>
								<tr>
									<th class="wp-height2"><spring:message code='TODO.KEY' text='구분'/></th>
									<th class="wp-height2"><spring:message code='TODO.KEY' text='차종'/></th>
									<th class="wp-height2"><spring:message code='TODO.KEY' text='칼라'/></th>
									<th class="wp-height2"><spring:message code='TODO.KEY' text='부위'/></th>
									<th class="wp-height2"><spring:message code='TODO.KEY' text='구분'/></th>
								</tr>
							</thead>
							<tbody id="js-car-color-insp-detail-lab-step4-analysis-result-left-list">
							</tbody>
						</table>
						</div>
						<!-- //타이틀 영역 table -->
						<!-- 스크롤 영역 -->
						<div class="wp-scroll">
						<div id="js-car-color-insp-detail-lab-step4-analysis-result-list" class="wp-innertable wp-table-st1 h-center">
						</div>
						</div>
						<!-- //스크롤 영역 -->
					</div>
					<!-- //scroll-table -->
	
					<!-- charts list -->
					<div id="js-car-color-insp-detail-lab-step4-charts-list">
					</div>
					<!-- //charts list -->
				</div>
				
			</div>
			<!-- //content end -->
		</div>
		
		
	</section>

	</tiles:putAttribute>
	<!-- 메인 콘텐츠 E -->


	<!-- 페이지 레벨 스크립트 S -->
	<tiles:putAttribute name="page-level-js">
		<!-- 검색조건 리스트 Template -->
		<script id="js-template-car-color-insp-detail-lab-step1-search-requirement-list" type="text/x-handlebars-template">
		{{#rows}}
		{{#if @first}}
		<tr name="js-car-color-insp-detail-lab-step1-search-requirement-list" id="js-car-color-insp-detail-lab-step1-search-requirement-list-{{@index}}" requirementIndex="{{@index}}" first="first">
			<th class="wp-ar" rowspan="{{size}}"><spring:message code='TODO.KEY' text='검색 조건'/></th>
		{{else}}
		<tr name="js-car-color-insp-detail-lab-step1-search-requirement-list" id="js-car-color-insp-detail-lab-step1-search-requirement-list-{{@index}}" requirementIndex="{{@index}}" >
		{{/if}}
			<td class="wp-al">
				<span class="wp-td-tit"><spring:message code='TODO.KEY' text='기간'/></span>
				<input type="text" id="js-car-color-insp-detail-lab-step1-start-date-{{@index}}" class="wp-inp-datepicker wp-wd113 maxdate" placeholder="" value="{{startDate}}"> ~ <input type="text" id="js-car-color-insp-detail-lab-step1-end-date-{{@index}}" class="wp-inp-datepicker wp-wd113 maxdate" placeholder="" value="{{endDate}}">
				<span class="wp-td-tit"><spring:message code='TODO.KEY' text='공장'/></span>
				<div class="wp-ui-select wp-wd85">
					<select id="js-car-color-insp-detail-lab-step1-car-plant-{{@index}}" name="js-car-color-insp-detail-lab-step1-car-plant" title="" requirementIndex="{{@index}}">
					</select>
				</div>
				<span class="wp-td-tit"><spring:message code='TODO.KEY' text='차종'/></span>
				<div class="wp-ui-select wp-wd85">
					<select id="js-car-color-insp-detail-lab-step1-model-{{@index}}" title="">
					</select>
				</div>
				<span class="wp-td-tit"><spring:message code='TODO.KEY' text='칼라'/></span>
				<div class="wp-ui-select wp-wd85">
					<select id="js-car-color-insp-detail-lab-step1-color-{{@index}}" name="js-car-color-insp-detail-lab-step1-color" title="" requirementIndex="{{@index}}">
					</select>
				</div>
				<span class="wp-td-tit"><spring:message code='TODO.KEY' text='측정대상'/></span>
				<div class="wp-ui-select wp-wd85">
					<select id="js-car-color-insp-detail-lab-step1-car-item-{{@index}}" name="js-car-color-insp-detail-lab-step1-car-item" name="js-car-color-insp-detail-lab-step1-car-plant" title="">
					</select>
				</div>
			</td>
			<td>
				<button type="button" id="js-car-color-insp-detail-lab-step1-add-button-{{@index}}" name="js-car-color-insp-detail-lab-step1-add-button" class="wp-btn small white bgray add" value="{{@index}}"><span><spring:message code='TODO.KEY' text='추가'/></span></button>									
				<button type="button" id="js-car-color-insp-detail-lab-step1-delete-button-{{@index}}" name="js-car-color-insp-detail-lab-step1-delete-button" class="wp-btn small white bgray trash" value="{{@index}}"><span><spring:message code='TODO.KEY' text='삭제'/></span></button>
			</td>
		</tr>
		{{/rows}}
		
		{{#addRow}}
		<tr name="js-car-color-insp-detail-lab-step1-search-requirement-list" id="js-car-color-insp-detail-lab-step1-search-requirement-list-{{requirementIndex}}" requirementIndex="{{requirementIndex}}">
			<td class="wp-al">
				<span class="wp-td-tit"><spring:message code='TODO.KEY' text='기간'/></span>
				<input type="text" id="js-car-color-insp-detail-lab-step1-start-date-{{requirementIndex}}" class="wp-inp-datepicker wp-wd113 maxdate" placeholder="" value="{{startDate}}"> ~ <input type="text" id="js-car-color-insp-detail-lab-step1-end-date-{{requirementIndex}}" class="wp-inp-datepicker wp-wd113 maxdate" placeholder="" value="{{endDate}}">
				<span class="wp-td-tit"><spring:message code='TODO.KEY' text='공장'/></span>
				<div class="wp-ui-select wp-wd85">
					<select id="js-car-color-insp-detail-lab-step1-car-plant-{{requirementIndex}}" name="js-car-color-insp-detail-lab-step1-car-plant" title="" requirementIndex="{{requirementIndex}}">
					</select>
				</div>
				<span class="wp-td-tit"><spring:message code='TODO.KEY' text='차종'/></span>
				<div class="wp-ui-select wp-wd85">
					<select id="js-car-color-insp-detail-lab-step1-model-{{requirementIndex}}" title="">
					</select>
				</div>
				<span class="wp-td-tit"><spring:message code='TODO.KEY' text='칼라'/></span>
				<div class="wp-ui-select wp-wd85">
					<select id="js-car-color-insp-detail-lab-step1-color-{{requirementIndex}}" name="js-car-color-insp-detail-lab-step1-color" title="" requirementIndex="{{requirementIndex}}">
					</select>
				</div>
				<span class="wp-td-tit"><spring:message code='TODO.KEY' text='측정대상'/></span>
				<div class="wp-ui-select wp-wd85">
					<select id="js-car-color-insp-detail-lab-step1-car-item-{{requirementIndex}}" name="js-car-color-insp-detail-lab-step1-car-item" title="">
					</select>
				</div>
			</td>
			<td>
				<button type="button" id="js-car-color-insp-detail-lab-step1-add-button-{{requirementIndex}}" name="js-car-color-insp-detail-lab-step1-add-button" class="wp-btn small white bgray add" value="{{requirementIndex}}"><span><spring:message code='TODO.KEY' text='추가'/></span></button>									
				<button type="button" id="js-car-color-insp-detail-lab-step1-delete-button-{{requirementIndex}}" name="js-car-color-insp-detail-lab-step1-delete-button" class="wp-btn small white bgray trash" value="{{requirementIndex}}"><span><spring:message code='TODO.KEY' text='삭제'/></span></button>
			</td>
		</tr>
		{{/addRow}}
		</script>
		<!-- body list - 스크립트 -->
		<script id="js-template-car-color-insp-detail-lab-step1-body-list" type="text/x-handlebars-template">
		{{#if rows.length}}
			{{#rows}}
				<tr>
					<td><span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" id="js-car-color-insp-detail-lab-step1-body-list-checkbox-{{docNo}}" name="js-car-color-insp-detail-lab-step1-body-list-checkbox" value="{{docNo}}"></span></td>
					<td>{{inspDate}}</td>
					<td>{{carPlant}}</td>
					<td>[{{modelId}}] {{modelNm}}</td>
					<td>[{{colorId}}] {{colorNm}}</td>
					<td>{{inspColorPlaceNm}}</td>
					<td>{{bodyNo}}</td>
					<td class="wp-bubble">{{lotNo}}</td>
					<td>{{paintingDate}}</td>
					<td>{{boothNm}}</td>
				</tr>
			{{/rows}}
		{{else}}
			<tr>
				<td colspan="10" class="wp-nodata"><spring:message code='TODO.KEY' text='조회된 내역이 없습니다. '/></td>
			</tr>
		{{/if}}
		</script>
		<!-- step2 body list - 스크립트 -->
		<script id="js-template-car-color-insp-detail-lab-step2-body-list" type="text/x-handlebars-template">
		{{#if rows.length}}
			{{#rows}}
				<tr id="js-car-color-insp-detail-lab-step2-body-list-tr-{{docNo}}">
					<td>
						<div class="wp-ui-select wp-wd85">
							<select id="js-car-color-insp-detail-lab-step2-body-list-select-groupCode-{{docNo}}" title="">
							</select>
							<input type="hidden" id="js-car-color-insp-detail-lab-step2-body-list-docNo-{{docNo}}" value="{{docNo}}">
							<input type="hidden" id="js-car-color-insp-detail-lab-step2-body-list-modelId-{{docNo}}" value="{{modelId}}">
							<input type="hidden" id="js-car-color-insp-detail-lab-step2-body-list-colorId-{{docNo}}" value="{{colorId}}">
							<input type="hidden" id="js-car-color-insp-detail-lab-step2-body-list-inspColorItem-{{docNo}}" value="BODY">
						</div>
					</td>
					<td>{{inspDate}}</td>
					<td>{{carPlant}}</td>
					<td>[{{modelId}}] {{modelNm}}</td>
					<td>[{{colorId}}] {{colorNm}}</td>
					<td>{{inspColorPlaceNm}}</td>
					<td>{{bodyNo}}</td>
					<td class="wp-bubble">{{lotNo}}</td>
					<td>{{paintingDate}}</td>
					<td>{{boothNm}}</td>
				</tr>
			{{/rows}}
		{{else}}
			<tr>
				<td colspan="10" class="wp-nodata"><spring:message code='TODO.KEY' text='조회된 내역이 없습니다. '/></td>
			</tr>
		{{/if}}
		</script>
		<!-- step3 list - 스크립트 -->
		<script id="js-template-car-color-insp-detail-lab-step3-inspection-object-list" type="text/x-handlebars-template">
		{{#if rows.length}}
			{{#rows}}
				<tr id="js-car-color-insp-detail-lab-step3-inspection-object-{{@index}}" class="wp-table-bg">
					<td>{{groupCodeNm}}</td>
					<td>{{inspColorItem}}</td>
					<td>{{inspDate}}</td>
					<td>{{carPlant}}</td>
					<td>[{{modelId}}] {{modelNm}}</td>
					<td>[{{colorId}}] {{colorNm}}</td>
					<td>{{inspColorPlaceNm}}</td>
					<td>{{bodyNo}}</td>
					<td class="wp-bubble">{{lotNo}}</td>
					<td>{{paintingDate}}</td>
					<td>{{boothNm}}</td>
				</tr>
			{{/rows}}
		{{else}}
			<tr>
				<td colspan="11" class="wp-nodata"><spring:message code='TODO.KEY' text='조회된 내역이 없습니다. '/></td>
			</tr>
		{{/if}}
		</script>
		<!-- step4 js-car-color-insp-detail-lab-step4-general-information-list - 스크립트 -->
		<script id="js-template-car-color-insp-detail-lab-step4-general-information-list" type="text/x-handlebars-template">
		{{#if rows.length}}
			{{#rows}}
				<tr id="js-car-color-insp-detail-lab-step4-general-information-{{@index}}" class="wp-table-bg">
					<td>{{groupCodeNm}}</td>
					<td>{{inspColorItem}}</td>
					<td>{{inspDate}}</td>
					<td>{{carPlant}}</td>
					<td>[{{modelId}}] {{modelNm}}</td>
					<td>[{{colorId}}] {{colorNm}}</td>
					<td>{{inspColorPlaceNm}}</td>
					<td>{{bodyNo}}</td>
					<td class="wp-bubble">{{lotNo}}</td>
					<td>{{paintingDate}}</td>
					<td>{{boothNm}}</td>
				</tr>
			{{/rows}}
		{{else}}
			<tr>
				<td colspan="11" class="wp-nodata"><spring:message code='TODO.KEY' text='조회된 내역이 없습니다. '/></td>
			</tr>
		{{/if}}
		</script>
		<!-- step4 js-car-color-insp-detail-lab-step4-analysis-result-left-list - 스크립트 -->
		<script id="js-template-car-color-insp-detail-lab-step4-analysis-result-left-list" type="text/x-handlebars-template">
		{{#if rows.length}}
			{{#rows}}
				<tr>
					<th rowspan="3">{{groupCodeNm}}</th>
					<th rowspan="3">{{modelId}}</th>
					<th rowspan="3">{{colorId}}</th>
					<th rowspan="3">{{colorItem}}</th>
					<th><spring:message code='TODO.KEY' text='L'/></th>
				</tr>                                          
				<tr>                                           
					<th><spring:message code='TODO.KEY' text='a'/></th>
				</tr>                                          
				<tr>                                           
					<th><spring:message code='TODO.KEY' text='b'/></th>
				</tr>
			{{/rows}}
		{{/if}}
		</script>
		<!-- step4 js-car-color-insp-detail-lab-step4-analysis-result-list - 스크립트 -->
		<script id="js-template-car-color-insp-detail-lab-step4-analysis-result-list" type="text/x-handlebars-template">
		{{#if rows.length}}
			{{#rows}}
				{{#if @first}}
				<table class="wp-cont-section">
					<caption></caption>
					<colgroup>
						{{#is25}}<col style="width:63px;">{{/is25}}
						{{#is45}}<col style="width:63px;">{{/is45}}
						{{#is75}}<col style="width:63px;">{{/is75}}
					</colgroup>
					<thead>
						<tr>
							<th colspan="{{size}}">{{partNm}}</th>
						</tr>
						<tr>
							{{#is25}}<th><spring:message code='TODO.KEY' text='25°'/></th>{{/is25}}
							{{#is45}}<th><spring:message code='TODO.KEY' text='45°'/></th>{{/is45}}
							{{#is75}}<th><spring:message code='TODO.KEY' text='75°'/></th>{{/is75}}
						</tr>
					</thead>
					<tbody>
				{{/if}}						
						<tr>
							{{#is25}}<td>{{l25Value}}</td>{{/is25}}
							{{#is45}}<td>{{l45Value}}</td>{{/is45}}
							{{#is75}}<td>{{l75Value}}</td>{{/is75}}
						</tr>
						<tr>
							{{#is25}}<td>{{a25Value}}</td>{{/is25}}
							{{#is45}}<td>{{a45Value}}</td>{{/is45}}
							{{#is75}}<td>{{a75Value}}</td>{{/is75}}
						</tr>
						<tr>
							{{#is25}}<td>{{b25Value}}</td>{{/is25}}
							{{#is45}}<td>{{b45Value}}</td>{{/is45}}
							{{#is75}}<td>{{b75Value}}</td>{{/is75}}
						</tr>
				{{#if @last}} 
					</tbody>
				</table>
				{{/if}}
			{{/rows}}
		{{/if}}
		</script>
		<!-- step4 js-car-color-insp-detail-lab-step4-charts-list - 스크립트 -->
		<script id="js-template-car-color-insp-detail-lab-step4-charts-list" type="text/x-handlebars-template">
		{{#if rows.length}}
			{{#rows}}
				<div class="wp-title-section wp-no-line">
					<h2 class="wp-section-title">{{partNm}}</h2>
				</div>
				<ul class="wp-color-graph wp-three">
					<li>
						<div class="wp-title"><spring:message code='TODO.KEY' text='L'/></div>
						<div id="js-car-color-insp-detail-lab-step4-chart-l-{{partId}}" class="wp-graph"></div>
					</li>
					<li>
						<div class="wp-title"><spring:message code='TODO.KEY' text='a'/></div>
						<div id="js-car-color-insp-detail-lab-step4-chart-a-{{partId}}" class="wp-graph"></div>
					</li>
					<li>
						<div class="wp-title"><spring:message code='TODO.KEY' text='b'/></div>
						<div id="js-car-color-insp-detail-lab-step4-chart-b-{{partId}}" class="wp-graph"></div>
					</li>
				</ul>
			{{/rows}}
		{{/if}}
		</script>

		<script src="/highcharts/highcharts.js"></script>
		<script src="/highcharts/modules/exporting.js"></script>
		<script src="/highcharts/modules/no-data-to-display.js"></script>
		
		<script type="text/javascript">

			var gvCarColorInspDetailLabStep1CarPlantComboRs; // 검색조건 - 공장 콤보
			var gvCarColorInspDetailLabStep1ColorItemComboRs; // 검색조건 - 측정대상 콤보
			var gvCarPlantCombo; // 검색조건 선택된 공장 
			var gvRequirementIndex; // 검색조건 index
			var gvDocNoList; // step1 에서 선택된 docNoList[]
			var gvGroupDocNoList; // step2 에서 선택된 gvGroupDocNoList[]
			
			// template
			var carColorInspDetailLabStep1SearchRequirementListTemplate;
			var carColorInspDetailLabStep1BodyListTemplate;
			var carColorInspDetailLabStep2BodyListTemplate;
			var carColorInspDetailLabStep3InspectionObjectListTemplate;
			var carColorInspDetailLabStep4GeneralInformationListTemplate;
			var carColorInspDetailLabStep4AnalysisResultLeftListTemplate;
			var carColorInspDetailLabStep4AnalysisResultListTemplate;
			var carColorInspDetailLabStep4ChartsListTemplate;

			$(document).ready(function() {
				// 헤더 공장 선택 숨김처리
				$("#js-car-header-car-plant").parent().css( "display", "none" );

				//Handlebar 초기화
				var source = $('#js-template-car-color-insp-detail-lab-step1-search-requirement-list').html();
				carColorInspDetailLabStep1SearchRequirementListTemplate = Handlebars.compile(source);
				var source = $('#js-template-car-color-insp-detail-lab-step1-body-list').html();
				carColorInspDetailLabStep1BodyListTemplate = Handlebars.compile(source);
				
				var source = $('#js-template-car-color-insp-detail-lab-step2-body-list').html();
				carColorInspDetailLabStep2BodyListTemplate = Handlebars.compile(source);

				var source = $('#js-template-car-color-insp-detail-lab-step3-inspection-object-list').html();
				carColorInspDetailLabStep3InspectionObjectListTemplate = Handlebars.compile(source);
				
				var source = $('#js-template-car-color-insp-detail-lab-step4-general-information-list').html();
				carColorInspDetailLabStep4GeneralInformationListTemplate = Handlebars.compile(source);
				var source = $('#js-template-car-color-insp-detail-lab-step4-analysis-result-left-list').html();
				carColorInspDetailLabStep4AnalysisResultLeftListTemplate = Handlebars.compile(source);
				var source = $('#js-template-car-color-insp-detail-lab-step4-analysis-result-list').html();
				carColorInspDetailLabStep4AnalysisResultListTemplate = Handlebars.compile(source);
				var source = $('#js-template-car-color-insp-detail-lab-step4-charts-list').html();
				carColorInspDetailLabStep4ChartsListTemplate = Handlebars.compile(source);
				
				Handlebars.registerHelper('is25', function(options) {
					if (typeof this.l25Value !== 'undefined') {
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				Handlebars.registerHelper('is45', function(options) {
					if (typeof this.l45Value !== 'undefined') {
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				Handlebars.registerHelper('is75', function(options) {
					if (typeof this.l75Value !== 'undefined') {
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				gvCarPlantCombo = "";
				gvRequirementIndex = "";
				$("#js-car-color-insp-detail-lab-step3-gDocNo").val("");
				
				//조회 버튼
				$('#js-car-color-insp-detail-lab-step1-search-button').off().on('click', function() {
					retrieveCarColorInspDetailLabStep1();
				});
				//색상 검사 대상 선택 버튼(다음 step2으로)
				$('#js-car-color-insp-detail-lab-step1-select-object').off().on('click', function() {
					goStep2CarColorInspDetailLabStep1();
				});
				// step2 -> step1 이전 버튼
				$('#js-car-color-insp-detail-lab-step2-go-back-step1-button').off().on('click', function() {
					goBackStep1CarColorInspDetailLabStep2();
				});
				//색상 검사 대상 확인 버튼(다음 step3으로)
				$('#js-car-color-insp-detail-lab-step2-verify-object').off().on('click', function() {
					goStep3CarColorInspDetailLabStep2();
				});
				//색상 검사 결과 분석 버튼(다음 step4로)
				$('#js-car-color-insp-detail-lab-step3-result-analysis').off().on('click', function() {
					goStep4CarColorInspDetailLabStep3();
				});
				// step3 -> step2 이전 버튼
				$('#js-car-color-insp-detail-lab-step3-go-back-step2-button').off().on('click', function() {
					goBackStep2CarColorInspDetailLabStep3();
				});
				// step4 -> step3 이전 버튼
				$('#js-car-color-insp-detail-lab-step4-go-back-step3-button').off().on('click', function() {
					goBackStep3CarColorInspDetailLabStep4();
				});
				// 색상 분석 결과 저장
				$('#js-car-color-insp-detail-lab-step4-analysis-result-save').off().on('click', function() {
					carColorInspDetailLabStep4AnalysisResultSave();
				});
				
				// 전체선택
				$('#js-car-color-insp-detail-lab-step1-body-select-all').off().on('click', function() {
					if($(this).is(':checked'))
					{
						$('input:checkbox[id*=js-car-color-insp-detail-lab-step1-body-list-checkbox]').each(function(){
							if(!$(this).is(':checked'))
								$(this).click();
						});
					}
					else
					{
						$('input:checkbox[id*=js-car-color-insp-detail-lab-step1-body-list-checkbox]').each(function(){
							if($(this).is(':checked'))
								$(this).click();
						});
					}
					setListCnt();
				});
				$('#js-car-color-insp-detail-lab-step1-bumper-select-all').off().on('click', function() {
					if($(this).is(':checked'))
					{
						$('input:checkbox[id*=js-car-color-insp-detail-lab-step1-bumper-list-checkbox]').each(function(){
							if(!$(this).is(':checked'))
								$(this).click();
						});
					}
					else
					{
						$('input:checkbox[id*=js-car-color-insp-detail-lab-step1-bumper-list-checkbox]').each(function(){
							if($(this).is(':checked'))
								$(this).click();
						});
					}
					setListCnt();
				});
				
				retrieveSearchOption.request();
			});
			
			var carColorInspDetailLabStep4AnalysisResultSave = function(){
				app.message.confirm({
					  title             : '<spring:message code="TODO.KEY" text="저장"/>'
					, message           : '<spring:message code="TODO.KEY" text="저장 하시겠습니까?"/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
					, callback          : {
						confirm: function() {
							saveCarColorInspResult.request();
						}
					}
				});
			}
			
			//색상 검사 대상 선택 버튼 클릭 step2로 이동
			var goStep2CarColorInspDetailLabStep1 = function(){
				gvDocNoList = [];
				//body, bumper checked list 생성
				$('input:checkbox[id*=js-car-color-insp-detail-lab-step1-body-list-checkbox]').each(function(){
					if($(this).is(':checked'))
						gvDocNoList.push({docNo : $(this).val()});
				});
				
				if(gvDocNoList.length > 0){
					$('#js-car-color-insp-detail-lab-step1-div').css("display", "none");
					$('#js-car-color-insp-detail-lab-step2-div').css("display", "block");
					$('#js-car-color-insp-detail-lab-step3-div').css("display", "none");
					$('#js-car-color-insp-detail-lab-step4-div').css("display", "none");
					
					$('#js-car-color-insp-detail-lab-step1-active').addClass("active");
					$('#js-car-color-insp-detail-lab-step2-active').addClass("active");
					$('#js-car-color-insp-detail-lab-step3-active').removeClass("active");
					$('#js-car-color-insp-detail-lab-step4-active').removeClass("active");
					
					$("#js-car-color-insp-detail-lab-step2-body-bumper-selected-list").find("li").remove();
					retrieveColorInspSearch.step2searchBodyBumperList.request('', JSON.stringify(gvDocNoList));
				} else {
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="선택된 내역이 없습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					});
				}
			};
			// step2 -> step1 이전 버튼
			var goBackStep1CarColorInspDetailLabStep2 = function(){
				$('#js-car-color-insp-detail-lab-step1-div').css("display", "block");
				$('#js-car-color-insp-detail-lab-step2-div').css("display", "none");
				$('#js-car-color-insp-detail-lab-step3-div').css("display", "none");
				$('#js-car-color-insp-detail-lab-step4-div').css("display", "none");
				
				$('#js-car-color-insp-detail-lab-step1-active').addClass("active");
				$('#js-car-color-insp-detail-lab-step2-active').removeClass("active");
				$('#js-car-color-insp-detail-lab-step3-active').removeClass("active");
				$('#js-car-color-insp-detail-lab-step4-active').removeClass("active");				
			};
			// step3 -> step2 이전 버튼
			var goBackStep2CarColorInspDetailLabStep3 = function(){
				$('#js-car-color-insp-detail-lab-step1-div').css("display", "none");
				$('#js-car-color-insp-detail-lab-step2-div').css("display", "block");
				$('#js-car-color-insp-detail-lab-step3-div').css("display", "none");
				$('#js-car-color-insp-detail-lab-step4-div').css("display", "none");
				
				$('#js-car-color-insp-detail-lab-step1-active').addClass("active");
				$('#js-car-color-insp-detail-lab-step2-active').addClass("active");
				$('#js-car-color-insp-detail-lab-step3-active').removeClass("active");
				$('#js-car-color-insp-detail-lab-step4-active').removeClass("active");				
			};
			// step4 -> step3 이전 버튼
			var goBackStep3CarColorInspDetailLabStep4 = function(){
				$('#js-car-color-insp-detail-lab-step1-div').css("display", "none");
				$('#js-car-color-insp-detail-lab-step2-div').css("display", "none");
				$('#js-car-color-insp-detail-lab-step3-div').css("display", "block");
				$('#js-car-color-insp-detail-lab-step4-div').css("display", "none");
				
				$('#js-car-color-insp-detail-lab-step1-active').addClass("active");
				$('#js-car-color-insp-detail-lab-step2-active').addClass("active");
				$('#js-car-color-insp-detail-lab-step3-active').addClass("active");
				$('#js-car-color-insp-detail-lab-step4-active').removeClass("active");				
			};
			
			//색상 검사 대상 확인 버튼(다음 step3으로)
			var goStep3CarColorInspDetailLabStep2 = function(){
				gvGroupDocNoList = [];
				//selected list 생성
				$("#js-car-color-insp-detail-lab-step2-body-bumper-selected-list").find("li").each(function( index ){
					var id = this.id.substring("js-car-color-insp-detail-lab-step2-body-bumper-selected-list-li".length + 1);
					gvGroupDocNoList.push({
						groupCode : id,
						docNo : $("#js-car-color-insp-detail-lab-step2-body-bumper-selected-list-li-body-docNo-"+id).val(),
						modelId : $("#js-car-color-insp-detail-lab-step2-body-bumper-selected-list-li-body-modelId-"+id).val(),
						colorId : $("#js-car-color-insp-detail-lab-step2-body-bumper-selected-list-li-body-colorId-"+id).val(),
						inspColorItem : $("#js-car-color-insp-detail-lab-step2-body-bumper-selected-list-li-body-inspColorItem-"+id).val()
					});
				});				
				if(gvGroupDocNoList.length > 0){
					$('#js-car-color-insp-detail-lab-step1-div').css("display", "none");
					$('#js-car-color-insp-detail-lab-step2-div').css("display", "none");
					$('#js-car-color-insp-detail-lab-step3-div').css("display", "block");
					$('#js-car-color-insp-detail-lab-step4-div').css("display", "none");
					
					$('#js-car-color-insp-detail-lab-step1-active').addClass("active");
					$('#js-car-color-insp-detail-lab-step2-active').addClass("active");
					$('#js-car-color-insp-detail-lab-step3-active').addClass("active");
					$('#js-car-color-insp-detail-lab-step4-active').removeClass("active");
					
					retrieveColorInspGroupList.request(JSON.stringify(gvGroupDocNoList));
				} else {
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="선택된 내역이 없습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					});
				}
			};

			//색상 검사 결과 분석 버튼(다음 step4로)
			var goStep4CarColorInspDetailLabStep3 = function(){
				gvPartIdList = [];
				//selected list 생성
				$("input:checkbox[name='js-car-color-insp-detail-lab-step3-partIdList-item']:checked").each(function() {
					var value = $(this).val();
					gvPartIdList.push({
						partId : value
					});
				});
				var cntAngle = 0;
				$("input:checkbox[name='js-car-color-insp-detail-lab-step3-angleList-item']:checked").each(function() {
					var value = $(this).val();
					cntAngle++;
				});
				if(gvPartIdList.length > 0 && cntAngle > 0){
					$('#js-car-color-insp-detail-lab-step1-div').css("display", "none");
					$('#js-car-color-insp-detail-lab-step2-div').css("display", "none");
					$('#js-car-color-insp-detail-lab-step3-div').css("display", "none");
					$('#js-car-color-insp-detail-lab-step4-div').css("display", "block");
					
					$('#js-car-color-insp-detail-lab-step1-active').addClass("active");
					$('#js-car-color-insp-detail-lab-step2-active').addClass("active");
					$('#js-car-color-insp-detail-lab-step3-active').addClass("active");
					$('#js-car-color-insp-detail-lab-step4-active').addClass("active");
					
					retrieveColorInspResult.request();
				} else {
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="선택된 내역이 없습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					});
				}
			};
			//list 선택 cnt setting
			var setListCnt = function(){
				var cnt = 0;
				
				$('input:checkbox[id*=js-car-color-insp-detail-lab-step1-body-list-checkbox]').each(function(){
					if($(this).is(':checked'))
						cnt++;
				});
				$("#js-car-color-insp-detail-lab-step1-selected-body-cnt").text(cnt);
			};
			// ------------------------------------------------
			// 최초 데이터 조회 (공장 콤보, 측정대상 콤보)
			// ------------------------------------------------
			var retrieveSearchOption = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
		
						if (message === 'OK') {
							gvCarColorInspDetailLabStep1CarPlantComboRs = response.rs.carPlant;
							gvCarColorInspDetailLabStep1ColorItemComboRs = response.rs.colorItem;
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
					
					initCarColorInspDetailLabStep1SearchRequirementList();
				},
				request: function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
		
					var params = {
							  service : 'car.color'
							, method : 'retrieveSearchOption'
							, searchId : getSearchId()
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			var getSearchId = function(){
				var searchId = '';
				$("#js-car-color-insp-detail-searchid").find("li").each(function( index ){
					if($(this).children('a').hasClass("active")){
						searchId = $(this).children('a').attr("searchid");						
					}
				});
				
				return searchId;
			};
			//step1 조회 데이터 수집
			var retrieveCarColorInspDetailLabStep1 = function(){
				var searchList = [];
				
				$("#js-car-color-insp-detail-lab-step1-search-requirement-list-append").find("tr").each(function() {
					var id = this.id.substring("js-car-color-insp-detail-lab-step1-search-requirement-list".length + 1);
					
					var startDate     = $("#js-car-color-insp-detail-lab-step1-start-date-" + id).val();
					var endDate       = $("#js-car-color-insp-detail-lab-step1-end-date-" + id).val();
					var carPlant      = $("#js-car-color-insp-detail-lab-step1-car-plant-" + id).val();
					var modelId       = $("#js-car-color-insp-detail-lab-step1-model-" + id).val();
					var colorId       = $("#js-car-color-insp-detail-lab-step1-color-" + id).val();
					var inspColorItem = $("#js-car-color-insp-detail-lab-step1-car-item-" + id).val();
					// 데이터가 모두 있을 경우에만 추가
// 					if(	   !app.utils.isEmpty(startDate)
// 						&& !app.utils.isEmpty(endDate)	
// 						&& !app.utils.isEmpty(carPlant)	
// 						&& !app.utils.isEmpty(modelId)	
// 						&& !app.utils.isEmpty(colorId)	
// 						&& !app.utils.isEmpty(inspColorItem)){
// 						searchList.push({
// 							startDate    : startDate    
// 						  , endDate      : endDate      
// 						  , carPlant     : carPlant     
// 						  , modelId      : modelId      
// 						  , colorId      : colorId      
// 						  , inspColorItem: inspColorItem});
// 					}
					if(	   !app.utils.isEmpty(startDate)
							&& !app.utils.isEmpty(endDate)){
							searchList.push({
								startDate    : startDate    
							  , endDate      : endDate      
							  , carPlant     : carPlant     
							  , modelId      : modelId      
							  , colorId      : colorId      
							  , inspColorItem: inspColorItem});
						}
				});

				if(searchList.length > 0){					
					// body 조회
					retrieveColorInspSearch.request(JSON.stringify(searchList), '');
				} else {
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="에러"/>'
						, message           : '<spring:message code="TODO.KEY" text="검색조건 입력후 조회 하세요."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					});
				}
			};
			
			//------------------------------------------------
			// 색상 분석 결과 저장
			//------------------------------------------------
			var saveCarColorInspResult = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							if (response.rs > 0){
								app.message.alert({
									  title             : '<spring:message code="TODO.KEY" text="알림"/>'
									, message           : '<spring:message code="TODO.KEY" text="저장 되었습니다."/>'
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
									, callback          : {
										confirm: function() {
											window.location.href = "/car/inspection/carColorInspDetailLab.do";
										}
									}
								});								
							}
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
				request: function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var gDocNo = $("#js-car-color-insp-detail-lab-step3-gDocNo").val();
					var ag25 = $("#js-car-color-insp-detail-lab-step3-angleList-item-AG25").is(":checked") ? "Y" : "N";
					var ag45 = $("#js-car-color-insp-detail-lab-step3-angleList-item-AG45").is(":checked") ? "Y" : "N";
					var ag75 = $("#js-car-color-insp-detail-lab-step3-angleList-item-AG75").is(":checked") ? "Y" : "N";
					
					var title = $("#js-car-color-insp-detail-lab-step4-title").val();
					var remark = $("#js-car-color-insp-detail-lab-step4-remark").val();
					
					var params = {
						service: 'car.color',
						method: 'saveCarColorInspResult',
						searchId: getSearchId(),
						gDocNo: gDocNo,
						partIdList: JSON.stringify(gvPartIdList),
						ag25: ag25,
						ag45: ag45,
						ag75: ag75,
						title: title,
						remark:remark
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				} 
			};
			
			//------------------------------------------------
			// 색상 검사 결과 분석 조회
			//------------------------------------------------
			var retrieveColorInspResult = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							var data = {
								rows : response.rs.colorInspList
							};
							
							var html = carColorInspDetailLabStep4GeneralInformationListTemplate(data);
							$("#js-car-color-insp-detail-lab-step4-general-information-list").empty().append(html);
							
							var data = response.rs.resultDt;
							
							var groupCodeArr = [];
							var analysisResultLeftArr = [];
							
							for (var i=0; i<data.length; i++) {
								var groupCode = data[i].groupCode;
								var groupCodeNm = data[i].groupCodeNm;
								var modelId = data[i].modelId;
								var colorId = data[i].colorId;
								var colorItem = data[i].colorItem;
								
								if($.inArray(groupCode, groupCodeArr) === -1){
									groupCodeArr.push(groupCode);
									analysisResultLeftArr.push({
										groupCode: groupCode,
										groupCodeNm: groupCodeNm,
										modelId: modelId,
										colorId: colorId,
										colorItem: colorItem
									});
								}
							}
							
							//js-car-color-insp-detail-lab-step4-analysis-result-left-list
							var analysisResultLeft = {
								rows : analysisResultLeftArr
							}
							var html = carColorInspDetailLabStep4AnalysisResultLeftListTemplate(analysisResultLeft);
							$("#js-car-color-insp-detail-lab-step4-analysis-result-left-list").empty().append(html);
							
							var analysisResult = response.rs.resultDt;
							
							var cntAngle = 0;
							if(typeof analysisResult[0].l25Value !== 'undefined'){
								cntAngle++;
							}
							if(typeof analysisResult[0].l45Value !== 'undefined'){
								cntAngle++;
							}
							if(typeof analysisResult[0].l75Value !== 'undefined'){
								cntAngle++;
							}
							
							var partIdArr = [];
							for(var k=0 ; k<analysisResult.length ; k++){
								analysisResult[k].size = cntAngle;
								if($.inArray(analysisResult[k].partId, partIdArr) === -1){
									partIdArr.push(analysisResult[k].partId);
								}
							}
							$("#js-car-color-insp-detail-lab-step4-analysis-result-list").empty();
							$("#js-car-color-insp-detail-lab-step4-analysis-result-list").css("width", 189 * (partIdArr.length + 1) + "px");
							
							for(var i=0 ; i<partIdArr.length ; i++){
								var analysisResultSet = {
									rows: []
								};
								for(var j=0 ; j<analysisResult.length ; j++){
									if(partIdArr[i] == analysisResult[j].partId){
										analysisResultSet.rows.push(analysisResult[j]);										
									}
								}
								var html = carColorInspDetailLabStep4AnalysisResultListTemplate(analysisResultSet);
								$("#js-car-color-insp-detail-lab-step4-analysis-result-list").append(html);
							}
							
							//chart setting
							var chartsResult = response.rs.resultDt;							
							
							var partIdArr = [];
							var chartsListArr = [];
							
							for (var i=0; i<chartsResult.length; i++) {
								var partId = chartsResult[i].partId;
								var partNm = chartsResult[i].partNm;
								
								if($.inArray(partId, partIdArr) === -1){
									partIdArr.push(partId);
									chartsListArr.push({
										partId: partId,
										partNm: partNm
									});
								}
							}
							
							var chartsResultList = {
								rows : chartsListArr
							};
							
							var html = carColorInspDetailLabStep4ChartsListTemplate(chartsResultList);
							$("#js-car-color-insp-detail-lab-step4-charts-list").empty().append(html);
							
							
							for(var i=0 ; i<partIdArr.length ; i++){
								var chartsResultSet = [];
								for(var j=0 ; j<chartsResult.length ; j++){
									if(partIdArr[i] == chartsResult[j].partId){
										chartsResultSet.push(chartsResult[j]);										
									}
								}
								carColorInspDetailLabStep4ChartSet(chartsResultSet);
							}
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
				request: function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var gDocNo = $("#js-car-color-insp-detail-lab-step3-gDocNo").val();
					var ag25 = $("#js-car-color-insp-detail-lab-step3-angleList-item-AG25").is(":checked") ? "Y" : "N";
					var ag45 = $("#js-car-color-insp-detail-lab-step3-angleList-item-AG45").is(":checked") ? "Y" : "N";
					var ag75 = $("#js-car-color-insp-detail-lab-step3-angleList-item-AG75").is(":checked") ? "Y" : "N";
					
					var params = {
						service: 'car.color',
						method: 'retrieveColorInspResult',
						searchId: getSearchId(),
						gDocNo: gDocNo,
						partIdList: JSON.stringify(gvPartIdList),
						ag25: ag25,
						ag45: ag45,
						ag75: ag75
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				} 
			};
			
			var carColorInspDetailLabStep4ChartSet = function(chartsResultSet){
				
			    
				var labArr = ["l", "a", "b"];
				
				for(var j=0 ; j<labArr.length ; j++){
					var groupArr = [];
					var angle25Arr = [];
					var angle45Arr = [];
					var angle75Arr = [];
					var partId = "";
					for(var i=0 ; i<chartsResultSet.length ; i++){
						partId = chartsResultSet[i].partId;
						groupArr.push(chartsResultSet[i].groupCodeNm);
						
						if(labArr[j] == "l"){
							angle25Arr.push(chartsResultSet[i].l25Value); 
							angle45Arr.push(chartsResultSet[i].l45Value);
							angle75Arr.push(chartsResultSet[i].l75Value);							
						}
						if(labArr[j] == "a"){
							angle25Arr.push(chartsResultSet[i].a25Value);
							angle45Arr.push(chartsResultSet[i].a45Value);        
							angle75Arr.push(chartsResultSet[i].a75Value);							
						}
						if(labArr[j] == "b"){
							angle25Arr.push(chartsResultSet[i].b25Value); 
							angle45Arr.push(chartsResultSet[i].b45Value);        
							angle75Arr.push(chartsResultSet[i].b75Value);							
						}
					}
					
					var seriesData = [];
					if($("#js-car-color-insp-detail-lab-step3-angleList-item-AG25").is(":checked")){
						seriesData.push({
					        name: '25°',
					        data: angle25Arr
					    });					
					}
					if($("#js-car-color-insp-detail-lab-step3-angleList-item-AG45").is(":checked")){
						seriesData.push({
					        name: '45°',
					        data: angle45Arr
					    });						
					}
					if($("#js-car-color-insp-detail-lab-step3-angleList-item-AG75").is(":checked")){
						seriesData.push({
					        name: '75°',
					        data: angle75Arr
					    });						
					}
					
					Highcharts.chart('js-car-color-insp-detail-lab-step4-chart-'+ labArr[j] + '-' + partId, {
	
					    chart: {
					        type: 'column'
					    },
	
					    title: {
					        text: ''
					    },
	
					    subtitle: {
					        text: ''
					    },
	
					    legend: {
					        align: 'right',
					        verticalAlign: 'middle',
					        layout: 'vertical'
					    },
	
					    xAxis: {
					        categories: groupArr
					    },
	
					    yAxis: {
					        allowDecimals: true
					    },
	
					    exporting: {enabled: false },
					    series: seriesData,
	
					    responsive: {
					        rules: [{
					            condition: {
					                maxWidth: 500
					            },
					            chartOptions: {
					                legend: {
					                    align: 'center',
					                    verticalAlign: 'bottom',
					                    layout: 'horizontal'
					                },
					                yAxis: {
					                    labels: {
					                        align: 'left',
					                        x: 0,
					                        y: -5
					                    },
					                    title: {
					                        text: null
					                    }
					                },
					                subtitle: {
					                    text: null
					                },
					                credits: {
					                    enabled: false
					                }
					            }
					        }]
					    }
					});	
				}
				
			};
			
			//------------------------------------------------
			// 색상 검사 대상 확인 조회
			//------------------------------------------------
			var retrieveColorInspGroupList = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							var data = {
								rows : response.rs.colorInspList
							};
							
							var html = carColorInspDetailLabStep3InspectionObjectListTemplate(data);
							$("#js-car-color-insp-detail-lab-step3-inspection-object-list").empty().append(html);
							
							var data = response.rs.partIdList;
							$("#js-car-color-insp-detail-lab-step3-partIdList-td").empty();
							$("#js-car-color-insp-detail-lab-step3-partIdList-td").append("<span class='wp-ui-checkbox'><input type='checkbox' class='wp-inp-checkbox' id='js-car-color-insp-detail-lab-step3-partIdList-item-all' value=''></span><spring:message code='TODO.KEY' text='전체'/>");
							for(var i=0; i<data.length; i++)
							{
								$("#js-car-color-insp-detail-lab-step3-partIdList-td").append("<span class='wp-ui-checkbox'><input type='checkbox' class='wp-inp-checkbox' id='js-car-color-insp-detail-lab-step3-partIdList-item-"+data[i].code+"' name='js-car-color-insp-detail-lab-step3-partIdList-item' value='"+data[i].code+"'></span>"+data[i].codeNm);
							}
							
							var data = response.rs.angleList;
							$("#js-car-color-insp-detail-lab-step3-angleList-td").empty();
							$("#js-car-color-insp-detail-lab-step3-angleList-td").append("<span class='wp-ui-checkbox'><input type='checkbox' class='wp-inp-checkbox' id='js-car-color-insp-detail-lab-step3-angleList-item-all' value=''></span><spring:message code='TODO.KEY' text='전체'/>");
							for(var i=0; i<data.length; i++)
							{
								$("#js-car-color-insp-detail-lab-step3-angleList-td").append("<span class='wp-ui-checkbox'><input type='checkbox' class='wp-inp-checkbox' id='js-car-color-insp-detail-lab-step3-angleList-item-"+data[i].code+"' name='js-car-color-insp-detail-lab-step3-angleList-item' value='"+data[i].code+"'></span>"+data[i].codeNm);
							}
							
							var data = response.rs.gDocNo;
							$("#js-car-color-insp-detail-lab-step3-gDocNo").val(data);
							
							//전체선택 이벤트
							$("#js-car-color-insp-detail-lab-step3-partIdList-item-all").off().on('click', function(){
								if($(this).is(':checked'))
								{
									$('input:checkbox[name="js-car-color-insp-detail-lab-step3-partIdList-item"]').each(function(){
										if(!$(this).is(':checked'))
											$(this).click();
									});
								}
								else
								{
									$('input:checkbox[name="js-car-color-insp-detail-lab-step3-partIdList-item"]').each(function(){
										if($(this).is(':checked'))
											$(this).click();
									});
								}
							});
							$("#js-car-color-insp-detail-lab-step3-angleList-item-all").off().on('click', function(){
								if($(this).is(':checked'))
								{
									$('input:checkbox[name="js-car-color-insp-detail-lab-step3-angleList-item"]').each(function(){
										if(!$(this).is(':checked'))
											$(this).click();
									});
								}
								else
								{
									$('input:checkbox[name="js-car-color-insp-detail-lab-step3-angleList-item"]').each(function(){
										if($(this).is(':checked'))
											$(this).click();
									});
								}
							});

							$("#js-car-color-insp-detail-lab-step3-partIdList-td").find("[type=checkbox]").eq(0).click();
							$("#js-car-color-insp-detail-lab-step3-angleList-td").find("[type=checkbox]").eq(0).click();
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
				request: function(groupDocNoList) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					
					var params = {
						service: 'car.color',
						method: 'retrieveColorInspGroupList',
						searchId: getSearchId(),
						groupDocNoList: groupDocNoList
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				} 
			};
			
			//------------------------------------------------
			// body 조회 - resultList
			//------------------------------------------------
			var retrieveColorInspSearch = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								var data = {
									rows : response.rs.resultList
								};
								
								var html = carColorInspDetailLabStep1BodyListTemplate(data);
								
								$("#js-car-color-insp-detail-lab-step1-body-list").empty().append(html);
								$("#js-car-color-insp-detail-lab-step1-total-body-cnt").text(data.rows.length);

								$('input:checkbox[id*=js-car-color-insp-detail-lab-step1-body-list-checkbox]').off().on('click', function() {
									setListCnt();									
								});
								
								if($('#js-car-color-insp-detail-lab-step1-body-select-all').is(':checked')){
									$('#js-car-color-insp-detail-lab-step1-body-select-all').click();
								}
								setListCnt();
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
					request: function(searchList, docNoList) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						
						var params = {
							service: 'car.color',
							method: 'retrieveColorInspSearch',
							searchId: getSearchId(),
							searchList: searchList,
							docNoList: docNoList
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					},
					step2searchBodyBumperList : {
							success: function(response, status, jqueryXHR) {
								// ------------------------------------
								// response json structure - {message: '', error: '' rs: null}
								// ------------------------------------
								if (typeof response.message !== 'undefined') {
									var message = response.message || '';
									
									if (message === 'OK') {
										// list setting
										var data = {
											rows : response.rs.resultList
										};
										
										var html = carColorInspDetailLabStep2BodyListTemplate(data);
										
										$("#js-car-color-insp-detail-lab-step2-body-list").empty().append(html);

										//combo 값 셋팅
										var dataGroup = response.rs.groupCode;
										$('select[id*=js-car-color-insp-detail-lab-step2-body-list-select-groupCode]').each(function( index ) {
											$(this).append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");
											for(var i=0; i<dataGroup.length; i++)
											{
												$(this).append("<option value='"+dataGroup[i].code+"'>"+dataGroup[i].codeNm+"</option>");
											}
											$(this).attr("title", dataGroup.length+" <spring:message code='TODO.KEY' text='건'/>");
										});
										
										//그룹 선택 이벤트
										//같은 item (body) 에서 같은 그룹 지정 불가
										$('select[id*=js-car-color-insp-detail-lab-step2-body-list-select-groupCode]').off().on('change', function(){
											var selectedGroup = $(this).val();
											var selectedGroupNm = $(this).find('option:selected').text();
											var selectedId = this.id.substring("js-car-color-insp-detail-lab-step2-body-list-select-groupCode".length + 1);

											//콤보 선택된 항목 , 그룹 선택된 list 항목 비교해서 없으면 지워주기
											deleteCarColorInspDetailLabStep2SelectedLi();
											var cnt = 0;
											$("#js-car-color-insp-detail-lab-step2-body-bumper-selected-list").find("li").each(function( index ){											    
											    if($(this).hasClass("wp-color-Bb")){
													cnt++;
											    }
											});
											if(cnt >= 4){
												app.message.alert({
													  title             : '<spring:message code="TODO.KEY" text="에러"/>'
													, message           : '<spring:message code="TODO.KEY" text="그룹은 4건 까지 선택 할 수 있습니다."/>'
													, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
												});
												selectedGroup = '';
												$("#js-car-color-insp-detail-lab-step2-body-list-select-groupCode-"+selectedId).val('');
												return;
											}
											var selectedSameGroup = false;
											if(selectedGroup){
												$('select[id*=js-car-color-insp-detail-lab-step2-body-list-select-groupCode]').each(function( index ) {
													var selectElId = this.id.substring("js-car-color-insp-detail-lab-step2-body-list-select-groupCode".length + 1);
													if(selectedId != selectElId){
														if(selectedGroup == $(this).val()){
															app.message.alert({
																  title             : '<spring:message code="TODO.KEY" text="에러"/>'
																, message           : '<spring:message code="TODO.KEY" text="동일한 그룹 코드가 이미 선택 되어 있습니다."/>'
																, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
															});
															$("#js-car-color-insp-detail-lab-step2-body-list-select-groupCode-"+selectedId).val('');
															selectedSameGroup = true;
															return;
														}
													}
												});
												if(!selectedSameGroup){
													//선택된 대상 list 항목에 있는지 확인
													var selectedListLiSameItem = false;
													var selectedListLiId = '';
													$("#js-car-color-insp-detail-lab-step2-body-bumper-selected-list").find("li").each(function( index ){
														selectedListLiId = this.id.substring("js-car-color-insp-detail-lab-step2-body-bumper-selected-list-li".length + 1);
														if(selectedGroup == selectedListLiId){
															selectedListLiSameItem = true;
															return;
														}
													});
													
													var docNo = $("#js-car-color-insp-detail-lab-step2-body-list-docNo-"+selectedId).val();
													var modelId = $("#js-car-color-insp-detail-lab-step2-body-list-modelId-"+selectedId).val();
													var colorId = $("#js-car-color-insp-detail-lab-step2-body-list-colorId-"+selectedId).val();
													var inspColorItem = $("#js-car-color-insp-detail-lab-step2-body-list-inspColorItem-"+selectedId).val();
													//선택된 대상 li 생성
													var html = "";
													html += '<li id="js-car-color-insp-detail-lab-step2-body-bumper-selected-list-li-'+selectedGroup+'" class="wp-color-Bb">'+selectedGroupNm+'<button type="button" id="js-car-color-insp-detail-lab-step2-body-bumper-selected-list-li-remove-'+selectedGroup+'" class="wp-spr-btn wp-close-sel"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>';
													html += '<input type="hidden" id="js-car-color-insp-detail-lab-step2-body-bumper-selected-list-li-body-docNo-'+selectedGroup+'" value="'+docNo+'">';
													html += '<input type="hidden" id="js-car-color-insp-detail-lab-step2-body-bumper-selected-list-li-body-modelId-'+selectedGroup+'" value="'+modelId+'">';
													html += '<input type="hidden" id="js-car-color-insp-detail-lab-step2-body-bumper-selected-list-li-body-colorId-'+selectedGroup+'" value="'+colorId+'">';
													html += '<input type="hidden" id="js-car-color-insp-detail-lab-step2-body-bumper-selected-list-li-body-inspColorItem-'+selectedGroup+'" value="'+inspColorItem+'">';
													html += '</li>';
													$("#js-car-color-insp-detail-lab-step2-body-bumper-selected-list").append(html);
													
													$("#js-car-color-insp-detail-lab-step2-body-bumper-selected-list-li-remove-"+selectedGroup).off().on('click', function(){
														var id = this.id.substring("js-car-color-insp-detail-lab-step2-body-bumper-selected-list-li-remove".length + 1);
														$("#js-car-color-insp-detail-lab-step2-body-bumper-selected-list-li-"+id).remove();
														$('select[id*=js-car-color-insp-detail-lab-step2-body-list-select-groupCode]').each(function( index ) {
															var comboVal = $(this).val();
															if(id == comboVal){
																$(this).val('');	
															}
														});
													});
												}
											}
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
							request: function(searchList, docNoList) {
								// ------------------------------------
								// ajax request
								// ------------------------------------
								
								var params = {
									service: 'car.color',
									method: 'retrieveColorInspSearch',
									searchId: getSearchId(),
									searchList: searchList,
									docNoList: docNoList
								};
								
								app.mask.pageLock();
								var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
								ajax.done(this.success);
								ajax.fail(this.error);
								ajax.always(this.complete);
							}
					} 
			};
			
			var deleteCarColorInspDetailLabStep2SelectedLi = function(){
				//콤보 선택된 항목 , 그룹 선택된 list 항목 비교해서 없으면 지워주기
				var comboList = [];
				var selectedList = [];
				$('select[id*=js-car-color-insp-detail-lab-step2-body-list-select-groupCode]').each(function( index ) {
					var comboVal = $(this).val();
					if(comboVal){
						comboList.push(comboVal);	
					}
				});
				
				$("#js-car-color-insp-detail-lab-step2-body-bumper-selected-list").find("li").each(function( index ){
					var id = this.id.substring("js-car-color-insp-detail-lab-step2-body-bumper-selected-list-li".length + 1);
					selectedList.push(id);
				});
				
				for(var j=0; j<comboList.length; j++)
				{
				    if(-1 < $.inArray(comboList[j], selectedList)){
				        selectedList.splice($.inArray(comboList[j], selectedList), 1);
				    }
				}
				
				if(selectedList.length > 0){
					for(var i=0; i<selectedList.length; i++){
						$("#js-car-color-insp-detail-lab-step2-body-bumper-selected-list-li-"+selectedList[i]).remove();
					}	
				}
			}
			
			//------------------------------------------------
			//검색조건 리스트 초기화
			//------------------------------------------------
			var initCarColorInspDetailLabStep1SearchRequirementList = function() {

				$("#js-car-color-insp-detail-lab-step1-search-requirement-list-append").find('tr').remove();
				var today = fn_getTodayDate();
				var data = {
						rows : searchRequirementList = [{
							size : 1,
							startDate : fn_getBeforeDate(today.replace(/-/gi,""), null, 1),
							endDate : today
								}]
				};
				var result = carColorInspDetailLabStep1SearchRequirementListTemplate(data);
				$("#js-car-color-insp-detail-lab-step1-search-requirement-list-append").append(result);
				carColorInspDetailLabStep1SearchRequirementListCombo();
				carColorInspDetailLabStep1SearchRequirementListEvent();
			}

			//------------------------------------------------
			//검색조건 리스트의 이벤트 처리
			//------------------------------------------------
			var carColorInspDetailLabStep1SearchRequirementListEvent = function() {
				
				// [+] 버튼 클릭
				$('button[name=js-car-color-insp-detail-lab-step1-add-button]').off().on('click', function() {
					var searchRequirementFirstObj   = {};
					var searchRequirementFirstThObj = {};
					var searchRequirementNewIndex = 0;
					
					$("#js-car-color-insp-detail-lab-step1-search-requirement-list-append").find('tr').each(function(){
						if(parseInt($(this).attr("requirementIndex")) > searchRequirementNewIndex){
							searchRequirementNewIndex = parseInt($(this).attr("requirementIndex")); 
						}
						if($(this).attr("first") == "first"){
							searchRequirementFirstObj    = this;
							searchRequirementFirstThObj  = $(this).find("th")[0];
						}
					});

					var today = fn_getTodayDate();
					var data = {
							addRow : searchRequirementList = [{
								requirementIndex : searchRequirementNewIndex + 1,
								startDate : fn_getBeforeDate(today.replace(/-/gi,""), null, 1),
								endDate : today
							}]
					};
					var result = carColorInspDetailLabStep1SearchRequirementListTemplate(data);
					

					var rowspan = $(searchRequirementFirstThObj).attr("rowspan");
					$(searchRequirementFirstThObj).attr("rowspan", parseInt(rowspan)+1);
					$("#js-car-color-insp-detail-lab-step1-search-requirement-list-append").find('tr:last').after(result);

					carColorInspDetailLabStep1SearchRequirementListCombo();
					carColorInspDetailLabStep1SearchRequirementListEvent();
				});
				
				// [삭제] 버튼 클릭
				$('button[name=js-car-color-insp-detail-lab-step1-delete-button]').off().on('click', function() {
					var searchRequirementIndex = $(this).val();
					
					var searchRequirementFirstThObj = {};
					var searchRequirementLength = 0;
					
					$("#js-car-color-insp-detail-lab-step1-search-requirement-list-append").find('tr').each(function(){
						searchRequirementLength++;
						
						if($(this).attr("first") == "first"){
							searchRequirementFirstThObj  = $(this).find("th")[0];
						}
					});
					
					var $choiceObj = $("#js-car-color-insp-detail-lab-step1-search-requirement-list-" + searchRequirementIndex);
					
					if(searchRequirementLength <= 1){
						$choiceObj.find('select').find('option:eq(0)').prop('selected', true);
						$choiceObj.find('input[type=text]').val('');
						
						$("#js-car-color-insp-detail-lab-step1-start-date-" + searchRequirementIndex).val(fn_getBeforeDate(fn_getTodayDate().replace(/-/gi,""), null, 1)).mask('9999-99-99');
						$("#js-car-color-insp-detail-lab-step1-end-date-" + searchRequirementIndex).val(fn_getTodayDate());
						$("#js-car-color-insp-detail-lab-step1-model-" + searchRequirementIndex).find('option').remove();
						$("#js-car-color-insp-detail-lab-step1-color-" + searchRequirementIndex).find('option').remove();
						
						return;
					}		

					if($choiceObj.attr("first")){
						$choiceObj.next().attr("first", $choiceObj.attr("first"));
						$choiceObj.next().prepend($choiceObj.find("th"));						
					}
					$choiceObj.remove();
					
					var rowspan = $(searchRequirementFirstThObj).attr("rowspan");
					$(searchRequirementFirstThObj).attr("rowspan", parseInt(rowspan)-1);
				});
				
				// 공장 선택시(change)
				$('select[name=js-car-color-insp-detail-lab-step1-car-plant]').off().on('change', function() {
					gvCarPlantCombo = $(this).val();
					gvRequirementIndex = $(this).attr("requirementIndex");
					if(app.utils.isEmpty(gvCarPlantCombo)){
						$('#js-car-color-insp-detail-lab-step1-model-'+requirementIndex).find('option').remove();
						$('#js-car-color-insp-detail-lab-step1-color-'+requirementIndex).find('option').remove();
						return;
					}
					retrieveSearchModel.request();
					retrieveSearchColor.request();
				});
			};
			//------------------------------------------------
			//검색조건 리스트 공장 콤보, 측정대상 콤보박스 세팅
			//------------------------------------------------
			var carColorInspDetailLabStep1SearchRequirementListCombo = function() {
				$('select[name=js-car-color-insp-detail-lab-step1-car-plant]').each(function( index ) {
					
					if($(this).find('option').length == 0){
						$(this).append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");
						for(var i=0; i<gvCarColorInspDetailLabStep1CarPlantComboRs.length; i++)
						{
							$(this).append("<option value='"+gvCarColorInspDetailLabStep1CarPlantComboRs[i].code+"'>"+gvCarColorInspDetailLabStep1CarPlantComboRs[i].codeNm+"</option>");
						}
						$(this).attr("title", gvCarColorInspDetailLabStep1CarPlantComboRs.length+" <spring:message code='TODO.KEY' text='건'/>");
					}					
				});
				$('select[name=js-car-color-insp-detail-lab-step1-car-item]').each(function( index ) {
					
					if($(this).find('option').length == 0){
						$(this).append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");
						for(var i=0; i<gvCarColorInspDetailLabStep1ColorItemComboRs.length; i++)
						{
							$(this).append("<option value='"+gvCarColorInspDetailLabStep1ColorItemComboRs[i].code+"'>"+gvCarColorInspDetailLabStep1ColorItemComboRs[i].codeNm+"</option>");
						}
						$(this).attr("title", gvCarColorInspDetailLabStep1ColorItemComboRs.length+" <spring:message code='TODO.KEY' text='건'/>");
					}
				});
				
				//날짜선택 포멧 적용
				$(".wp-inp-datepicker").mask('9999-99-99');
			}
			// ------------------------------------------------
			// 차종 조회
			// ------------------------------------------------
			var retrieveSearchModel = {
				success : function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';

						if (message === 'OK') {							
							var data = response.rs;
							$("#js-car-color-insp-detail-lab-step1-model-"+gvRequirementIndex).find('option').remove();
							$("#js-car-color-insp-detail-lab-step1-model-"+gvRequirementIndex).append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");
							for(var i=0; i<data.length; i++)
							{
								$("#js-car-color-insp-detail-lab-step1-model-"+gvRequirementIndex).append("<option value='"+data[i].modelID+"'>"+data[i].modelNm+"</option>");
							}
							$("#js-car-color-insp-detail-lab-step1-model-"+gvRequirementIndex).attr("title", data.length+" <spring:message code='TODO.KEY' text='건'/>");
							
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
				error : function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="에러"/>'
						, message           : errorText
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
							method : 'retrieveSearchModel',
							carPlant : gvCarPlantCombo							
					};

					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			// ------------------------------------------------
			// 컬러 조회
			// ------------------------------------------------
			var retrieveSearchColor = {
				success : function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';

						if (message === 'OK') {							
							var data = response.rs;
							$("#js-car-color-insp-detail-lab-step1-color-"+gvRequirementIndex).find('option').remove();
							$("#js-car-color-insp-detail-lab-step1-color-"+gvRequirementIndex).append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");
							for(var i=0; i<data.length; i++)
							{
								$("#js-car-color-insp-detail-lab-step1-color-"+gvRequirementIndex).append("<option value='"+data[i].colorId+"'>"+data[i].colorNm+"</option>");
							}
							$("#js-car-color-insp-detail-lab-step1-color-"+gvRequirementIndex).attr("title", data.length+" <spring:message code='TODO.KEY' text='건'/>");
							
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
				error : function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="에러"/>'
						, message           : errorText
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
							method : 'retrieveSearchColor',
							carPlant : gvCarPlantCombo							
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
