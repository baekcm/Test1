<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.05.22] car 도장공정정보-외관 검사-외관 검사 분석" %>
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
					<li><a href="/car/inspection/carExtInspEdInfo.do"><spring:message code="TODO.KEY" text="전착 외관 검사"/></a></li>
					<li><a href="/car/inspection/carExtInspBcInfo.do"><spring:message code="TODO.KEY" text="중/상도 외관 검사"/></a></li>
					<li><a href="/car/inspection/carExtInspBcAnalysis.do" class="active"><spring:message code="TODO.KEY" text="외관 검사 분석"/></a></li>
				</ul>
				<!-- //tab -->
				<!-- title area -->
				<div class="wp-title-section wp-no-line wp-clearfix">
					<div class="wp-btn-area wp-fr">
						<button type="button" class="wp-btn small skyblue cr3 upload-white"><spring:message code="TODO.KEY" text="외관 검사 결과 등록"/></button>
						<!-- <button type="button" class="wp-btn small grayblue cr3"><spring:message code="TODO.KEY" text="외관 검사 분석 이력 조회"/></button> -->
					</div>
				</div>
				<!-- //title area -->
				<div class="wp-step-area wp-color">
					<ul>
						<li id="js-car-ext-insp-bc-analysis-step1-active" class="active"><span><spring:message code="TODO.KEY" text="대상 조회"/></span></li>
						<li id="js-car-ext-insp-bc-analysis-step2-active" class=""><span><spring:message code="TODO.KEY" text="대상 선택"/></span></li>
						<li id="js-car-ext-insp-bc-analysis-step3-active" class=""><span><spring:message code="TODO.KEY" text="대상 확인"/></span></li>
						<li id="js-car-ext-insp-bc-analysis-step4-active" class=""><span><spring:message code="TODO.KEY" text="분석 결과"/></span></li>
					</ul>
				</div>
				<div id="js-car-ext-insp-bc-analysis-step1-div">
					<!-- title area -->
					<div class="wp-info-btn-area">
						<div class="wp-fl">
							<button type="button" id="js-car-ext-insp-bc-analysis-step1-select-object" class="wp-btn blue1 cr3 wp-btn-next"><spring:message code="TODO.KEY" text="외관 검사 대상 선택"/><span></span></button>
						</div>
						<!-- <div class="wp-fr">
							<button type="button" class="wp-btn small grayblue cr3"><spring:message code="TODO.KEY" text="외관 검사 분석 이력 조회"/></button>
						</div> -->
					</div>
					<!-- //title area -->
					<!-- 조회 -->
					<div class="wp-table-st1 h-center">
					<table>
					<caption>대상 조회</caption>
					<colgroup>
						<col style="width:10%" />
						<col style="width:80%" />
						<col style="width:auto" />
					</colgroup>
					<tr>
						<th scope="row" class="wp-ar"><spring:message code="TODO.KEY" text="공정"/></th>
						<td class="wp-al" colspan="2">
							<div class="wp-ui-btn-switch-multi wp-clearfix">
								<ul id="js-car-ext-insp-bc-analysis-step1-procId">
								</ul>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row" class="wp-ar"><spring:message code="TODO.KEY" text="구분"/></th>
						<td class="wp-al" colspan="2">
							<div class="wp-ui-btn-switch wp-clearfix ship-switch noround-switch">
								<ul id="js-car-ext-insp-bc-analysis-step1-modelType">
								</ul>
							</div>
						</td>
					</tr>
					<tbody id="js-car-ext-insp-bc-analysis-step1-search-requirement-list-append">
					</tbody>
					</table>
					</div>
					<div class="wp-btn-area wp-ar">
						<button type="button" id="js-car-ext-insp-bc-analysis-step1-search-button" class="wp-btn big blue1 cr3"><spring:message code="TODO.KEY" text="조회"/></button>
					</div>
					<!-- //조회 -->
					
					<!-- 리스트 -->
					<div class="wp-title-section wp-no-line wp-mt30">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="검사 대상"/> (<span id="js-car-ext-insp-bc-analysis-step1-selected-result-cnt">-</span>건 <spring:message code="TODO.KEY" text="선택"/>)</h2>
						<div class="wp-fr"><spring:message code="TODO.KEY" text="전체"/> <span id="js-car-ext-insp-bc-analysis-step1-total-result-cnt">-</span> <spring:message code="TODO.KEY" text="건"/></div>
					</div>
					<div class="wp-table-st1 h-center">
					<table>
					<caption><spring:message code="TODO.KEY" text="검사 대상"/></caption>
					<colgroup>
						<col style="width:5%">
						<col style="width:9%">
						<col style="width:8%">
						<col style="width:13%">
						<col style="width:10%">
						<col style="width:auto">
						<col style="width:9%">
						<col style="width:9%">
						<col style="width:9%">
						<col style="width:8%">
					</colgroup>
					<thead>
					<tr>
						<th scope="col"><span class="wp-ui-checkbox wp-mt0"><input type="checkbox" class="wp-inp-checkbox" id="js-car-ext-insp-bc-analysis-step1-result-select-all" /></span></th>
						<th scope="col"><spring:message code="TODO.KEY" text="검사일자"/></th>
						<th scope="col"><spring:message code="TODO.KEY" text="공장"/></th>
						<th scope="col"><spring:message code="TODO.KEY" text="차종"/></th>
						<th scope="col"><spring:message code="TODO.KEY" text="제품코드"/></th>
						<th scope="col"><spring:message code="TODO.KEY" text="제품명"/></th>
						<th scope="col"><spring:message code="TODO.KEY" text="Lot No"/></th>
						<th scope="col"><spring:message code="TODO.KEY" text="제조일자"/></th>
						<th scope="col"><spring:message code="TODO.KEY" text="투입일자"/></th>
						<th scope="col"><spring:message code="TODO.KEY" text="부스 No."/></th>
					</tr>
					</thead>
					<tbody id="js-car-ext-insp-bc-analysis-step1-result-list">
					</tbody>
					</table>
					</div>
					<!-- // 리스트 -->
				</div>
				<div id="js-car-ext-insp-bc-analysis-step2-div" style="display: none">
					<!-- title area -->
					<div class="wp-info-btn-area">
						<div class="wp-fl">
							<button type="button" id="js-car-ext-insp-bc-analysis-step2-go-back-step1-button" class="wp-btn darkgray cr3 wp-btn-prev"><span></span><spring:message code="TODO.KEY" text="이전"/></button>
							<button type="button" id="js-car-ext-insp-bc-analysis-step2-verify-object" class="wp-btn blue1 cr3 wp-btn-next"><spring:message code="TODO.KEY" text="외관 검사 대상 확인"/><span></span></button>
							<!-- <button type="button" id="js-car-ext-insp-bc-analysis-step2-cancle-button" class="wp-btn gray cr3">취소</button> -->
						</div>
						<div class="wp-fr">
							<!-- <button type="button" class="wp-btn small grayblue cr3">외관 검사 분석 이력 조회</button> -->
						</div>
					</div>
					<!-- //title area -->
	
					<div class="wp-style-sel wp-mt20 wp-mb20">
						<!-- Body 와 Bumper가 모두 선택된 경우 // li에 add class="wp-color-Bb" -->
						<ul id="js-car-ext-insp-bc-analysis-step2-target-selected-list">
						</ul>
					</div>
	
					<!-- table -->
					<div class="wp-title-section wp-no-line">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="대상 조회"/></h2>
					</div>
					<div class="wp-table-st2 wp-sel-radio wp-h216">
						<div class="wp-table-resp-header"></div>
						<div class="wp-table-resp-body">
							<table>
								<caption><spring:message code="TODO.KEY" text="대상 조회"/></caption>
								<colgroup>
									<col style="width:10%">
									<col style="width:9%">
									<col style="width:8%">
									<col style="width:13%">
									<col style="width:10%">
									<col style="width:auto">
									<col style="width:9%">
									<col style="width:9%">
									<col style="width:9%">
									<col style="width:8%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" style="width:10%"><div class="wp-table-resp-headcont"><spring:message code="TODO.KEY" text="선택"/></div></th>
										<th scope="col" style="width:9%"><div class="wp-table-resp-headcont"><spring:message code="TODO.KEY" text="검사일자"/></div></th>
										<th scope="col" style="width:8%"><div class="wp-table-resp-headcont"><spring:message code="TODO.KEY" text="공장"/></div></th>
										<th scope="col" style="width:13%"><div class="wp-table-resp-headcont"><spring:message code="TODO.KEY" text="차종"/></div></th>
										<th scope="col" style="width:10%"><div class="wp-table-resp-headcont"><spring:message code="TODO.KEY" text="제품코드"/></div></th>
										<th scope="col" style="width:auto"><div class="wp-table-resp-headcont"><spring:message code="TODO.KEY" text="제품명"/></div></th>
										<th scope="col" style="width:9%"><div class="wp-table-resp-headcont"><spring:message code="TODO.KEY" text="Lot No"/></div></th>
										<th scope="col" style="width:9%"><div class="wp-table-resp-headcont"><spring:message code="TODO.KEY" text="제조일자"/></div></th>
										<th scope="col" style="width:9%"><div class="wp-table-resp-headcont"><spring:message code="TODO.KEY" text="투입일자"/></div></th>
										<th scope="col" style="width:8%"><div class="wp-table-resp-headcont"><spring:message code="TODO.KEY" text="부스 No."/></div></th>
									</tr>
								</thead>
								<tbody id="js-car-ext-insp-bc-analysis-step2-target-list">
									<tr>
										<td colspan="10" class="wp-nodata">조회된 내역이 없습니다. </td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- //table -->
				</div>
				<div id="js-car-ext-insp-bc-analysis-step3-div" style="display: none">
					<!-- title area -->
					<div class="wp-info-btn-area">
						<div class="wp-fl">
							<button type="button" id="js-car-ext-insp-bc-analysis-step3-go-back-step2-button" class="wp-btn darkgray cr3 wp-btn-prev"><span></span><spring:message code="TODO.KEY" text="이전"/></button>
							<button type="button" id="js-car-ext-insp-bc-analysis-step3-result-analysis" class="wp-btn blue1 cr3 wp-btn-next"><spring:message code="TODO.KEY" text="외관 검사 결과 분석"/><span></span></button>
							<input type="hidden" id="js-car-ext-insp-bc-analysis-step3-gDocNo" value="">
							<!-- <button type="button" class="wp-btn gray cr3">취소</button> -->
						</div>
						<div class="wp-fr">
							<!-- <button type="button" class="wp-btn small grayblue cr3">외관 검사 분석 이력 조회</button> -->
						</div>
					</div>
					<!-- //title area -->
					<!-- table -->
					<div class="wp-title-section wp-no-line">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="외관 검사 대상"/></h2>
					</div>
					<div class="wp-table-st1">
						<table>
							<caption><spring:message code="TODO.KEY" text="외관 검사 대상"/></caption>
							<colgroup>
								<col style="width:10%">
								<col style="width:9%">
								<col style="width:8%">
								<col style="width:13%">
								<col style="width:10%">
								<col style="width:auto">
								<col style="width:9%">
								<col style="width:9%">
								<col style="width:9%">
								<col style="width:8%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col"><spring:message code="TODO.KEY" text="구분"/></th>
									<th scope="col"><spring:message code="TODO.KEY" text="검사일자"/></th>
									<th scope="col"><spring:message code="TODO.KEY" text="공장"/></th>
									<th scope="col"><spring:message code="TODO.KEY" text="차종"/></th>
									<th scope="col"><spring:message code="TODO.KEY" text="제품코드"/></th>
									<th scope="col"><spring:message code="TODO.KEY" text="제품명"/></th>
									<th scope="col"><spring:message code="TODO.KEY" text="Lot No"/></th>
									<th scope="col"><spring:message code="TODO.KEY" text="제조일자"/></th>
									<th scope="col"><spring:message code="TODO.KEY" text="투입일자"/></th>
									<th scope="col"><spring:message code="TODO.KEY" text="부스 No."/></th>
								</tr>
							</thead>
							<tbody id="js-car-ext-insp-bc-analysis-step3-inspection-object-list">
							</tbody>
						</table>
					</div>
					<!-- //table -->
					
					<!-- table -->
					<div class="wp-title-section wp-no-line">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="분석 결과 출력 범위"/></h2>
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
									<th class="wp-ar"><spring:message code="TODO.KEY" text="부위"/></th>
									<td class="wp-al wp-check-padding" colspan="2">
										<ul class="wp-li-chk">
											<li id="js-car-ext-insp-bc-analysis-step3-partIdList-li">
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="분석 항목"/></th>
									<td class="wp-al wp-check-padding" colspan="2">
										<ul class="wp-li-chk">
										<li id="js-car-ext-insp-bc-analysis-step3-surfTargetBs-li">
											<strong class="wp-sTit"><spring:message code="TODO.KEY" text="전착"/></strong>
										</li>
										<li id="js-car-ext-insp-bc-analysis-step3-surfTargetPm-li">
											<strong class="wp-sTit"><spring:message code="TODO.KEY" text="중도"/></strong>
										</li>
										<li id="js-car-ext-insp-bc-analysis-step3-surfTargetCr-li">
											<strong class="wp-sTit"><spring:message code="TODO.KEY" text="상도"/></strong>
										</li>
										</ul>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //table -->
				</div>
				<div id="js-car-ext-insp-bc-analysis-step4-div" style="display: none">
					<!-- title area -->
					<div class="wp-info-btn-area">
						<div class="wp-fl">
							<button type="button" id="js-car-ext-insp-bc-analysis-step4-go-back-step3-button" class="wp-btn darkgray cr3 wp-btn-prev"><span></span><spring:message code="TODO.KEY" text="이전"/></button>
							<button type="button" id="js-car-ext-insp-bc-analysis-step4-analysis-result-save" class="wp-btn blue1 cr3"><spring:message code="TODO.KEY" text="외관 분석 결과 저장"/></button>
							<!-- <button type="button" class="wp-btn gray cr3">취소</button> -->
						</div>
						<div class="wp-fr">
							<!-- <button type="button" class="wp-btn small grayblue cr3">외관 검사 분석 이력 조회</button> -->
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
									<th><spring:message code="TODO.KEY" text="제목"/></th>
									<td><input type="text" id="js-car-ext-insp-bc-analysis-step4-title" title="내용입력" class="wp-wd100p"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="비고"/></th>
									<td><textarea cols="140" rows="5" id="js-car-ext-insp-bc-analysis-step4-remark"></textarea></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //table -->
					<!-- table -->
					<div class="wp-title-section wp-no-line">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="일반정보"/></h2>
					</div>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:10%" />
								<col style="width:10%" />
								<col style="width:10%" />
								<col style="width:12%" />
								<col style="width:12%" />
								<col style="width:12%" />
								<col style="width:12%" />
								<col style="width:22%" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col"><spring:message code="TODO.KEY" text="구분"/></th>
									<th scope="col"><spring:message code="TODO.KEY" text="공장"/></th>
									<th scope="col"><spring:message code="TODO.KEY" text="차종"/></th>
									<th scope="col"><spring:message code="TODO.KEY" text="칼라"/></th>
									<th scope="col"><spring:message code="TODO.KEY" text="검사일자"/></th>
									<th scope="col"><spring:message code="TODO.KEY" text="도장일자"/></th>
									<th scope="col"><spring:message code="TODO.KEY" text="부스 No."/></th>
									<th scope="col"><spring:message code="TODO.KEY" text="측정 장비"/></th>
								</tr>
							</thead>
							<tbody id="js-car-ext-insp-bc-analysis-step4-general-information-list">
							</tbody>
						</table>
					</div>
					<!-- //table -->
					
					<!-- table -->
					<!-- 제품 정보 -->
					<div class="wp-title-section wp-no-line">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="제품정보"/></h2>
					</div>
					<div class="wp-table-st2 wp-sel-radio" style="height:149px !important;">
						<div class="wp-table-resp-header"></div>
						<div class="wp-table-resp-body">
							<table>
							<colgroup>
								<col style="width:60px">
								<col style="width:70px">
								<col style="width:70px">
								<col style="width:70px">
								<col style="width:70px">
								<col style="width:168px">
								<col style="width:168px">
								<col style="width:168px">
								<col style="width:168px">
							</colgroup>
							<thead>
							<tr>
								<th style="width:60px"><div class="wp-table-resp-headcont"><spring:message code="TODO.KEY" text="구분"/></div></th>
								<th style="width:70px"><div class="wp-table-resp-headcont"><spring:message code="TODO.KEY" text="차종"/></div></th>
								<th style="width:70px"><div class="wp-table-resp-headcont"><spring:message code="TODO.KEY" text="색상"/></div></th>
								<th style="width:70px"><div class="wp-table-resp-headcont"><spring:message code="TODO.KEY" text="부스 No."/></div></th>
								<th style="width:70px"><div class="wp-table-resp-headcont"><spring:message code="TODO.KEY" text="공정"/></div></th>
								<th style="width:168px"><div class="wp-table-resp-headcont"><spring:message code="TODO.KEY" text="제품명"/></div></th>
								<th style="width:168px"><div class="wp-table-resp-headcont"><spring:message code="TODO.KEY" text="Lot No."/></div></th>
								<th style="width:168px"><div class="wp-table-resp-headcont"><spring:message code="TODO.KEY" text="제조일자"/></div></th>
								<th style="width:168px"><div class="wp-table-resp-headcont"><spring:message code="TODO.KEY" text="투입일자"/></div></th>
							</tr>
							</thead>
							<tbody id="js-car-ext-insp-bc-analysis-step4-product-information-list">
							</tbody>
							</table>
						</div>
					</div>
					<!-- // 제품 정보 -->
					<!-- //table -->
	
					<div class="wp-title-section wp-no-line wp-mt30">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="검사결과"/></h2>
					</div>
					<!-- scroll-table -->
					<!-- 좌측 영역 테이블 사이즈는 고정입니다. -->
					<div class="wp-hor-scroll-table wp-color-LabStep-scroll">
						<!-- 타이틀 영역 table -->
						<div class="wp-table-st1 h-center wp-title-section">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width: 50px">
								<col style="width: 60px">
								<col style="width: 60px">
								<col style="width: 70px">
								<col style="width: 100px">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="구분"/></th>
									<th><spring:message code="TODO.KEY" text="차종"/></th>
									<th><spring:message code="TODO.KEY" text="색상"/></th>
									<th><spring:message code="TODO.KEY" text="부스 No."/></th>
									<th><spring:message code="TODO.KEY" text="측정항목"/></th>
								</tr>
							</thead>
							<tbody id="js-car-ext-insp-bc-analysis-step4-analysis-result-left-list">
							</tbody>
						</table>
						</div>
						<!-- //타이틀 영역 table -->
						<!-- 스크롤 영역 -->
						<div class="wp-scroll">
						<div id="js-car-ext-insp-bc-analysis-step4-analysis-result-list" class="wp-innertable wp-table-st1 h-center">
						</div>
						</div>
						<!-- //스크롤 영역 -->
					</div>
					<!-- //scroll-table -->
	
					
					<!-- chart  -->
					<div class="wp-layout-chart wp-clearfix">
					<div class="wp-2depth">
						<!-- title-section -->
						<div class="wp-title-section wp-no-line">
							<h3 class="wp-title-blue wp-fl"><spring:message code="TODO.KEY" text="도막 두께"/></h3>
						</div>
						<!-- //title-section -->
						<div id="js-car-ext-insp-bc-analysis-step4-chart-1" class="wp-chart-area"></div>
					</div>
					<div class="wp-2depth">
						<!-- title-section -->
						<div class="wp-title-section wp-no-line">
							<h3 id="js-car-ext-insp-bc-analysis-step4-chart-2-title" class="wp-title-blue wp-fl"><spring:message code="TODO.KEY" text="외관"/></h3>
							<div class="wp-btn-area wp-mt25">						
								<div class="wp-ui-select">
									<select id="js-car-ext-insp-bc-analysis-step4-chart-partId">
									</select>
								</div>
							</div>
						</div>
						<!-- //title-section -->
						<div id="js-car-ext-insp-bc-analysis-step4-chart-2" class="wp-chart-area"></div>
					</div>
					</div>
					<!-- // chart  -->
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
		<script id="js-template-car-ext-insp-bc-analysis-step1-search-requirement-list" type="text/x-handlebars-template">
		{{#rows}}
		{{#if @first}}
		<tr name="js-car-ext-insp-bc-analysis-step1-search-requirement-list" id="js-car-ext-insp-bc-analysis-step1-search-requirement-list-{{@index}}" requirementIndex="{{@index}}" first="first">
			<th scope="row" rowspan="{{size}}" class="wp-ar"><spring:message code="TODO.KEY" text="검색 조건"/></th>
		{{else}}
		<tr name="js-car-ext-insp-bc-analysis-step1-search-requirement-list" id="js-car-ext-insp-bc-analysis-step1-search-requirement-list-{{@index}}" requirementIndex="{{@index}}" >
		{{/if}}
			<td class="wp-al">
				<span class="wp-td-tit"><spring:message code="TODO.KEY" text="기간"/></span>
				<input type="text" id="js-car-ext-insp-bc-analysis-step1-start-date-{{@index}}" class="wp-inp-datepicker wp-wd113 maxdate" placeholder="날짜입력" value="{{startDate}}"> ~ <input type="text" id="js-car-ext-insp-bc-analysis-step1-end-date-{{@index}}" class="wp-inp-datepicker wp-wd113 maxdate" placeholder="날짜입력" value="{{endDate}}">
				<span class="wp-td-tit"><spring:message code="TODO.KEY" text="공장"/></span>
				<div class="wp-ui-select wp-wd85">
					<select id="js-car-ext-insp-bc-analysis-step1-car-plant-{{@index}}" name="js-car-ext-insp-bc-analysis-step1-car-plant" title="" requirementIndex="{{@index}}">
					</select>
				</div>
				<span class="wp-td-tit"><spring:message code="TODO.KEY" text="차종"/></span>
				<div class="wp-ui-select wp-wd85">
					<select id="js-car-ext-insp-bc-analysis-step1-model-{{@index}}" title="">
					</select>
				</div>
				<div class="js-color-hidden" style="display: inline;">
				<span class="wp-td-tit"><spring:message code="TODO.KEY" text="칼라"/></span>
				<div class="wp-ui-select wp-wd85">
					<select id="js-car-ext-insp-bc-analysis-step1-color-{{@index}}" name="js-car-ext-insp-bc-analysis-step1-color" title="" requirementIndex="{{@index}}">
					</select>
				</div>
				</div>
			</td>
			<td>
				<button type="button" id="js-car-ext-insp-bc-analysis-step1-add-button-{{@index}}" name="js-car-ext-insp-bc-analysis-step1-add-button" class="wp-btn small white bgray add" value="{{@index}}"><span>추가</span></button>									
				<button type="button" id="js-car-ext-insp-bc-analysis-step1-delete-button-{{@index}}" name="js-car-ext-insp-bc-analysis-step1-delete-button" class="wp-btn small white bgray trash" value="{{@index}}"><span>삭제</span></button>
			</td>
		</tr>
		{{/rows}}
		
		{{#addRow}}
		<tr name="js-car-ext-insp-bc-analysis-step1-search-requirement-list" id="js-car-ext-insp-bc-analysis-step1-search-requirement-list-{{requirementIndex}}" requirementIndex="{{requirementIndex}}">
			<td class="wp-al">
				<span class="wp-td-tit"><spring:message code="TODO.KEY" text="기간"/></span>
				<input type="text" id="js-car-ext-insp-bc-analysis-step1-start-date-{{requirementIndex}}" class="wp-inp-datepicker wp-wd113 maxdate" placeholder="날짜입력" value="{{startDate}}"> ~ <input type="text" id="js-car-ext-insp-bc-analysis-step1-end-date-{{requirementIndex}}" class="wp-inp-datepicker wp-wd113 maxdate" placeholder="날짜입력" value="{{endDate}}">
				<span class="wp-td-tit"><spring:message code="TODO.KEY" text="공장"/></span>
				<div class="wp-ui-select wp-wd85">
					<select id="js-car-ext-insp-bc-analysis-step1-car-plant-{{requirementIndex}}" name="js-car-ext-insp-bc-analysis-step1-car-plant" title="" requirementIndex="{{requirementIndex}}">
					</select>
				</div>
				<span class="wp-td-tit"><spring:message code="TODO.KEY" text="차종"/></span>
				<div class="wp-ui-select wp-wd85">
					<select id="js-car-ext-insp-bc-analysis-step1-model-{{requirementIndex}}" title="">
					</select>
				</div>
				<div class="js-color-hidden" style="display: inline;">
				<span class="wp-td-tit"><spring:message code="TODO.KEY" text="칼라"/></span>
				<div class="wp-ui-select wp-wd85">
					<select id="js-car-ext-insp-bc-analysis-step1-color-{{requirementIndex}}" name="js-car-ext-insp-bc-analysis-step1-color" title="" requirementIndex="{{requirementIndex}}">
					</select>
				</div>
				</div>
			</td>
			<td>
				<button type="button" id="js-car-ext-insp-bc-analysis-step1-add-button-{{requirementIndex}}" name="js-car-ext-insp-bc-analysis-step1-add-button" class="wp-btn small white bgray add" value="{{requirementIndex}}"><span>추가</span></button>									
				<button type="button" id="js-car-ext-insp-bc-analysis-step1-delete-button-{{requirementIndex}}" name="js-car-ext-insp-bc-analysis-step1-delete-button" class="wp-btn small white bgray trash" value="{{requirementIndex}}"><span>삭제</span></button>
			</td>
		</tr>
		{{/addRow}}
		</script>
		<!-- step1 result list - 스크립트 -->
		<script id="js-template-car-ext-insp-bc-analysis-step1-result-list" type="text/x-handlebars-template">
		{{#if rows.length}}
			{{#rows}}
				<tr>
					<td><span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" id="js-car-ext-insp-bc-analysis-step1-result-list-checkbox-{{docNo}}" name="js-car-ext-insp-bc-analysis-step1-result-list-checkbox" value="{{docNo}}"></span></td>
					<td>{{inspDate}}</td>
					<td>{{carPlant}}</td>
					<td>[{{modelId}}] {{modelNm}}</td>
					<td>{{items}}</td>
					<td class="wp-bubble">{{itemsNm}}</td>
					<td>{{lotNo}}</td>
					<td>{{mfgDate}}</td>
					<td>{{injDate}}</td>
					<td>{{boothNm}}</td>
				</tr>
			{{/rows}}
		{{else}}
			<tr>
				<td colspan="10" class="wp-nodata"><spring:message code="TODO.KEY" text="조회된 내역이 없습니다."/> </td>
			</tr>
		{{/if}}
		</script>
		<!-- step2 target list - 스크립트 -->
		<script id="js-template-car-ext-insp-bc-analysis-step2-target-list" type="text/x-handlebars-template">
		{{#if rows.length}}
			{{#rows}}
				<tr id="js-car-ext-insp-bc-analysis-step2-target-list-tr-{{docNo}}">
					<td>
						<div class="wp-ui-select wp-wd85">
							<select id="js-car-ext-insp-bc-analysis-step2-target-list-select-groupCode-{{docNo}}" title="">
							</select>
							<input type="hidden" id="js-car-ext-insp-bc-analysis-step2-target-list-docNo-{{docNo}}" value="{{docNo}}">
							<input type="hidden" id="js-car-ext-insp-bc-analysis-step2-target-list-modelId-{{docNo}}" value="{{modelId}}">
							<input type="hidden" id="js-car-ext-insp-bc-analysis-step2-target-list-colorId-{{docNo}}" value="{{colorId}}">
							<input type="hidden" id="js-car-ext-insp-bc-analysis-step2-target-list-boothId-{{docNo}}" value="{{boothId}}">
							<input type="hidden" id="js-car-ext-insp-bc-analysis-step2-target-list-inspDate-{{docNo}}" value="{{inspDate}}">
						</div>
					</td>
					<td>{{inspDate}}</td>
					<td>{{carPlant}}</td>
					<td>[{{modelId}}] {{modelNm}}</td>
					<td>{{items}}</td>
					<td class="wp-bubble">{{itemsNm}}</td>
					<td class="wp-bubble">{{lotNo}}</td>
					<td>{{mfgDate}}</td>
					<td>{{injDate}}</td>
					<td>{{boothNm}}</td>
				</tr>
			{{/rows}}
		{{else}}
			<tr>
				<td colspan="10" class="wp-nodata"><spring:message code="TODO.KEY" text="조회된 내역이 없습니다."/> </td>
			</tr>
		{{/if}}
		</script>
		<!-- step3 list - 스크립트 -->
		<script id="js-template-car-ext-insp-bc-analysis-step3-inspection-object-list" type="text/x-handlebars-template">
		{{#if rows.length}}
			{{#rows}}
				<tr id="js-car-ext-insp-bc-analysis-step3-inspection-object-{{@index}}" class="wp-table-bg">
					<td>{{groupCodeNm}}</td>
					<td>{{inspDate}}</td>
					<td>{{carPlant}}</td>
					<td>[{{modelId}}] {{modelNm}}</td>
					<td>{{items}}</td>
					<td class="wp-bubble">{{itemsNm}}</td>
					<td class="wp-bubble">{{lotNo}}</td>
					<td>{{mfgDate}}</td>
					<td>{{injDate}}</td>
					<td>{{boothNm}}</td>
				</tr>
			{{/rows}}
		{{else}}
			<tr>
				<td colspan="11" class="wp-nodata"><spring:message code="TODO.KEY" text="조회된 내역이 없습니다."/> </td>
			</tr>
		{{/if}}
		</script>
		<!-- step4 js-car-ext-insp-bc-analysis-step4-general-information-list - 스크립트 -->
		<script id="js-template-car-ext-insp-bc-analysis-step4-general-information-list" type="text/x-handlebars-template">
		{{#if rows.length}}
			{{#rows}}
				<tr id="js-car-ext-insp-bc-analysis-step4-general-information-{{@index}}" class="wp-table-bg">
					<td scope="row">{{groupCodeNm}}</td>
					<td>{{carPlant}}</td>
					<td>[{{modelId}}] {{modelNm}}</td>
					<td>[{{colorId}}] {{colorNm}}</td>
					<td>{{inspDate}}</td>
					<td>{{paintingDate}}</td>
					<td>{{boothNm}}</td>
					<td class="wp-bubble">{{inspToolNm}}</td>
				</tr>
			{{/rows}}
		{{else}}
			<tr>
				<td colspan="8" class="wp-nodata"><spring:message code="TODO.KEY" text="조회된 내역이 없습니다."/> </td>
			</tr>
		{{/if}}
		</script>
		<!-- step4 js-car-ext-insp-bc-analysis-step4-product-information-list - 스크립트 -->
		<script id="js-template-car-ext-insp-bc-analysis-step4-product-information-list" type="text/x-handlebars-template">
		{{#if rows.length}}
			{{#rows}}
				{{#isP02}}
				<tr id="js-car-ext-insp-bc-analysis-step4-product-information-{{@index}}" class="wp-table-bg">
					<th>{{groupCodeNm}}</th>
					<th>{{modelId}}</th>
					<th></th>
					<th>{{boothNm}}</th>
					<th><spring:message code="TODO.KEY" text="전착"/></th>
					<td>[{{items}}] {{itemsNm}}</td>
					<td>{{lotNo}}</td>
					<td>{{mfgDate}}</td>
					<td></td>
				</tr>
				{{else}}
				<tr id="js-car-ext-insp-bc-analysis-step4-product-information-{{@index}}" class="wp-table-bg">
					<th rowspan="3">{{groupCodeNm}}</th>
					<th rowspan="3">{{modelId}}</th>
					<th rowspan="3">{{colorId}}</th>
					<th rowspan="3">{{boothNm}}</th>
					<th>Primer</th>
					<td>[{{pmItems}}] {{pmItemsNm}}</td>
					<td>{{pmLotNo}}</td>
					<td>{{pmMfgDate}}</td>
					<td>{{pmInjDate}}</td>
				</tr>
				<tr class="wp-table-bg">
					<th>Base</th>
					<td>[{{bsItems}}] {{bsItemsNm}}</td>
					<td>{{bsLotNo}}</td>
					<td>{{bsMfgDate}}</td>
					<td>{{bsInjDate}}</td>
				</tr>
				<tr class="wp-table-bg">
					<th>Clear</th>
					<td>[{{crItems}}] {{crItemsNm}}</td>
					<td>{{crLotNo}}</td>
					<td>{{crMfgDate}}</td>
					<td>{{crInjDate}}</td>
				</tr>
				{{/isP02}}
			{{/rows}}
		{{else}}
			<tr>
				<td colspan="9" class="wp-nodata"><spring:message code="TODO.KEY" text="조회된 내역이 없습니다."/> </td>
			</tr>
		{{/if}}
		</script>
		<!-- step4 js-car-ext-insp-bc-analysis-step4-analysis-result-left-list - 스크립트 -->
		<script id="js-template-car-ext-insp-bc-analysis-step4-analysis-result-left-list" type="text/x-handlebars-template">
		{{#if rows.length}}
			{{#rows}}
				<tr>
					<th rowspan="{{size}}">{{groupCodeNm}}</th>
					<th rowspan="{{size}}">{{modelId}}</th>
					<th rowspan="{{size}}">{{colorId}}</th>
					<th rowspan="{{size}}">{{boothNm}}</th>
					{{#isLwValue}}
						<th>L/W</th>
					{{/isLwValue}}
					{{#isInspValue}}
						<th><spring:message code="TODO.KEY" text="검사값"/></th>
					{{/isInspValue}}
				</tr>
				{{#isLuValue}}
				<tr>
					<th>LU</th>
				</tr>
				{{/isLuValue}}
				{{#isShValue}}
				<tr>
					<th>SH</th>
				</tr>
				{{/isShValue}}
				{{#isOpValue}}
				<tr>
					<th>OP</th>
				</tr>
				{{/isOpValue}}
				{{#isCfValue}}
				<tr>
					<th>CF</th>
				</tr>
				{{/isCfValue}}
				{{#isPmFtValue}}
				<tr>
					<th><spring:message code="TODO.KEY" text="도막(중도)"/></th>
				</tr>
				{{/isPmFtValue}}
				{{#isBcFtValue}}
				<tr>
					<th><spring:message code="TODO.KEY" text="도막(중도)"/></th>
				</tr>
				{{/isBcFtValue}}
				{{#isMatValue}}
				<tr>
					<th><spring:message code="TODO.KEY" text="철판두께 검사값"/></th>
				</tr>
				{{/isMatValue}}
				{{#isTotValue}}
				<tr>
					<th>Total</th>
				</tr>
				{{/isTotValue}}
			{{/rows}}
		{{/if}}
		</script>
		<!-- step4 js-car-ext-insp-bc-analysis-step4-analysis-result-list - 스크립트 -->
		<script id="js-template-car-ext-insp-bc-analysis-step4-analysis-result-list" type="text/x-handlebars-template">
		{{#if rows.length}}
			{{#rows}}
				{{#if @first}}
				<table class="wp-cont-section">
					<caption></caption>
					<colgroup>
						<col style="width:189px;">
					</colgroup>
					<thead>
						<tr>
							<th>{{partNm}}</th>
						</tr>
					</thead>
					<tbody>
				{{/if}}
						{{#isLwValue}}
						<tr>
							<td>{{lwValue}}</td>
						</tr>
						{{/isLwValue}}
						{{#isLuValue}}
						<tr>
							<td>{{luValue}}</td>
						</tr>
						{{/isLuValue}}
						{{#isShValue}}
						<tr>
							<td>{{shValue}}</td>
						</tr>
						{{/isShValue}}
						{{#isOpValue}}
						<tr>
							<td>{{opValue}}</td>
						</tr>
						{{/isOpValue}}
						{{#isCfValue}}
						<tr>
							<td>{{cfValue}}</td>
						</tr>
						{{/isCfValue}}
						{{#isPmFtValue}}
						<tr>
							<td>{{pmFtValue}}</td>
						</tr>
						{{/isPmFtValue}}
						{{#isBcFtValue}}
						<tr>
							<td>{{bcFtValue}}</td>
						</tr>
						{{/isBcFtValue}}
						{{#isInspValue}}
						<tr>
							<td>{{inspValue}}</td>
						</tr>
						{{/isInspValue}}
						{{#isMatValue}}
						<tr>
							<td>{{matValue}}</td>
						</tr>
						{{/isMatValue}}
						{{#isTotValue}}
						<tr>
							<td>{{totValue}}</td>
						</tr>
						{{/isTotValue}}
				{{#if @last}} 
					</tbody>
				</table>
				{{/if}}
			{{/rows}}
		{{/if}}
		</script>
		
		<script src="/highcharts/highcharts.js"></script>
		<script src="/highcharts/modules/exporting.js"></script>
		<script src="/highcharts/modules/no-data-to-display.js"></script>
		
		<script type="text/javascript">
		
			var gvCarExtInspBcAnalysisStep1CarPlantComboRs; // 검색조건 - 공장 콤보
			
			var gvModelType; // model type - 구분 선택된 타입
			
			var gvCarPlantCombo; // 검색조건 선택된 공장 
			var gvRequirementIndex; // 검색조건 index
			var gvDocNoList; // step1 에서 선택된 docNoList[]
			var gvGroupDocNoList; // step2 에서 선택된 gvGroupDocNoList[]
			
			// template
			var carExtInspBcAnalysisStep1SearchRequirementListTemplate;
			var carExtInspBcAnalysisStep1ResultListTemplate;
			var carExtInspBcAnalysisStep2TargetListTemplate;
			var carExtInspBcAnalysisStep3InspectionObjectListTemplate;
			var carExtInspBcAnalysisStep4GeneralInformationListTemplate;
			var carExtInspBcAnalysisStep4ProductInformationListTemplate;
			var carExtInspBcAnalysisStep4AnalysisResultLeftListTemplate;
			var carExtInspBcAnalysisStep4AnalysisResultListTemplate;

			$(document).ready(function() {
				// 헤더 공장 선택 숨김처리
				$("#js-car-header-car-plant").parent().css( "display", "none" );

				//Handlebar 초기화
				var source = $('#js-template-car-ext-insp-bc-analysis-step1-search-requirement-list').html();
				carExtInspBcAnalysisStep1SearchRequirementListTemplate = Handlebars.compile(source);
				var source = $('#js-template-car-ext-insp-bc-analysis-step1-result-list').html();
				carExtInspBcAnalysisStep1ResultListTemplate = Handlebars.compile(source);
				
				var source = $('#js-template-car-ext-insp-bc-analysis-step2-target-list').html();
				carExtInspBcAnalysisStep2TargetListTemplate = Handlebars.compile(source);

				var source = $('#js-template-car-ext-insp-bc-analysis-step3-inspection-object-list').html();
				carExtInspBcAnalysisStep3InspectionObjectListTemplate = Handlebars.compile(source);
				
				var source = $('#js-template-car-ext-insp-bc-analysis-step4-general-information-list').html();
				carExtInspBcAnalysisStep4GeneralInformationListTemplate = Handlebars.compile(source);
				var source = $('#js-template-car-ext-insp-bc-analysis-step4-product-information-list').html();
				carExtInspBcAnalysisStep4ProductInformationListTemplate = Handlebars.compile(source);
				var source = $('#js-template-car-ext-insp-bc-analysis-step4-analysis-result-left-list').html();
				carExtInspBcAnalysisStep4AnalysisResultLeftListTemplate = Handlebars.compile(source);
				var source = $('#js-template-car-ext-insp-bc-analysis-step4-analysis-result-list').html();
				carExtInspBcAnalysisStep4AnalysisResultListTemplate = Handlebars.compile(source);
				
				// 전착, 중/상도 구분 primer lotNo 없으면 전착 있으면 중/상도
				Handlebars.registerHelper('isP02', function(options) {
					if (typeof this.pmLotNo == 'undefined') {
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				Handlebars.registerHelper('isLwValue', function(options) {
					if (typeof this.lwValue !== 'undefined') {
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				Handlebars.registerHelper('isLuValue', function(options) {
					if (typeof this.luValue !== 'undefined') {
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				Handlebars.registerHelper('isShValue', function(options) {
					if (typeof this.shValue !== 'undefined') {
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				Handlebars.registerHelper('isOpValue', function(options) {
					if (typeof this.opValue !== 'undefined') {
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				Handlebars.registerHelper('isCfValue', function(options) {
					if (typeof this.cfValue !== 'undefined') {
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				Handlebars.registerHelper('isPmFtValue', function(options) {
					if (typeof this.pmFtValue !== 'undefined') {
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				Handlebars.registerHelper('isBcFtValue', function(options) {
					if (typeof this.bcFtValue !== 'undefined') {
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				Handlebars.registerHelper('isInspValue', function(options) {
					if (typeof this.inspValue !== 'undefined') {
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				Handlebars.registerHelper('isMatValue', function(options) {
					if (typeof this.matValue !== 'undefined') {
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				Handlebars.registerHelper('isTotValue', function(options) {
					if (typeof this.totValue !== 'undefined') {
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				
				
				
				
				gvCarPlantCombo = "";
				gvRequirementIndex = "";
				$("#js-car-ext-insp-bc-analysis-step3-gDocNo").val("");
				
				//조회 버튼
				$('#js-car-ext-insp-bc-analysis-step1-search-button').off().on('click', function() {
					retrieveCarExtInspBcAnalysisStep1();
				});
				//외관 검사 대상 선택 버튼(다음 step2으로)
				$('#js-car-ext-insp-bc-analysis-step1-select-object').off().on('click', function() {
					goStep2CarExtInspBcAnalysisStep1();
				});
				// step2 -> step1 이전 버튼
				$('#js-car-ext-insp-bc-analysis-step2-go-back-step1-button').off().on('click', function() {
					goBackStep1CarExtInspBcAnalysisStep2();
				});
				//외관 검사 대상 확인 버튼(다음 step3으로)
				$('#js-car-ext-insp-bc-analysis-step2-verify-object').off().on('click', function() {
					goStep3CarExtInspBcAnalysisStep2();
				});
				//외관 검사 결과 분석 버튼(다음 step4로)
				$('#js-car-ext-insp-bc-analysis-step3-result-analysis').off().on('click', function() {
					goStep4CarExtInspBcAnalysisStep3();
				});
				// step3 -> step2 이전 버튼
				$('#js-car-ext-insp-bc-analysis-step3-go-back-step2-button').off().on('click', function() {
					goBackStep2CarExtInspBcAnalysisStep3();
				});
				// step4 -> step3 이전 버튼
				$('#js-car-ext-insp-bc-analysis-step4-go-back-step3-button').off().on('click', function() {
					goBackStep3CarExtInspBcAnalysisStep4();
				});
				// 외관 분석 결과 저장
				$('#js-car-ext-insp-bc-analysis-step4-analysis-result-save').off().on('click', function() {
					carExtInspBcAnalysisStep4AnalysisResultSave();
				});
				// 외관 분석 부위 콤보 change
				$('#js-car-ext-insp-bc-analysis-step4-chart-partId').off().on('change', function() {
					retrieveCarExtInspResultG.request();
				});
				
				// 전체선택
				$('#js-car-ext-insp-bc-analysis-step1-result-select-all').off().on('click', function() {
					if($(this).is(':checked'))
					{
						$('input:checkbox[id*=js-car-ext-insp-bc-analysis-step1-result-list-checkbox]').each(function(){
							if(!$(this).is(':checked'))
								$(this).click();
						});
					}
					else
					{
						$('input:checkbox[id*=js-car-ext-insp-bc-analysis-step1-result-list-checkbox]').each(function(){
							if($(this).is(':checked'))
								$(this).click();
						});
					}
					setListCnt();
				});
				
				retrieveSearchOption.request();
			});
			
			var carExtInspBcAnalysisStep4AnalysisResultSave = function(){
				app.message.confirm({
					  title             : '<spring:message code="TODO.KEY" text="저장"/>'
					, message           : '<spring:message code="TODO.KEY" text="저장 하시겠습니까?"/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
					, callback          : {
						confirm: function() {
							saveCarExtInspResult.request();
						}
					}
				});
			}
			
			//외관 검사 대상 선택 버튼 클릭 step2로 이동
			var goStep2CarExtInspBcAnalysisStep1 = function(){
				gvDocNoList = [];
				//body, bumper checked list 생성
				$('input:checkbox[id*=js-car-ext-insp-bc-analysis-step1-result-list-checkbox]').each(function(){
					if($(this).is(':checked'))
						gvDocNoList.push({docNo : $(this).val()});
				});
				
				if(gvDocNoList.length > 0){
					$('#js-car-ext-insp-bc-analysis-step1-div').css("display", "none");
					$('#js-car-ext-insp-bc-analysis-step2-div').css("display", "block");
					$('#js-car-ext-insp-bc-analysis-step3-div').css("display", "none");
					$('#js-car-ext-insp-bc-analysis-step4-div').css("display", "none");
					
					$('#js-car-ext-insp-bc-analysis-step1-active').addClass("active");
					$('#js-car-ext-insp-bc-analysis-step2-active').addClass("active");
					$('#js-car-ext-insp-bc-analysis-step3-active').removeClass("active");
					$('#js-car-ext-insp-bc-analysis-step4-active').removeClass("active");
					
					$("#js-car-ext-insp-bc-analysis-step2-target-selected-list").find("li").remove();
					retrieveCarExtInspSearch.step2searchTargetList.request('', JSON.stringify(gvDocNoList));
				} else {
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="선택된 내역이 없습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					});
				}
			};
			// step2 -> step1 이전 버튼
			var goBackStep1CarExtInspBcAnalysisStep2 = function(){
				$('#js-car-ext-insp-bc-analysis-step1-div').css("display", "block");
				$('#js-car-ext-insp-bc-analysis-step2-div').css("display", "none");
				$('#js-car-ext-insp-bc-analysis-step3-div').css("display", "none");
				$('#js-car-ext-insp-bc-analysis-step4-div').css("display", "none");
				
				$('#js-car-ext-insp-bc-analysis-step1-active').addClass("active");
				$('#js-car-ext-insp-bc-analysis-step2-active').removeClass("active");
				$('#js-car-ext-insp-bc-analysis-step3-active').removeClass("active");
				$('#js-car-ext-insp-bc-analysis-step4-active').removeClass("active");				
			};
			// step3 -> step2 이전 버튼
			var goBackStep2CarExtInspBcAnalysisStep3 = function(){
				$('#js-car-ext-insp-bc-analysis-step1-div').css("display", "none");
				$('#js-car-ext-insp-bc-analysis-step2-div').css("display", "block");
				$('#js-car-ext-insp-bc-analysis-step3-div').css("display", "none");
				$('#js-car-ext-insp-bc-analysis-step4-div').css("display", "none");
				
				$('#js-car-ext-insp-bc-analysis-step1-active').addClass("active");
				$('#js-car-ext-insp-bc-analysis-step2-active').addClass("active");
				$('#js-car-ext-insp-bc-analysis-step3-active').removeClass("active");
				$('#js-car-ext-insp-bc-analysis-step4-active').removeClass("active");				
			};
			// step4 -> step3 이전 버튼
			var goBackStep3CarExtInspBcAnalysisStep4 = function(){
				$('#js-car-ext-insp-bc-analysis-step1-div').css("display", "none");
				$('#js-car-ext-insp-bc-analysis-step2-div').css("display", "none");
				$('#js-car-ext-insp-bc-analysis-step3-div').css("display", "block");
				$('#js-car-ext-insp-bc-analysis-step4-div').css("display", "none");
				
				$('#js-car-ext-insp-bc-analysis-step1-active').addClass("active");
				$('#js-car-ext-insp-bc-analysis-step2-active').addClass("active");
				$('#js-car-ext-insp-bc-analysis-step3-active').addClass("active");
				$('#js-car-ext-insp-bc-analysis-step4-active').removeClass("active");				
			};
			
			//외관 검사 대상 확인 버튼(다음 step3으로)
			var goStep3CarExtInspBcAnalysisStep2 = function(){
				gvGroupDocNoList = [];
				//selected list 생성
				$("#js-car-ext-insp-bc-analysis-step2-target-selected-list").find("li").each(function( index ){
					var id = this.id.substring("js-car-ext-insp-bc-analysis-step2-target-selected-list-li".length + 1);
					gvGroupDocNoList.push({
						groupCode : id,
						docNo : $("#js-car-ext-insp-bc-analysis-step2-target-selected-list-li-body-docNo-"+id).val(),
						modelId : $("#js-car-ext-insp-bc-analysis-step2-target-selected-list-li-body-modelId-"+id).val(),
						colorId : $("#js-car-ext-insp-bc-analysis-step2-target-selected-list-li-body-colorId-"+id).val(),
						boothId : $("#js-car-ext-insp-bc-analysis-step2-target-selected-list-li-body-boothId-"+id).val(),
						inspDate : $("#js-car-ext-insp-bc-analysis-step2-target-selected-list-li-body-inspDate-"+id).val()
					});
				});				
				if(gvGroupDocNoList.length > 0){
					$('#js-car-ext-insp-bc-analysis-step1-div').css("display", "none");
					$('#js-car-ext-insp-bc-analysis-step2-div').css("display", "none");
					$('#js-car-ext-insp-bc-analysis-step3-div').css("display", "block");
					$('#js-car-ext-insp-bc-analysis-step4-div').css("display", "none");
					
					$('#js-car-ext-insp-bc-analysis-step1-active').addClass("active");
					$('#js-car-ext-insp-bc-analysis-step2-active').addClass("active");
					$('#js-car-ext-insp-bc-analysis-step3-active').addClass("active");
					$('#js-car-ext-insp-bc-analysis-step4-active').removeClass("active");
					
					retrieveCarExtInspGroupList.request(JSON.stringify(gvGroupDocNoList));
				} else {
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="선택된 내역이 없습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					});
				}
			};

			//외관 검사 결과 분석 버튼(다음 step4로)
			var goStep4CarExtInspBcAnalysisStep3 = function(){
				gvPartIdList = [];
				//selected list 생성
				$("input:checkbox[name='js-car-ext-insp-bc-analysis-step3-partIdList-item']:checked").each(function() {
					var value = $(this).val();
					gvPartIdList.push({
						partId : value
					});
				});
				
				var st01 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetBs-item-ST01").is(":checked") ? "Y" : "N";
				var st02 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetBs-item-ST02").is(":checked") ? "Y" : "N";
				var st03 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetPm-item-ST03").is(":checked") ? "Y" : "N";
				var st04 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetPm-item-ST04").is(":checked") ? "Y" : "N";
				var st05 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-item-ST05").is(":checked") ? "Y" : "N";
				var st06 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-item-ST06").is(":checked") ? "Y" : "N";
				var st07 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-item-ST07").is(":checked") ? "Y" : "N";
				var st08 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-item-ST08").is(":checked") ? "Y" : "N";
				var st09 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-item-ST09").is(":checked") ? "Y" : "N";
				
				var cntSurfTargetBs = 0;
				$("input:checkbox[name='js-car-ext-insp-bc-analysis-step3-surfTargetBs-item']:checked").each(function() {
					var value = $(this).val();
					cntSurfTargetBs++;
				});
				
				var cntSurfTargetPm = 0;
				$("input:checkbox[name='js-car-ext-insp-bc-analysis-step3-surfTargetPm-item']:checked").each(function() {
					var value = $(this).val();
					cntSurfTargetPm++;
				});
				
				var cntSurfTargetCr = 0;
				$("input:checkbox[name='js-car-ext-insp-bc-analysis-step3-surfTargetCr-item']:checked").each(function() {
					var value = $(this).val();
					cntSurfTargetCr++;
				});
				
				if(gvPartIdList.length > 0 && (cntSurfTargetBs > 0 || cntSurfTargetPm > 0 || cntSurfTargetCr > 0)){
					$('#js-car-ext-insp-bc-analysis-step1-div').css("display", "none");
					$('#js-car-ext-insp-bc-analysis-step2-div').css("display", "none");
					$('#js-car-ext-insp-bc-analysis-step3-div').css("display", "none");
					$('#js-car-ext-insp-bc-analysis-step4-div').css("display", "block");
					
					$('#js-car-ext-insp-bc-analysis-step1-active').addClass("active");
					$('#js-car-ext-insp-bc-analysis-step2-active').addClass("active");
					$('#js-car-ext-insp-bc-analysis-step3-active').addClass("active");
					$('#js-car-ext-insp-bc-analysis-step4-active').addClass("active");
					
					retrieveCarExtInspResult.request();
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
				
				$('input:checkbox[id*=js-car-ext-insp-bc-analysis-step1-result-list-checkbox]').each(function(){
					if($(this).is(':checked'))
						cnt++;
				});
				$("#js-car-ext-insp-bc-analysis-step1-selected-result-cnt").text(cnt);
			};
			// ------------------------------------------------
			// 최초 데이터 조회 (공정, 구분)
			// ------------------------------------------------
			var retrieveSearchOption = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
		
						if (message === 'OK') {
							var procId = response.rs.procId;
							if(procId.length > 0){
								for(var i=0; i<procId.length; i++)
								{
									var setClass = (i == 0) ? "on" : "";
									var html = '<li><button type="button" id="js-car-ext-insp-bc-analysis-step1-procId-'+procId[i].code+'" class="'+setClass+'">'+procId[i].codeNm+'</button></li>';
									$("#js-car-ext-insp-bc-analysis-step1-procId").append(html);
									
									$('#js-car-ext-insp-bc-analysis-step1-procId-'+procId[i].code).off().on('click', function() {
										$("#js-car-ext-insp-bc-analysis-step1-result-list").empty();
										$("#js-car-ext-insp-bc-analysis-step1-total-result-cnt").text('0');
										setListCnt();
										initCarExtInspBcAnalysisStep1SearchRequirementList();
										
										var procId = this.id.substring("js-car-ext-insp-bc-analysis-step1-procId".length + 1);
										if(procId == "P02"){
											$(".js-color-hidden").css("display", "none");
											$(this).parents().find('button[id*=js-car-ext-insp-bc-analysis-step1-procId]').removeClass("on");
											$(this).addClass("on");
										} else {
											$(".js-color-hidden").css("display", "inline");
											$("#js-car-ext-insp-bc-analysis-step1-procId-P02").removeClass("on");
											if($(this).hasClass("on")){
												$(this).removeClass("on");
											} else {
												$(this).addClass("on");
											}
										}
									});
								}
							}
							var modelType = response.rs.modelType;
							if(modelType.length > 0){
								for(var i=0; i<modelType.length; i++)
								{
									var setClass = (i == 0) ? "on" : "";
									var html = '<li><button type="button" id="js-car-ext-insp-bc-analysis-step1-modelType-'+modelType[i].code+'" class="'+setClass+'">'+modelType[i].codeNm+'</button></li>';
									$("#js-car-ext-insp-bc-analysis-step1-modelType").append(html);
									
									$('#js-car-ext-insp-bc-analysis-step1-modelType-'+modelType[i].code).off().on('click', function() {
										$("#js-car-ext-insp-bc-analysis-step1-result-list").empty();
										$("#js-car-ext-insp-bc-analysis-step1-total-result-cnt").text('0');
										setListCnt();
										
										gvModelType = this.id.substring("js-car-ext-insp-bc-analysis-step1-modelType".length + 1);
										retrieveCarPlantList.request();
									});
								}
								//최초 검색조건 설정 위함
								$('#js-car-ext-insp-bc-analysis-step1-modelType-'+modelType[0].code).click();
							}
							
						}else
						{
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
				error: function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
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
							  service : 'car.extinsp'
							, method : 'retrieveSearchOption'
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			// ------------------------------------------------
			// 최초 데이터 조회 (공장)
			// ------------------------------------------------
			var retrieveCarPlantList = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
		
						if (message === 'OK') {
							
							gvCarExtInspBcAnalysisStep1CarPlantComboRs = response.rs;
							
							initCarExtInspBcAnalysisStep1SearchRequirementList();
						}else
						{
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
				error: function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
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
							  service : 'car.extinsp'
							, method : 'retrieveCarPlantList'
							, modelType : gvModelType
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//step1 조회 데이터 수집
			var retrieveCarExtInspBcAnalysisStep1 = function(){
				var searchList = [];
				
				$("#js-car-ext-insp-bc-analysis-step1-search-requirement-list-append").find("tr").each(function() {
					var id = this.id.substring("js-car-ext-insp-bc-analysis-step1-search-requirement-list".length + 1);
					
					var startDate     = $("#js-car-ext-insp-bc-analysis-step1-start-date-" + id).val();
					var endDate       = $("#js-car-ext-insp-bc-analysis-step1-end-date-" + id).val();
					var carPlant      = $("#js-car-ext-insp-bc-analysis-step1-car-plant-" + id).val();
					var modelId       = $("#js-car-ext-insp-bc-analysis-step1-model-" + id).val();
					var colorId       = $("#js-car-ext-insp-bc-analysis-step1-color-" + id).val();
					// 공정 - 전착인 경우 컬러 조건 안씀
					var procId = '';
					$("#js-car-ext-insp-bc-analysis-step1-procId").find("button").each(function(){
						if($(this).hasClass("on")){
							var selectedProcId = this.id.substring("js-car-ext-insp-bc-analysis-step1-procId".length + 1);
							procId = procId + selectedProcId;
					    }										
					});
					
// 					if(procId == "P02"){
// 						// 데이터가 모두 있을 경우에만 추가
// 						if(	   !app.utils.isEmpty(startDate)
// 							&& !app.utils.isEmpty(endDate)	
// 							&& !app.utils.isEmpty(carPlant)	
// 							&& !app.utils.isEmpty(modelId)	){
// 							searchList.push({
// 								startDate    : startDate    
// 							  , endDate      : endDate      
// 							  , carPlant     : carPlant     
// 							  , modelId      : modelId      
// 							  , colorId      : ''      });
// 						}						
// 					} else {
// 						// 데이터가 모두 있을 경우에만 추가
// 						if(	   !app.utils.isEmpty(startDate)
// 							&& !app.utils.isEmpty(endDate)	
// 							&& !app.utils.isEmpty(carPlant)	
// 							&& !app.utils.isEmpty(modelId)	
// 							&& !app.utils.isEmpty(colorId)	){
// 							searchList.push({
// 								startDate    : startDate    
// 							  , endDate      : endDate      
// 							  , carPlant     : carPlant     
// 							  , modelId      : modelId      
// 							  , colorId      : colorId      });
// 						}						
// 					}
					if(procId == "P02"){
 						if(	   !app.utils.isEmpty(startDate)
 							&& !app.utils.isEmpty(endDate) ){
 							searchList.push({
 								startDate    : startDate    
 							  , endDate      : endDate      
 							  , carPlant     : carPlant     
 							  , modelId      : modelId      
 							  , colorId      : ''      });
 						}						
 					} else {
 						if(	   !app.utils.isEmpty(startDate)
 							&& !app.utils.isEmpty(endDate) ){
 							searchList.push({
 								startDate    : startDate    
 							  , endDate      : endDate      
 							  , carPlant     : carPlant     
 							  , modelId      : modelId      
 							  , colorId      : colorId      });
 						}						
 					}
				});

				if(searchList.length > 0){					
					// result 조회
					retrieveCarExtInspSearch.request(JSON.stringify(searchList), '');
				} else {
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="에러"/>'
						, message           : '<spring:message code="TODO.KEY" text="검색조건 입력후 조회 하세요."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					});
				}
			};
			
			//------------------------------------------------
			// 외관 분석 결과 저장
			//------------------------------------------------
			var saveCarExtInspResult = {
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
											window.location.href = "/car/inspection/carExtInspBcAnalysis.do";
										}
									}
								});								
							}
						}else
						{
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
				error: function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
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
					var gDocNo = $("#js-car-ext-insp-bc-analysis-step3-gDocNo").val();
					
					var title = $("#js-car-ext-insp-bc-analysis-step4-title").val();
					var remark = $("#js-car-ext-insp-bc-analysis-step4-remark").val();
					
					var targetIdList = [];					
					$("input:checkbox[name*='js-car-ext-insp-bc-analysis-step3-surfTarget']:checked").each(function() {
						var target = $(this).val();
						targetIdList.push({targetId: target});
					});
					
					var params = {
						service: 'car.extinsp',
						method: 'saveCarExtInspResult',
						gDocNo: gDocNo,
						partIdList: JSON.stringify(gvPartIdList),
						targetIdList: JSON.stringify(targetIdList),
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
			// 외관 검사 결과 분석 조회
			//------------------------------------------------
			var retrieveCarExtInspResult = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							var data = {
								rows : response.rs.extInspList
							};
							
							var html = carExtInspBcAnalysisStep4GeneralInformationListTemplate(data);
							$("#js-car-ext-insp-bc-analysis-step4-general-information-list").empty().append(html);
							
							var html = carExtInspBcAnalysisStep4ProductInformationListTemplate(data);
							$("#js-car-ext-insp-bc-analysis-step4-product-information-list").empty().append(html);
							
							var data = response.rs.resultDt;
							
							var groupCodeArr = [];
							var analysisResultLeftArr = [];
							
							for (var i=0; i<data.length; i++) {
								var groupCode = data[i].gCode;
								var groupCodeNm = data[i].groupCodeNm;
								var modelId = data[i].modelId;
								var colorId = data[i].colorId;
								var boothNm = data[i].boothNm;
								var size = 0;
								if(typeof data[i].lwValue !== 'undefined'){ size++; }
								if(typeof data[i].luValue !== 'undefined'){ size++; }
								if(typeof data[i].shValue !== 'undefined'){ size++; }
								if(typeof data[i].opValue !== 'undefined'){ size++; }
								if(typeof data[i].cfValue !== 'undefined'){ size++; }
								if(typeof data[i].pmFtValue !== 'undefined'){ size++; }
								if(typeof data[i].bcFtValue !== 'undefined'){ size++; }
								if(typeof data[i].inspValue !== 'undefined'){ size++; }
								if(typeof data[i].matValue !== 'undefined'){ size++; }
								if(typeof data[i].totValue !== 'undefined'){ size++; }
								
								if($.inArray(groupCode, groupCodeArr) === -1){
									groupCodeArr.push(groupCode);
									analysisResultLeftArr.push({
										groupCode: groupCode,
										groupCodeNm: groupCodeNm,
										modelId: modelId,
										colorId: colorId,
										boothNm: boothNm,
										size: size
									});
									if(typeof data[i].lwValue !== 'undefined'){ analysisResultLeftArr[(analysisResultLeftArr.length - 1)].lwValue = data[i].lwValue }
									if(typeof data[i].luValue !== 'undefined'){ analysisResultLeftArr[(analysisResultLeftArr.length - 1)].luValue = data[i].luValue }
									if(typeof data[i].shValue !== 'undefined'){ analysisResultLeftArr[(analysisResultLeftArr.length - 1)].shValue = data[i].shValue }
									if(typeof data[i].opValue !== 'undefined'){ analysisResultLeftArr[(analysisResultLeftArr.length - 1)].opValue = data[i].opValue }
									if(typeof data[i].cfValue !== 'undefined'){ analysisResultLeftArr[(analysisResultLeftArr.length - 1)].cfValue = data[i].cfValue }
									if(typeof data[i].pmFtValue !== 'undefined'){ analysisResultLeftArr[(analysisResultLeftArr.length - 1)].pmFtValue = data[i].pmFtValue }
									if(typeof data[i].bcFtValue !== 'undefined'){ analysisResultLeftArr[(analysisResultLeftArr.length - 1)].bcFtValue = data[i].bcFtValue }
									if(typeof data[i].inspValue !== 'undefined'){ analysisResultLeftArr[(analysisResultLeftArr.length - 1)].inspValue = data[i].inspValue }
									if(typeof data[i].matValue !== 'undefined'){ analysisResultLeftArr[(analysisResultLeftArr.length - 1)].matValue = data[i].matValue }
									if(typeof data[i].totValue !== 'undefined'){ analysisResultLeftArr[(analysisResultLeftArr.length - 1)].totValue = data[i].totValue }
								}
							}
							
							//js-car-ext-insp-bc-analysis-step4-analysis-result-left-list
							var analysisResultLeft = {
								rows : analysisResultLeftArr
							}
							var html = carExtInspBcAnalysisStep4AnalysisResultLeftListTemplate(analysisResultLeft);
							$("#js-car-ext-insp-bc-analysis-step4-analysis-result-left-list").empty().append(html);
							
							var analysisResult = response.rs.resultDt;
														
							var partIdArr = [];
							for(var k=0 ; k<analysisResult.length ; k++){
								if($.inArray(analysisResult[k].partId, partIdArr) === -1){
									partIdArr.push(analysisResult[k].partId);
								}
							}
							$("#js-car-ext-insp-bc-analysis-step4-analysis-result-list").empty();
							$("#js-car-ext-insp-bc-analysis-step4-analysis-result-list").css("width", 189 * (partIdArr.length + 1) + "px");
							
							for(var i=0 ; i<partIdArr.length ; i++){
								var analysisResultSet = {
									rows: []
								};
								for(var j=0 ; j<analysisResult.length ; j++){
									if(partIdArr[i] == analysisResult[j].partId){
										analysisResultSet.rows.push(analysisResult[j]);										
									}
								}
								var html = carExtInspBcAnalysisStep4AnalysisResultListTemplate(analysisResultSet);
								$("#js-car-ext-insp-bc-analysis-step4-analysis-result-list").append(html);
							}
							
							//chart setting
							var partIdList = response.rs.partIdList;
							$("#js-car-ext-insp-bc-analysis-step4-chart-partId").find('option').remove();
							for(var i=0; i<partIdList.length; i++)
							{
								$("#js-car-ext-insp-bc-analysis-step4-chart-partId").append("<option value='"+partIdList[i].partId+"'>"+partIdList[i].partNm+"</option>");
							}
							$("#js-car-ext-insp-bc-analysis-step4-chart-partId").attr("title", partIdList.length+" <spring:message code='TODO.KEY' text='건'/>");
							
							//var chartsResult = response.rs.resultDt1;							
							retrieveCarExtInspResultG.request();
							
							
						}else
						{
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
				error: function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
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
					var procId = '';
					$("#js-car-ext-insp-bc-analysis-step1-procId").find("button").each(function(){
						if($(this).hasClass("on")){
							var selectedProcId = this.id.substring("js-car-ext-insp-bc-analysis-step1-procId".length + 1);
							procId = procId + selectedProcId;
					    }										
					});
					var gDocNo = $("#js-car-ext-insp-bc-analysis-step3-gDocNo").val();
					var st01 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetBs-item-ST01").is(":checked") ? "Y" : "N";
					var st02 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetBs-item-ST02").is(":checked") ? "Y" : "N";
					var st03 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetPm-item-ST03").is(":checked") ? "Y" : "N";
					var st04 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetPm-item-ST04").is(":checked") ? "Y" : "N";
					var st05 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-item-ST05").is(":checked") ? "Y" : "N";
					var st06 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-item-ST06").is(":checked") ? "Y" : "N";
					var st07 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-item-ST07").is(":checked") ? "Y" : "N";
					var st08 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-item-ST08").is(":checked") ? "Y" : "N";
					var st09 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-item-ST09").is(":checked") ? "Y" : "N";
					
					var params = {
						service: 'car.extinsp',
						method: 'retrieveCarExtInspResult',
						procId: procId,
						gDocNo: gDocNo,
						partIdList: JSON.stringify(gvPartIdList),
						st01: st01,
						st02: st02,
						st03: st03,
						st04: st04,
						st05: st05,
						st06: st06,
						st07: st07,
						st08: st08,
						st09: st09
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				} 
			};
			
			//------------------------------------------------
			// 외관 검사 결과 분석 조회 - 그래프 
			//------------------------------------------------
			var retrieveCarExtInspResultG = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							
							//chart setting
							var chartsResult = response.rs;							
							
							var procId = '';
							$("#js-car-ext-insp-bc-analysis-step1-procId").find("button").each(function(){
								if($(this).hasClass("on")){
									var selectedProcId = this.id.substring("js-car-ext-insp-bc-analysis-step1-procId".length + 1);
									procId = procId + selectedProcId;
							    }										
							});
							
							if(procId == 'P02'){
								$("#js-car-ext-insp-bc-analysis-step4-chart-2-title").text("조도 & 광택");
								carExtInspBcAnalysisStep4ChartSetP02(chartsResult);								
							} else {
								$("#js-car-ext-insp-bc-analysis-step4-chart-2-title").text("외관");
								carExtInspBcAnalysisStep4ChartSetOther(chartsResult);								
							}
							
						}else
						{
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
				error: function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
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
					var procId = '';
					$("#js-car-ext-insp-bc-analysis-step1-procId").find("button").each(function(){
						if($(this).hasClass("on")){
							var selectedProcId = this.id.substring("js-car-ext-insp-bc-analysis-step1-procId".length + 1);
							procId = procId + selectedProcId;
					    }										
					});
					var gDocNo = $("#js-car-ext-insp-bc-analysis-step3-gDocNo").val();
					var st01 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetBs-item-ST01").is(":checked") ? "Y" : "N";
					var st02 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetBs-item-ST02").is(":checked") ? "Y" : "N";
					var st03 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetPm-item-ST03").is(":checked") ? "Y" : "N";
					var st04 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetPm-item-ST04").is(":checked") ? "Y" : "N";
					var st05 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-item-ST05").is(":checked") ? "Y" : "N";
					var st06 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-item-ST06").is(":checked") ? "Y" : "N";
					var st07 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-item-ST07").is(":checked") ? "Y" : "N";
					var st08 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-item-ST08").is(":checked") ? "Y" : "N";
					var st09 = $("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-item-ST09").is(":checked") ? "Y" : "N";
					
					var partId = $("#js-car-ext-insp-bc-analysis-step4-chart-partId").val();
					
					var params = {
						service: 'car.extinsp',
						method: 'retrieveCarExtInspResultG',
						procId: procId,
						gDocNo: gDocNo,
						partIdList: JSON.stringify(gvPartIdList),
						st01: st01,
						st02: st02,
						st03: st03,
						st04: st04,
						st05: st05,
						st06: st06,
						st07: st07,
						st08: st08,
						st09: st09,
						partId: partId
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				} 
			};
			
			var carExtInspBcAnalysisStep4ChartSetP02 = function(data){

				var gCodeArr  = new Array();
				var tempArr1  = new Array();
				var tempArr2  = new Array();
				var tempArr3  = new Array();
				var tempArr4  = new Array();
				var tempArr5  = new Array();
				var tempArr6  = new Array();
				
				var name1 = "검사값";
				var name2 = "철판두께 검사값";
				var name3 = "조도수직";
				var name4 = "조도수평";
				var name5 = "광택수직";
				var name6 = "광택수평";
				
				for(var i=0 ; i<data.length ; i++){
					gCodeArr.push(data[i].groupCodeNm);
					tempArr1.push(data[i].inspValue);
					tempArr2.push(data[i].matValue);
					tempArr3.push(data[i].pe07Value);
					tempArr4.push(data[i].pe08Value);
					tempArr5.push(data[i].pe09Value);
					tempArr6.push(data[i].pe10Value);
				}
				
				Highcharts.chart('js-car-ext-insp-bc-analysis-step4-chart-1', {
					chart: {
				        zoomType: 'xy'
				    },
			        title: {
			            text: ''
			        },
			        xAxis: [{
			            categories: gCodeArr,
			            crosshair: true
			        }],
			        yAxis: [{ // Primary yAxis
			            labels: {
			                format: '{value}㎛',
			                style: {
			                    color: "black"
			                }
			            },
			            title: {
			                text: '도막 두께',
			                style: {
			                    color: "black"
			                }
			            }
			        }],
			        tooltip: {
			            shared: true
			        },
			        exporting: {enabled: false },
			        series: [{
			            name: name1,
			            type: 'spline',
			            data: tempArr1,
			            tooltip: {
			                valueSuffix: '㎛'
			            },
			            color: "red"
			        }, {
			            name: name2,
			            type: 'spline',
			            data: tempArr2,
			            tooltip: {
			                valueSuffix: '㎛'
			            },
			            color: "orange"
			        }]
			    });
				
				Highcharts.chart('js-car-ext-insp-bc-analysis-step4-chart-2', {
					chart: {
				        zoomType: 'xy'
				    },
			        title: {
			            text: ''
			        },
			        xAxis: [{
			            categories: gCodeArr,
			            crosshair: true
			        }],
			        yAxis: [{ // Primary yAxis
			            labels: {
			                format: '{value}cut-off:0.8 / 60º',
			                style: {
			                    color: "black"
			                }
			            },
			            title: {
			                text: '조도 / 광택',
			                style: {
			                    color: "black"
			                }
			            }
			        }],
			        tooltip: {
			            shared: true
			        },
			        exporting: {enabled: false },
			        series: [{
			            name: name3,
			            type: 'spline',
			            data: tempArr3,
			            tooltip: {
			                valueSuffix: 'cut-off:0.8'
			            },
			            color: "red"
			        }, {
			            name: name4,
			            type: 'spline',
			            data: tempArr4,
			            tooltip: {
			                valueSuffix: 'cut-off:0.8'
			            },
			            color: "orange"
			        }, {
			            name: name5,
			            type: 'spline',
			            data: tempArr5,
			            tooltip: {
			                valueSuffix: '60º'
			            },
			            color: "blue"
			        }, {
			            name: name6,
			            type: 'spline',
			            data: tempArr6,
			            tooltip: {
			                valueSuffix: '60º'
			            },
			            color: "green"
			        }]
			    });

				
			};
			
			var carExtInspBcAnalysisStep4ChartSetOther = function(data){

				var gCodeArr  = new Array();
				var tempArr1  = new Array();
				var tempArr2  = new Array();
				var tempArr3  = new Array();
				var tempArr4  = new Array();
				var tempArr5  = new Array();
				var tempArr6  = new Array();
				var tempArr7  = new Array();
				var tempArr8  = new Array();
				
				var name1 = "L/WAVE";
				var name2 = "LU";
				var name3 = "SH";
				var name4 = "OP";
				var name5 = "CF";
				var name6 = "중도 도막두께";
				var name7 = "상도 도막두께";
				var name8 = "도막두께 Total";
				
				for(var i=0 ; i<data.length ; i++){
					gCodeArr.push(data[i].groupCodeNm);
					tempArr1.push(data[i].lwValue);
					tempArr2.push(data[i].luValue);
					tempArr3.push(data[i].shValue);
					tempArr4.push(data[i].opValue);
					tempArr5.push(data[i].cfValue);
					tempArr6.push(data[i].pmFtValue);
					tempArr7.push(data[i].bcFtValue);
					tempArr8.push(data[i].totFtValue);
				}
				
				Highcharts.chart('js-car-ext-insp-bc-analysis-step4-chart-1', {
					chart: {
				        zoomType: 'xy'
				    },
			        title: {
			            text: ''
			        },
			        xAxis: [{
			            categories: gCodeArr,
			            crosshair: true
			        }],
			        yAxis: [{ // Primary yAxis
			            labels: {
			                format: '{value}㎛',
			                style: {
			                    color: "black"
			                }
			            },
			            title: {
			                text: '도막 두께',
			                style: {
			                    color: "black"
			                }
			            }
			        }],
			        tooltip: {
			            shared: true
			        },
			        exporting: {enabled: false },
			        series: [{
			            name: name6,
			            type: 'spline',
			            data: tempArr6,
			            tooltip: {
			                valueSuffix: '㎛'
			            },
			            color: "red"
			        }, {
			            name: name7,
			            type: 'spline',
			            data: tempArr7,
			            tooltip: {
			                valueSuffix: '㎛'
			            },
			            color: "orange"
			        }, {
			            name: name8,
			            type: 'spline',
			            data: tempArr8,
			            tooltip: {
			                valueSuffix: '㎛'
			            },
			            color: "blue"
			        }]
			    });
				
				Highcharts.chart('js-car-ext-insp-bc-analysis-step4-chart-2', {
					chart: {
				        zoomType: 'xy'
				    },
			        title: {
			            text: ''
			        },
			        xAxis: [{
			            categories: gCodeArr,
			            crosshair: true
			        }],
			        yAxis: [{ // Primary yAxis
			            labels: {
			                format: '{value}',
			                style: {
			                    color: "black"
			                }
			            },
			            title: {
			                text: '외관',
			                style: {
			                    color: "black"
			                }
			            }
			        }],
			        tooltip: {
			            shared: true
			        },
			        exporting: {enabled: false },
			        series: [{
			            name: name1,
			            type: 'spline',
			            data: tempArr1,
			            tooltip: {
			                valueSuffix: ''
			            },
			            color: "red"
			        }, {
			            name: name2,
			            type: 'spline',
			            data: tempArr2,
			            tooltip: {
			                valueSuffix: ''
			            },
			            color: "orange"
			        }, {
			            name: name3,
			            type: 'spline',
			            data: tempArr3,
			            tooltip: {
			                valueSuffix: ''
			            },
			            color: "blue"
			        }, {
			            name: name4,
			            type: 'spline',
			            data: tempArr4,
			            tooltip: {
			                valueSuffix: ''
			            },
			            color: "green"
			        }, {
			            name: name5,
			            type: 'spline',
			            data: tempArr5,
			            tooltip: {
			                valueSuffix: ''
			            },
			            color: "yellow"
			        }]
			    });

				
			};
			
			//------------------------------------------------
			// 외관 검사 대상 확인 조회
			//------------------------------------------------
			var retrieveCarExtInspGroupList = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							var data = {
								rows : response.rs.extInspList
							};
							
							var html = carExtInspBcAnalysisStep3InspectionObjectListTemplate(data);
							$("#js-car-ext-insp-bc-analysis-step3-inspection-object-list").empty().append(html);
							
							var data = response.rs.partIdList;
							$("#js-car-ext-insp-bc-analysis-step3-partIdList-li").empty();
							$("#js-car-ext-insp-bc-analysis-step3-partIdList-li").append("<span class='wp-ui-checkbox'><input type='checkbox' class='wp-inp-checkbox' id='js-car-ext-insp-bc-analysis-step3-partIdList-item-all' value=''></span>전체");
							for(var i=0; i<data.length; i++)
							{
								$("#js-car-ext-insp-bc-analysis-step3-partIdList-li").append("<span class='wp-ui-checkbox'><input type='checkbox' class='wp-inp-checkbox' id='js-car-ext-insp-bc-analysis-step3-partIdList-item-"+data[i].code+"' name='js-car-ext-insp-bc-analysis-step3-partIdList-item' value='"+data[i].code+"'></span>"+data[i].codeNm);
							}
							
							var data = response.rs.surfTargetBs;
							$("#js-car-ext-insp-bc-analysis-step3-surfTargetBs-li").empty();
							$("#js-car-ext-insp-bc-analysis-step3-surfTargetBs-li").append("<strong class='wp-sTit'>전착</strong>");
							$("#js-car-ext-insp-bc-analysis-step3-surfTargetBs-li").append("<span class='wp-ui-checkbox'><input type='checkbox' class='wp-inp-checkbox' id='js-car-ext-insp-bc-analysis-step3-surfTargetBs-item-all' value=''></span>전체");
							for(var i=0; i<data.length; i++)
							{
								$("#js-car-ext-insp-bc-analysis-step3-surfTargetBs-li").append("<span class='wp-ui-checkbox'><input type='checkbox' class='wp-inp-checkbox' id='js-car-ext-insp-bc-analysis-step3-surfTargetBs-item-"+data[i].code+"' name='js-car-ext-insp-bc-analysis-step3-surfTargetBs-item' value='"+data[i].code+"'></span>"+data[i].codeNm);
							}
							
							var data = response.rs.surfTargetPm;
							$("#js-car-ext-insp-bc-analysis-step3-surfTargetPm-li").empty();
							$("#js-car-ext-insp-bc-analysis-step3-surfTargetPm-li").append("<strong class='wp-sTit'>중도</strong>");
							$("#js-car-ext-insp-bc-analysis-step3-surfTargetPm-li").append("<span class='wp-ui-checkbox'><input type='checkbox' class='wp-inp-checkbox' id='js-car-ext-insp-bc-analysis-step3-surfTargetPm-item-all' value=''></span>전체");
							for(var i=0; i<data.length; i++)
							{
								$("#js-car-ext-insp-bc-analysis-step3-surfTargetPm-li").append("<span class='wp-ui-checkbox'><input type='checkbox' class='wp-inp-checkbox' id='js-car-ext-insp-bc-analysis-step3-surfTargetPm-item-"+data[i].code+"' name='js-car-ext-insp-bc-analysis-step3-surfTargetPm-item' value='"+data[i].code+"'></span>"+data[i].codeNm);
							}
							
							var data = response.rs.surfTargetCr;
							$("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-li").empty();
							$("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-li").append("<strong class='wp-sTit'>상도</strong>");
							$("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-li").append("<span class='wp-ui-checkbox'><input type='checkbox' class='wp-inp-checkbox' id='js-car-ext-insp-bc-analysis-step3-surfTargetCr-item-all' value=''></span>전체");
							for(var i=0; i<data.length; i++)
							{
								$("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-li").append("<span class='wp-ui-checkbox'><input type='checkbox' class='wp-inp-checkbox' id='js-car-ext-insp-bc-analysis-step3-surfTargetCr-item-"+data[i].code+"' name='js-car-ext-insp-bc-analysis-step3-surfTargetCr-item' value='"+data[i].code+"'></span>"+data[i].codeNm);
							}
							
							var data = response.rs.gDocNo;
							$("#js-car-ext-insp-bc-analysis-step3-gDocNo").val(data);
							
							//전체선택 이벤트
							$("#js-car-ext-insp-bc-analysis-step3-partIdList-item-all").off().on('click', function(){
								if($(this).is(':checked'))
								{
									$('input:checkbox[name="js-car-ext-insp-bc-analysis-step3-partIdList-item"]').each(function(){
										if(!$(this).is(':checked'))
											$(this).click();
									});
								}
								else
								{
									$('input:checkbox[name="js-car-ext-insp-bc-analysis-step3-partIdList-item"]').each(function(){
										if($(this).is(':checked'))
											$(this).click();
									});
								}
							});
							$("#js-car-ext-insp-bc-analysis-step3-surfTargetBs-item-all").off().on('click', function(){
								if($(this).is(':checked'))
								{
									$('input:checkbox[name="js-car-ext-insp-bc-analysis-step3-surfTargetBs-item"]').each(function(){
										if(!$(this).is(':checked'))
											$(this).click();
									});
								}
								else
								{
									$('input:checkbox[name="js-car-ext-insp-bc-analysis-step3-surfTargetBs-item"]').each(function(){
										if($(this).is(':checked'))
											$(this).click();
									});
								}
							});
							$("#js-car-ext-insp-bc-analysis-step3-surfTargetPm-item-all").off().on('click', function(){
								if($(this).is(':checked'))
								{
									$('input:checkbox[name="js-car-ext-insp-bc-analysis-step3-surfTargetPm-item"]').each(function(){
										if(!$(this).is(':checked'))
											$(this).click();
									});
								}
								else
								{
									$('input:checkbox[name="js-car-ext-insp-bc-analysis-step3-surfTargetPm-item"]').each(function(){
										if($(this).is(':checked'))
											$(this).click();
									});
								}
							});
							$("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-item-all").off().on('click', function(){
								if($(this).is(':checked'))
								{
									$('input:checkbox[name="js-car-ext-insp-bc-analysis-step3-surfTargetCr-item"]').each(function(){
										if(!$(this).is(':checked'))
											$(this).click();
									});
								}
								else
								{
									$('input:checkbox[name="js-car-ext-insp-bc-analysis-step3-surfTargetCr-item"]').each(function(){
										if($(this).is(':checked'))
											$(this).click();
									});
								}
							});

							$("#js-car-ext-insp-bc-analysis-step3-partIdList-li").find("[type=checkbox]").eq(0).click();
							$("#js-car-ext-insp-bc-analysis-step3-surfTargetBs-li").css("display", "none");
							$("#js-car-ext-insp-bc-analysis-step3-surfTargetPm-li").css("display", "none");
							$("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-li").css("display", "none");
							$("#js-car-ext-insp-bc-analysis-step3-surfTargetBs-li").find("[type=checkbox]").eq(0).click();
							$("#js-car-ext-insp-bc-analysis-step3-surfTargetPm-li").find("[type=checkbox]").eq(0).click();
							$("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-li").find("[type=checkbox]").eq(0).click();
							
							//분석항목 공정 항목 display 제어
							$("#js-car-ext-insp-bc-analysis-step1-procId").find("button").each(function(){
								if($(this).hasClass("on")){
									var selectedProcId = this.id.substring("js-car-ext-insp-bc-analysis-step1-procId".length + 1);
									if(selectedProcId == "P02"){
										$("#js-car-ext-insp-bc-analysis-step3-surfTargetBs-li").css("display", "block");										
									} else {
										$("#js-car-ext-insp-bc-analysis-step3-surfTargetPm-li").css("display", "block");										
										$("#js-car-ext-insp-bc-analysis-step3-surfTargetCr-li").css("display", "block");										
									}									
							    }										
							});
						}else
						{
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
				error: function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
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
					var procId = '';
					$("#js-car-ext-insp-bc-analysis-step1-procId").find("button").each(function(){
						if($(this).hasClass("on")){
							var selectedProcId = this.id.substring("js-car-ext-insp-bc-analysis-step1-procId".length + 1);
							procId = procId + selectedProcId;
					    }										
					});
					var params = {
						service: 'car.extinsp',
						method: 'retrieveCarExtInspGroupList',
						procId: procId,
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
			// result 조회 - resultList
			//------------------------------------------------
			var retrieveCarExtInspSearch = {
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
								
								var html = carExtInspBcAnalysisStep1ResultListTemplate(data);
								
								$("#js-car-ext-insp-bc-analysis-step1-result-list").empty().append(html);
								$("#js-car-ext-insp-bc-analysis-step1-total-result-cnt").text(data.rows.length);

								$('input:checkbox[id*=js-car-ext-insp-bc-analysis-step1-result-list-checkbox]').off().on('click', function() {
									setListCnt();									
								});
								
								if($('#js-car-ext-insp-bc-analysis-step1-result-select-all').is(':checked')){
									$('#js-car-ext-insp-bc-analysis-step1-result-select-all').click();
								}
								setListCnt();
							}else
							{
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
					error: function(jqueryXHR, status, errorText) {
						// ------------------------------------
						// http response error
						// ------------------------------------
						app.message.alert({
							  title             : '<spring:message code="TODO.KEY" text="알림"/>'
							, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
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
						var procId = '';
						$("#js-car-ext-insp-bc-analysis-step1-procId").find("button").each(function(){
							if($(this).hasClass("on")){
								var selectedProcId = this.id.substring("js-car-ext-insp-bc-analysis-step1-procId".length + 1);
								procId = procId + selectedProcId;
						    }										
						});
						
						var params = {
							service: 'car.extinsp',
							method: 'retrieveCarExtInspSearch',
							procId: procId,
							modelType: gvModelType,
							searchList: searchList,
							docNoList: docNoList
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					},
					step2searchTargetList : {
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
										
										var html = carExtInspBcAnalysisStep2TargetListTemplate(data);
										
										$("#js-car-ext-insp-bc-analysis-step2-target-list").empty().append(html);

										//combo 값 셋팅
										var dataGroup = response.rs.groupCode;
										$('select[id*=js-car-ext-insp-bc-analysis-step2-target-list-select-groupCode]').each(function( index ) {
											$(this).append("<option value=''>선택</option>");
											for(var i=0; i<dataGroup.length; i++)
											{
												$(this).append("<option value='"+dataGroup[i].code+"'>"+dataGroup[i].codeNm+"</option>");
											}
											$(this).attr("title", dataGroup.length+" <spring:message code='TODO.KEY' text='건'/>");
										});
										
										//그룹 선택 이벤트
										//같은 item (body) 에서 같은 그룹 지정 불가
										$('select[id*=js-car-ext-insp-bc-analysis-step2-target-list-select-groupCode]').off().on('change', function(){
											var selectedGroup = $(this).val();
											var selectedGroupNm = $(this).find('option:selected').text();
											var selectedId = this.id.substring("js-car-ext-insp-bc-analysis-step2-target-list-select-groupCode".length + 1);

											//콤보 선택된 항목 , 그룹 선택된 list 항목 비교해서 없으면 지워주기
											deleteCarExtInspBcAnalysisStep2SelectedLi();
											var cnt = 0;
											$("#js-car-ext-insp-bc-analysis-step2-target-selected-list").find("li").each(function( index ){											    
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
												$("#js-car-ext-insp-bc-analysis-step2-target-list-select-groupCode-"+selectedId).val('');
												return;
											}
											var selectedSameGroup = false;
											if(selectedGroup){
												$('select[id*=js-car-ext-insp-bc-analysis-step2-target-list-select-groupCode]').each(function( index ) {
													var selectElId = this.id.substring("js-car-ext-insp-bc-analysis-step2-target-list-select-groupCode".length + 1);
													if(selectedId != selectElId){
														if(selectedGroup == $(this).val()){
															app.message.alert({
																  title             : '<spring:message code="TODO.KEY" text="에러"/>'
																, message           : '<spring:message code="TODO.KEY" text="동일한 그룹 코드가 이미 선택 되어 있습니다."/>'
																, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
															});
															$("#js-car-ext-insp-bc-analysis-step2-target-list-select-groupCode-"+selectedId).val('');
															selectedSameGroup = true;
															return;
														}
													}
												});
												if(!selectedSameGroup){
													//선택된 대상 list 항목에 있는지 확인
													var selectedListLiSameItem = false;
													var selectedListLiId = '';
													$("#js-car-ext-insp-bc-analysis-step2-target-selected-list").find("li").each(function( index ){
														selectedListLiId = this.id.substring("js-car-ext-insp-bc-analysis-step2-target-selected-list-li".length + 1);
														if(selectedGroup == selectedListLiId){
															selectedListLiSameItem = true;
															return;
														}
													});
													
													var docNo = $("#js-car-ext-insp-bc-analysis-step2-target-list-docNo-"+selectedId).val();
													var modelId = $("#js-car-ext-insp-bc-analysis-step2-target-list-modelId-"+selectedId).val();
													var colorId = $("#js-car-ext-insp-bc-analysis-step2-target-list-colorId-"+selectedId).val();
													var boothId = $("#js-car-ext-insp-bc-analysis-step2-target-list-boothId-"+selectedId).val();
													var inspDate = $("#js-car-ext-insp-bc-analysis-step2-target-list-inspDate-"+selectedId).val();
													//선택된 대상 li 생성
													var html = "";
													html += '<li id="js-car-ext-insp-bc-analysis-step2-target-selected-list-li-'+selectedGroup+'" class="wp-color-Bb">'+selectedGroupNm+'<button type="button" id="js-car-ext-insp-bc-analysis-step2-target-selected-list-li-remove-'+selectedGroup+'" class="wp-spr-btn wp-close-sel"><span>닫기</span></button>';
													html += '<input type="hidden" id="js-car-ext-insp-bc-analysis-step2-target-selected-list-li-body-docNo-'+selectedGroup+'" value="'+docNo+'">';
													html += '<input type="hidden" id="js-car-ext-insp-bc-analysis-step2-target-selected-list-li-body-modelId-'+selectedGroup+'" value="'+modelId+'">';
													html += '<input type="hidden" id="js-car-ext-insp-bc-analysis-step2-target-selected-list-li-body-colorId-'+selectedGroup+'" value="'+colorId+'">';
													html += '<input type="hidden" id="js-car-ext-insp-bc-analysis-step2-target-selected-list-li-body-boothId-'+selectedGroup+'" value="'+boothId+'">';
													html += '<input type="hidden" id="js-car-ext-insp-bc-analysis-step2-target-selected-list-li-body-inspDate-'+selectedGroup+'" value="'+inspDate+'">';
													html += '</li>';
													$("#js-car-ext-insp-bc-analysis-step2-target-selected-list").append(html);
													
													$("#js-car-ext-insp-bc-analysis-step2-target-selected-list-li-remove-"+selectedGroup).off().on('click', function(){
														var id = this.id.substring("js-car-ext-insp-bc-analysis-step2-target-selected-list-li-remove".length + 1);
														$("#js-car-ext-insp-bc-analysis-step2-target-selected-list-li-"+id).remove();
														$('select[id*=js-car-ext-insp-bc-analysis-step2-target-list-select-groupCode]').each(function( index ) {
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
											  title             : '<spring:message code="TODO.KEY" text="알림"/>'
											, message           : '<spring:message code="TODO.KEY" text="' + message + '"/>'
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
									  title             : '<spring:message code="TODO.KEY" text="알림"/>'
									, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
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
								var procId = '';
								$("#js-car-ext-insp-bc-analysis-step1-procId").find("button").each(function(){
									if($(this).hasClass("on")){
										var selectedProcId = this.id.substring("js-car-ext-insp-bc-analysis-step1-procId".length + 1);
										procId = procId + selectedProcId;
								    }										
								});
								
								var params = {
									service: 'car.extinsp',
									method: 'retrieveCarExtInspSearch',
									procId: procId,
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
			
			var deleteCarExtInspBcAnalysisStep2SelectedLi = function(){
				//콤보 선택된 항목 , 그룹 선택된 list 항목 비교해서 없으면 지워주기
				var comboList = [];
				var selectedList = [];
				$('select[id*=js-car-ext-insp-bc-analysis-step2-target-list-select-groupCode]').each(function( index ) {
					var comboVal = $(this).val();
					if(comboVal){
						comboList.push(comboVal);	
					}
				});
				
				$("#js-car-ext-insp-bc-analysis-step2-target-selected-list").find("li").each(function( index ){
					var id = this.id.substring("js-car-ext-insp-bc-analysis-step2-target-selected-list-li".length + 1);
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
						$("#js-car-ext-insp-bc-analysis-step2-target-selected-list-li-"+selectedList[i]).remove();
					}	
				}
			}
			
			//------------------------------------------------
			//검색조건 리스트 초기화
			//------------------------------------------------
			var initCarExtInspBcAnalysisStep1SearchRequirementList = function() {

				$("#js-car-ext-insp-bc-analysis-step1-search-requirement-list-append").find('tr').remove();
				var today = fn_getTodayDate();
				var data = {
						rows : searchRequirementList = [{
							size : 1,
							startDate : fn_getBeforeDate(today.replace(/-/gi,""), null, 1),
							endDate : today
								}]
				};
				var result = carExtInspBcAnalysisStep1SearchRequirementListTemplate(data);
				$("#js-car-ext-insp-bc-analysis-step1-search-requirement-list-append").append(result);
				carExtInspBcAnalysisStep1SearchRequirementListCombo();
				carExtInspBcAnalysisStep1SearchRequirementListEvent();
			}

			//------------------------------------------------
			//검색조건 리스트의 이벤트 처리
			//------------------------------------------------
			var carExtInspBcAnalysisStep1SearchRequirementListEvent = function() {
				
				// [+] 버튼 클릭
				$('button[name=js-car-ext-insp-bc-analysis-step1-add-button]').off().on('click', function() {
					var searchRequirementFirstObj   = {};
					var searchRequirementFirstThObj = {};
					var searchRequirementNewIndex = 0;
					
					$("#js-car-ext-insp-bc-analysis-step1-search-requirement-list-append").find('tr').each(function(){
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
					var result = carExtInspBcAnalysisStep1SearchRequirementListTemplate(data);
					

					var rowspan = $(searchRequirementFirstThObj).attr("rowspan");
					$(searchRequirementFirstThObj).attr("rowspan", parseInt(rowspan)+1);
					$("#js-car-ext-insp-bc-analysis-step1-search-requirement-list-append").find('tr:last').after(result);

					carExtInspBcAnalysisStep1SearchRequirementListCombo();
					carExtInspBcAnalysisStep1SearchRequirementListEvent();
				});
				
				// [삭제] 버튼 클릭
				$('button[name=js-car-ext-insp-bc-analysis-step1-delete-button]').off().on('click', function() {
					var searchRequirementIndex = $(this).val();
					
					var searchRequirementFirstThObj = {};
					var searchRequirementLength = 0;
					
					$("#js-car-ext-insp-bc-analysis-step1-search-requirement-list-append").find('tr').each(function(){
						searchRequirementLength++;
						
						if($(this).attr("first") == "first"){
							searchRequirementFirstThObj  = $(this).find("th")[0];
						}
					});
					
					var $choiceObj = $("#js-car-ext-insp-bc-analysis-step1-search-requirement-list-" + searchRequirementIndex);
					
					if(searchRequirementLength <= 1){
						$choiceObj.find('select').find('option:eq(0)').prop('selected', true);
						$choiceObj.find('input[type=text]').val('');
						
						$("#js-car-ext-insp-bc-analysis-step1-start-date-" + searchRequirementIndex).val(fn_getBeforeDate(fn_getTodayDate().replace(/-/gi,""), null, 1)).mask('9999-99-99');
						$("#js-car-ext-insp-bc-analysis-step1-end-date-" + searchRequirementIndex).val(fn_getTodayDate());
						$("#js-car-ext-insp-bc-analysis-step1-model-" + searchRequirementIndex).find('option').remove();
						$("#js-car-ext-insp-bc-analysis-step1-color-" + searchRequirementIndex).find('option').remove();
						
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
				$('select[name=js-car-ext-insp-bc-analysis-step1-car-plant]').off().on('change', function() {
					gvCarPlantCombo = $(this).val();
					gvRequirementIndex = $(this).attr("requirementIndex");
					if(app.utils.isEmpty(gvCarPlantCombo)){
						$('#js-car-ext-insp-bc-analysis-step1-model-'+requirementIndex).find('option').remove();
						$('#js-car-ext-insp-bc-analysis-step1-color-'+requirementIndex).find('option').remove();
						return;
					}
					retrieveCarModelList.request();
					retrieveCarColorId.request();
				});
				
			};
			//------------------------------------------------
			//검색조건 리스트 공장 콤보 세팅
			//------------------------------------------------
			var carExtInspBcAnalysisStep1SearchRequirementListCombo = function() {
				$('select[name=js-car-ext-insp-bc-analysis-step1-car-plant]').each(function( index ) {
					
					if($(this).find('option').length == 0){
						$(this).append("<option value=''>선택</option>");
						for(var i=0; i<gvCarExtInspBcAnalysisStep1CarPlantComboRs.length; i++)
						{
							$(this).append("<option value='"+gvCarExtInspBcAnalysisStep1CarPlantComboRs[i].carPlant+"'>"+gvCarExtInspBcAnalysisStep1CarPlantComboRs[i].carPlant+"</option>");
						}
						$(this).attr("title", gvCarExtInspBcAnalysisStep1CarPlantComboRs.length+" <spring:message code='TODO.KEY' text='건'/>");
					}					
				});
				
				//날짜선택 포멧 적용
				$(".wp-inp-datepicker").mask('9999-99-99');
				
				// 컬러 선택 콤보 display 처리
				var procId = '';
				$("#js-car-ext-insp-bc-analysis-step1-procId").find("button").each(function(){
					if($(this).hasClass("on")){
						var selectedProcId = this.id.substring("js-car-ext-insp-bc-analysis-step1-procId".length + 1);
						procId = procId + selectedProcId;
				    }										
					if(procId == "P02"){
						$(".js-color-hidden").css("display", "none");
					} else {
						$(".js-color-hidden").css("display", "inline");							
					}
				});
			}
			// ------------------------------------------------
			// 차종 조회
			// ------------------------------------------------
			var retrieveCarModelList = {
				success : function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';

						if (message === 'OK') {							
							var data = response.rs;
							$("#js-car-ext-insp-bc-analysis-step1-model-"+gvRequirementIndex).find('option').remove();
							$("#js-car-ext-insp-bc-analysis-step1-model-"+gvRequirementIndex).append("<option value=''>선택</option>");
							for(var i=0; i<data.length; i++)
							{
								$("#js-car-ext-insp-bc-analysis-step1-model-"+gvRequirementIndex).append("<option value='"+data[i].modelId+"'>"+data[i].modelNm+"</option>");
							}
							$("#js-car-ext-insp-bc-analysis-step1-model-"+gvRequirementIndex).attr("title", data.length+" <spring:message code='TODO.KEY' text='건'/>");
							
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
							method : 'retrieveCarModelList',
							carPlant : gvCarPlantCombo,
							modelType : gvModelType
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
			var retrieveCarColorId = {
				success : function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';

						if (message === 'OK') {							
							var data = response.rs;
							$("#js-car-ext-insp-bc-analysis-step1-color-"+gvRequirementIndex).find('option').remove();
							$("#js-car-ext-insp-bc-analysis-step1-color-"+gvRequirementIndex).append("<option value=''>선택</option>");
							for(var i=0; i<data.length; i++)
							{
								$("#js-car-ext-insp-bc-analysis-step1-color-"+gvRequirementIndex).append("<option value='"+data[i].colorId+"'>"+data[i].colorNm+"</option>");
							}
							$("#js-car-ext-insp-bc-analysis-step1-color-"+gvRequirementIndex).attr("title", data.length+" <spring:message code='TODO.KEY' text='건'/>");
							
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
							method : 'retrieveCarColorId',
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
