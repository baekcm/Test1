<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.02.03] ship 제품정보-제품 출고 이력 정보" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.car">

	<!-- 메인 콘텐츠 S -->
	<tiles:putAttribute name="page-content">
	
		<section class="wp-stat">
		<div class="wp-cont wp-car-main">
		<!-- contents -->
			<!-- 거래선 공정 현황 -->
			<div class="wp-process">
				<div class="wp-process-area">
					<h2 class="wp-ship-table-title"><spring:message code="TODO.KEY" text="거래선 공정 현황"/></h2>
					<div class="wp-process-section" data-target-stdproc-id="" data-target-line-id="">
						<!-- section01 -->						
						<a href="#" class="wp-proc section01" id="js-car-Main-section-PM01">
							<span class="wp-tit"><spring:message code="TODO.KEY" text="Pretreatment" /></span>
							<span class="wp-count"><span id="js-carMain-Cust-Proc-Info-cnt-PM01">0</span><spring:message code="TODO.KEY" text="건"/></span>
							<input type="hidden" id="js-group-proc-PM01" value=""/>
						</a>
						
						<!-- section02 -->
						<a href="#" class="wp-proc section02" id="js-car-Main-section-PM02">
							<span class="wp-tit"><spring:message code="TODO.KEY" text="ED"/></span>
							<span class="wp-count"><span id="js-carMain-Cust-Proc-Info-cnt-PM02">0</span><spring:message code="TODO.KEY" text="건"/></span>
							<input type="hidden" id="js-group-proc-PM02" value=""/>
						</a>
						<!-- section03 -->
						<a href="#" class="wp-proc section03" id="js-car-Main-section-PM03">
							<span class="wp-tit"><spring:message code="TODO.KEY" text="ED Oven"/></span>
							<span class="wp-count"><span id="js-carMain-Cust-Proc-Info-cnt-PM03">0</span><spring:message code="TODO.KEY" text="건"/></span>
							<input type="hidden" id="js-group-proc-PM03" value=""/>
						</a>
						<!-- section04 -->
						<a href="#" class="wp-proc section04" id="js-car-Main-section-PM04">
							<span class="wp-tit"><spring:message code="TODO.KEY" text="Sealer / Deadner"/></span>
							<span class="wp-count"><span id="js-carMain-Cust-Proc-Info-cnt-PM04">0</span><spring:message code="TODO.KEY" text="건"/></span>
							<input type="hidden" id="js-group-proc-PM04" value=""/>
						</a>

						<!-- section05 -->
						<a href="#" class="wp-proc section05" id="js-car-Main-section-PM05">
							<span class="wp-tit"><spring:message code="TODO.KEY" text="Deadner Oven"/></span>
							<span class="wp-count"><span id="js-carMain-Cust-Proc-Info-cnt-PM05">0</span><spring:message code="TODO.KEY" text="건"/></span>
							<input type="hidden" id="js-group-proc-PM05" value=""/>
						</a>
						<!-- section06 -->
						<a href="#" class="wp-proc section06" id="js-car-Main-section-PM06">
							<span class="wp-tit"><spring:message code="TODO.KEY" text="Primer Booth"/></span>
							<span class="wp-count"><span id="js-carMain-Cust-Proc-Info-cnt-PM06">0</span><spring:message code="TODO.KEY" text="건"/></span>
							<input type="hidden" id="js-group-proc-PM06" value=""/>
						</a>
						<!-- section07 -->
						<a href="#" class="wp-proc section07" id="js-car-Main-section-PM07">
							<span class="wp-tit"><spring:message code="TODO.KEY" text="Primer Oven"/></span>
							<span class="wp-count"><span id="js-carMain-Cust-Proc-Info-cnt-PM07">0</span><spring:message code="TODO.KEY" text="건"/></span>
							<input type="hidden" id="js-group-proc-PM07" value=""/>
						</a>
						<!-- section08 -->
						<a href="#" class="wp-proc section08" id="js-car-Main-section-PM08">
							<span class="wp-tit"><spring:message code="TODO.KEY" text="Base Booth"/></span>
							<span class="wp-count"><span id="js-carMain-Cust-Proc-Info-cnt-PM08">0</span><spring:message code="TODO.KEY" text="건"/></span>
							<input type="hidden" id="js-group-proc-PM08" value=""/>
						</a>

						<!-- section09 -->
						<a href="#" class="wp-proc section09" id="js-car-Main-section-PM09">
							<span class="wp-tit"><spring:message code="TODO.KEY" text="HAB Zone"/></span>
							<span class="wp-count"><span id="js-carMain-Cust-Proc-Info-cnt-PM09">0</span><spring:message code="TODO.KEY" text="건"/></span>
							<input type="hidden" id="js-group-proc-PM09" value=""/>
						</a>
						<!-- section10 -->
						<a href="#" class="wp-proc section10" id="js-car-Main-section-PM10">
							<span class="wp-tit"><spring:message code="TODO.KEY" text="Clear Booth"/></span>
							<span class="wp-count"><span id="js-carMain-Cust-Proc-Info-cnt-PM10">0</span><spring:message code="TODO.KEY" text="건"/></span>
							<input type="hidden" id="js-group-proc-PM10" value=""/>
						</a>
						<!-- section11 -->
						<a href="#" class="wp-proc section11" id="js-car-Main-section-PM11">
							<span class="wp-tit"><spring:message code="TODO.KEY" text="Clear Oven"/></span>
							<span class="wp-count"><span id="js-carMain-Cust-Proc-Info-cnt-PM11">0</span><spring:message code="TODO.KEY" text="건"/></span>
							<input type="hidden" id="js-group-proc-PM11" value=""/>
						</a>
						<!-- section12 -->
						<a href="#" class="wp-proc section12" id="js-car-Main-section-PM12">
							<span class="wp-tit"><spring:message code="TODO.KEY" text="Inspection"/></span>
							<span class="wp-count"><span id="js-carMain-Cust-Proc-Info-cnt-PM12">0</span><spring:message code="TODO.KEY" text="건"/></span>
							<input type="hidden" id="js-group-proc-PM12" value=""/>
						</a>
					</div>
				</div>
				<div class="wp-issue-area">
					<h2 class="wp-ship-table-title">
						이슈 LIST
						<div class="wp-fr wp-vt">
							<button type="button" class="wp-btn small white bgray prev" name="js-carMain-paging-button" value="js-Issue-Info"><span><spring:message code="TODO.KEY" text="이전"/></span></button>
							<div class="wp-btn-paging"><span class="wp-ship-fc-blue" id="js-Issue-Info-current-page">1</span>/<span id="js-Issue-Info-total-page">1</span></div>
							<button type="button" class="wp-btn small white bgray next" name="js-carMain-paging-button" value="js-Issue-Info"><span><spring:message code="TODO.KEY" text="다음"/></span></button>
						</div>
					</h2>
					<div id="js-carMain-Issue-Info-list">						
					</div>
					<script id="js-template-Issue-Info-list" type="text/x-handlebars-template">
						{{#rows}}
							<div class="wp-table-width">
								<div class="wp-icon-section {{setIssueClass bannerId}}"></div>
								{{issueTitle}}
								<span class="wp-tit">{{subject}}</span>
								<span class="wp-date">{{regDate}}</span>
							</div>
						{{/rows}}
					</script>
				</div>
			</div>
			<!-- //거래선 공정 현황 -->

			<!-- 외관/색상 검사  및 테스트 현황 -->
			<div class="wp-table-width">
				<h2 class="wp-ship-table-title">
					<spring:message code="TODO.KEY" text="외관/색상 검사 및 테스트 현황"/>
					<div class="wp-fr wp-vt">
						<button type="button" class="wp-btn small white bgray prev" name="js-carMain-paging-button" value="js-Insp-Info"><span><spring:message code="TODO.KEY" text="이전"/></span></button>
						<div class="wp-btn-paging"><span class="wp-ship-fc-blue" id="js-Insp-Info-current-page">1</span>/<span id="js-Insp-Info-total-page">1</span></div>
						<button type="button" class="wp-btn small white bgray next" name="js-carMain-paging-button" value="js-Insp-Info"><span><spring:message code="TODO.KEY" text="다음"/></span></button>
					</div>
				</h2>
				
				<script id="js-template-Insp-Info-list" type="text/x-handlebars-template">
					{{#rows}}
						{{#ifEquals dpType 'SINSP'}}
							<li>
								<div class="wp-icon exterior"><spring:message code="TODO.KEY" text="외관"/></div>
								{{#ifEquals procId 'ED'}}
								<a id="js-car-ext-insp-ed-info-detail" data-link="js-car-color-detail-popup" class="wp-title" style="cursor: pointer;"><span class="wp-name-benner">{{carPlantNm}}</span>{{title}}<span class="wp-info-benner">{{modelId}}</span></a>
								{{else}}
								<a id="js-car-ext-insp-bc-info-detail" data-link="js-car-ext-insp-bc-info-detail-popup" class="wp-title" style="cursor: pointer;"><span class="wp-name-benner">{{carPlantNm}}</span>{{title}}<span class="wp-info-benner">{{modelId}}</span></a>
								{{/ifEquals}}
								<div class="wp-blue-comment">
									<span><spring:message code="TODO.KEY" text="공장"/>&nbsp;:&nbsp;</span>{{carPlantNm}}
									<span><spring:message code="TODO.KEY" text="검사일자"/>&nbsp;:&nbsp;</span>{{inspDate}}
									<span><spring:message code="TODO.KEY" text="검사자"/>&nbsp;:&nbsp;</span>{{inspEmp}}
									<span><spring:message code="TODO.KEY" text="공정"/>&nbsp;:&nbsp;</span>{{procId}}
									<span><spring:message code="TODO.KEY" text="생산부스"/>&nbsp;:&nbsp;</span>{{boothId}}
									<span><spring:message code="TODO.KEY" text="제품명"/>&nbsp;:&nbsp;</span>{{itemsNm}}
								</div>
								<div class="wp-blue-comment"><span><spring:message code="TODO.KEY" text="Lot No"/>&nbsp;:&nbsp;</span>{{lotNo}}</div>
								<input type="hidden" id="js-car-ext-insp-ed-bc-info-doc-no" value="{{docNo}}">
							</li>
						{{/ifEquals}}
						{{#ifEquals dpType 'CINSP'}}
							<li>
								<div class="wp-icon color"><spring:message code="TODO.KEY" text="색상"/></div>
								<a id="js-car-color-detail" data-link="js-car-color-detail-popup" class="wp-title" style="cursor: pointer;"><span class="wp-name-benner">{{carPlantNm}}</span>{{title}}<span class="wp-info-benner">{{colorId}}</span></a>
								<div class="wp-blue-comment">
									<span><spring:message code="TODO.KEY" text="공장"/>&nbsp;:&nbsp;</span>{{carPlantNm}}
									<span><spring:message code="TODO.KEY" text="차종"/>&nbsp;:&nbsp;</span>{{modelNm}}
									<span><spring:message code="TODO.KEY" text="검사일자"/>&nbsp;:&nbsp;</span>{{inspDate}}
									<span><spring:message code="TODO.KEY" text="검사자"/>&nbsp;:&nbsp;</span>{{inspEmp}}
									<span><spring:message code="TODO.KEY" text="검사부위"/>&nbsp;:&nbsp;</span>{{inspColorItemNm}}
									<span><spring:message code="TODO.KEY" text="생산부스"/>&nbsp;:&nbsp;</span>{{boothId}}
									<span><spring:message code="TODO.KEY" text="검사장비"/>&nbsp;:&nbsp;</span>{{inspToolNm}}</div>
								<div class="wp-blue-comment"><span>Lot No&nbsp;:&nbsp;</span>{{lotNo}}
								</div>
								<input type="hidden" id="js-car-color-doc-no" value="{{docNo}}">
							</li>
						{{/ifEquals}}
						{{#ifEquals dpType 'TINSPED'}}					
							<li>
								<div class="wp-icon test"><spring:message code="TODO.KEY" text="테스트"/></div>
								<a id="js-car-prod-test-ed-dt-view" data-link="js-car-prod-test-ed-dt-view-popup" class="wp-title" style="cursor: pointer;"><span class="wp-name-benner">{{carPlantNm}}</span>{{title}}<span class="wp-info-benner">{{inspSeq}}차</span></a>
								<div class="wp-blue-comment">
									<span><spring:message code="TODO.KEY" text="공장"/>&nbsp;:&nbsp;</span>{{carPlantNm}}
									<span><spring:message code="TODO.KEY" text="차종"/>&nbsp;:&nbsp;</span>{{modelNm}}
									<span><spring:message code="TODO.KEY" text="검사일자"/>&nbsp;:&nbsp;</span>{{inspDate}}
									<span><spring:message code="TODO.KEY" text="검사자"/>&nbsp;:&nbsp;</span>{{inspEmp}}
									<span><spring:message code="TODO.KEY" text="제품명"/>&nbsp;:&nbsp;</span>{{itemsNm}}
								</div>
								<div class="wp-blue-comment"><span>Lot No&nbsp;:&nbsp;</span>{{lotNo}}</div>
								<input type="hidden" id="js-car-prod-test-ed-dt-view-doc-no" value="{{docNo}}">
								<input type="hidden" id="js-car-prod-test-ed-dt-view-insp-seq" value="{{inspSeq}}">
							</li>
						{{/ifEquals}}
						{{#ifEquals dpType 'TINSPBC'}}					
							<li>
								<div class="wp-icon test"><spring:message code="TODO.KEY" text="테스트"/></div>
								<a id="js-car-prod-test-bc-info-detail" data-link="js-car-prod-test-bc-info-popup" class="wp-title" style="cursor: pointer;"><span class="wp-name-benner">{{carPlantNm}}</span>{{title}}<span class="wp-info-benner">{{inspSeq}}차</span></a>
								<div class="wp-blue-comment">
									<span><spring:message code="TODO.KEY" text="공장"/>&nbsp;:&nbsp;</span>{{carPlantNm}}
									<span><spring:message code="TODO.KEY" text="검사일자"/>&nbsp;:&nbsp;</span>{{inspDate}}
									<span><spring:message code="TODO.KEY" text="검사자"/>&nbsp;:&nbsp;</span>{{inspEmp}}
									<span><spring:message code="TODO.KEY" text="제품명"/>&nbsp;:&nbsp;</span>{{itemsNm}}
								</div>
								<div class="wp-blue-comment"><span>Lot No&nbsp;:&nbsp;</span>{{lotNo}}</div>
								<input type="hidden" id="js-car-prod-test-bc-info-detail-car-plant" value="{{carPlant}}">
								<input type="hidden" id="js-car-prod-test-bc-info-detail-doc-no" value="{{docNo}}">
								<input type="hidden" id="js-car-prod-test-bc-info-detail-insp-seq" value="{{inspSeq}}">
							</li>
						{{/ifEquals}}
					{{/rows}}
				</script>				
				<ul class="wp-ship-main-list wp-color-test" id="js-carMain-Insp-Info">						
				</ul>
			</div>
			<!-- //외관/색상 검사  및 테스트 현황 -->

			<!-- 자동차 프로젝트 현황 -->
			<div class="wp-table-width">
				<h2 class="wp-ship-table-title">
					<spring:message code="TODO.KEY" text="자동차 프로젝트 현황"/>
					<div class="wp-fr wp-vt">
						<button type="button" class="wp-btn small white bgray prev" name="js-carMain-paging-button" value="js-Car-Project-Info"><span><spring:message code="TODO.KEY" text="이전"/></span></button>
						<div class="wp-btn-paging"><span class="wp-ship-fc-blue" id="js-Car-Project-Info-current-page">1</span>/<span id="js-Car-Project-Info-total-page">1</span></div>
						<button type="button" class="wp-btn small white bgray next" name="js-carMain-paging-button" value="js-Car-Project-Info"><span><spring:message code="TODO.KEY" text="다음"/></span></button>
						<button type="button" class="wp-btn small white bblue plus js-car-main-top-project-link"><spring:message code="TODO.KEY" text="프로젝트"/></button>
					</div>
				</h2>
				<script id="js-template-Car-Project-Info-list" type="text/x-handlebars-template">
					{{#rows}}
						<li>
							<div class="wp-stat-ship {{setCarProjectClass projClosingId}}">{{projClosingNm}}</div>
							<a href="#" class="wp-title">{{projNm}}</a>
							<div class="wp-blue-comment"><span><spring:message code="TODO.KEY" text="진행상태"/>&nbsp;:&nbsp;</span>{{projClosingNm}}<span><spring:message code="TODO.KEY" text="차종"/>&nbsp;:&nbsp;</span>{{carTypeNm}}<span><spring:message code="TODO.KEY" text="생산공장"/>&nbsp;:&nbsp;</span>{{carPlantNm}}<span><spring:message code="TODO.KEY" text="활동정보"/>&nbsp;:&nbsp;</span>{{actCnt}}<spring:message code="TODO.KEY" text="건"/></div>
							<div class="wp-btn-section"><button type="button" class="wp-btn small white bgray file-txt js-car-main-project-link" data-projNo={{projNo}}>SFA</button></div>
						</li>	
					{{/rows}}					
				</script>
				<ul class="wp-ship-main-list type1" id="js-carMain-Car-Project-Info">
				</ul>
			</div>
			<!-- //자동차 프로젝트 현황 -->

			<!-- 주간예보 -->
			<div class="wp-table-width" id="js-week-weather-info">
				<script id="js-template-week-weather-info" type="text/x-handlebars-template">
					<h2 class="wp-ship-table-title wp-pb10"><spring:message code="TODO.KEY" text="주간예보"/> 
					<div class="wp-blue-comment wp-inblock"><span>[{{yardCodeNm}}]</span>{{yardAreaNm}}</div>
					<div class="wp-fr wp-vb wp-comment">{{tmFc}} <spring:message code="TODO.KEY" text="발표"/></div>
					</h2>
					<table class="wp-table-st1 wp-wd100p wp-mb0 wp-temperature wp-vertical-line">
						<caption><spring:message code="TODO.KEY" text="주간예보"/></caption>
						<colgroup>
							<col style="width:auto">
							<col style="width:9.48%">
							<col style="width:9.48%">
							<col style="width:9.48%">
							<col style="width:9.48%">
							<col style="width:9.48%">
							<col style="width:9.48%">
							<col style="width:9.48%">
							<col style="width:9.48%">
							<col style="width:9.48%">
							<col style="width:9.48%">
						</colgroup>
						<thead>
							<tr>
								<th><spring:message code="TODO.KEY" text="날짜"/></th>															
								<th colspan="2">{{st3Date}}</th>
								<th colspan="2">{{st4Date}}</th>
								<th colspan="2">{{st5Date}}</th>
								<th colspan="2">{{st6Date}}</th>
								<th colspan="2">{{st7Date}}</th>
							</tr>
						</thead>
					<!-- 
						wi-day-sunny : 맑음 
						wi-day-cloudy : 구름많음, 구름조금 
						wi-day-cloudy-gusts : 구름많고 돌풍 
						wi-da y-cloudy-windy : 구름많고 바람 
						wi-day-fog : 안개 
						wi-day-hail : 우박 
						wi-day-haze : 연무 
						wi-day-lightning : 번개 
						wi-day-rain : 구름많고 비, 흐리고 비 
						wi-day-rain-mix : 구름많고 비/눈, 흐리고 비/눈, 구름많고 눈/비, 흐리고 눈/비
						wi-day-rain-wind : 구름많고 비/바람 
						wi-day-showers : 소나기 
						wi-day-sleet : 진눈깨비 
						wi-day-sleet-storm : 천둥을 동반한 진눈깨비 
						wi-day-snow : 구름많고 눈, 흐리고 눈 
						wi-day-snow-thunderstorm : 천둥번개를 동반한 눈 
						wi-day-snow-wind : 구름많고 눈/바람 
						wi-day-sprinkle : 가랑비 
						wi-day-storm-showers : 천둥을 동반한 소나기 
						wi-day-sunny-overcast : 흐림 
						wi-day-thunderstorm : 천둥번개 
						wi-day-windy : 맑고 돌풍 
						wi-solar-eclipse : 일식 
						wi-hot : 폭염 
						wi-day-cloudy-high : 구름많고 폭염 
						wi-day-light-wind : 맑고 바람 
					 -->
						<tbody>
							<tr>							
								<th><spring:message code="TODO.KEY" text="날씨"/></th>								
								<td><spring:message code="TODO.KEY" text="오전"/> <i class="wp-weather {{wf3AmClass}}"></i>{{wf3Am}}</td>
								<td><spring:message code="TODO.KEY" text="오후"/> <i class="wp-weather {{wf3PmClass}}"></i>{{wf3Pm}}</td>
								<td><spring:message code="TODO.KEY" text="오전"/> <i class="wp-weather {{wf4AmClass}}"></i>{{wf4Am}}</td>
								<td><spring:message code="TODO.KEY" text="오후"/> <i class="wp-weather {{wf4PmClass}}"></i>{{wf4Pm}}</td>
								<td><spring:message code="TODO.KEY" text="오전"/> <i class="wp-weather {{wf5AmClass}}"></i>{{wf5Am}}</td>
								<td><spring:message code="TODO.KEY" text="오후"/> <i class="wp-weather {{wf5PmClass}}"></i>{{wf5Pm}}</td>
								<td><spring:message code="TODO.KEY" text="오전"/> <i class="wp-weather {{wf6AmClass}}"></i>{{wf6Am}}</td>
								<td><spring:message code="TODO.KEY" text="오후"/> <i class="wp-weather {{wf6PmClass}}"></i>{{wf6Pm}}</td>
								<td><spring:message code="TODO.KEY" text="오전"/> <i class="wp-weather {{wf7AmClass}}"></i>{{wf7Am}}</td>
								<td><spring:message code="TODO.KEY" text="오후"/> <i class="wp-weather {{wf7PmClass}}"></i>{{wf7Pm}}</td>
							</tr>
							<tfoot>
								<tr>
									<th><spring:message code="TODO.KEY" text="최저"/>/<spring:message code="TODO.KEY" text="최고"/><br><spring:message code="TODO.KEY" text="기온"/></th>									
									<th colspan="2"><span class="wp-low">{{setMinTemp ta3Temp}}</span>&nbsp;/&nbsp;<span class="wp-high">{{setMaxTemp ta3Temp}}</span></th>
									<th colspan="2"><span class="wp-low">{{setMinTemp ta4Temp}}</span>&nbsp;/&nbsp;<span class="wp-high">{{setMaxTemp ta4Temp}}</span></th>
									<th colspan="2"><span class="wp-low">{{setMinTemp ta5Temp}}</span>&nbsp;/&nbsp;<span class="wp-high">{{setMaxTemp ta5Temp}}</span></th>
									<th colspan="2"><span class="wp-low">{{setMinTemp ta6Temp}}</span>&nbsp;/&nbsp;<span class="wp-high">{{setMaxTemp ta6Temp}}</span></th>
									<th colspan="2"><span class="wp-low">{{setMinTemp ta7Temp}}</span>&nbsp;/&nbsp;<span class="wp-high">{{setMaxTemp ta7Temp}}</span></th>
								</tr>
							</tfoot>
						</tbody>
					</table>
				</script>
			</div>
			<!-- //주간예보 -->

			<!-- 품질이슈 -->
			<div class="wp-table-width">
				<h2 class="wp-ship-table-title">
					<spring:message code="TODO.KEY" text="품질이슈"/>
					<div class="wp-fr wp-vt">
						<button type="button" class="wp-btn small white bgray prev" name="js-carMain-paging-button" value="js-quality-issue"><span><spring:message code="TODO.KEY" text="이전"/></span></button>
						<div class="wp-btn-paging"><span class="wp-ship-fc-blue" id="js-quality-issue-current-page">1</span>/<span id="js-quality-issue-total-page">1</span></div>
						<button type="button" class="wp-btn small white bgray next" name="js-carMain-paging-button" value="js-quality-issue"><span><spring:message code="TODO.KEY" text="다음"/></span></button>
						<button type="button" class="wp-btn small white bblue plus" id="js-craMain-quality-issue-q-voc-link" value="js-quality-issue"><spring:message code="TODO.KEY" text="Q-VoC"/></button>
					</div>
				</h2>				
					<script id="js-template-quality-issue-list" type="text/x-handlebars-template">
						{{#rows}}
							<li>
								<a class="wp-title" style="cursor:default" name="js-ship-main-quality-issue-type-link"><span class="wp-proc-ship {{setIssueTypeClass issueType}}">{{issueType}}</span> {{title}} <button type="button" class="wp-btn small2 white cr3 bblue" style="cursor:default">{{stepId}}</button></a>
								<div class="wp-blue-comment wp-uppercase"><span><spring:message code="TODO.KEY" text="거래선"/>&nbsp;:&nbsp;</span>{{custNm}}<span><spring:message code="TODO.KEY" text="발생일시"/>&nbsp;:&nbsp;</span>{{occurDatetime}}<span><spring:message code="TODO.KEY" text="등록자"/>&nbsp;:&nbsp;</span>{{inputDeptNm}}&nbsp;{{inputEmpNm}}&nbsp;{{inputEmpRankNm}}</div>
								<div class="wp-blue-comment wp-uppercase"><span><spring:message code="TODO.KEY" text="발생원천"/>&nbsp;:&nbsp;</span>{{issueType}}<span><spring:message code="TODO.KEY" text="제품명"/>&nbsp;:&nbsp;</span>{{itemsNm}}<span>Lot No&nbsp;:&nbsp;</span>{{lotNo}}<span><spring:message code="TODO.KEY" text="불만유형(대)"/>&nbsp;:&nbsp;</span>{{badOcType}}<span><spring:message code="TODO.KEY" text="불만유형(소)"/>&nbsp;:&nbsp;</span>{{badReasonId}}</div>
								<div class="wp-btn-section"><button type="button" class="wp-btn small white bgray file-txt" name="js-carmain-quality-issue-link" value="{{docNo}}">Q-VoC</button></div>
							</li>
						{{/rows}}
					</script>			
				<ul class="wp-ship-main-list" id="js-carMain-quality-issue-list">									
				</ul>									
			</div>
			<!-- //품질이슈 -->

			<!-- 특이사항 관리 -->
			<div class="wp-table-width">
				<h2 class="wp-ship-table-title"><spring:message code="TODO.KEY" text="출고 이력"/></h2>
				
				<div id="js-car-dispatch-info-list">						
				</div>				
			</div>
			<!-- //특이사항 관리 -->

		<!-- //contents -->
		</div>
	</section>
		
	</tiles:putAttribute>
	<!-- 메인 콘텐츠 E -->
	
	<!-- 페이지 레벨 스크립트 S -->
	<tiles:putAttribute name="page-level-js">
		
		<!-- 제품출고이력정보 리스트 - 스크립트 -->
		<script id="js-template-car-dispatch-info-list" type="text/x-handlebars-template">		
			<div class="wp-timeline">
				<ul class="wp-info-icon">
				</ul>
				{{#rows}}
					{{#isYearYn}}
						<h3 class="wp-title"><span>{{setOutDateTl outDateTline}}</span></h3>				
					{{/isYearYn}}
					<div class="wp-box-section {{setClassGubun formulaChangeYn lotChangeYn expiredYn}}">
						<h3 class="wp-box-title">
							<span><spring:message code="TODO.KEY" text="Lot No."/>: {{lotNo}}</span>
							<span><spring:message code="TODO.KEY" text="보관기간"/>: {{shelfLife}}</span>
							<span><spring:message code="TODO.KEY" text="만료일"/>:{{expiryDate}}</span>
							<span><spring:message code="TODO.KEY" text="Formula No."/>: {{formula}}</span>
						</h3>
						<div class="wp-box-cont">
							{{contents}}
						</div>
						<div class="wp-box-etc">
							<span><spring:message code="TODO.KEY" text="입고일"/>: {{lastInDate}}</span>
							<span><spring:message code="TODO.KEY" text="생산공장"/>: {{prodPlantNm}}</span>
							<span><spring:message code="TODO.KEY" text="제품명"/>: {{itemsNm}}</span>
							<span><spring:message code="TODO.KEY" text="Lot No."/>: {{lotNo}}</span>
							<span><spring:message code="TODO.KEY" text="출고량"/>({{unit}}): {{outVqty}}</span>
						</div>
						<div class="wp-btn-section">
							<button type="button" class="wp-btn wp-btn-pop small white bgray" id="js-carMain-items-issu-reqist-{{outNo}}-{{outSeq}}" name="js-carMain-items-issu-popup-button-all" data-link="js-items-lot-info-detail-popup" data-depth="1" value="{{dest}}" data-items = "{{items}}" data-lotNo = "{{lotNo}}" data-outNo = "{{outNo}}" data-outSeq = "{{outSeq}}" data-prodPlant = "{{prodPlant}}" data-formula = "{{formula}}" data-outDate="{{outDate}}" data-outVqty="{{outVqty}}" data-repOrderNo="{{repOrderNo}}" data-orderId="{{orderId}}"><spring:message code="TODO.KEY" text="자세히보기"/></button>							
						</div>
					</div>
				{{/rows}}
			</div>
		</script>
		
		
		<script type="text/javascript">
		
			var issueInfoTemplate;						//이슈LIST
			var testInfoTemplate;						//외관/색상 검사 및 테스트 현황
			var carProjectInfoTemplate;					//자동차 프로젝트 현황
			var weekWeatherInfoTemplate;				//주간예보
			var carMainQualityIssueListTemplate;		//품질이슈
			var carDispatchinfoListTemplate;			//출고이력 관리
			
			//메시지 파라미터 정의함수
			var messageParam = {
				title: '<spring:message code="TODO.KEY" text="에러"/>',
				message: '',
				confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>'				
			};

							
			$(document).ready(function() {
				// Handlebar 초기화
				initHandlebarsTemplate();
				
				// 페이징 버튼 초기화
				initMainPageButton();
				
				// 품질이슈 - Q-VoC 버튼 클릭
				$('#js-craMain-quality-issue-q-voc-link').off().on('click', function(){
					
					// ------------------------------------
					// KAIS 프로그램 호출시 IE 브라우저만 허용
					// ------------------------------------
					if (app.clientBrowser.isIE) {
						window.open('http://kais.kccworld.co.kr/kaismenu/main.jsp?InitPage=S0503QmsIussReg_E&InitPage=S0503QmsIussList_Q');	
					}else
					{						
						messageParam.title = '<spring:message code="TODO.KEY" text="알림"/>';
						messageParam.message = '<spring:message code="TODO.KEY" text="IE 브라우저만 사용 가능합니다"/>';
						app.message.alert(messageParam);
					}
					
			    });
				
			});
			
			// ------------------------------------------------
			// 자동차 메인 전체조회
			// ------------------------------------------------
			var retrieveCarMainAll = function() {
				
				//페이지 1로 초기화
				$(".wp-btn-paging span").text("1");
				
				retrieveMainCustProcInfo.request();			//거래선 공정 현황				
				retrieveMainIssueInfo.request();			//이슈List
				retrieveMainInspInfo.request();				//외관/색상 및 테스트 현황
				retrieveMainCarProjectInfo.request();		//자동차 프로젝트 현황	
				retrieveWeekWeatherInfo.request();			//주간예보
				retrieveQualityIssueMain.request();			//품질이슈
				retrieveCarDispatchInfo.request();			//출고이력
			}
			
			// ------------------------------------------------
			// Handlebar 초기화
			// ------------------------------------------------
			var initHandlebarsTemplate = function() {
				
				// ------------------------------------------------
				// 이슈LIST
				// ------------------------------------------------
				source = $('#js-template-Issue-Info-list').html();
				issueInfoTemplate = Handlebars.compile(source);
				
				// ------------------------------------------------
				// 외관/색상 검사 및 테스트 현황
				// ------------------------------------------------
				source = $('#js-template-Insp-Info-list').html();
				testInfoTemplate = Handlebars.compile(source);
				
				// ------------------------------------------------
				// 자동차 프로젝트 현황
				// ------------------------------------------------
				source = $('#js-template-Car-Project-Info-list').html();
				carProjectInfoTemplate = Handlebars.compile(source);
				
				// ------------------------------------------------
				// 주간 예보
				// ------------------------------------------------
				source = $('#js-template-week-weather-info').html();
				weekWeatherInfoTemplate = Handlebars.compile(source);
				
				
				Handlebars.registerHelper('setMinTemp', function(tempStr) {
					if(tempStr == null){
						tempStr = "";
					}
					var tempArr = tempStr.split("/");
					return tempArr[0];
				});
				
				Handlebars.registerHelper('setMaxTemp', function(tempStr) {
					if(tempStr == null){
						tempStr = "";
					}
					var tempArr = tempStr.split("/");
					return tempArr[1];
				});
				
				//이슈 List bannerId 값 class 적용
				Handlebars.registerHelper('setIssueClass', function(bannerId) {					
					
					if (bannerId == "GREEN"){
						return "wp-prod-issue";						
					} else if (bannerId == "BLUE"){
						return "wp-proc-change";
					} else if (bannerId == "ORANGE"){
						return "wp-paint-insp";
					}else{
						return "wp-booth-temp";
					}
				});
				
				//자동차 프로젝트 배너 class 적용
				Handlebars.registerHelper('setCarProjectClass', function(projClosingId) {					
					
					//p -> 진행
					if (projClosingId == "P"){
						return "stat1";
					}else{
						return "stat2";
					}
				});
				
				// ------------------------------------------------
				// 품질 이슈
				// ------------------------------------------------
				source = $('#js-template-quality-issue-list').html();
				carMainQualityIssueListTemplate = Handlebars.compile(source);
				
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
				
				//제품출고이력 list 영역 템플릿 컴파일
				var source = $('#js-template-car-dispatch-info-list').html();
				carDispatchinfoListTemplate = Handlebars.compile(source);
				
				//제품출고이력 변경유무에 따라 색상을 변경한다.
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
				
				//거래선 공정 현황 클릭 이벤트
				$(".wp-proc").off().on('click', function() {

					var $el = $(this).find('input');					
					
					//거래선 공정 현황 클릭시 값 바인딩
					$(this).parent().attr("data-target-stdproc-id", $el.val());
					$(this).parent().attr("data-target-line-id", $el.attr("data-lineId"));
										
					//이슈리스트 
					fn_retrieveCarCnt();
				});
				
				//자동차 프로젝트 상단 버튼 클릭 이벤트 
				$(".js-car-main-top-project-link").on('click', function() {													
					window.open('http://sfa.kccworld.info/mobile/kaissfa/views/projectCar/S0208SFAprojectCarProjList_R.jsp');										
				});
				
				//자동차 프로젝트 리스트 버튼 클릭 이벤트
				var $projectList = $('#js-carMain-Car-Project-Info');				
				if ($projectList.length) {					
					$projectList.on('click', '.js-car-main-project-link', function(e) {
						
						var loginId = '${sessionScope.LoginUserInfo.userID}';
						var projNo = $(this).attr("data-projNo");
						
						window.open('http://sfa.kccworld.info/mobile/kaissfa/views/login/S0208SFACreateSession_E.jsp?sloId='+loginId+"&redirectUrl=http%3A%2F%2Fsfa.kccworld.info%2Fmobile%2Fkaissfa%2Fviews%2FprojectCar%2FS0208SFAprojectCarProj_R.jsp%3FprojNo%3D"+projNo);
					});					
				}
				
			}
			
			// ------------------------------------------------
			// 거래선 공정 현황 조회
			// ------------------------------------------------			
			var retrieveMainCustProcInfo = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								
								var data = {
										rows : response.rs
								};
								
								for(var i=0 ; i < response.rs.length; i++){													
									//공정 건수를 세팅한다.
									$('#js-carMain-Cust-Proc-Info-cnt-'+response.rs[i].mainProc).html(response.rs[i].cnt);
									
									//그룹코드를 세팅한다.
									$('#js-group-proc-'+response.rs[i].mainProc).val(response.rs[i].stdProc);
									$('#js-group-proc-'+response.rs[i].mainProc).attr("data-lineId", response.rs[i].lineId);
									
									//공정 이미지 class 적용 cnt가 1이상일 경우 active 추가
									if(response.rs[i].cnt == 0){
										$('#js-car-Main-section-'+response.rs[i].mainProc).removeClass("active");	
									}else{
										$('#js-car-Main-section-'+response.rs[i].mainProc).addClass("active");
									}
									
								}
																
							}else
							{
								// 서비스 요청 처리 오류 발생 메시지
								//alert 메시지 처리
								messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
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
												
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
						messageParam.message = errorText;
						app.message.alert(messageParam);
					},
					complete: function(jqueryXHR, status) {
						// ------------------------------------
						// http response complete
						// ------------------------------------
						app.mask.pageUnlock();
					},
					request: function(currPage) {
						
						var carPlant = $('#js-car-header-car-plant').val();
						
						var toDate = app.utils.formatDate(new Date(), "YYYYMMDD");
						var fromDate =  fn_getBeforeDate(toDate, 0, 1, 0);
						
						var params = {
							service: 'car.main',
							method: 'retrieveMainCustProcInfo',
							carPlant : carPlant,
							fromDate : fromDate,
							toDate:toDate
						};

						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			// ------------------------------------------------
			// 이슈 LIST 조회
			// ------------------------------------------------
			var retrieveMainIssueInfo = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								
								var data = {
										rows : response.rs
								};
								
								var result = issueInfoTemplate(data);
								$("#js-carMain-Issue-Info-list").empty().append(result);
								
								// 페이징 처리
								if(response.rs.length > 0){									
									$('#js-Issue-Info-current-page').text(response.rs[0].currPage);
									$('#js-Issue-Info-total-page').text(response.rs[0].totalPage);

									if(response.rs[0].currPage == 1){
										$('button[name=js-carMain-paging-button][value=js-Issue-Info].prev').addClass("disable");
									} else {
										$('button[name=js-carMain-paging-button][value=js-Issue-Info].prev').removeClass("disable");
									}
									if(response.rs[0].currPage == response.rs[0].totalPage){
										$('button[name=js-carMain-paging-button][value=js-Issue-Info].next').addClass("disable");
									} else {
										$('button[name=js-carMain-paging-button][value=js-Issue-Info].next').removeClass("disable");
									}
								} else {
									$('button[name=js-carMain-paging-button][value=js-Issue-Info]').addClass("disable");
								}
								
							}else
							{
								// 서비스 요청 처리 오류 발생 메시지
								
								messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
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
						
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
						messageParam.message = errorText;
						app.message.alert(messageParam);
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
						
						var toDate = app.utils.formatDate(new Date(), "YYYYMMDD");
						var fromDate =  fn_getBeforeDate(toDate, 0, 1, 0);
						var stdProc = $(".wp-process-section").attr("data-target-stdproc-id") || '';
						var lineId = $(".wp-process-section").attr("data-target-line-id") || '';
						
						var carPlant = $('#js-car-header-car-plant').val();
						
						var method = 'retrieveMainIssueInfo';
						
						if(stdProc != '') { 
							method = 'retrieveMainProcIssueInfo';
						}
						
						var params = {
							service: 'car.main',
							method: method,
							carPlant : carPlant,	
							stdProc : stdProc,
							lineId: lineId,
							fromDate : fromDate,
							toDate : toDate,
							currPage : currPage
						};

						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			// ------------------------------------------------
			// 외관/색상 검사 및 테스트 현황 조회
			// ------------------------------------------------
			var retrieveMainInspInfo = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								
								var data = {
										rows : response.rs
								};
								
								var result = testInfoTemplate(data);
								$("#js-carMain-Insp-Info").empty().append(result);
								
								$('#js-carMain-Insp-Info').find('a[id=js-car-color-detail]').off().on('click', function(){
									
									var code = $(this).parent().find('#js-car-color-doc-no').val();
									
									initCarColorDetailPopup(code);
									
									fn_openPop($(this));
								});								

								$('#js-carMain-Insp-Info').find('a[id=js-car-ext-insp-ed-info-detail]').off().on('click', function(){
									
									var code = $(this).parent().find('#js-car-ext-insp-ed-bc-info-doc-no').val();
									
									initCarExtInspEdInfoDetailPopup(code);
									
									fn_openPop($(this));
								});
								
								$('#js-carMain-Insp-Info').find('a[id=js-car-ext-insp-bc-info-detail]').off().on('click', function(){
									
									var code = $(this).parent().find('#js-car-ext-insp-ed-bc-info-doc-no').val();
									
									initCarExtInspBcInfoDetailPopup(code);
									
									fn_openPop($(this));
								});
								
								$('#js-carMain-Insp-Info').find('a[id=js-car-prod-test-bc-info-detail]').off().on('click', function(){
									
									var carPlant = $(this).parent().find('#js-car-prod-test-bc-info-detail-car-plant').val();
									var docNo = $(this).parent().find('#js-car-prod-test-bc-info-detail-doc-no').val();
									var inspSeq = $(this).parent().find('#js-car-prod-test-bc-info-detail-insp-seq').val();
									
									initCarProdTestBcInfoPopup(carPlant, docNo, inspSeq);
									
									fn_openPop($(this));
								});
								
								$('#js-carMain-Insp-Info').find('a[id=js-car-prod-test-ed-dt-view]').off().on('click', function(){
									
									//var carPlant = $(this).parent().find('#js-car-prod-test-ed-dt-view-car-plant').val();
									var docNo = $(this).parent().find('#js-car-prod-test-ed-dt-view-doc-no').val();
									var inspSeq = $(this).parent().find('#js-car-prod-test-ed-dt-view-insp-seq').val();
									
									initCarProdTestEdDtViewPopup(docNo, inspSeq);
									
									fn_openPop($(this));
								});
								
								// 페이징 처리
								if(response.rs.length > 0){									
									$('#js-Insp-Info-current-page').text(response.rs[0].currPage);
									$('#js-Insp-Info-total-page').text(response.rs[0].totalPage);

									if(response.rs[0].currPage == 1){
										$('button[name=js-carMain-paging-button][value=js-Insp-Info].prev').addClass("disable");
									} else {
										$('button[name=js-carMain-paging-button][value=js-Insp-Info].prev').removeClass("disable");
									}
									if(response.rs[0].currPage == response.rs[0].totalPage){
										$('button[name=js-carMain-paging-button][value=js-Insp-Info].next').addClass("disable");
									} else {
										$('button[name=js-carMain-paging-button][value=js-Insp-Info].next').removeClass("disable");
									}
								} else {
									$('button[name=js-carMain-paging-button][value=js-Insp-Info]').addClass("disable");
								}
								
							}else
							{
								// 서비스 요청 처리 오류 발생 메시지
								
								messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
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
						
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
						messageParam.message = errorText;
						app.message.alert(messageParam);
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
						
						var carPlant = $('#js-car-header-car-plant').val();
						
						var toDate = app.utils.formatDate(new Date(), "YYYYMMDD");
						var fromDate =  fn_getBeforeDate(toDate, 0, 1, 0);
						
						var params = {
							service: 'car.main',
							method: 'retrieveMainInspInfo',
							carPlant : carPlant,
							fromDate : fromDate,
							toDate : toDate,
							currPage : currPage
						};

						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			// ------------------------------------------------
			// 자동차 프로젝트 현황 조회
			// ------------------------------------------------
			var retrieveMainCarProjectInfo = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								
								var data = {
										rows : response.rs
								};
								
								var result = carProjectInfoTemplate(data);
								$("#js-carMain-Car-Project-Info").empty().append(result);
								
								// 페이징 처리
								if(response.rs.length > 0){									
									$('#js-carMain-Car-Project-Info-current-page').text(response.rs[0].currPage);
									$('#js-carMain-Car-Project-Info-total-page').text(response.rs[0].totalPage);
									
									if(response.rs[0].currPage == 1){
										$('button[name=js-carMain-paging-button][value=js-Car-Project-Info].prev').addClass("disable");
									} else {
										$('button[name=js-carMain-paging-button][value=js-Car-Project-Info].prev').removeClass("disable");
									}
									if(response.rs[0].currPage == response.rs[0].totalPage){
										$('button[name=js-carMain-paging-button][value=js-Car-Project-Info].next').addClass("disable");
									} else {
										$('button[name=js-carMain-paging-button][value=js-Car-Project-Info].next').removeClass("disable");
									}
								} else {
									$('button[name=js-carMain-paging-button][value=js-Car-Project-Info]').addClass("disable");
								}
								
							}else
							{
								// 서비스 요청 처리 오류 발생 메시지
								
								messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
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
						
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
						messageParam.message = errorText;
						app.message.alert(messageParam);
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
						
						var carPlant = $('#js-car-header-car-plant').val();
						
						var params = {
							service: 'car.main',
							method: 'retrieveMainCarProjectInfo',
							carPlant : carPlant,
							currPage : currPage
						};

						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
						
			// ------------------------------------------------
			// 주간 예보 조회
			// ------------------------------------------------
			var retrieveWeekWeatherInfo = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								
								var data = response.rs;
								
								var result = weekWeatherInfoTemplate(data);
								$("#js-week-weather-info").empty().append(result);
								
							}else
							{
								// 서비스 요청 처리 오류 발생 메시지
								
								messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
								messageParam.message = message;
								app.message.alert(messageParam);
								// 서비스 요청 처리 Exception 메시지
								console.lg(response.error || '');
							}
						}
					},
					error: function(jqueryXHR, status, errorText) {
						// ------------------------------------
						// http response error
						// ------------------------------------
						
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
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
						
						var carPlant = $('#js-car-header-car-plant').val();
						
						var params = {
							service: 'ship.weatherInfo',
							method: 'retrieveWeekWeatherInfo',
							yardCode: carPlant
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
			var initCarMainQualityIssueQVoCLink = function() {
				$('button[name=js-carmain-quality-issue-link]').off().on('click', function(){
					var docNo = $(this).val();									
					
					// ------------------------------------
					// KAIS 프로그램 호출시 IE 브라우저만 허용
					// ------------------------------------
					if (app.clientBrowser.isIE) {						
						window.open('http://kais.kccworld.co.kr/kaislogin.jsp?InitPage=S0503QmsIussReg_E&paramName1=' + docNo);
					}else
					{						
						messageParam.title = '<spring:message code="TODO.KEY" text="알림"/>';
						messageParam.message = '<spring:message code="TODO.KEY" text="IE 브라우저만 사용 가능합니다"/>';
						app.message.alert(messageParam);
					}
					
					     
			    });
				
				//$('a[name=js-carMain-items-issu-quality-issue-type-link]').off().on('click', function(e){
				//	e.preventDefault();
			    //});
				
			}
			
			// ------------------------------------------------
			// 품질 이슈 조회
			// ------------------------------------------------
			var retrieveQualityIssueMain = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								
								var data = {
									rows : response.rs
								};
								
								var result = carMainQualityIssueListTemplate(data);
								$("#js-carMain-quality-issue-list").empty().append(result);
								
								initCarMainQualityIssueQVoCLink();
								
								// 페이징 처리
								if(response.rs.length > 0){
									$('#js-quality-issue-current-page').text(response.rs[0].currPage);
									$('#js-quality-issue-total-page').text(response.rs[0].totalPage);

									if(response.rs[0].currPage == 1){
										$('button[name=js-carMain-paging-button][value=js-quality-issue].prev').addClass("disable");
									} else {
										$('button[name=js-carMain-paging-button][value=js-quality-issue].prev').removeClass("disable");
									}
									if(response.rs[0].currPage == response.rs[0].totalPage){
										$('button[name=js-carMain-paging-button][value=js-quality-issue].next').addClass("disable");
									} else {
										$('button[name=js-carMain-paging-button][value=js-quality-issue].next').removeClass("disable");
									}
								} else {
									$('button[name=js-carMain-paging-button][value=js-quality-issue]').addClass("disable");
								}
								
							}else
							{
								// 서비스 요청 처리 오류 발생 메시지
								
								messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
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
						
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
						messageParam.message = errorText;
						app.message.alert(messageParam);
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
						
						var carPlant = $('#js-car-header-car-plant').val();
						
						var params = {
							service: 'car.main',
							method: 'retrieveMainQualityIssueInfo',
							carPlant : carPlant,							
							currPage: currPage
						};

						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
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
			//특이사항 정보 조회
			// ------------------------------------------------
			var retrieveCarDispatchInfo = {
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
							
							var html = carDispatchinfoListTemplate(data);							
							$('#js-car-dispatch-info-list').empty().append(html);
							
							//자세히보기 버튼 클릭 이벤트 추가				
							$("button[name=js-carMain-items-issu-popup-button-all]").off().on('click', function() {								
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
							
							messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
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
					messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
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
					
					var carPlant 	= $('#js-car-header-car-plant').val();
					var sToDate 	= app.utils.formatDate(new Date(), "YYYYMMDD");
					var sFromDate 	= fn_getBeforeDate(sToDate, 0, 0, 2);
					
					var params = {
						service 	: 'car.prodDispatch',
						method 		: 'retrieveProdDispatchInfo',
						dest 		: carPlant,						// 착지(HMC공장코드)
						dateType 	: "OD",							// 출고일자 코드값 != 입고일자 코드값 = "ID"
						fromDate 	: sFromDate,					// 시작일자
						toDate 		: sToDate,						// 종료일자
					};
					
					app.mask.pageLock();					
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			// ------------------------------------------------
			// 페이징 버튼 초기화
			// ------------------------------------------------
			var initMainPageButton = function() {
				
				// 페이징 버튼 처리
				$('button[name=js-carMain-paging-button]').off().on('click', function(){
					
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
					
					// 이슈 LIST
					if($(this).val() == "js-Issue-Info"){
						retrieveMainIssueInfo.request(paramPage);
						return;
					}
					
					// 외관/색상 검사 및 테스트 현황
					if($(this).val() == "js-Insp-Info"){
						retrieveMainInspInfo.request(paramPage);
						return;
					}
					
					
					
					// 자동차 프로젝트 현황
					if($(this).val() == "js-Car-Project-Info"){
						retrieveMainCarProjectInfo.request(paramPage);
						return;
					}
					
					// 품질 이슈
					if($(this).val() == "js-quality-issue"){
						retrieveQualityIssueMain.request(paramPage);
						return;
					}
					
			    });
			}
			
			//거래선 공정현황 클릭시 이슈 List 조회
			var fn_retrieveCarCnt = function(){				
				retrieveMainIssueInfo.request();
			}
			
		</script>
					
	</tiles:putAttribute>
	<!-- 페이지 레벨 스크립트 E -->
	
</tiles:insertDefinition>