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
					<h1><spring:message code="TODO.KEY" text="부스 상태 관리" /></h1>
					<div class="wp-location"><span><spring:message code="TODO.KEY" text="도장공정" /></span><span class="wp-fc-54"><spring:message code="TODO.KEY" text="부스 상태 관리" /></span></div>
				</header>
				<!-- tab -->
				<ul class="wp-prod-tab wp-four">
					<li><a href="/car/inspection/carBoothTempHumidInfo.do"><spring:message code="TODO.KEY" text="부스별 온/습도 정보" /></a></li>
					<li><a href="/car/inspection/carHabTempInfo.do"><spring:message code="TODO.KEY" text="HAB Zone 정보" /></a></li>
					<li><a href="/car/inspection/carOvenTempInfo.do" class="active"><spring:message code="TODO.KEY" text="오븐 온도 정보" /></a></li>
					<li><a href="/car/inspection/carUfInfo.do"><spring:message code="TODO.KEY" text="UF 정보" /></a></li>
				</ul>
				<!-- //tab -->
				<!-- 상단 버튼 -->
				<div class="wp-clearfix">
					<div class="wp-fl">
						<div class="wp-ui-btn-switch wp-clearfix noborder-switch wp-fl">
							<ul id="js-car-oven-temp-info-proc-list">
							</ul>
						</div>
					</div>
					<div class="wp-btn-area wp-fr">
						<!-- <button type="button" class="wp-layer-open wp-btn small blue1 cr3 search-white">검색</button> -->
						<!-- <button type="button" class="wp-btn small grayblue cr3">엑셀 다운로드</button> -->
					</div>
				</div>
				<!-- //상단 버튼 -->
				
				<!-- content box -->
				<div class="wp-table-width wp-mt13">
					<!-- 상단 버튼 20170615 -->
					<div class="wp-title-section wp-no-line">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="일자별 현황" /></h2>
						<div class="wp-btn-area">
							<input type="text" name="js-car-oven-temp-info-start-date" id="js-car-oven-temp-info-start-date" title="<spring:message code="TODO.KEY" text="날짜입력" />" class="wp-inp-datepicker" placeholder="날짜입력"> ~ <input type="text" name="js-car-oven-temp-info-end-date" id="js-car-oven-temp-info-end-date" title="내용입력" class="wp-inp-datepicker" placeholder="<spring:message code="TODO.KEY" text="날짜입력" />"><button type="button" class="wp-btn cr3 darkgray small wp-ml5" id="js-car-oven-temp-info-retrieve-button"><spring:message code="TODO.KEY" text="검색" /></button>
							<button type="button" class="wp-btn small skyblue cr3 upload-white wp-ml10" id="js-car-oven-temp-info-spec-reg-button" data-link="js-car-oven-temp-spec-reg-popup" data-depth="1"><spring:message code="TODO.KEY" text="Spec. 등록" /></button>
							<button type="button" class="wp-btn small white bgray prev wp-ml10" name="js-car-oven-temp-info-paging-button"><span><spring:message code="TODO.KEY" text="이전" /></span></button>
							<div class="wp-btn-paging"><span class="wp-ship-fc-blue" id="js-car-oven-temp-info-page-current">1</span> / <span id="js-car-oven-temp-info-page-total">1</span></div>
							<button type="button" class="wp-btn small white bgray next" name="js-car-oven-temp-info-paging-button"><span><spring:message code="TODO.KEY" text="다음" /></span></button>
						</div>
					</div>
	
					<!-- table 20170615 -->
					<div class="wp-table-st1 wp-temphum wp-vertical-line">
						<table id="js-car-oven-temp-info-booth-insp-info-table-list">
							<caption></caption>
							<colgroup>
								<!--<col style="width:auto">-->
								<col style="width:7.7%">
								<col style="width:7.7%">
								<col style="width:7.7%">
								<col style="width:7.7%">
								<col style="width:7.7%">
								<col style="width:7.7%">
								<col style="width:7.7%">
								<col style="width:7.7%">
								<col style="width:7.7%">
								<col style="width:7.7%">
								<col style="width:7.7%">
								<col style="width:7.7%">
							</colgroup>
							<thead>
								<tr id="js-car-oven-temp-info-booth-insp-info-date-list">
								</tr>
								<tr>
									<th>Spec.#1</th>
									<th>Spec.#2</th>
									<th>Spec.#3</th>
									<th>Spec.#1</th>
									<th>Spec.#2</th>
									<th>Spec.#3</th>
									<th>Spec.#1</th>
									<th>Spec.#2</th>
									<th>Spec.#3</th>
									<th>Spec.#1</th>
									<th>Spec.#2</th>
									<th>Spec.#3</th>
								</tr>
							</thead>
							<tbody id="js-car-oven-temp-info-booth-insp-info-temp-humid-row-list">
							</tbody>
						</table>
					</div>
					<!-- //table -->
	
					<div class="wp-title-section wp-no-line wp-mt20">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="오븐 실측값(온도 구간별 시간)" /></h2>
						<div class="wp-btn-area">
							<button type="button" class="wp-btn small white bgray write" id="js-car-oven-temp-info-inoutlet-reg-button" data-link="js-car-oven-temp-inoutlet-reg-popup" data-depth="1"><span><spring:message code="TODO.KEY" text="등록" /></span></button>
						</div>
					</div>
					<!-- table -->
					<div class="wp-table-st1 wp-temphum">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:12%">
								<col style="width:6%">
								<col style="width:9%">
								<col style="width:9%">
								<col style="width:9%">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:auto%">
								<col style="width:6%">
								<col style="width:8%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정일시" /></th>
									<th><spring:message code="TODO.KEY" text="오븐 No." /></th>
									<th><spring:message code="TODO.KEY" text="Spec.#1" /></th>
									<th><spring:message code="TODO.KEY" text="Spec.#2" /></th>
									<th><spring:message code="TODO.KEY" text="Spec.#3" /></th>
									<th><spring:message code="TODO.KEY" text="#1(min)" /></th>
									<th><spring:message code="TODO.KEY" text="#2(min)" /></th>
									<th><spring:message code="TODO.KEY" text="#3(min)" /></th>
									<th><spring:message code="TODO.KEY" text="비고" /></th>
									<th><spring:message code="TODO.KEY" text="첨부파일" /></th>
									<th><spring:message code="TODO.KEY" text="수정 / 삭제" /></th>
								</tr>
							</thead>
							<tbody id="js-car-oven-temp-info-insp-oven-time-list">
							</tbody>
						</table>
					</div>
					<!-- //table -->
					
				</div>
				<!-- // content box -->
	
				<!-- content box -->
				<div class="wp-table-width wp-mt13">
				
					<div class="wp-title-section wp-no-line wp-mt20">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="오븐 Setting 온도" /><span class="wp-fc-blue2 wp-ml10" id="js-car-oven-temp-info-day-choice-date-text"></span></h2><!-- 20170615 -->
						<div class="wp-btn-area">
							<button type="button" class="wp-btn small white bgray write" id="js-car-oven-temp-info-reg-button" data-link="js-car-oven-temp-info-reg-popup" data-depth="1"><span><spring:message code="TODO.KEY" text="등록" /></span></button>
						</div>
					</div>
					<!-- table -->
					<div class="wp-table-st1 wp-temphum">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:9%">
								<col style="width:auto">
								<col style="width:auto">
								<col style="width:auto">
								<col style="width:auto">
								<col style="width:auto">
								<col style="width:auto">
								<col style="width:auto">
								<col style="width:auto">
								<col style="width:auto">
								<col style="width:7%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="입력일자." /></th>
									<th><spring:message code="TODO.KEY" text="오븐 No." /></th>
									<th><spring:message code="TODO.KEY" text="입구온도(℃)" /></th>
									<th><spring:message code="TODO.KEY" text="Zone #1(℃)" /></th>
									<th><spring:message code="TODO.KEY" text="Zone #2(℃)" /></th>
									<th><spring:message code="TODO.KEY" text="Zone #3(℃)" /></th>
									<th><spring:message code="TODO.KEY" text="Zone #4(℃)" /></th>
									<th><spring:message code="TODO.KEY" text="Zone #5(℃)" /></th>
									<th><spring:message code="TODO.KEY" text="Zone #6(℃)" /></th>
									<th><spring:message code="TODO.KEY" text="출구온도(℃)" /></th>
									<th><spring:message code="TODO.KEY" text="수정 / 삭제" /></th>
								</tr>
							</thead>
							<tbody id="js-car-oven-temp-info-insp-oven-temp-list">
							</tbody>
						</table>
					</div>
					<!-- //table -->
				
				</div>
				<!-- // content box -->
				
				<!-- content box -->
				<div class="wp-table-width wp-mt13">	
				
					<div class="wp-title-section wp-no-line">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="기간별 조회" /></h2>
						<div class="wp-btn-area">
							<em class="wp-tit">오븐 No.</em>
							<div class="wp-ui-select wp-wd80">
								<select title="항목 개수 설정" id="js-car-oven-temp-info-booth-combo">
								</select>
							</div>
							<em class="wp-tit wp-ml10"><spring:message code="TODO.KEY" text="기준일자" /></em>
							<input type="text" name="" id="js-car-oven-temp-info-graph-date" title="내용입력" class="wp-inp-datepicker" placeholder="날짜입력">
							<button type="button" id="js-car-oven-temp-info-graph-retrieve-button" class="wp-btn darkgray small cr3"><spring:message code="TODO.KEY" text="검색" /></button>
						</div>
					</div>
					
					<div class="wp-fr wp-vt wp-blue-comment wp-inblock"><spring:message code="TODO.KEY" text="기준일자 이전 최대 15개의 정보가 차트에 표시됩니다." /></div>
					
					<!-- 그래프 영역 -->
					<div class="wp-fc-red bold" id="js-car-oven-temp-info-graph-area"></div>
					
				</div>
				<!-- // content box -->
				
				<!-- content box -->
				<div class="wp-table-width wp-mt13">	
				
					<!-- 날씨  -->
					<h2 class="wp-section-title wp-mt10"><spring:message code="TODO.KEY" text="Weather Forecast" /></h2>
					
					<!-- 동네예보 -->
					<div id="js-car-oven-temp-info-forecast-info"></div>
					<!-- //동네예보 -->
					
					<!-- 주간예보 -->
					<div id="js-car-oven-temp-info-week-weather-info"></div>
					<!-- //주간예보 -->
					
				</div>
				<!-- //content end -->
			</div>
		</section>

	</tiles:putAttribute>
	<!-- 메인 콘텐츠 E -->

	<!-- 페이지 레벨 스크립트 S -->
	<tiles:putAttribute name="page-level-js">
	
	<!-- 하이차트 -->
	<script src="/highcharts/highcharts.js"></script>
	<script src="/highcharts/modules/exporting.js"></script>
	<script src="/highcharts/modules/no-data-to-display.js"></script>
		
		<!-- 동네예보 - 스크립트-->
		<script id="js-template-car-oven-temp-info-forecast-info" type="text/x-handlebars-template">
			<h3 class="wp-sub-title"><spring:message code="TODO.KEY" text="동네예보"/>
				<div class="wp-fr wp-vt wp-blue-comment wp-inblock">{{rows.dispOccurDate}} {{rows.dispOccurTime}} <spring:message code="TODO.KEY" text="발표"/></div>
			</h3>
			<table class="wp-table-st1 h-center wp-temperature wp-vertical-line">
				<caption><spring:message code="TODO.KEY" text="동네예보"/></caption>
				<colgroup>
					<col style="width:10%">
			{{#rows.forecast}}
				{{#fcstTime}}
					<col style="width:auto">
				{{/fcstTime}}
			{{/rows.forecast}}
				</colgroup>
				<thead>
					<tr>
						<th><spring:message code="TODO.KEY" text="날짜"/></th>
					{{#rows.forecast}}
						<th colspan="{{fcstTime.length}}">{{dispDate}}</th>
					{{/rows.forecast}}
					</tr>
					<tr>
						<th><spring:message code="TODO.KEY" text="시간"/></th>
				{{#rows.forecast}}
					{{#fcstTime}}
						<th>{{fcstTime}}</th>
					{{/fcstTime}}
				{{/rows.forecast}}
					</tr>
				</thead>
				<tbody>
					<tr>
						<th><spring:message code="TODO.KEY" text="날씨"/></th>
				{{#rows.forecast}}
					{{#SKY}}
						<td><i class="wp-weather-small {{fcstValue}}"></i></td>
					{{/SKY}}
				{{/rows.forecast}}
					</tr>
					<tr>
						<th><spring:message code="TODO.KEY" text="기온"/> (℃)</th>
				{{#rows.forecast}}
					{{#T3H}}
						<td>{{fcstValue}}</td>
					{{/T3H}}
				{{/rows.forecast}}
					</tr>
					<tr>
						<th><spring:message code="TODO.KEY" text="강수확률"/> (%)</th>
				{{#rows.forecast}}
					{{#POP}}
						<td>{{fcstValue}}</td>
					{{/POP}}
				{{/rows.forecast}}
					</tr>
					<tr>
						<th><spring:message code="TODO.KEY" text="최저/최고기온"/> (℃)</th>
					{{#rows.forecast}}
						<td colspan="{{fcstTime.length}}">{{tmn}} ℃ / {{tmx}} ℃</td>
					{{/rows.forecast}}
					</tr>
					<tr>
						<th><spring:message code="TODO.KEY" text="강수"/> (mm)</th>

			{{#rows.forecast}}
				{{#ifCond R06.length fcstTime.length}}
					{{#R06}}
						<td>{{fcstValue}}</td>
						<td>-</td>
					{{/R06}}
				{{else}}
					{{#ifCond2 R06.length fcstTime.length}}
						{{#R06}}
							<td>{{fcstValue}}</td>
						{{/R06}}
					{{else}}
						{{#ifCond3 R06.length fcstTime.length}}
							{{#if @first}}
								<td>-</td>
							{{/if}}
							<td>{{fcstValue}}</td>
							<td>-</td>
						{{else}}
							<td>-</td>
						{{/ifCond3}}
					{{/ifCond2}}
				{{/ifCond}}
			{{/rows.forecast}}

					</tr>
					<tr>
						<th><spring:message code="TODO.KEY" text="작설"/> (cm)</th>
			{{#rows.forecast}}
				{{#ifCond S06.length fcstTime.length}}
					{{#S06}}
						<td>{{fcstValue}}</td>
						<td>-</td>
					{{/S06}}
				{{else}}
					{{#ifCond2 S06.length fcstTime.length}}
						{{#S06}}
							<td>{{fcstValue}}</td>
						{{/S06}}
					{{else}}
						{{#ifCond3 S06.length fcstTime.length}}
							{{#if @first}}
								<td>-</td>
							{{/if}}
							<td>{{fcstValue}}</td>
							<td>-</td>
						{{else}}
							<td>-</td>
						{{/ifCond3}}			
					{{/ifCond2}}
				{{/ifCond}}
			{{/rows.forecast}}
					</tr>
					<tr>
						<th><spring:message code="TODO.KEY" text="풍향"/></th>
				{{#rows.forecast}}
					{{#VEC}}
						<td><i class="wp-direction {{fcstValue}}"></i><span>{{setWindDirect fcstValue}}</span></td>
					{{/VEC}}
				{{/rows.forecast}}
					</tr>
					<tr>
						<th><spring:message code="TODO.KEY" text="풍속"/> (m/s)</th>
				{{#rows.forecast}}
					{{#WSD}}
						<td>{{fcstValue}}</td>
					{{/WSD}}
				{{/rows.forecast}}
					</tr>
					<tr>
						<th><spring:message code="TODO.KEY" text="습도"/> (%)</th>
				{{#rows.forecast}}
					{{#REH}}
						<td>{{fcstValue}}</td>
					{{/REH}}
				{{/rows.forecast}}
					</tr>
				</tbody>
			</table>
		</script>
		
		<!-- 주간예보 - 스크립트-->
		<script id="js-template-car-oven-temp-info-week-weather-info" type="text/x-handlebars-template">
			<h3 class="wp-sub-title"><spring:message code="TODO.KEY" text="주간예보"/>
				<div class="wp-fr wp-vt wp-blue-comment wp-inblock">{{tmFc}} <spring:message code="TODO.KEY" text="발표"/></div>
			</h3>
			<table class="wp-table-st1 h-center wp-temperature wp-vertical-line">
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
		
		
		<!-- 오븐별 Spec min - 날짜 리스트 - 스크립트 -->
		<script id="js-template-car-oven-temp-info-booth-insp-info-date-list" type="text/x-handlebars-template">
			{{#rows}}
				{{#if @first}}
					<th rowspan="2"><spring:message code="TODO.KEY" text="오븐" /></th>
				{{/if}}
					<th colspan="3">{{inspDatetime}}</th>
			{{/rows}}
		</script>
		
		<!-- 오븐별 Spec min row - 스크립트 -->
		<script id="js-template-car-oven-temp-info-booth-insp-info-temp-humid-row-list" type="text/x-handlebars-template">
			{{#rows}}
				<tr id="js-car-oven-temp-info-booth-insp-info-temp-humid-row-list-{{boothCode}}">
				</tr>
			{{/rows}}
		</script>
		
		<!-- 오븐별 Spec min 데이터 - 스크립트 -->
		<script id="js-template-car-oven-temp-info-booth-insp-info-temp-humid-list" type="text/x-handlebars-template">
			{{#rows}}
				{{#if @first}}
					<th>{{ovenNm}}</th>
				{{/if}}
					<td class="wp-ar" id="js-car-oven-temp-info-booth-insp-info-temp-humid-specId1Value-{{@index}}" name="js-car-oven-temp-info-booth-insp-info-temp-humid-td"></td>
					<td class="wp-ar" id="js-car-oven-temp-info-booth-insp-info-temp-humid-specId2Value-{{@index}}" name="js-car-oven-temp-info-booth-insp-info-temp-humid-td"></td>
					<td class="wp-ar" id="js-car-oven-temp-info-booth-insp-info-temp-humid-specId3Value-{{@index}}" name="js-car-oven-temp-info-booth-insp-info-temp-humid-td"></td>
						<input type="hidden" id="js-car-oven-temp-info-booth-insp-info-daily-date">
					</td>
			{{/rows}}
		</script>
		
			
		<!-- 오븐 실측값(온도 구간별 시간) 리스트 - 스크립트 -->
		<script id="js-template-car-oven-temp-info-insp-oven-time-list" type="text/x-handlebars-template">
			{{#rows}}
				<tr>
					<td>{{inspDatetime}}</td>
					<td>{{ovenNm}}</td>
					<td>{{specId1Nm}}</td>
					<td>{{specId2Nm}}</td>
					<td>{{specId3Nm}}</td>
					<td><span class="wp-temphum-icon wp-ac {{setPhSpecOut specId1Out}}">{{specId1Value}}</span></td>
					<td><span class="wp-temphum-icon wp-ac {{setCoolSpecOut specId2Out}}">{{specId2Value}}</span></td>
					<td><span class="wp-temphum-icon wp-ac {{setHabSpecOut specId3Out}}">{{specId3Value}}</span></td>
					<td class="wp-al">{{remark}}</td>
					<td>{{fileCnt}}</td>
					<td>
						<button type="button" class="wp-btn small white bgray mody" name="js-car-oven-temp-info-insp-oven-temp-list-inoutlet-modify-button" seq="{{seqOvenTime}}" data-link="js-car-oven-temp-inoutlet-reg-popup" data-depth="1" data-index="{{@index}}"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
						<button type="button" class="wp-btn small white bgray trash-gray" name="js-car-oven-temp-info-insp-oven-temp-list-inoutlet-delete-button" seq="{{seqOvenTime}}"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
					</td>
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-time-list-datetime-{{@index}}" 	value="{{inspDatetime}}" >
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-time-list-oven-{{@index}}"  		value="{{ovenNo}}" >
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-time-list-specId1-{{@index}}" 		value="{{specId1}}" >
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-time-list-specId2-{{@index}}"  	value="{{specId2}}" >
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-time-list-specId3-{{@index}}" 		value="{{specId3}}" >
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-time-list-specId1Value-{{@index}}" value="{{specId1Value}}" >
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-time-list-specId2Value-{{@index}}" value="{{specId2Value}}" >
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-time-list-specId3Value-{{@index}}" value="{{specId3Value}}" >
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-time-list-remark-{{@index}}" 		value="{{remark}}" >
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-time-list-fileCnt-{{@index}}" 		value="{{fileCnt}}" >
				</tr>
			{{/rows}}
		</script>

		<!-- 오븐 Setting 온도 리스트 - 스크립트 -->
		<script id="js-template-car-oven-temp-info-insp-oven-temp-list" type="text/x-handlebars-template">
			{{#rows}}
				<tr>
					<td>{{inputDate}}</td>
					<td>{{ovenNm}}</td>
					<td>{{enterTemp}}</td>
					<td>{{zone1Temp}}</td>
					<td>{{zone2Temp}}</td>
					<td>{{zone3Temp}}</td>
					<td>{{zone4Temp}}</td>
					<td>{{zone5Temp}}</td>
					<td>{{zone6Temp}}</td>
					<td>{{exitTemp}}</td>
					<td>
						<button type="button" class="wp-btn small white bgray mody" name="js-car-oven-temp-info-insp-oven-temp-list-modify-button" seq="{{seqOvenTemp}}" data-link="js-car-oven-temp-info-reg-popup" data-depth="1" data-index="{{@index}}"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
						<button type="button" class="wp-btn small white bgray trash-gray" name="js-car-oven-temp-info-insp-oven-temp-list-delete-button" seq="{{seqOvenTemp}}"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
					</td>
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-temp-list-inspDate-{{@index}}"  value="{{inspDate}}" >
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-temp-list-datetime-{{@index}}"  value="{{inspDatetime}}" >
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-temp-list-inspTime-{{@index}}"  value="{{inspTime}}" >
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-temp-list-oven-{{@index}}"  value="{{ovenNo}}" >
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-temp-list-enter-{{@index}}" value="{{enterTemp}}" >
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-temp-list-exit-{{@index}}"  value="{{exitTemp}}" >
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-temp-list-zone1-{{@index}}" value="{{zone1Temp}}" >
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-temp-list-zone2-{{@index}}" value="{{zone2Temp}}" >
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-temp-list-zone3-{{@index}}" value="{{zone3Temp}}" >
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-temp-list-zone4-{{@index}}" value="{{zone4Temp}}" >
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-temp-list-zone5-{{@index}}" value="{{zone5Temp}}" >
					<input type="hidden" id="js-car-oven-temp-info-insp-oven-temp-list-zone6-{{@index}}" value="{{zone6Temp}}" >
				</tr>
			{{/rows}}
		</script>
					
		<script type="text/javascript">
		
			//메시지 파라미터 정의함수
			var messageParam = {
				title: '<spring:message code="TODO.KEY" text="에러"/>',
				message: '',
				confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>'				
			};
			
			var carOvenTempInfoBoothInspInfoDateListTemplate;
			var carOvenTempInfoBoothInspInfoTempHumidListTemplate;
			var carOvenTempInfoBoothInspInfoTempHumidRowListTemplate;
			
			var carOvenTempInfoForecastInfoTemplate;
			var carOvenTempInfoWeekWeatherInfoTemplate;
			var carOvenTempInfoInspOvenTempListTemplate;
			var carOvenTempInfoInspOvenTimeListTemplate;
			
			$(document).ready(function() {
				
				// 검색조건 날짜 세팅 - 현재 년월
				var date = app.utils.formatDate(new Date(), "YYYYMMDD");
				$("#js-car-oven-temp-info-start-date").val(fn_getBeforeDate(date, 0, 1));		// 1개월전
				$("#js-car-oven-temp-info-end-date, #js-car-oven-temp-info-graph-date").val(date);
				$("#js-car-oven-temp-info-start-date, #js-car-oven-temp-info-end-date, #js-car-oven-temp-info-graph-date").mask('9999-99-99');
				
				// 그래프 기준일자
				$("#js-car-oven-temp-info-graph-date").val(date);
				$("#js-car-oven-temp-info-graph-date").mask('9999-99-99');
				
				// 기준일자
				$("#js-car-oven-temp-info-check-date-yyyymmdd").val(date);
				
				// Handlebar 초기화
				initCarOvenTempInfoHandlebarsTemplate();
				
				// 그래프 - [검색] 버튼 클릭
				$('#js-car-oven-temp-info-graph-retrieve-button').off().on('click', function() {
					// 그래프 조회
					retrieveOvenGraphInfo.request();
				});
				
				// 그래프 - [검색] 버튼 클릭
				$('#js-car-oven-temp-info-retrieve-button').off().on('click', function() {
					// 그래프 조회
					retrieveOvenInspInfo.request($("button[name=js-car-oven-temp-info-proc-type-button]:first").attr("procId"));
				});
				
				// 페이징 버튼 처리
				$('button[name=js-car-oven-temp-info-paging-button]').off().on('click', function(){

					var currPage  = Number($("#js-car-oven-temp-info-page-current").text());
					var totalPage = Number($("#js-car-oven-temp-info-page-total").text());
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
					$("#js-car-oven-temp-info-page-current").text(paramPage);
					
					// 오븐 온도 정보 조회
					retrieveOvenInspInfo.request();
					
			    });
				
				// [오븐 Setting 온도 등록] 버튼 클릭
				$("#js-car-oven-temp-info-reg-button").off().on('click', function() {
					fn_openPop($(this));
					initCarOvenTempInfoRegPopup();
				});
				
				// [오븐 실측값(온도 구간별 시간) 등록] 버튼 클릭
				$("#js-car-oven-temp-info-inoutlet-reg-button").off().on('click', function() {
					fn_openPop($(this));
					initCarOvenTempInOutletRegPopup();
				});
				
				// [Spec 등록] 버튼 클릭
				$("#js-car-oven-temp-info-spec-reg-button").off().on('click', function() {
					fn_openPop($(this));
					initCarOvenTempSpecRegPopup();
				});
				
			});
			
			
			// ------------------------------------------------
			// 전체조회
			// ------------------------------------------------
			var retrieveCarOvenTempInfoAll = function(){

				// 공정 코드 리스트 조회
				retrieveProcInfo.request();
				
				// Oven 정보 조회
				$("#js-car-hab-temp-info-page-current").text("1");
				//retrieveOvenInspInfo.request();
				
				// 동네예보 조회
				retrieveForeCastInfo.request();
				
				// 주간예보 조회
				retrieveWeekWeatherInfo.request();
			};
			
			// ------------------------------------------------
			// Handlebar 초기화
			// ------------------------------------------------
			var initCarOvenTempInfoHandlebarsTemplate = function() {
				
				// 동네예보
				var source = $('#js-template-car-oven-temp-info-forecast-info').html();
				carOvenTempInfoForecastInfoTemplate = Handlebars.compile(source);
				
				// 강수, 적설 : 6시간 간격기준 데이터 처리
				Handlebars.registerHelper('ifCond', function(v1, v2, options) {
					
					if((parseInt(v1) * 2) == parseInt(v2)){
						return options.fn(this);	
					} else {
						return options.inverse(this);
					}
				});
				// 예외 case. 테이블 뭉개짐 방지
				Handlebars.registerHelper('ifCond2', function(v1, v2, options) {
					
					if((parseInt(v1)) == 1 && parseInt(v2) == 1){
						return options.fn(this);	
					} else {
						return options.inverse(this);
					}
				});
				// 예외 case. 테이블 뭉개짐 방지
				Handlebars.registerHelper('ifCond3', function(v1, v2, options) {
					
					if(v1 == undefined){
						return options.inverse(this);
					} else {
						return options.fn(this);
					}
				});
				
				Handlebars.registerHelper('setWindDirect', function(value) {
					
					if(value =="wi-direction-up"){              return "북풍"; }   
					else if(value =="wi-direction-up-right"){   return "북서풍"; }
					else if(value =="wi-direction-right"){      return "서풍"; }
					else if(value =="wi-direction-down-right"){ return "남서풍"; }
					else if(value =="wi-direction-down"){       return "남풍"; }
					else if(value =="wi-direction-down-left"){  return "남동풍"; }
					else if(value =="wi-direction-left"){       return "동풍"; }
					else if(value =="wi-direction-up-left"){    return "북동풍"; }
					else { return"바람없음"; }
					
				});
				
				// 주간 예보
				source = $('#js-template-car-oven-temp-info-week-weather-info').html();
				carOvenTempInfoWeekWeatherInfoTemplate = Handlebars.compile(source);
				
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
				
				// 오븐별 Spec min 날짜 리스트
				source = $('#js-template-car-oven-temp-info-booth-insp-info-date-list').html();
				carOvenTempInfoBoothInspInfoDateListTemplate = Handlebars.compile(source);
				
				// 오븐별 Spec min Row
				source = $('#js-template-car-oven-temp-info-booth-insp-info-temp-humid-row-list').html();
				carOvenTempInfoBoothInspInfoTempHumidRowListTemplate = Handlebars.compile(source);
				
				// 오븐별 Spec min 데이터
				source = $('#js-template-car-oven-temp-info-booth-insp-info-temp-humid-list').html();
				carOvenTempInfoBoothInspInfoTempHumidListTemplate = Handlebars.compile(source);
				
				
				// 일자별 검사결과 상세(온도)
				source = $('#js-template-car-oven-temp-info-insp-oven-temp-list').html();
				carOvenTempInfoInspOvenTempListTemplate = Handlebars.compile(source);
				
				
				// 오븐 실측값(온도 구간별 시간)
				source = $('#js-template-car-oven-temp-info-insp-oven-time-list').html();
				carOvenTempInfoInspOvenTimeListTemplate = Handlebars.compile(source);
				
				Handlebars.registerHelper('setPhSpecOut', function(value) {
					if(value == "Y"){
						return "wp-ph";
					}
					return "";
				});
				Handlebars.registerHelper('setHabSpecOut', function(value) {
					if(value == "Y"){
						return "wp-cz";
					}
					return "";
				});
				Handlebars.registerHelper('setCoolSpecOut', function(value) {
					if(value == "Y"){
						return "wp-hap";
					}
					return "";
				});
				Handlebars.registerHelper('setWindSpecOut', function(value) {
					if(value == "Y"){
						return "wp-ws";
					}
					return "";
				});
				
				Handlebars.registerHelper('setCursor', function(date) {
					if(app.utils.isEmpty(date)){
						return "default";
					} else {
						return "pointer";
					}
				});
				
				Handlebars.registerHelper('isFileYn', function(options) {
					if (this.fileCnt > 0){
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
				
			};
			
			
			var gvCarOvenTempInfoBoothRs = null;
			
			
			//-------------------------------------------------
			// 공정 코드 리스트 조회
			//-------------------------------------------------
			var retrieveProcInfo = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							var str = "";
							$.each(response.rs, function(index, obj){
								str += '<li><button type="button" name="js-car-oven-temp-info-proc-type-button" procId="' + obj.procId + '"><spring:message code="TODO.KEY" text="' + obj.procIdNm +'"/></button></li>';
							});
							$("#js-car-oven-temp-info-proc-list").html(str);
							$("button[name=js-car-oven-temp-info-proc-type-button]:first").addClass("on");
							
							// 공정 버튼 클릭 이벤트
							$("button[name=js-car-oven-temp-info-proc-type-button]").off().on('click', function(){
								$("button[name=js-car-oven-temp-info-proc-type-button]").removeClass("on");
								$(this).addClass("on");
								
								var procId = $(this).attr("procId");

								// 오븐 리스트 조회
								retrieveOvenInfo.request(procId);
								
								// 오븐 온도 정보
								retrieveOvenInspInfo.request(procId);
													
							});
							
							var procId = $("button[name=js-car-oven-temp-info-proc-type-button]:first").attr("procId");
							$("#js-car-hab-temp-info-page-current").text("1");
							
							// 오븐 리스트 조회
							retrieveOvenInfo.request(procId);
							
							// 오븐 온도 정보
							retrieveOvenInspInfo.request(procId);
							
						} else 	{
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
				request: function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service  : 'car.booth'
						, method   : 'retrieveProcInfo'
						, inspType : 'Oven'
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				},
				carOvenTempInfoRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							

								$('#js-car-oven-temp-info-reg-popup-proc-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-oven-temp-info-reg-popup-proc-combo').append("<option value='"+response.rs[i].procId+"'>"+response.rs[i].procIdNm+"</option>");
								}
								
								// 공정 change 이벤트
								$("#js-car-oven-temp-info-reg-popup-proc-combo").off().on('change', function(){
									var procId = $(this).val();
									// 부스 리스트 조회
									retrieveOvenInfo.carOvenTempInfoRegPopup.request(procId);
								});
								
								var procId = $("#js-car-oven-temp-info-reg-popup-proc-combo").val();
								// 부스 리스트 조회
								retrieveOvenInfo.carOvenTempInfoRegPopup.request(procId);
								
							} else 	{
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
					request: function() {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						var params = {
							  service  : 'car.booth'
							, method   : 'retrieveProcInfo'
							, inspType : 'Oven'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carOvenTempInOutletRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							

								$('#js-car-oven-temp-inoutlet-reg-popup-proc-combo').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-oven-temp-inoutlet-reg-popup-proc-combo').append("<option value='"+response.rs[i].procId+"'>"+response.rs[i].procIdNm+"</option>");
								}
								
								var procId = $("button[name=js-car-oven-temp-info-proc-type-button].on").attr("procId");
								
								// 오븐 No. combo 조회
								retrieveOvenInfo.carOvenTempInOutletRegPopup.request(procId);
								
								// 구분 콤보3 조회
								retrieveOvenSpecStdInfo.request(procId);
								
								// 공정 change 이벤트
								$("#js-car-oven-temp-inoutlet-reg-popup-proc-combo").off().on('change', function(){
									var procId = $(this).val();
									// 부스 리스트 조회
									retrieveOvenInfo.carOvenTempInOutletRegPopup.request(procId);
									
									// 구분 콤보3 조회
									retrieveOvenSpecStdInfo.request(procId);
								});
								
							} else 	{
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
					request: function() {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						var params = {
							  service  : 'car.booth'
							, method   : 'retrieveProcInfo'
							, inspType : 'Oven'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carOvenTempSpecRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							

								$('#js-car-oven-temp-spec-reg-popup-proc-combo').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-oven-temp-spec-reg-popup-proc-combo').append("<option value='"+response.rs[i].procId+"'>"+response.rs[i].procIdNm+"</option>");
								}
								
								var procIdBtn = $("button[name=js-car-oven-temp-info-proc-type-button].on").attr("procId");
								
								$('#js-car-oven-temp-spec-reg-popup-proc-combo').val(procIdBtn);
								
								// 공정 change 이벤트
								$("#js-car-oven-temp-spec-reg-popup-proc-combo").off().on('change', function(){
									
									var procId = $(this).val();
									// 부스 리스트 조회
									retrieveOvenInfo.carOvenTempSpecRegPopup.request(procId);
									
									// 구분 콤보3 조회
									retrieveOvenSpecStdInfo.request(procId);
								});
								
								var procId = $("#js-car-oven-temp-spec-reg-popup-proc-combo").val();
								
								// 구분 콤보3 조회
								retrieveOvenSpecStdInfo.carOvenTempSpecRegPopup.request();
								
								// 부스 리스트 조회
								retrieveOvenInfo.carOvenTempSpecRegPopup.request(procId);
								
							} else 	{
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
					request: function() {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						var params = {
							  service  : 'car.booth'
							, method   : 'retrieveProcInfo'
							, inspType : 'Oven'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				}
			};
			
			
			//-------------------------------------------------
			// 오븐 리스트 조회
			//-------------------------------------------------
			var retrieveOvenInfo = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							// 부스 콤보 set
							var boothInfo = response.rs;
							$('#js-car-oven-temp-info-booth-combo').find('option').remove();
							
							for(var i=0; i<boothInfo.length; i++)
							{
								$('#js-car-oven-temp-info-booth-combo').append("<option value='"+boothInfo[i].boothCode+"'>"+boothInfo[i].boothNm+"</option>");
							}
							
							gvCarOvenTempInfoBoothRs = boothInfo;
							
							// 그래프 조회
							retrieveOvenGraphInfo.request();
							
						} else 	{
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
				request: function(procId) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service  : 'car.booth'
						, method   : 'retrieveOvenInfo'
						, carPlant : $("#js-car-header-car-plant").val()
						//, procId   : procId ? procId : $("button[name=js-car-oven-temp-info-proc-type-button].on").attr("procId")
						, procId   : $("button[name=js-car-oven-temp-info-proc-type-button].on").attr("procId")
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				},
				carOvenTempInfoRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								
								// 부스 콤보 set
								var boothInfo = response.rs;
								
								$('#js-car-oven-temp-info-reg-popup-oven-combo').find('option').remove();
								
								for(var i=0; i < boothInfo.length; i++)
								{
									$('#js-car-oven-temp-info-reg-popup-oven-combo').append("<option value='"+ boothInfo[i].boothCode +"'>"+ boothInfo[i].boothNm +"</option>");
								}
								
								$("[name=js-car-oven-temp-info-reg-popup-input-data]").val("");
								
							} else 	{
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
					request: function(procId) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						var params = {
							  service  : 'car.booth'
							, method   : 'retrieveOvenInfo'
							, carPlant : $("#js-car-header-car-plant").val()
							, procId   : procId ? procId : $("button[name=js-car-oven-temp-info-proc-type-button].on").attr("procId")
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				}, 
				carOvenTempInOutletRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								// 오븐 No. combo setting
								var boothInfo = response.rs;
								
								$('#js-car-oven-temp-inoutlet-reg-popup-oven-combo').find('option').remove();
								
								for(var i=0; i < boothInfo.length; i++)
								{
									$('#js-car-oven-temp-inoutlet-reg-popup-oven-combo').append("<option value='"+boothInfo[i].boothCode+"'>"+boothInfo[i].boothNm+"</option>");
								}
								
								var procId = $("#js-car-oven-temp-inoutlet-reg-popup-proc-combo").val();
								
								$("[name=js-car-oven-temp-inoutlet-reg-popup-input-data]").val("");
								$("#js-car-oven-temp-inoutlet-reg-popup-remark").val("");

								// 구분 콤보3 조회
								//retrieveOvenSpecStdInfo.request(procId);
								retrieveModifyOvenSpecStdInfo.request(procId);
								
								// 오븐 No 콤보 조회 change
								$('#js-car-oven-temp-inoutlet-reg-popup-oven-combo').off().on("change", function(){
									$('#js-car-oven-temp-inoutlet-reg-popup-gubun1-combo').removeAttr("disabled");
									$('#js-car-oven-temp-inoutlet-reg-popup-gubun2-combo').removeAttr("disabled");
									$('#js-car-oven-temp-inoutlet-reg-popup-gubun3-combo').removeAttr("disabled");
									retrieveOvenSpecInspInfo.request();
								});
								
							} else 	{
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
					request: function(procId) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						var params = {
							  service  	: 'car.booth'
							, method   	: 'retrieveOvenInfo'
							, carPlant 	: $("#js-car-header-car-plant").val()
							//, procId   : procId ? procId : $("button[name=js-car-oven-temp-info-proc-type-button].on").attr("procId")
							, procId	: procId
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carOvenTempSpecRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								// 부스 콤보 set
								var boothInfo = response.rs;
								
								$('#js-car-oven-temp-spec-reg-popup-oven-combo').find('option').remove();
								
								for(var i=0; i < boothInfo.length; i++)
								{
									$('#js-car-oven-temp-spec-reg-popup-oven-combo').append("<option value='"+boothInfo[i].boothCode+"'>"+boothInfo[i].boothNm+"</option>");
								}
								
								// Oven change 이벤트
								$("#js-car-oven-temp-spec-reg-popup-oven-combo").off().on('change', function(){
									
									// Oven 선택 전 초기화
									$("[name=js-car-oven-temp-spec-reg-popup-input-data]").val("");
									
									var procId = $("#js-car-oven-temp-spec-reg-popup-proc-combo").val();
									var ovenNo = $('#js-car-oven-temp-spec-reg-popup-oven-combo').val();
									
									// 부스 선택값에 의한 Spec 조회.
									retrieveOvenInspSpec.request(procId, ovenNo);
								});
								
								var procId = $("#js-car-oven-temp-spec-reg-popup-proc-combo").val();
								var ovenNo = $('#js-car-oven-temp-spec-reg-popup-oven-combo').val();
								
								// 부스 선택값에 의한 Spec 조회.
								retrieveOvenInspSpec.request(procId, ovenNo);
								
							} else 	{
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
					request: function(procId) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						var params = {
							  service  : 'car.booth'
							, method   : 'retrieveOvenInfo'
							, carPlant : $("#js-car-header-car-plant").val()
							, procId   : procId ? procId : $("button[name=js-car-oven-temp-info-proc-type-button].on").attr("procId")
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				}
			};
			
			
			
			//-------------------------------------------------
			// 부스별 스펙조회
			//-------------------------------------------------
			var retrieveOvenInspSpec = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
						
							var data = response.rs || {};
							
							if(data.length > 0){
								
								/*
								** 작성자 : 백춘만
								** TD01_CAR_OVEN_SPEC 테이블의 DB Data 값이 'SP007' 로 combo 에 없는 데이터 값으로 확인되어,
								** 임시로 변환 comboData function(SP007 => SP001)
								*/ 
								$('#js-car-oven-temp-spec-reg-popup-gubun1-combo').val(comboData(data[0].specId1));
								$('#js-car-oven-temp-spec-reg-popup-gubun2-combo').val(comboData(data[0].specId2));
								$('#js-car-oven-temp-spec-reg-popup-gubun3-combo').val(comboData(data[0].specId3));
								
								$('#js-car-oven-temp-spec-reg-popup-max1').val(data[0].specId1Usl);
								$('#js-car-oven-temp-spec-reg-popup-max2').val(data[0].specId2Usl);
								$('#js-car-oven-temp-spec-reg-popup-max3').val(data[0].specId3Usl);
								
								$('#js-car-oven-temp-spec-reg-popup-min1').val(data[0].specId1Lsl);
								$('#js-car-oven-temp-spec-reg-popup-min2').val(data[0].specId2Lsl);
								$('#js-car-oven-temp-spec-reg-popup-min3').val(data[0].specId3Lsl);
							}
							
						} else 	{
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
				request: function(procId, ovenNo) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					
					var params = {
						  service  	: 'car.booth'
						, method   	: 'retrieveOvenInspSpec'
						, carPlant 	: $("#js-car-header-car-plant").val()
						, procId   	: procId ? procId : $("button[name=js-car-oven-temp-info-proc-type-button].on").attr("procId")
						, ovenNo  	: ovenNo
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			
			//-------------------------------------------------
			// 그래프 조회
			//-------------------------------------------------
			var retrieveOvenGraphInfo = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							setHighChart(response.rs.inspInfoOven);
							
						} else 	{
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
				request: function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service  : 'car.booth'
						, method   : 'retrieveOvenGraphInfo'
						, carPlant : $("#js-car-header-car-plant").val()
						, procId   : $("button[name=js-car-oven-temp-info-proc-type-button].on").attr("procId")
						, ovenNo   : $("#js-car-oven-temp-info-booth-combo").val()
						, stdDate  : $("#js-car-oven-temp-info-graph-date").val().replace(/-/gi, "")
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}	
			};
			
			//-------------------------------------------------
			// 오븐 Setting 온도 정보 조회
			//-------------------------------------------------
			var retrieveOvenInspInfo = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							
							$("#js-car-oven-temp-info-day-choice-date-text").text("");
							
							// 페이징
							var totalPageOven = response.rs.totalPageOven;
							
							if(totalPageOven[0].totalPage != null){
								var currPage  = $('#js-car-oven-temp-info-page-current').text();
								var totalPage = totalPageOven[0].totalPage;
								
								$('#js-car-oven-temp-info-page-total').text(totalPage);
								
								if(currPage == 1){
									$('button[name=js-car-oven-temp-info-paging-button].prev').addClass("disable");
								} else {
									$('button[name=js-car-oven-temp-info-paging-button].prev').removeClass("disable");
								}
								
								if(currPage == totalPage){
									$('button[name=js-car-oven-temp-info-paging-button].next').addClass("disable");
								} else {
									$('button[name=js-car-oven-temp-info-paging-button].next').removeClass("disable");
								}
								
							} else {
								// 페이징 버튼 활성/비활성화 처리
								$('button[name=js-car-oven-temp-info-paging-button]').addClass("disable");
							}
							
							// 부스별 데이터 수집
							var inspInfoOven = response.rs.inspInfoOven;
							var boothObjArr = [];
							var resultBoothList = [];	// 결과 부스리스트
							
							for(var i=0 ; i < gvCarOvenTempInfoBoothRs.length ; i++){
								
								var boothArr = [];
								
								for(var j=0 ; j < inspInfoOven.length ; j++){
									if(gvCarOvenTempInfoBoothRs[i].boothCode == inspInfoOven[j].ovenNo){
										boothArr.push(inspInfoOven[j]);
									}
								}
								
								if(boothArr.length > 0){
									var jsonStr = '{"' + gvCarOvenTempInfoBoothRs[i].boothCode + '":' + JSON.stringify(boothArr) + '}';
									boothObjArr.push(JSON.parse(jsonStr));	// 부스별 데이터 수집
									
									// 조회된 부스리스트 set
									resultBoothList.push({
										  boothCode : gvCarOvenTempInfoBoothRs[i].boothCode
										, boothNm   : gvCarOvenTempInfoBoothRs[i].boothNm
									});
								}
							}
							
							// 데이터 4칸 채우기
							for(var i=0; i < resultBoothList.length; i++)
							{
								for(var j=0 ; j < boothObjArr.length ; j++){
									var obj = boothObjArr[j][resultBoothList[i].boothCode];
									if(obj != undefined){
										for(var k=0 ; k < 4 ; k++){
											if(obj[k] == undefined){
												obj[k] = {
													  specId1   	: "-"
													, specId2    	: "-"
													, specId3 		: "-"
												};
											}
										}
									}
								}
							}
							
							// 날짜 리스트 수집
							var dateList = [];
							if(boothObjArr.length > 0 && resultBoothList.length > 0){
								for(var i=0; i < inspInfoOven.length; i++){
									if(inspInfoOven[i] == undefined){
										dateList.push("-");
									}
									else
									{
										if($.inArray(inspInfoOven[i].inspDatetime, dateList) === -1){
											dateList.push(inspInfoOven[i].inspDatetime);
										}
									}
								}
							}
							
							//console.log(dateList);
							
							var dateObjList = [];
							
							for(var i=0 ; i < dateList.length ; i++){
								dateObjList.push({
									inspDatetime : dateList[i]
								});
							}
							
							var result = carOvenTempInfoBoothInspInfoDateListTemplate({rows : dateObjList});
							$("#js-car-oven-temp-info-booth-insp-info-date-list").empty().append(result);
							
							// 부스별 TR  Set. 
							var result = carOvenTempInfoBoothInspInfoTempHumidRowListTemplate({rows : resultBoothList});
							$("#js-car-oven-temp-info-booth-insp-info-temp-humid-row-list").empty().append(result);
							
							var $table 	= $("#js-car-oven-temp-info-booth-insp-info-table-list");
							var $date 	= $("#js-car-oven-temp-info-booth-insp-info-date-list");
							var $ovenNo = $("#js-car-oven-temp-info-booth-insp-info-temp-humid-row-list");
							
							// td set
							for(var i=0; i < resultBoothList.length; i++)
							{
								for(var j=0 ; j < boothObjArr.length ; j++){
									var result = carOvenTempInfoBoothInspInfoTempHumidListTemplate({rows : boothObjArr[j][resultBoothList[i].boothCode]});
									$("#js-car-oven-temp-info-booth-insp-info-temp-humid-row-list-" + resultBoothList[i].boothCode).append(result);
								}
							}
							
							// 최종 데이터 set
							for(j=0; j < 4; j++){
								for(k=0; k < inspInfoOven.length; k++){
									
									if($date.find("th:eq("+ (j+1) +")").text() == inspInfoOven[k].inspDatetime){
										
										$ovenNo.find("tr").each(function(){
											
											var ovenNo = this.id.substring("js-car-oven-temp-info-booth-insp-info-temp-humid-row-list".length + 1);
											
											if(ovenNo == inspInfoOven[k].ovenNo){
												$("#js-car-oven-temp-info-booth-insp-info-temp-humid-row-list-"+ ovenNo +" #js-car-oven-temp-info-booth-insp-info-temp-humid-specId1Value-"+ j).text(inspInfoOven[k].specId1Value);
												$("#js-car-oven-temp-info-booth-insp-info-temp-humid-row-list-"+ ovenNo +" #js-car-oven-temp-info-booth-insp-info-temp-humid-specId1Value-"+ j).attr("inspDatetime", inspInfoOven[k].inspDatetime);
												$("#js-car-oven-temp-info-booth-insp-info-temp-humid-row-list-"+ ovenNo +" #js-car-oven-temp-info-booth-insp-info-temp-humid-specId1Value-"+ j).css("cursor", "pointer");
												$("#js-car-oven-temp-info-booth-insp-info-temp-humid-row-list-"+ ovenNo +" #js-car-oven-temp-info-booth-insp-info-temp-humid-specId2Value-"+ j).text(inspInfoOven[k].specId2Value);
												$("#js-car-oven-temp-info-booth-insp-info-temp-humid-row-list-"+ ovenNo +" #js-car-oven-temp-info-booth-insp-info-temp-humid-specId2Value-"+ j).attr("inspDatetime", inspInfoOven[k].inspDatetime);
												$("#js-car-oven-temp-info-booth-insp-info-temp-humid-row-list-"+ ovenNo +" #js-car-oven-temp-info-booth-insp-info-temp-humid-specId2Value-"+ j).css("cursor", "pointer");
												$("#js-car-oven-temp-info-booth-insp-info-temp-humid-row-list-"+ ovenNo +" #js-car-oven-temp-info-booth-insp-info-temp-humid-specId3Value-"+ j).text(inspInfoOven[k].specId3Value);
												$("#js-car-oven-temp-info-booth-insp-info-temp-humid-row-list-"+ ovenNo +" #js-car-oven-temp-info-booth-insp-info-temp-humid-specId3Value-"+ j).attr("inspDatetime", inspInfoOven[k].inspDatetime);
												$("#js-car-oven-temp-info-booth-insp-info-temp-humid-row-list-"+ ovenNo +" #js-car-oven-temp-info-booth-insp-info-temp-humid-specId3Value-"+ j).css("cursor", "pointer");
											}
											
										});
									}
								}
								
							}
							
							
							// 데이터가 없는 경우 cursor 제거
							$("#js-car-oven-temp-info-booth-insp-info-temp-humid-row-list").find("tr").find("td").each(function(){
								if($(this).text() == "-"){
									$(this).css("cursor", "default");
								}
							});
							
							
							var data = { 
								rows : response.rs.inspOvenTemp
							};
							
							var result = carOvenTempInfoInspOvenTempListTemplate(data);
							$("#js-car-oven-temp-info-insp-oven-temp-list").empty().append(result);
							
							var data2 = { 
								rows : response.rs.inspOvenTime
							};
								
							var result2 = carOvenTempInfoInspOvenTimeListTemplate(data2);
							$("#js-car-oven-temp-info-insp-oven-time-list").empty().append(result2);
							
							//setHighChart(response.rs.inspInfoOven);
							
							// 조회결과 테이블 클릭
							$("td[name=js-car-oven-temp-info-booth-insp-info-temp-humid-td]").off().on('click', function(e){
								
								var inspDatetime = $(this).attr("inspDatetime");
								
								if(inspDatetime != null && $(this).text() != "-"){
									$("#js-car-oven-temp-info-booth-insp-info-detail-date-text").text(inspDatetime.substring(0, 10));
									
									if(app.utils.isEmpty(inspDatetime)){
										return;
									}
									
									var inspDate = inspDatetime.substring(0, 10);
									$("#js-car-oven-temp-info-booth-insp-info-daily-date").val(inspDate);
									
									// 클릭한 날짜로 날짜별 검사 결과
									retrieveOvenDailyInspInfo.request(inspDate);
								}
								
							});
							
							// 첫번째 날짜로 날짜별 검사 결과
							if(dateList.length > 0){
								$("#js-car-oven-temp-info-booth-insp-info-detail-date-text").text(dateList[0].substring(0, 10));
								//$("#js-car-oven-temp-info-day-choice-date-text").text(dateList[0].substring(0, 10));
								var inspDate = dateList[0].substring(0, 10);
								$("#js-car-oven-temp-info-booth-insp-info-daily-date").val(inspDate);
								retrieveOvenDailyInspInfo.request(inspDate);
							}
						
						} else 	{
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
				request: function(procId) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service  : 'car.booth'
						, method   : 'retrieveOvenInspInfo'
						, carPlant : $("#js-car-header-car-plant").val()
						, procId   : procId ? procId : $("button[name=js-car-oven-temp-info-proc-type-button].on").attr("procId")
						, fromDate : $("#js-car-oven-temp-info-start-date").val().replace(/-/gi, "")
						, toDate   : $("#js-car-oven-temp-info-end-date").val().replace(/-/gi, "")
						, currPage : $("#js-car-oven-temp-info-page-current").text()
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			// ------------------------------------------------
			// 오븐 실측값(온도 구간별 시간) 조회
			// ------------------------------------------------
			var retrieveOvenDailyInspInfo = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';

						if (message === 'OK') {
							
							var data2 = { 
								rows : response.rs.inspOvenTime
							};
							
							var result2 = carOvenTempInfoInspOvenTimeListTemplate(data2);
							$("#js-car-oven-temp-info-insp-oven-time-list").empty().append(result2);
							
							// Mixing 입/출구 온도 수정버튼 클릭
							$("button[name=js-car-oven-temp-info-insp-oven-temp-list-modify-button]").off().on('click', function(){

								var index    = $(this).attr("data-index");
								var seq      = $(this).attr("seq");
								var inspDate = $("#js-car-oven-temp-info-insp-oven-temp-list-inspDate-" + index).val();
								var datetime = $("#js-car-oven-temp-info-insp-oven-temp-list-datetime-" + index).val();
								var inspTime = $("#js-car-oven-temp-info-insp-oven-temp-list-inspTime-" + index).val();
								var oven     = $("#js-car-oven-temp-info-insp-oven-temp-list-oven-"   + index).val();
								var enter    = $("#js-car-oven-temp-info-insp-oven-temp-list-enter-"  + index).val();
								var exit     = $("#js-car-oven-temp-info-insp-oven-temp-list-exit-"   + index).val();
								var zone1    = $("#js-car-oven-temp-info-insp-oven-temp-list-zone1-"  + index).val();
								var zone2    = $("#js-car-oven-temp-info-insp-oven-temp-list-zone2-"  + index).val();
								var zone3    = $("#js-car-oven-temp-info-insp-oven-temp-list-zone3-"  + index).val();
								var zone4    = $("#js-car-oven-temp-info-insp-oven-temp-list-zone4-"  + index).val();
								var zone5    = $("#js-car-oven-temp-info-insp-oven-temp-list-zone5-"  + index).val();
								var zone6    = $("#js-car-oven-temp-info-insp-oven-temp-list-zone6-"  + index).val();
								
								var param = {
										index     : index   
									  , inspDate  : inspDate
									  , datetime  : datetime
									  , inspTime  : inspTime
									  , oven      : oven    
									  , enter     : enter   
									  , exit      : exit    
									  , zone1     : zone1   
									  , zone2     : zone2   
								      , zone3     : zone3   
								      , zone4     : zone4
								      , zone5     : zone5
								      , zone6     : zone6
								      , seq       : seq
								      , procId    : $("button[name=js-car-oven-temp-info-proc-type-button].on").attr("procId") 
								};
								
								fn_openPop($(this));
								initCarOvenTempInfoRegPopup(param);
							});
							
							// TODO : 확인
							// 삭제버튼 클릭
							$("button[name=js-car-oven-temp-info-insp-oven-temp-list-delete-button]").off().on('click', function(){
								var seqOvenTemp = $(this).attr("seq");
								app.message.confirm({
									  title             : '<spring:message code="TODO.KEY" text="알림"/>'
									, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
									, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
									, callback          : {
										confirm: function() {
											// 오븐 실측값(온도 구간별 시간)
											deleteBoothOvenInspInfo.request(seqOvenTemp);
										}
									}
								});
							});
							
							// 오븐 실측값(온도 구간별 시간) 수정 버튼 클릭
							$("button[name=js-car-oven-temp-info-insp-oven-temp-list-inoutlet-modify-button]").off().on('click', function(){
								
								var index    		= $(this).attr("data-index");
								var seq      		= $(this).attr("seq");
								var datetime 		= $("#js-car-oven-temp-info-insp-oven-time-list-datetime-" + index).val();
								var oven     		= $("#js-car-oven-temp-info-insp-oven-time-list-oven-"   + index).val();
								var specId1    		= $("#js-car-oven-temp-info-insp-oven-time-list-specId1-"  + index).val();
								var specId2    		= $("#js-car-oven-temp-info-insp-oven-time-list-specId2-"  + index).val();
								var specId3    		= $("#js-car-oven-temp-info-insp-oven-time-list-specId3-"  + index).val();
								var specId1Value    = $("#js-car-oven-temp-info-insp-oven-time-list-specId1Value-"   + index).val();
								var specId2Value    = $("#js-car-oven-temp-info-insp-oven-time-list-specId2Value-"   + index).val();
								var specId3Value    = $("#js-car-oven-temp-info-insp-oven-time-list-specId3Value-"   + index).val();
								var remark     		= $("#js-car-oven-temp-info-insp-oven-time-list-remark-"   + index).val();

								var param = {
										index     		: index
								      , seq       		: seq
									  , datetime  		: datetime
									  , oven      		: oven
									  , specId1     	: specId1
									  , specId2     	: specId2
									  , specId3     	: specId3
									  , specId1Value    : specId1Value
									  , specId2Value    : specId2Value
									  , specId3Value    : specId3Value
									  , remark   		: remark
								      , procId    		: $("button[name=js-car-oven-temp-info-proc-type-button].on").attr("procId") 
								};
								
								fn_openPop($(this));
								initCarOvenTempInOutletRegPopup(param);
								
							});

							
							// 삭제버튼 클릭
							$("button[name=js-car-oven-temp-info-insp-oven-temp-list-inoutlet-delete-button]").off().on('click', function(){
								var seqOvenTime = $(this).attr("seq");
								app.message.confirm({
									  title             : '<spring:message code="TODO.KEY" text="알림"/>'
									, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
									, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
									, callback          : {
										confirm: function() {
											// 오븐 실측값 삭제
											deleteBoothOvenTimeInspInfo.request(seqOvenTime);
										}
									}
								});
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
				request: function(inspDate) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service  : 'car.booth'
						, method   : 'retrieveOvenDailyInspInfo'
						, carPlant : $("#js-car-header-car-plant").val()
						, procId   : $("button[name=js-car-oven-temp-info-proc-type-button].on").attr("procId")
						, inspDate : inspDate.replace(/-/gi, "").substring(0, 8)
						
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};

			// ------------------------------------------------
			// 동네예보
			// ------------------------------------------------
			var retrieveForeCastInfo = {
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
							
							var result = carOvenTempInfoForecastInfoTemplate(data);
							$("#js-car-oven-temp-info-forecast-info").empty().append(result);
							
							
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
						service: 'ship.weatherInfo',
						method: 'retrieveForeCastInfo',
						yardCode: $("#js-car-header-car-plant").val()
					};
					app.mask.pageLock();
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
							
							var result = carOvenTempInfoWeekWeatherInfoTemplate(data);
							$("#js-car-oven-temp-info-week-weather-info").empty().append(result);
							
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
						service: 'ship.weatherInfo',
						method: 'retrieveWeekWeatherInfo',
						yardCode: $("#js-car-header-car-plant").val()
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			

			// ------------------------------------------------
			// 하이차트
			// ------------------------------------------------
			var setHighChart = function(data){
				
				var measureDateArr  = new Array();
				var tempArr1        = new Array();
				var tempArr2        = new Array();
				var tempArr3        = new Array();
				var tempArr4        = new Array();
				var tempArr5        = new Array();
				var tempArr6        = new Array();
				var tempArr7        = new Array();
				
				var specIdNmArr    	= new Array();
				var inspResultArr   = new Array();
				var inspDataArr   	= new Array();
				
				var specId1Arr        = new Array();
				var specId2Arr        = new Array();
				var specId3Arr        = new Array();
				var specId4Arr        = new Array();
				var specId5Arr        = new Array();
				var specId6Arr        = new Array();
				
				if(data.length > 0){
					name1 = data[0].specIdNm;
					name2 = data[1].specIdNm;
					name3 = data[2].specIdNm;
				}
				
				for(var i=0 ; i < data.length ; i++){
					
					// specIdNm Array 생성
					if($.inArray(data[i].inspDatetime, measureDateArr) === -1){
						measureDateArr.push(data[i].inspDatetime);
					}
					
				}
			
				console.log(measureDateArr.length);
				console.log(data.length);
				
				for(var j=0 ; j < data.length ; j++){
					if(data[j].specId == "SP001"){
						for(var i=0; i < measureDateArr.length; i++){		
							if(measureDateArr[i] == data[j].inspDatetime){
								specId1Arr[i] = data[j].inspResult;							
							}else{
								var cnt = specId1Arr[i] || 0;
								if(cnt == 0){
									specId1Arr[i] = 0;	
								}							
								
							}						
						}						
					}
					
					if(data[j].specId == "SP002"){
						for(var i=0; i < measureDateArr.length; i++){		
							if(measureDateArr[i] == data[j].inspDatetime){
								specId2Arr[i] = data[j].inspResult;							
							}else{
								var cnt = specId2Arr[i] || 0;
								if(cnt == 0){
									specId2Arr[i] = 0;	
								}							
								
							}						
						}						
					}
					
					if(data[j].specId == "SP003"){
						for(var i=0; i < measureDateArr.length; i++){		
							if(measureDateArr[i] == data[j].inspDatetime){
								specId3Arr[i] = data[j].inspResult;							
							}else{
								var cnt = specId3Arr[i] || 0;
								if(cnt == 0){
									specId3Arr[i] = 0;	
								}							
								
							}						
						}						
					}
					
					if(data[j].specId == "SP004"){
						for(var i=0; i < measureDateArr.length; i++){		
							if(measureDateArr[i] == data[j].inspDatetime){
								specId4Arr[i] = data[j].inspResult;							
							}else{
								var cnt = specId4Arr[i] || 0;
								if(cnt == 0){
									specId4Arr[i] = 0;	
								}							
								
							}						
						}
					}
					
					if(data[j].specId == "SP005"){
						for(var i=0; i < measureDateArr.length; i++){		
							if(measureDateArr[i] == data[j].inspDatetime){
								specId5Arr[i] = data[j].inspResult;							
							}else{
								var cnt = specId5Arr[i] || 0;
								if(cnt == 0){
									specId5Arr[i] = 0;	
								}							
								
							}						
						}						
					}
					
					if(data[j].specId == "SP006"){
						for(var i=0; i < measureDateArr.length; i++){		
							if(measureDateArr[i] == data[j].inspDatetime){
								specId6Arr[i] = data[j].inspResult;							
							}else{
								var cnt = specId6Arr[i] || 0;
								if(cnt == 0){
									specId6Arr[i] = 0;	
								}							
								
							}						
						}						
					}
					
				}
				
				Highcharts.chart('js-car-oven-temp-info-graph-area', {
					chart: {
				        zoomType: 'xy'
				    },
			        title: {
			            text: ''
			        },
			        xAxis: [{
			            categories: measureDateArr,
			            crosshair: true
			        }],
			        yAxis: [{ // Primary yAxis
			            labels: {
			                format: '{value}min',
			                style: {
			                    color: "black"
			                }
			            },
			            title: {
			                text: 'Minutes',
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
			            name: '120℃',
			            type: 'spline',
			            data: specId1Arr,
			            tooltip: {
			                valueSuffix: 'min'
			            }
			        }, {
			            name: '130℃',
			            type: 'spline',
			            data: specId2Arr,
			            tooltip: {
			                valueSuffix: 'min'
			            }
			        }, {
			            name: '140℃',
			            type: 'spline',
			            data: specId3Arr,
			            tooltip: {
			                valueSuffix: 'min'
			            }
			        }, {
			            name: '150℃',
			            type: 'spline',
			            data: specId4Arr,
			            tooltip: {
			                valueSuffix: 'min'
			            }
			        }, {
			            name: '160℃',
			            type: 'spline',
			            data: specId5Arr,
			            tooltip: {
			                valueSuffix: 'min'
			            }
			        }, {
			            name: '170℃',
			            type: 'spline',
			            data: specId6Arr,
			            tooltip: {
			                valueSuffix: 'min'
			            }
			        }]
			    });
			};	
		</script>
	</tiles:putAttribute>
	<!-- 페이지 레벨 스크립트 E -->

	<!-- 팝업 콘텐츠 S -->
	<tiles:putAttribute name="popup-content">
	
	
	<!-- 오븐 Setting 온도 등록 팝업 [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-oven-temp-info-reg-popup" class="wp-pop-layer wp-pop-w500 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="오븐 Setting 온도 결과 등록"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-oven-temp-info-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
	    	</div>
	        <div class="wp-pop-conts">
		<!-- scroll Area -->
		<div class="wp-pop-cont-scrollable">
	            <!--content //-->
			<!-- 기본 정보 -->
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="일반정보"/></h2>
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption><spring:message code="TODO.KEY" text="일반정보"/></caption>
					<colgroup>
						<col style="width:20%">
						<col style="width:30%">
						<col style="width:20%">
						<col style="width:30%">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="공장"/></th>
							<td  class="wp-al wp-vm">
								<input type="text"   id="js-car-oven-temp-info-reg-popup-carplant-name" title="내용입력" disabled="disabled">
								<input type="hidden" id="js-car-oven-temp-info-reg-popup-carplant">
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="측정자"/></th>
							<td  class="wp-al wp-vm">
								<input type="text"   id="js-car-oven-temp-info-reg-popup-emp-name" title="내용입력" disabled="disabled">
								<input type="hidden" id="js-car-oven-temp-info-reg-popup-emp">
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="공정"/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-oven-temp-info-reg-popup-proc-combo" disabled="disabled">
									</select>
								</div>
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="오븐 No."/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-oven-temp-info-reg-popup-oven-combo">
									</select>
								</div>
							</td>
						</tr>
						<%-- 
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="입력일자"/></th>
							<td  class="wp-al wp-vm">
								<input type="text" class="wp-inp-datepicker maxdate" id="js-car-oven-temp-info-reg-popup-date" placeholder="날짜입력" readonly="readonly">
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="입력시간"/></th>
							<td  class="wp-al wp-vm">
								<input type="text" class="wp-timeFormat" id="js-car-oven-temp-info-reg-popup-time">
							</td>
						</tr>
						--%>
					</tbody>
				</table>
			</div>
			<!-- 기본 정보 -->
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="측정결과"/></h2>
			<div class="wp-table-st1">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:23%">
						<col style="width:20%">
						<col style="width:23%">
						<col style="width:20%">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="입구온도(℃)"/></th>
							<td><input type="text" name="js-car-oven-temp-info-reg-popup-input-data" id="js-car-oven-temp-info-reg-popup-in-temp" title="내용입력" class="wp-ar"></td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="출구온도(℃)"/></th>
							<td><input type="text" name="js-car-oven-temp-info-reg-popup-input-data" id="js-car-oven-temp-info-reg-popup-out-temp" title="내용입력" class="wp-ar"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="Zone #1(℃)"/></th>
							<td><input type="text" name="js-car-oven-temp-info-reg-popup-input-data" id="js-car-oven-temp-info-reg-popup-zone-temp1" title="내용입력" class="wp-ar"></td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="Zone #2(℃)"/></th>
							<td><input type="text" name="js-car-oven-temp-info-reg-popup-input-data" id="js-car-oven-temp-info-reg-popup-zone-temp2" title="내용입력" class="wp-ar"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="Zone #3(℃)"/></th>
							<td><input type="text" name="js-car-oven-temp-info-reg-popup-input-data" id="js-car-oven-temp-info-reg-popup-zone-temp3" title="내용입력" class="wp-ar"></td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="Zone #4(℃)"/></th>
							<td><input type="text" name="js-car-oven-temp-info-reg-popup-input-data" id="js-car-oven-temp-info-reg-popup-zone-temp4" title="내용입력" class="wp-ar"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="Zone #5(℃)"/></th>
							<td><input type="text" name="js-car-oven-temp-info-reg-popup-input-data" id="js-car-oven-temp-info-reg-popup-zone-temp5" title="내용입력" class="wp-ar"></td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="Zone #6(℃)"/></th>
							<td><input type="text" name="js-car-oven-temp-info-reg-popup-input-data" id="js-car-oven-temp-info-reg-popup-zone-temp6" title="내용입력" class="wp-ar"></td>
						</tr>
					</tbody>
				</table>
	            </div>
		<!-- // scroll Area -->
		</div>
		<div class="wp-btn-area">
			<button type="button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18" id="js-car-oven-temp-info-reg-popup-save-button"><spring:message code="TODO.KEY" text="저장"/></button>
			<input type="hidden" id="js-car-oven-temp-info-reg-popup-seq" >
		</div>
	        </div>
	    </div>
	</div>
	<!-- 입.출구 온도 결과 등록 팝업 [END] -->
	

	<!-- 입.출구 온도 결과 등록 팝업 - 스크립트 START -->
	<script type="text/javascript">
	
	//------------------------------------------------
	// [오븐 Setting 온도 등록] 팝업 초기화
	// ------------------------------------------------
	var initCarOvenTempInfoRegPopup = function(param) {
		
		// 팝업 입력창 초기화.
		$("[name=js-car-oven-temp-info-reg-popup-input-data]").val("");
		
		// 오븐 No. combo 등록 및 초기 활성화.
		$('#js-car-oven-temp-info-reg-popup-oven-combo').removeAttr("disabled");
		
		// 공장
		$("#js-car-oven-temp-info-reg-popup-carplant-name").val($("#js-car-header-car-plant").text());
		$("#js-car-oven-temp-info-reg-popup-carplant").val($("#js-car-header-car-plant").val());
		
		// 등록자
		$("#js-car-oven-temp-info-reg-popup-emp-name").val("${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}");
		$("#js-car-oven-temp-info-reg-popup-emp").val("${sessionScope.LoginUserInfo.empNum}");
		
		// 측정일자 초기날짜(오늘)
		/* 
		var date = app.utils.formatDate(new Date(), "YYYY-MM-DD");
		var hours = new Date().getHours();
		
		if(Number(hours) < 10){
			hours = "0" + hours;
		}
		
		var minutes = new Date().getMinutes();
		
		if(Number(minutes) < 10){
			minutes = "0" + minutes;
		}
		
		var time = hours + ':' + minutes;
		
		$("#js-car-oven-temp-info-reg-popup-date").val(date);
		$("#js-car-oven-temp-info-reg-popup-time").val(time);
		*/
		
		// 공정 코드 리스트 조회
		retrieveProcInfo.carOvenTempInfoRegPopup.request();
		
		// [저장] 버튼 클릭
		$('#js-car-oven-temp-info-reg-popup-save-button').off().on('click', function() {
			saveCarOvenTempInfoRegPopup();
		});
		
		onlyInteger($('input[name=js-car-oven-temp-info-reg-popup-input-data]'));
		
		$("#js-car-oven-temp-info-reg-popup-seq").val("0");
		
		// 수정 인 경우, 파라미터 세팅
		if(param != undefined){
			
			$("#js-car-oven-temp-info-reg-popup-seq").val(param.seq);
			$("#js-car-oven-temp-info-reg-popup-proc-combo").val(param.procId);
			retrieveOvenInfo.carOvenTempInfoRegPopup.request(param.procId);
			$("#js-car-oven-temp-info-reg-popup-oven-combo").val(param.oven);
			
			// 수정인 경우 오븐 No. 비활성화
			$('#js-car-oven-temp-info-reg-popup-oven-combo').attr("disabled", "disabled");
			
			//$("#js-car-oven-temp-info-reg-popup-date").val(param.inspDate);
			//$("#js-car-oven-temp-info-reg-popup-time").val(param.inspTime);
			
			$("#js-car-oven-temp-info-reg-popup-in-temp").val(param.enter);
			$("#js-car-oven-temp-info-reg-popup-out-temp").val(param.exit);
			$("#js-car-oven-temp-info-reg-popup-zone-temp1").val(param.zone1);
			$("#js-car-oven-temp-info-reg-popup-zone-temp2").val(param.zone2);
			$("#js-car-oven-temp-info-reg-popup-zone-temp3").val(param.zone3);
			$("#js-car-oven-temp-info-reg-popup-zone-temp4").val(param.zone4);
			$("#js-car-oven-temp-info-reg-popup-zone-temp5").val(param.zone5);
			$("#js-car-oven-temp-info-reg-popup-zone-temp6").val(param.zone6);
		}
	};

	//------------------------------------------------
	// [오븐 Setting 온도 등록] 팝업 저장
	// ------------------------------------------------
	var saveCarOvenTempInfoRegPopup = function(){
		var carPlant        = $("#js-car-oven-temp-info-reg-popup-carplant").val();
		var emp             = $("#js-car-oven-temp-info-reg-popup-emp").val();
		var procId          = $("#js-car-oven-temp-info-reg-popup-proc-combo").val();
		var boothId         = $("#js-car-oven-temp-info-reg-popup-oven-combo").val();
		
		//var date            = $("#js-car-oven-temp-info-reg-popup-date").val().replace(/-/gi, "");
		//var time            = $("#js-car-oven-temp-info-reg-popup-time").val().replace(/:/gi, "");
		
		var inTemp          = $("#js-car-oven-temp-info-reg-popup-in-temp").val();
		var outTemp         = $("#js-car-oven-temp-info-reg-popup-out-temp").val();
		var zone1           = $("#js-car-oven-temp-info-reg-popup-zone-temp1").val();
		var zone2           = $("#js-car-oven-temp-info-reg-popup-zone-temp2").val();
		var zone3           = $("#js-car-oven-temp-info-reg-popup-zone-temp3").val();
		var zone4           = $("#js-car-oven-temp-info-reg-popup-zone-temp4").val();
		var zone5           = $("#js-car-oven-temp-info-reg-popup-zone-temp5").val();
		var zone6           = $("#js-car-oven-temp-info-reg-popup-zone-temp6").val();
		
		if(app.utils.isEmpty(carPlant)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공장코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(emp)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="등록자 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(procId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공정코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(boothId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="오븐코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		/* 
		if(app.utils.isEmpty(date)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="측정일자가 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-oven-temp-info-reg-popup-date").focus();
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(time)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="측정시간이 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-oven-temp-info-reg-popup-time").focus();
					}
				}
			});
			return;
		}
		
		if(time.replace(/:/gi, "") > "2359"){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="측정시간이 올바르지 않습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-oven-temp-info-reg-popup-time").focus();
					}
				}
			});
			return;
		}
		*/
		
		/*
		** Zone.(℃) 값 체크.
		** 한개 이상 값이 있는 경우에만 저장 가능.
		*/
		var zoneChk		= true;
		
		for(var i=1; i < 7; i++){
			var zoneTemp = $("#js-car-oven-temp-info-reg-popup-zone-temp"+ i).val();
			if(!app.utils.isEmpty(zoneTemp)){
				zoneChk = false;
				break;
			}
		}
		
		if(zoneChk){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="1 개 이상의 결과를 등록 하십시오." />'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		app.message.confirm({
			  title             : '<spring:message code="TODO.KEY" text="알림"/>'
			, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
			, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
			, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
			, callback          : {
				confirm: function() {
					// 저장
					saveOvenTempInspInfo.request();
				}
			}
		});
		
	};

	//-------------------------------------------------
	// [오븐 Setting 온도 등록] - 입/출구 온도 저장
	//-------------------------------------------------
	var saveOvenTempInspInfo = {
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
								$('#js-car-oven-temp-info-reg-popup-close-button').click();
								retrieveOvenInspInfo.request();
							}
						}
					});
					
				} else 	{
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
		request: function() {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var carPlant        = $("#js-car-oven-temp-info-reg-popup-carplant").val();
			var emp             = $("#js-car-oven-temp-info-reg-popup-emp").val();
			var procId          = $("#js-car-oven-temp-info-reg-popup-proc-combo").val();
			var ovenNo          = $("#js-car-oven-temp-info-reg-popup-oven-combo").val();
			
			//var date            = $("#js-car-oven-temp-info-reg-popup-date").val().replace(/-/gi, "");
			//var time            = $("#js-car-oven-temp-info-reg-popup-time").val().replace(/:/gi, "");
			
			var enterTemp       = $("#js-car-oven-temp-info-reg-popup-in-temp").val();
			var exitTemp        = $("#js-car-oven-temp-info-reg-popup-out-temp").val();
			var zone1           = $("#js-car-oven-temp-info-reg-popup-zone-temp1").val();
			var zone2           = $("#js-car-oven-temp-info-reg-popup-zone-temp2").val();
			var zone3           = $("#js-car-oven-temp-info-reg-popup-zone-temp3").val();
			var zone4           = $("#js-car-oven-temp-info-reg-popup-zone-temp4").val();
			var zone5           = $("#js-car-oven-temp-info-reg-popup-zone-temp5").val();
			var zone6           = $("#js-car-oven-temp-info-reg-popup-zone-temp6").val();
			
			var params = {
				  service      : 'car.booth'
				, method       : 'saveOvenTempInspInfo'
				, carPlant     : carPlant
				, emp          : emp     
				, procId       : procId  
				, ovenNo       : ovenNo 
				
				//, inspDate     : date
				//, inspTime     : time
				
				, enterTemp    : enterTemp  
				, exitTemp     : exitTemp 
				, zone1Temp    : zone1   
				, zone2Temp    : zone2   
				, zone3Temp    : zone3   
				, zone4Temp    : zone4
				, zone5Temp    : zone5
				, zone6Temp    : zone6   
				, seqOvenTemp  : $("#js-car-oven-temp-info-reg-popup-seq").val()
			};
			
			console.log(params);
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	</script>
	<!-- 입.출구 온도 결과 등록 팝업 - 스크립트 [END] -->
		
	
	
	
	
	
	<!-- 오븐 온도 결과 등록 팝업 [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-oven-temp-inoutlet-reg-popup" class="wp-pop-layer wp-pop-w500 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="오븐 온도 결과 등록"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-oven-temp-inoutlet-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
	    	</div>
	        <div class="wp-pop-conts">
		<!-- scroll Area -->
		<div class="wp-pop-cont-scrollable">
	            <!--content //-->
			<!-- 기본 정보 -->
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="일반정보"/></h2>
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption><spring:message code="TODO.KEY" text="일반정보"/></caption>
					<colgroup>
						<col style="width:20%">
						<col style="width:30%">
						<col style="width:20%">
						<col style="width:30%">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="공장"/></th>
							<td class="wp-al wp-vm">
								<input type="text"   id="js-car-oven-temp-inoutlet-reg-popup-carplant-name" title="내용입력" disabled="disabled">
								<input type="hidden" id="js-car-oven-temp-inoutlet-reg-popup-carplant">
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="측정자"/></th>
							<td class="wp-al wp-vm">
								<input type="text"   id="js-car-oven-temp-inoutlet-reg-popup-emp-name" title="내용입력" disabled="disabled">
								<input type="hidden" id="js-car-oven-temp-inoutlet-reg-popup-emp">
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="공정"/></th>
							<td class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-oven-temp-inoutlet-reg-popup-proc-combo">
									</select>
								</div>
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="오븐 No."/></th>
							<td class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-oven-temp-inoutlet-reg-popup-oven-combo">
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="측정일자"/></th>
							<td  class="wp-al wp-vm">
								<input type="text" class="wp-inp-datepicker maxdate" id="js-car-oven-temp-inoutlet-reg-popup-date" placeholder="날짜입력" readonly="readonly">
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="측정시간"/></th>
							<td  class="wp-al wp-vm">
								<input type="text" class="wp-timeFormat" id="js-car-oven-temp-inoutlet-reg-popup-time">
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- 기본 정보 -->
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="오븐온도"/></h2>
			<div class="wp-table-st1 wp-mb10">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:20%">
						<col style="width:80%">
					</colgroup>
					<tbody>
						<%-- 
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="SPEC"/></th>
							<td class="wp-al"><input type="text" name="" id="js-car-oven-temp-inoutlet-reg-popup-spec" title="내용입력"></td>
						</tr>
						 --%>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="구분"/></th>
							<td class="wp-al">
								<div class="wp-ui-select wp-wd103">
									<select title="항목 개수 설정" name="js-car-oven-temp-inoutlet-reg-popup-input-data" id="js-car-oven-temp-inoutlet-reg-popup-gubun1-combo">
									</select>
								</div>
								<div class="wp-ui-select wp-wd103">
									<select title="항목 개수 설정" name="js-car-oven-temp-inoutlet-reg-popup-input-data" id="js-car-oven-temp-inoutlet-reg-popup-gubun2-combo">
									</select>
								</div>
								<div class="wp-ui-select wp-wd103">
									<select title="항목 개수 설정" name="js-car-oven-temp-inoutlet-reg-popup-input-data" id="js-car-oven-temp-inoutlet-reg-popup-gubun3-combo">
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="입력값(min)"/></th>
							<td class="wp-al">
								<input type="text" class="wp-ar wp-wd103" name="js-car-oven-temp-inoutlet-reg-popup-input-data" id="js-car-oven-temp-inoutlet-reg-popup-input-value1" title="내용입력">
								<input type="text" class="wp-ar wp-wd103" name="js-car-oven-temp-inoutlet-reg-popup-input-data" id="js-car-oven-temp-inoutlet-reg-popup-input-value2" title="내용입력">
								<input type="text" class="wp-ar wp-wd103" name="js-car-oven-temp-inoutlet-reg-popup-input-data" id="js-car-oven-temp-inoutlet-reg-popup-input-value3" title="내용입력">
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="비고"/></th>
							<td class="wp-al">
								<input type="text" name="js-car-oven-temp-inoutlet-reg-popup-remark" id="js-car-oven-temp-inoutlet-reg-popup-remark" title="내용입력">
							</td>
						</tr>
					</tbody>
				</table>
	        </div>
	        
	        <!-- 파일 첨부  -->
		<h2 class="wp-cont-title">파일첨부</h2>
		<div class="wp-table-st1 wp-issue-apply">
			<table>
				<caption>파일첨부</caption>
				<colgroup>
					<col style="width:17%">
					<col style="width:83%;">
				</colgroup>
				<tbody>
					<tr>
						<th class="wp-ar"><spring:message code="TODO.KEY" text="첨부파일" /></th>
						<td colspan="3">
							<div class="wp-form-writer">
								<div class="wp-upload wp-mt0">
									<div class="wp-upload-top">
										<button type="button" class="wp-spr-btn wp-btn-wl-fold" id="js-car-oven-temp-info-reg-popup-fold-button"><span><spring:message code="TODO.KEY" text="접기펴기" /></span></button>
										<button type="button" class="wp-btn-wl-text wp-file" id="js-car-oven-temp-info-reg-popup-attach-file"><spring:message code="TODO.KEY" text="내 PC" /></button>
										<input type="file" id="js-car-oven-temp-info-reg-popup-attach-file-target" style="display: none;" multiple>
										<div class="subcont" id="js-car-oven-temp-info-reg-popup-sum-file-size"></div>
									</div>
									<div class="wp-upload-list">
										<table>
											<colgroup>
												<col style="width:auto">
												<col style="width:18%">
												<col style="width:18%">
											</colgroup>
											<thead>
												<tr>
													<th><spring:message code="TODO.KEY" text="파일명" /></th>
													<th><spring:message code="TODO.KEY" text="용량" /></th>
													<th><spring:message code="TODO.KEY" text="상태" /></th>
												</tr>
											</thead>
											<tbody id="js-car-oven-temp-info-reg-popup-attach-file-template-container">
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- //파일첨부 -->
	        
		<!-- // scroll Area -->
		</div>
		<div class="wp-btn-area">
			<button type="button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18" id="js-car-oven-temp-inoutlet-reg-popup-save-button"><spring:message code="TODO.KEY" text="저장"/></button>
			<input type="hidden" id="js-car-oven-temp-inoutlet-reg-popup-seq" >
		</div>
	        </div>
	    </div>
	</div>
	<!-- 오븐 온도 결과 : Mixing 입/출구 온도 등록 팝업 [END] -->
	

	<!-- 오븐 온도 결과 : Mixing Tank 오븐 온도 등록 팝업 - 스크립트 START -->
	<script type="text/javascript">
	
	//------------------------------------------------
	// 오븐 실측값(온도 구간별 시간) 등록 팝업 초기화
	// ------------------------------------------------
	var initCarOvenTempInOutletRegPopup = function(param) {
	
		$("[name=js-car-oven-temp-inoutlet-reg-popup-input-data]").val("");
		$("#js-car-oven-temp-inoutlet-reg-popup-remark").val("");
		
		// 공장
		$("#js-car-oven-temp-inoutlet-reg-popup-carplant-name").val($("#js-car-header-car-plant").text());
		$("#js-car-oven-temp-inoutlet-reg-popup-carplant").val($("#js-car-header-car-plant").val());
		
		// 첨부파일 업로드 handler 초기화
		carProdHistInfoRegPopupFileSaveHandler.init();
		$("#js-car-oven-temp-info-reg-popup-attach-file-template-container").empty();
		$('#js-car-oven-temp-info-reg-popup-sum-file-size').html('<spring:message code="TODO.KEY" text="첨부파일크기 : "/>' + convFileSize(0));
		
		// 등록자
		$("#js-car-oven-temp-inoutlet-reg-popup-emp-name").val("${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}");
		$("#js-car-oven-temp-inoutlet-reg-popup-emp").val("${sessionScope.LoginUserInfo.empNum}");
		
		// 측정일자 초기날짜(오늘)
		var date = app.utils.formatDate(new Date(), "YYYYMMDD");
		var minutes = new Date().getMinutes();
		
		if(Number(minutes) < 10){
			minutes = "0" + minutes;
		}
		
		var time = new Date().getHours() + ":" + minutes;
		$("#js-car-oven-temp-inoutlet-reg-popup-date").val(date).mask('9999-99-99');
		$("#js-car-oven-temp-inoutlet-reg-popup-time").val(time);
		
		// 오븐 실측값(온도 구간별 시간) 공정코드 조회
		retrieveProcInfo.carOvenTempInOutletRegPopup.request();
		
		// 등록 시 오븐 No 비활성화 초기화
		$("#js-car-oven-temp-inoutlet-reg-popup-oven-combo").removeAttr("disabled");
		
		// 신규 등록 시 공정콤보 비활성화 
		var procId = $("button[name=js-car-oven-temp-info-proc-type-button].on").attr("procId");
		$("#js-car-oven-temp-inoutlet-reg-popup-proc-combo").val(procId);
		$("#js-car-oven-temp-inoutlet-reg-popup-proc-combo").attr("disabled", "disabled");
		
		
		// 팝업 입력창 초기화. 수정 버튼 클릭 후 다시 등록 버튼 클릭 시 초기화가 필요하다.
		$("#js-car-oven-temp-inoutlet-reg-popup-input-value1").val("");
		$("#js-car-oven-temp-inoutlet-reg-popup-input-value2").val("");
		$("#js-car-oven-temp-inoutlet-reg-popup-input-value3").val("");
		$("#js-car-oven-temp-inoutlet-reg-popup-remark").val("");
		$("#js-car-oven-temp-inoutlet-reg-popup-seq").val("");
		
		// [저장] 버튼 클릭
		$('#js-car-oven-temp-inoutlet-reg-popup-save-button').off().on('click', function() {
			saveCarOvenTempInOutletRegPopup();
		});
		
		onlyInteger($('input[name=js-car-oven-temp-inoutlet-reg-popup-input-data]'));
		
		// 수정 인 경우, 파라미터 세팅
		if(param != undefined){
			
			$("#js-car-oven-temp-inoutlet-reg-popup-seq").val(param.seq);
			$("#js-car-oven-temp-inoutlet-reg-popup-proc-combo").val(param.procId);
			
			// 오븐 실측값(온도 구간별 시간) 공정코드 조회
			retrieveOvenInfo.carOvenTempInOutletRegPopup.request(param.procId);
			$("#js-car-oven-temp-inoutlet-reg-popup-oven-combo").val(param.oven);
			
			var datetime = param.datetime.replace(/-/gi,"").replace(/:/gi,"").replace(/\./gi,"").replace(/ /gi,"");
			var date = datetime.substring(0, 8);
			var time = datetime.substring(8, 12);
			time = time.substring(0,2) + ':' + time.substring(2);
			
			$("#js-car-oven-temp-inoutlet-reg-popup-date").val(date).mask('9999-99-99');
			$("#js-car-oven-temp-inoutlet-reg-popup-time").val(time);
			
			$("#js-car-oven-temp-inoutlet-reg-popup-gubun1-combo").val(param.specId1);
			$("#js-car-oven-temp-inoutlet-reg-popup-gubun2-combo").val(param.specId2);
			$("#js-car-oven-temp-inoutlet-reg-popup-gubun3-combo").val(param.specId3);
			
			// 공정, 오븐 No combo 비활성화
			$('#js-car-oven-temp-inoutlet-reg-popup-gubun1-combo').attr("disabled", "disabled");
			$('#js-car-oven-temp-inoutlet-reg-popup-gubun2-combo').attr("disabled", "disabled");
			$('#js-car-oven-temp-inoutlet-reg-popup-gubun3-combo').attr("disabled", "disabled");
			$("#js-car-oven-temp-inoutlet-reg-popup-oven-combo").attr("disabled", "disabled");
			
			$("#js-car-oven-temp-inoutlet-reg-popup-input-value1").val(param.specId1Value);
			$("#js-car-oven-temp-inoutlet-reg-popup-input-value2").val(param.specId2Value);
			$("#js-car-oven-temp-inoutlet-reg-popup-input-value3").val(param.specId3Value);
			
			$("#js-car-oven-temp-inoutlet-reg-popup-remark").val(param.remark);
			
			retrieveOvenResultPopupInfo.request(param);
			
		}
	};

	//------------------------------------------------
	// 오븐 실측값(온도 구간별 시간) 등록 팝업 저장
	// ------------------------------------------------
	var saveCarOvenTempInOutletRegPopup = function(){
		
		var carPlant        = $("#js-car-oven-temp-inoutlet-reg-popup-carplant").val();
		var emp             = $("#js-car-oven-temp-inoutlet-reg-popup-emp").val();
		var procId          = $("#js-car-oven-temp-inoutlet-reg-popup-proc-combo").val();
		var ovenNo         	= $("#js-car-oven-temp-inoutlet-reg-popup-oven-combo").val();
		var date            = $("#js-car-oven-temp-inoutlet-reg-popup-date").val().replace(/-/gi, "");
		var time            = $("#js-car-oven-temp-inoutlet-reg-popup-time").val().replace(/:/gi, "");
		var gubun1          = $("#js-car-oven-temp-inoutlet-reg-popup-gubun1-combo").val();
		var gubun2          = $("#js-car-oven-temp-inoutlet-reg-popup-gubun2-combo").val();
		var gubun3          = $("#js-car-oven-temp-inoutlet-reg-popup-gubun3-combo").val();
		var value1          = $("#js-car-oven-temp-inoutlet-reg-popup-input-value1").val();
		var value2          = $("#js-car-oven-temp-inoutlet-reg-popup-input-value2").val();
		var value3          = $("#js-car-oven-temp-inoutlet-reg-popup-input-value3").val();
		var remark          = $("#js-car-oven-temp-inoutlet-reg-popup-remark").val();
		var seqOvenTime 	= $("#js-car-oven-temp-inoutlet-reg-popup-seq").val() == '' ? 0 : $("#js-car-oven-temp-inoutlet-reg-popup-seq").val();
		
		if(app.utils.isEmpty(carPlant)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공장코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(emp)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="등록자 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(procId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공정코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(ovenNo)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="오븐코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(date)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="측정일자가 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-oven-temp-inoutlet-reg-popup-date").focus();
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(time)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="측정시간이 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-oven-temp-inoutlet-reg-popup-time").focus();
					}
				}
			});
			return;
		}
		
		if(time.replace(/:/gi, "") > "2359"){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="측정시간이 올바르지 않습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-oven-temp-inoutlet-reg-popup-time").focus();
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(gubun1)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="구분 코드값이 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(gubun2)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="구분 코드값이 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(gubun3)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="구분 코드값이 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		if(gubun1 == gubun2 || gubun2 == gubun3 || gubun1 == gubun3){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="구분값은 중복될 수 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		
		/*
		** 입력값(min) 체크.
		** 한개 이상 값이 있는 경우에만 저장 가능.
		*/
		var minChk		= true;

		for(var i=1; i < 4; i++){
			var min = $("#js-car-oven-temp-inoutlet-reg-popup-input-value"+ i).val();
			if(!app.utils.isEmpty(min)){
				minChk = false;
			}
		}

		if(minChk){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="1 개 이상의 결과를 등록 하십시오." />'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		
		var specChk = $("#js-car-oven-temp-spec-reg-popup-spec-check-hidden").val();
		
		console.log('specChk ########################## '+ specChk);
		
		var procIdChk 	= $("#js-car-oven-temp-spec-reg-popup-proc-hidden").val();
		var ovenNoChk 	= $("#js-car-oven-temp-spec-reg-popup-oven-hidden").val();
		
		if(specChk == "Y"){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림" />'
				, message           : '<spring:message code="TODO.KEY" text="공정 : '+ procIdChk + ', 오븐 : '+ ovenNoChk +' 에 등록된 스펙이 없습니다. 스펙 등록 후 진행하세요." />'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인" />'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		var params = {
			  service      	: 'car.booth'
			, method       	: 'saveOvenTimeInspInfo'
			, carPlant     	: carPlant
			, emp          	: emp     
			, procId       	: procId  
			, ovenNo       	: ovenNo 
			, inspDate     	: date    
			, inspTime     	: time    
			, specId1      	: gubun1  
			, specId2      	: gubun2
			, specId3      	: gubun3  
			, specId1Value  : value1   
			, specId2Value  : value2   
			, specId3Value  : value3   
			, remark        : remark
			, seqOvenTime  	: seqOvenTime
		};
		
		app.message.confirm({
			  title             : '<spring:message code="TODO.KEY" text="알림"/>'
			, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
			, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
			, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
			, callback          : {
				confirm: function() {
					// 저장
					carProdHistInfoRegPopupFileSaveHandler.save(params);
				}
			}
		});
		
	};
	
	
	//-------------------------------------------------
	// 수정 시 첨부파일 포함 데이터 조회
	//-------------------------------------------------
	var retrieveOvenResultPopupInfo = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					// 구분3 콤보 set
					var data = response.rs || {};
					
					// 첨부파일
					var file = response.rs.fileInfo;
					carProdHistInfoRegPopupFileSaveHandler.attachFileHandler.setItems(file || []);
					
				} else 	{
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
		request: function(param) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var params = {
				  service      : 'car.booth'
				, method       : 'retrieveOvenResultPopupInfo'
				, carPlant     : $("#js-car-header-car-plant").val()
				, procId       : param.procId
				, ovenNo       : param.oven
				, seqOvenTime  : param.seq
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	
	//-------------------------------------------------
	// 구분 콤보 3
	//-------------------------------------------------
	var retrieveOvenSpecStdInfo = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					// 구분3 콤보 set
					var data = response.rs;
					
					$('#js-car-oven-temp-inoutlet-reg-popup-gubun1-combo').find('option').remove();
					$('#js-car-oven-temp-inoutlet-reg-popup-gubun2-combo').find('option').remove();
					$('#js-car-oven-temp-inoutlet-reg-popup-gubun3-combo').find('option').remove();
					
					for(var i=0; i < data.length; i++)
					{
						$('#js-car-oven-temp-inoutlet-reg-popup-gubun1-combo').append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
						$('#js-car-oven-temp-inoutlet-reg-popup-gubun2-combo').append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
						$('#js-car-oven-temp-inoutlet-reg-popup-gubun3-combo').append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
					}
					
					// 초기 disabled 제거
					$('#js-car-oven-temp-inoutlet-reg-popup-gubun1-combo').removeAttr("disabled");
					$('#js-car-oven-temp-inoutlet-reg-popup-gubun2-combo').removeAttr("disabled");
					$('#js-car-oven-temp-inoutlet-reg-popup-gubun3-combo').removeAttr("disabled");
					
					// 구분 setting
					retrieveOvenSpecInspInfo.request();
					
				} else 	{
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
		request: function(procId) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var carPlant        = $("#js-car-header-car-plant").val();
			var procId          = procId;
			
			var params = {
				  service      : 'car.booth'
				, method       : 'retrieveOvenSpecStdInfo'
				, carPlant     : carPlant
				, procId       : procId  
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		},
		carOvenTempSpecRegPopup : {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					if (message === 'OK') {							
						
						// 구분3 콤보 set
						var data = response.rs;
						
						$('#js-car-oven-temp-spec-reg-popup-gubun1-combo').find('option').remove();
						$('#js-car-oven-temp-spec-reg-popup-gubun2-combo').find('option').remove();
						$('#js-car-oven-temp-spec-reg-popup-gubun3-combo').find('option').remove();
						
						for(var i=0; i<data.length; i++)
						{
							$('#js-car-oven-temp-spec-reg-popup-gubun1-combo').append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
							$('#js-car-oven-temp-spec-reg-popup-gubun2-combo').append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
							$('#js-car-oven-temp-spec-reg-popup-gubun3-combo').append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
						}
						
					} else 	{
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
			request: function() {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var carPlant        = $("#js-car-oven-temp-spec-reg-popup-carplant").val();
				var procId          = $("#js-car-oven-temp-spec-reg-popup-proc-combo").val();
				
				var params = {
					  service      : 'car.booth'
					, method       : 'retrieveOvenSpecStdInfo'
					, carPlant     : carPlant
					, procId       : procId  
				};
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		}
	};
	
	
	
	//-------------------------------------------------
	// 수정 시 구분 콤보 3
	//-------------------------------------------------
	var retrieveModifyOvenSpecStdInfo = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					// 구분3 콤보 set
					var data = response.rs;
					
					$('#js-car-oven-temp-inoutlet-reg-popup-gubun1-combo').find('option').remove();
					$('#js-car-oven-temp-inoutlet-reg-popup-gubun2-combo').find('option').remove();
					$('#js-car-oven-temp-inoutlet-reg-popup-gubun3-combo').find('option').remove();
					
					for(var i=0; i < data.length; i++)
					{
						$('#js-car-oven-temp-inoutlet-reg-popup-gubun1-combo').append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
						$('#js-car-oven-temp-inoutlet-reg-popup-gubun2-combo').append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
						$('#js-car-oven-temp-inoutlet-reg-popup-gubun3-combo').append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
					}
					
					// 초기 disabled 제거
					$('#js-car-oven-temp-inoutlet-reg-popup-gubun1-combo').removeAttr("disabled");
					$('#js-car-oven-temp-inoutlet-reg-popup-gubun2-combo').removeAttr("disabled");
					$('#js-car-oven-temp-inoutlet-reg-popup-gubun3-combo').removeAttr("disabled");
					
				} else 	{
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
		request: function(procId) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var carPlant        = $("#js-car-header-car-plant").val();
			
			var params = {
				  service      : 'car.booth'
				, method       : 'retrieveOvenSpecStdInfo'
				, carPlant     : carPlant
				, procId       : procId  
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	
	//-------------------------------------------------
	// 오븐 실측값(온도 구간별 시간) 오븐온도 스펙 조회 및 setting
	//-------------------------------------------------
	var retrieveOvenSpecInspInfo = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
				
					var data = response.rs || null;
					
					if(data != null && data.length > 0){
						
						if(data[0].specId1 != null){
							$('#js-car-oven-temp-inoutlet-reg-popup-gubun1-combo').val(data[0].specId1);
							$('#js-car-oven-temp-inoutlet-reg-popup-gubun1-combo').attr("disabled", "disabled");
						}
						if(data[0].specId2 != null){
							$('#js-car-oven-temp-inoutlet-reg-popup-gubun2-combo').val(data[0].specId2);
							$('#js-car-oven-temp-inoutlet-reg-popup-gubun2-combo').attr("disabled", "disabled");
						}
						if(data[0].specId3 != null){
							$('#js-car-oven-temp-inoutlet-reg-popup-gubun3-combo').val(data[0].specId3);
							$('#js-car-oven-temp-inoutlet-reg-popup-gubun3-combo').attr("disabled", "disabled");
						}
						
					}
					else
					{
						console.log("오븐온도 구분 데이터가 없는 경우.");
						
						var procId = $("button[name=js-car-oven-temp-info-proc-type-button].on").attr("procId");
						var ovenNo = $("#js-car-oven-temp-inoutlet-reg-popup-oven-combo").val();
						$("#js-car-oven-temp-spec-reg-popup-spec-check-hidden").val("Y");
						$("#js-car-oven-temp-spec-reg-popup-proc-hidden").val(procId);
						$("#js-car-oven-temp-spec-reg-popup-oven-hidden").val(ovenNo);
						
					}
					
				} else 	{
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
		request: function() {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var params = {
				  service  	: 'car.booth'
				, method   	: 'retrieveOvenInspSpec'
				, carPlant 	: $("#js-car-header-car-plant").val()
				//, procId   	: $("#js-car-oven-temp-inoutlet-reg-popup-proc-combo").val()
				, procId   	: $("button[name=js-car-oven-temp-info-proc-type-button].on").attr("procId")
				, ovenNo  	: $("#js-car-oven-temp-inoutlet-reg-popup-oven-combo").val()
			};
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	

	//-------------------------------------------------
	// 오븐 온도 결과 등록
	//-------------------------------------------------
	var saveOvenTimeInspInfo = {
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
								$('#js-car-oven-temp-inoutlet-reg-popup-close-button').click();
								retrieveCarOvenTempInfoAll();
							}
						}
					});
					
				} else 	{
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
		request: function() {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var carPlant        = $("#js-car-oven-temp-inoutlet-reg-popup-carplant").val();
			var emp             = $("#js-car-oven-temp-inoutlet-reg-popup-emp").val();
			var procId          = $("#js-car-oven-temp-inoutlet-reg-popup-proc-combo").val();
			var ovenNo          = $("#js-car-oven-temp-inoutlet-reg-popup-oven-combo").val();
			var date            = $("#js-car-oven-temp-inoutlet-reg-popup-date").val().replace(/-/gi, "");
			var time            = $("#js-car-oven-temp-inoutlet-reg-popup-time").val().replace(/:/gi, "");
			var gubun1          = $("#js-car-oven-temp-inoutlet-reg-popup-gubun1-combo").val();
			var gubun2          = $("#js-car-oven-temp-inoutlet-reg-popup-gubun2-combo").val();
			var gubun3          = $("#js-car-oven-temp-inoutlet-reg-popup-gubun3-combo").val();
			var value1          = $("#js-car-oven-temp-inoutlet-reg-popup-input-value1").val();
			var value2          = $("#js-car-oven-temp-inoutlet-reg-popup-input-value2").val();
			var value3          = $("#js-car-oven-temp-inoutlet-reg-popup-input-value3").val();
			var remark          = $("#js-car-oven-temp-inoutlet-reg-popup-remark").val();
			var seqOvenTime 	= $("#js-car-oven-temp-inoutlet-reg-popup-seq").val() == '' ? 0 : $("#js-car-oven-temp-inoutlet-reg-popup-seq").val();
			
			var params = {
				  service      	: 'car.booth'
				, method       	: 'saveOvenTimeInspInfo'
				, carPlant     	: carPlant
				, emp          	: emp     
				, procId       	: procId  
				, ovenNo       	: ovenNo 
				, inspDate     	: date    
				, inspTime     	: time    
				, specId1      	: gubun1  
				, specId2      	: gubun2
				, specId3      	: gubun3  
				, specId1Value  : value1   
				, specId2Value  : value2   
				, specId3Value  : value3   
				, remark        : remark
				, seqOvenTime  	: seqOvenTime
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	</script>
	<!-- 오븐 온도 결과 등록 팝업 - 스크립트 [END] -->
		
	
	
	<!-- Spec 관리 등록 팝업 [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-oven-temp-spec-reg-popup" class="wp-pop-layer wp-pop-w500 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="Spec 관리 등록"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-oven-temp-spec-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
	    	</div>
	        <div class="wp-pop-conts">
		<!-- scroll Area -->
		<div class="wp-pop-cont-scrollable">
	            <!--content //-->
			<!-- 기본 정보 -->
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="일반정보"/></h2>
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption><spring:message code="TODO.KEY" text="일반정보"/></caption>
					<colgroup>
						<col style="width:20%">
						<col style="width:30%">
						<col style="width:20%">
						<col style="width:30%">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="공장"/></th>
							<td  class="wp-al wp-vm">
								<input type="text"   id="js-car-oven-temp-spec-reg-popup-carplant-name" title="내용입력" disabled="disabled">
								<input type="hidden" id="js-car-oven-temp-spec-reg-popup-carplant">
								<input type="hidden" id="js-car-oven-temp-spec-reg-popup-spec-check-hidden" value="N">
								<input type="hidden" id="js-car-oven-temp-spec-reg-popup-proc-hidden">
								<input type="hidden" id="js-car-oven-temp-spec-reg-popup-oven-hidden">
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="측정자"/></th>
							<td  class="wp-al wp-vm">
								<input type="text"   id="js-car-oven-temp-spec-reg-popup-emp-name" title="내용입력" disabled="disabled">
								<input type="hidden" id="js-car-oven-temp-spec-reg-popup-emp">
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="공정"/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-oven-temp-spec-reg-popup-proc-combo">
									</select>
								</div>
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="Oven No."/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-oven-temp-spec-reg-popup-oven-combo">
									</select>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- 기본 정보 -->
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="Spec. 정보"/></h2>
			<div class="wp-table-st1 wp-mb10">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:20%">
						<col style="width:80%">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="구분"/></th>
							<td class="wp-al">
								<div class="wp-ui-select wp-wd103">
									<select title="항목 개수 설정" id="js-car-oven-temp-spec-reg-popup-gubun1-combo">
									</select>
								</div>
								<div class="wp-ui-select wp-wd103">
									<select title="항목 개수 설정" id="js-car-oven-temp-spec-reg-popup-gubun2-combo">
									</select>
								</div>
								<div class="wp-ui-select wp-wd103">
									<select title="항목 개수 설정" id="js-car-oven-temp-spec-reg-popup-gubun3-combo">
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="상한(min)"/></th>
							<td class="wp-al">
								<input type="text" class="wp-ar wp-wd103" name="js-car-oven-temp-spec-reg-popup-input-data" id="js-car-oven-temp-spec-reg-popup-max1" title="내용입력">
								<input type="text" class="wp-ar wp-wd103" name="js-car-oven-temp-spec-reg-popup-input-data" id="js-car-oven-temp-spec-reg-popup-max2" title="내용입력">
								<input type="text" class="wp-ar wp-wd103" name="js-car-oven-temp-spec-reg-popup-input-data" id="js-car-oven-temp-spec-reg-popup-max3" title="내용입력">
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="하한(min)"/></th>
							<td class="wp-al">
								<input type="text" class="wp-ar wp-wd103" name="js-car-oven-temp-spec-reg-popup-input-data" id="js-car-oven-temp-spec-reg-popup-min1" title="내용입력">
								<input type="text" class="wp-ar wp-wd103" name="js-car-oven-temp-spec-reg-popup-input-data" id="js-car-oven-temp-spec-reg-popup-min2" title="내용입력">
								<input type="text" class="wp-ar wp-wd103" name="js-car-oven-temp-spec-reg-popup-input-data" id="js-car-oven-temp-spec-reg-popup-min3" title="내용입력">
							</td>
						</tr>
					</tbody>
				</table>
	            </div>
		<!-- // scroll Area -->
		</div>
		<div class="wp-btn-area">
			<button type="button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18" id="js-car-oven-temp-spec-reg-popup-save-button"><spring:message code="TODO.KEY" text="저장"/></button>
			<input type="hidden" id="js-car-oven-temp-spec-reg-popup-seq" >
		</div>
	        </div>
	    </div>
	</div>
	<!-- Spec 관리 등록 팝업 [END] -->
	

	<!-- Spec 관리 등록 팝업 - 스크립트 START -->
	<script type="text/javascript">
	
	//------------------------------------------------
	// Spec 관리 등록 팝업 초기화
	// ------------------------------------------------
	var initCarOvenTempSpecRegPopup = function(param) {
	
		$("[name=js-car-oven-temp-spec-reg-popup-input-data]").val("");
		
		// 공장
		$("#js-car-oven-temp-spec-reg-popup-carplant-name").val($("#js-car-header-car-plant").text());
		$("#js-car-oven-temp-spec-reg-popup-carplant").val($("#js-car-header-car-plant").val());
		
		// 등록자
		$("#js-car-oven-temp-spec-reg-popup-emp-name").val("${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}");
		$("#js-car-oven-temp-spec-reg-popup-emp").val("${sessionScope.LoginUserInfo.empNum}");
		
		// 공정 코드 리스트 조회
		retrieveProcInfo.carOvenTempSpecRegPopup.request();
		
		// [저장] 버튼 클릭
		$('#js-car-oven-temp-spec-reg-popup-save-button').off().on('click', function() {
			saveCarOvenTempSpecRegPopup();
		});
		
		onlyInteger($('input[name=js-car-oven-temp-spec-reg-popup-input-data]'));
		
	};

	//------------------------------------------------
	// Spec 관리 등록 팝업 저장
	// ------------------------------------------------
	var saveCarOvenTempSpecRegPopup = function(){
		
		var carPlant        = $("#js-car-oven-temp-spec-reg-popup-carplant").val();
		var emp             = $("#js-car-oven-temp-spec-reg-popup-emp").val();
		var procId          = $("#js-car-oven-temp-spec-reg-popup-proc-combo").val();
		var boothId         = $("#js-car-oven-temp-spec-reg-popup-oven-combo").val();
		var gubun1          = $("#js-car-oven-temp-spec-reg-popup-gubun1-combo").val();
		var gubun2          = $("#js-car-oven-temp-spec-reg-popup-gubun2-combo").val();
		var gubun3          = $("#js-car-oven-temp-spec-reg-popup-gubun3-combo").val();
		
		if(app.utils.isEmpty(carPlant)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공장코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(emp)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="등록자 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(procId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공정코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(boothId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="오븐코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(gubun1)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="구분 코드값이 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(gubun2)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="구분 코드값이 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(gubun3)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="구분 코드값이 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		if(gubun1 == gubun2 || gubun2 == gubun3 || gubun1 == gubun3){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="구분값은 중복될 수 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		/*
		** Spec. 정보 상한(min) / 하한(min) 값 체크.
		** 한개 이상 값이 있는 경우에만 저장 가능.
		*/
		var minMaxChk		= true;
		
		for(var i=1; i < 4; i++){
			var max = $("#js-car-oven-temp-spec-reg-popup-max"+ i).val();
			var min = $("#js-car-oven-temp-spec-reg-popup-min"+ i).val();
			if(!app.utils.isEmpty(max) || !app.utils.isEmpty(min)){
				minMaxChk = false;
				break;
			}
		}
		
		if(minMaxChk){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="1 개 이상의 결과를 등록 하십시오." />'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		
		app.message.confirm({
			  title             : '<spring:message code="TODO.KEY" text="알림"/>'
			, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
			, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
			, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
			, callback          : {
				confirm: function() {
					// 저장
					saveOvenInspSpec.request();
				}
			}
		});
	};
	

	//-------------------------------------------------
	// Spec 관리 등록 
	//-------------------------------------------------
	var saveOvenInspSpec = {
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
								retrieveCarOvenTempInfoAll();
								// 닫기
								$("#js-car-oven-temp-spec-reg-popup-close-button").click();
							}
						}
					});
					
				} else 	{
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
		request: function() {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var carPlant        = $("#js-car-oven-temp-spec-reg-popup-carplant").val();
			var emp             = $("#js-car-oven-temp-spec-reg-popup-emp").val();
			var procId          = $("#js-car-oven-temp-spec-reg-popup-proc-combo").val();
			var ovenNo          = $("#js-car-oven-temp-spec-reg-popup-oven-combo").val();
			var gubun1          = $("#js-car-oven-temp-spec-reg-popup-gubun1-combo").val();
			var gubun2          = $("#js-car-oven-temp-spec-reg-popup-gubun2-combo").val();
			var gubun3          = $("#js-car-oven-temp-spec-reg-popup-gubun3-combo").val();
			var max1            = $("#js-car-oven-temp-spec-reg-popup-max1").val();
			var max2            = $("#js-car-oven-temp-spec-reg-popup-max2").val();
			var max3            = $("#js-car-oven-temp-spec-reg-popup-max3").val();
			var min1            = $("#js-car-oven-temp-spec-reg-popup-min1").val();
			var min2            = $("#js-car-oven-temp-spec-reg-popup-min2").val();
			var min3            = $("#js-car-oven-temp-spec-reg-popup-min3").val();
			
			var params = {
				  service      	: 'car.booth'
				, method       	: 'saveOvenInspSpec'
				, carPlant     	: carPlant
				, emp          	: emp     
				, procId       	: procId  
				, ovenNo       	: ovenNo 
				, specId1      	: gubun1  
				, specId2      	: gubun2
				, specId3      	: gubun3  
				, specId1Lsl    : min1   
				, specId2Lsl    : min2   
				, specId3Lsl    : min3   
				, specId1Usl    : max1   
				, specId2Usl    : max2   
				, specId3Usl    : max3
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	</script>
	<!-- Spec 관리 등록 팝업 - 스크립트 [END] -->
	
	
	<!-- Mixing 입/출구 온도 삭제 - 스크립트 START -->
	<script type="text/javascript">
	//------------------------------------------------
	// Mixing 입/출구 온도 - 삭제
	//------------------------------------------------
	var deleteBoothOvenInspInfo = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="정상적으로 삭제되었습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								retrieveOvenInspInfo.request();
							}
						}
					});
					
					// 오븐 리스트 조회
					retrieveOvenInfo.request();
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
		request: function(seqOvenTemp) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var userEmp		  = '${sessionScope.LoginUserInfo.empNum}';
			
			var params = {
				  service           : 'car.booth'
				, method            : 'deleteOvenTempInspInfo'
				, userEmp       	: '${sessionScope.LoginUserInfo.empNum}'
				, seqOvenTemp      	: seqOvenTemp
			};
			
			console.log("***** saveBoothTempHumidInfo - PARAM");
			console.log(params);

			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	</script>
	<!-- Mixing 입/출구 온도 삭제 - 스크립트 [END] -->
	
	
	
	<!-- Mixing Tank 오븐 온도 삭제 - 스크립트 START -->
	<script type="text/javascript">
	
	//------------------------------------------------
	// Mixing Tank 오븐 온도 - 삭제
	//------------------------------------------------
	var deleteBoothOvenTimeInspInfo = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="정상적으로 삭제되었습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								retrieveOvenInspInfo.request();
							}
						}
					});
					
					// 오븐 온도 정보
					retrieveOvenInspInfo.request();
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
		request: function(seqOvenTime) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var userEmp		  = '${sessionScope.LoginUserInfo.empNum}';
			
			var params = {
				  service           : 'car.booth'
				, method            : 'deleteOvenTimeInspInfo'
				, userEmp       	: '${sessionScope.LoginUserInfo.empNum}'
				, seqOvenTime      	: seqOvenTime
			};
			
			console.log("***** saveBoothTempHumidInfo - PARAM");
			console.log(params);

			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	
	
	//------------------------------------
	//나모 CrossEditor 첨부파일 저장
	//------------------------------------
	//issue : firefox will fire the event even if it is the same file
	//issue : IE 9 does not support file api
	//------------------------------------
	var carProdHistInfoRegPopupFileSaveHandler = {
		attachFileHandler: {
			attachment: {
				$htmlTemplateContainer: null,
				htmlTemplate: null,
				files: {}
			},
			selected: function(e) {
				// ------------------------------------
				// 파일 선택 이벤트 핸들러
				// ------------------------------------
				// Chrome, FireFox, Safari 5.1.7+, IE 10+
				// ------------------------------------
				var files = this.files || null;
				
				if (files != null) {
					// ------------------------------------
					// data.attachment.htmlTemplate	: 첨부파일 HTML 엘리먼트 추가 Handlebars 템플릿
					// data.attachment.files		: 첨부파일 목록
					// ------------------------------------
					var data = e.data || {}, attachment = data.attachment || {}, $el = $(this);
					
					if (typeof attachment.files !== 'undefined') {
						var htmlTemplate = attachment.htmlTemplate || null;
						
						if (htmlTemplate != null) {
							var file = null, isExistFilename = false, itemId = null;
							var items = [];
	
							for (var i = 0, count = files.length; i < count; i++) {
								file = files[i] || null;
								
								if (file != null) {
									// ------------------------------------
									// 파일명 기준으로 첨부 파일 중복 여부 판단 (중복 시 추가 안함)
									// ------------------------------------
									isExistFilename = false;
									
									$.each(attachment.files, function(key, _file) {
										if (_file.name === file.name) {
											// ------------------------------------
											// 파일명 중복 발생
											// ------------------------------------
											isExistFilename = true;
											return false;
										}
									});
									
									if (!isExistFilename) {
										// ------------------------------------
										// 첨부 파일 추가
										// ------------------------------------
										itemId = app.utils.createUniqueIdByTimestamp();
	
										attachment.files[itemId] = file;
										
										items.push({uploadCompleted: 'N', itemId: itemId, name: file.name, type: file.type, size: file.size, displaySize: convFileSize(file.size) });
									}
								}
							}
	
							// ------------------------------------
							// 첨부파일 HTML 엘리먼트 추가
							// ------------------------------------
							var $htmlTemplateContainer = attachment.$htmlTemplateContainer || null;
							
							if (($htmlTemplateContainer != null) && ($htmlTemplateContainer.length)) {
								$htmlTemplateContainer.append(htmlTemplate({items: items}));	
							}else
							{
								console.log('------------------------------------');
								console.log('[error] $htmlTemplateContainer object does not exist');
								console.log('------------------------------------');
							}
						}else
						{
							console.log('------------------------------------');
							console.log('[error] Handlebars precompiled template does not exist');
							console.log('------------------------------------');
						}
					}
	
					// ------------------------------------
					// INPUT 엘리먼트 초기화 수행
					// ------------------------------------
					// 파일 삭제후 동일 파일 선택시 change 이벤트 발생 안함
					// ------------------------------------
					$el.replaceWith($el.clone(true));
				}else
				{
					// ------------------------------------
					// OLD Browser or IE9 Lower 
					// ------------------------------------
					console.log('------------------------------------');
					console.log('You are browser does not support file api');
					console.log('------------------------------------');
				}
			},
			remove: function(e) {
				// ------------------------------------
				// 파일 삭제 클릭
				// ------------------------------------
				var data = e.data || {}, classTarget = data.classTarget || null;
				
				if (classTarget != null) {
					var $el = $(this).closest(classTarget);
	
					if ($el.length) {
						var isUploadCompleted = $el.attr('data-upload-completed') || 'Y', itemId = $el.attr('data-item-id') || null;
	
						if ((isUploadCompleted === 'N') && (itemId != null)) {
							// ------------------------------------
							// 업로드전 첨부 파일 삭제
							// ------------------------------------
							var attachment = data.attachment || {}
							
							if (typeof attachment.files !== 'undefined') {
								delete attachment.files[itemId];
								$el.remove();
							}
						}else
						{
							// ------------------------------------
							// 업로드된 첨부 파일 삭제
							// ------------------------------------
							var seqFile = $el.attr('data-seq-file') || null;
							
							console.log("업로드된 첨부 파일 삭제 seqFile ######################### "+ seqFile);
							
							if (seqFile != null) {
								var removeFileHandler = data.removeFileHandler || null;
								
								if (removeFileHandler != null) {
									if (typeof removeFileHandler.request === 'function') {
										// ------------------------------------
										// 첨부파일 삭제 요청
										// ------------------------------------
										removeFileHandler.request($el, seqFile);
									}
								}
							}else
							{
								console.log('------------------------------------');
								console.log('[error] missing data-seq-file attributes');
								console.log('------------------------------------');
							}
						}
					}
				}else
				{
					console.log('------------------------------------');
					console.log('[error] missing classTarget property');
					console.log('------------------------------------');
				}
			},
			click: function(e) {
				// ------------------------------------
				// 파일 추가 버튼 클릭
				// ------------------------------------
				var data = e.data || {}, selectorTarget = data.selectorTarget || null;
	
				if (selectorTarget != null) {
					$(selectorTarget).trigger('click');
				}else
				{
					console.log('------------------------------------');
					console.log('[error] missing selectorTarget property');
					console.log('------------------------------------');
				}
			},
			setItems: function(data) {
				// ------------------------------------
				// 조치내역 HTML 엘리먼트 생성
				// ------------------------------------
				// data					: [{}]
				// data.fileNm			: "국토교통부.PNG"
				// data.filePath		: "D:/TQMS.PROJECT/workspace/TQMS/www/attachment/8d/201703/"
				// data.fileSize		: 637161
				// data.fileType		: "PNG"
				// data.inputDateTime	: "Mar 17, 2017 1:36:03 PM"
				// data.inputEmp		: "20301007"
				// data.inputEmpNm		: "유제명"
				// data.mngNo			: "8D-1703-1"
				// data.seq				: 261
				// data.seqFile			: 474
				// data.stepId			: "D0ACTION"
				// data.sumFileSize		: 637161
				// data.transFile		: "1489725364000000.PNG"
				// data.webOfficeConvYn	: "N"
				// data.webOfficePath	: null
				// ------------------------------------
				data = data || [];
				
				var items = [];
				var sumFileSize = 0;
				
				for (var i = 0, count = data.length; i < count; i++) {
					items.push({
						uploadCompleted: 'Y',
						itemId: app.utils.createUniqueIdByTimestamp(),
						name: data[i].originFile || '',
						size: data[i].fileSize,
						displaySize: convFileSize(data[i].fileSize),
						//seqFile: data[i].seqCarAttachFile,
						seqFile: data[i].seqFile,
						//docNo: data[i].docNo,
						filePath: data[i].filePath,
						transFilename: data[i].transFile,
						isConvertCompleted: data[i].webOfficeConvYn,
						webOfficePath: data[i].webOfficePath,
						webOfficeName: data[i].webOfficeName
					});
					
					sumFileSize += parseInt(data[i].fileSize);
				}
				
				$('#js-car-oven-temp-info-reg-popup-sum-file-size').html('<spring:message code="TODO.KEY" text="첨부파일크기 : "/>' + convFileSize(sumFileSize));
				
				this.attachment.$htmlTemplateContainer.empty().append(this.attachment.htmlTemplate({items: items}));
				
				if(items.length > 0 && !$("#js-car-oven-temp-info-reg-popup-fold-button").hasClass("on")){
					$("#js-car-oven-temp-info-reg-popup-fold-button").click();
				};
				
			},
			show: function(e) {
				// ------------------------------------
				// 변환된 HTML 문서 오픈
				// ------------------------------------
				var $el = $(this);
				var isConvertCompleted = $el.attr('data-is-convert-completed') || null;
				
				if (isConvertCompleted != null) {
					if (isConvertCompleted === 'Y') {
						var officeFilepath = $el.attr('data-web-office-path') || null;
						var officeFilename = $el.attr('data-web-office-name') || null;
						
						if ((officeFilepath != null) && (officeFilename != null)) {
							var openUrl = '/viewer/doc.html?fn=' + officeFilename + '&rs=' + officeFilepath;
							
							window.open(openUrl);
						}
					}else
					{
						// ------------------------------------
						// HTML 문서 변환 필요
						// ------------------------------------
						var transFilename = $el.attr('data-trans-file-name') || null;
						var filepath = $el.attr('data-file-path') || null;
						var seqFile = $el.attr('data-seq-file') || null;
						
						if ((transFilename != null) && (filepath != null) && (seqFile != null)) {
							var data = e.data || {};
							var showFileHandler = data.showFileHandler || null;
							var params = {
								transFilename: transFilename,
								filepath: filepath,
								seqFile: seqFile
							};
							
							if (showFileHandler != null) {
								if (typeof showFileHandler.request === 'function') {
									// ------------------------------------
									// HTML 문서 변환 요청
									// ------------------------------------
									showFileHandler.request($el, params);
								}
							}
						}
					}
				}
			}
		},
		showFileHandler: {
			success: function($el) {
				return function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '', rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
	
						if (message === 'OK') {
							if ((typeof $el !== 'undefined') && ($el.length)) {
								var rs = response.rs || '';
								var success = rs.success || 'false';
								
								if (success === 'true') {
									var officeFilepath = rs.url || null;
									var officeFilename = rs.name || null;
									
									if ((officeFilepath != null) && (officeFilename != null)) {
										$el.attr('data-is-convert-completed', 'Y').attr('data-web-office-path', officeFilepath).attr('data-web-office-name', officeFilename);
										
										var openUrl = '/viewer/doc.html?fn=' + officeFilename + '&rs=' + officeFilepath;
										
										window.open(openUrl);
									}
								}
							}
						}else
						{
							// ------------------------------------
							// 서비스 요청 처리 오류 발생 메시지
							// ------------------------------------
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="에러"/>'
								, message           : message
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
	
							// ------------------------------------
							// 서비스 요청 처리 Exception 메시지
							// ------------------------------------
							console.log(response.error || '');
						}
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
			request: function($el, requestParams) {
				// ------------------------------------
				// HTML 문서 변환 요청
				// ------------------------------------
				var params = {
					service: 'ship.common',
					method: 'convertFileToHtml',
					transFilename: requestParams.transFilename,
					filepath: requestParams.filepath,
					seqFile: requestParams.seqFile
				};
	
				app.mask.pageLock();
				
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success($el));
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		},
		downloadHandler: {
			request: function(){
				
				var $el = $(this);
				
				var filePath, originFileName, transFileName;
				
				filePath = $el.attr('data-file-path') || '';
				transFileName = $el.attr('data-trans-file-name') || '';
				originFileName = $el.attr('data-origin-file-name') || '';
				
				var downloadParams = {
						service: 'ship.common',
						method: 'download',
						filePath : filePath,
						transFileName : transFileName,
						originFileName : originFileName
				};
				
				app.file.download('/download.ajax', downloadParams);
	
			}
		},
		removeFileHandler: {
			success: function($el) {
				return function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '', rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
	
						if (message === 'OK') {
							if ((typeof $el !== 'undefined') && ($el.length)) {
								$el.remove();
							}
						}else
						{
							// ------------------------------------
							// 서비스 요청 처리 오류 발생 메시지
							// ------------------------------------
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="에러"/>'
								, message           : message
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
	
							// ------------------------------------
							// 서비스 요청 처리 Exception 메시지
							// ------------------------------------
							console.log(response.error || '');
						}
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
			request: function($el, seqFile) {
				// ------------------------------------
				// 첨부파일 삭제 요청
				// ------------------------------------
				var params = {
					service: 'car.booth',
					method: 'deleteFileInfo',
					seqFile: seqFile
				};
	
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success($el));
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		},
		saveHandler: {
			success: function(attachment) {
				return function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '', rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
	
						if (message === 'OK') {
							// ------------------------------------
							// 첨부파일 업로드 요청 처리 JSON 응답 구조
							// ------------------------------------
							// attachments.transFilename	: 파일명 (1483926904000002.jpg)
							// attachments.saveFilepath		: 저장 경로 (D:/KCCFC/edps/201701/)
							// attachments.seqFile			: 파일 시퀀스 (263)
							// attachments.originFilename	: 원본 파일명 (01.jpg)
							// attachments.success			: 첨부파일 업로드 성공 여부 (true: 성공, false: 실패)
							// ------------------------------------
							var rs = response.rs || {}, attachments = rs.attachments || [], isPartialError = false;
							
							for (var i = 0, count = attachments.length; i < count; i++) {
								if (attachments[i].success === 'true') {
									// ------------------------------------
									// 첨부파일 업로드 성공
									// ------------------------------------
									$.each(attachment.files, function(key, file) {
										if (file.name === attachments[i].originFilename) {
											// ------------------------------------
											// 파일 업로드 여부 데이터 속성 변경 (data-upload-completed)
											// 업로드 파일 시퀀스 속성 추가 (data-seq-file)
											// ------------------------------------
											attachment.$htmlTemplateContainer.find('[data-item-id="' + key + '"]').attr('data-upload-completed', 'Y').attr('data-seq-file', attachments[i].seqFile || '');
	
											return false;
										}
									});
								}else
								{
									// ------------------------------------
									// 첨부파일 업로드 실패
									// ------------------------------------
									if (!isPartialError) {
										isPartialError = true;	
									}
								}
							}
							
							// ------------------------------------
							// 업로드 요청 첨부파일 초기화
							// ------------------------------------
							$.each(attachment.files, function(key, file) {
								delete attachment.files[key];
							});
							
							// ------------------------------------
							// 첨부파일 업로드 부분 실패 발생 메시지 처리
							// ------------------------------------
							if (isPartialError) {
								console.log(attachments);
							} else {
								app.message.alert({
									  title             : '<spring:message code="TODO.KEY" text="알림"/>'
									, message           : '<spring:message code="TODO.KEY" text="저장 되었습니다."/>'
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
									, callback          : {
										confirm: function() {
											// 생산 특이 사항 정보 리스트 재조회
											retrieveCarOvenTempInfoAll();												
											$("#js-car-oven-temp-inoutlet-reg-popup-close-button").click();
										}
									}
								});
							}
						}else
						{
							// ------------------------------------
							// 서비스 요청 처리 오류 발생 메시지
							// ------------------------------------
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="에러"/>'
								, message           : message
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
	
							// ------------------------------------
							// 서비스 요청 처리 Exception 메시지
							// ------------------------------------
							console.log(response.error || '');
						}
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
			request: function(formData, attachment) {
				// ------------------------------------
				// 저장 요청
				// ------------------------------------
				if ((typeof formData !== 'undefined') && (typeof attachment !== 'undefined')) {
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: formData, dataType: 'json', mimeType: 'multipart/form-data', cache: false, contentType: false, processData:false});
					ajax.done(this.success(attachment));
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			}
		},
		save: function(params) {
			
			// ------------------------------------
			// 저장 버튼 클릭 이벤트 핸들러
			// ------------------------------------
			if (typeof window.FormData !== 'undefined') {
				// ------------------------------------
				// Chrome, FireFox, Safari 5.1.7+, IE 10+
				// ------------------------------------
				var formData = new FormData();
				var appUtils = app.utils;
	
				// ------------------------------------
				// 첨부파일(업로드) 추가
				// ------------------------------------
				var attachment = this.attachFileHandler.attachment;
				
				for (var key in attachment.files) {				
					if (attachment.files[key] !== 'undefined') {
						formData.append('attacheFile', attachment.files[key]);
					}
				}
				
				// ------------------------------------
				// ajax request
				// ------------------------------------
				// ------------------------------------
				// 파라미터
				// ------------------------------------
				formData.append('service'       , 'car.booth'         		);
				formData.append('method'        , 'saveOvenTimeInspInfo'  	);
				formData.append('carPlant'      , params.carPlant         	);       // 공장           
				formData.append('emp'        	, params.emp          		);       // 사번    
				formData.append('procId'       	, params.procId         	);       //       
				formData.append('ovenNo'       	, params.ovenNo         	);       //       
				formData.append('inspDate'      , params.inspDate          	);       //         
				formData.append('inspTime'		, params.inspTime  			);       //      
				formData.append('specId1'		, params.specId1  			);       //      
				formData.append('specId2'      	, params.specId2        	);       //           
				formData.append('specId3'		, params.specId3  			);       //           
				formData.append('specId1Value'  , params.specId1Value       );       //	 
				formData.append('specId2Value'  , params.specId2Value       );       //     
				formData.append('specId3Value'  , params.specId3Value       );       // 
				formData.append('remark'      	, params.remark        		);       //     
				formData.append('seqOvenTime'   , params.seqOvenTime        );       // 
				
				// ------------------------------------
				// 저장 요청
				// ------------------------------------
				this.saveHandler.request(formData, this.attachFileHandler.attachment);
				
			}else
			{
				// ------------------------------------
				// OLD Browser or IE9 Lower 
				// ------------------------------------
				console.log('------------------------------------');
				console.log('You are browser does not support FormData');
				console.log('------------------------------------');
			}
		},
		init: function() {
			// ------------------------------------
			// 파일 추가 이벤트 바인딩
			// ------------------------------------
			console.log('---------------------------------------------');
			console.log(this);
			console.log('---------------------------------------------');
			$('#js-car-oven-temp-info-reg-popup-attach-file-target').off().on('change', {attachment: this.attachFileHandler.attachment}, this.attachFileHandler.selected);
			$('#js-car-oven-temp-info-reg-popup-attach-file').off().on('click', {selectorTarget: '#js-car-oven-temp-info-reg-popup-attach-file-target'}, this.attachFileHandler.click);
			
			// ------------------------------------
			// 파일 삭제 이벤트 바인딩
			// ------------------------------------
			$('#js-car-oven-temp-info-reg-popup-attach-file-template-container').off().on('click', '.js-car-oven-temp-info-reg-popup-attach-file-remove', {classTarget: '.js-car-oven-temp-info-reg-popup-attach-file-item', attachment: this.attachFileHandler.attachment, removeFileHandler: this.removeFileHandler}, this.attachFileHandler.remove);
			
			// ------------------------------------
			// 파일 보기 이벤트 바인딩
			// ------------------------------------
			$('#js-car-oven-temp-info-reg-popup-attach-file-template-container').on('click', '.js-car-oven-temp-info-reg-popup-attach-file-show', {showFileHandler: this.showFileHandler}, this.attachFileHandler.show);
			
			// ------------------------------------
			// 파일 보기 이벤트 바인딩
			// ------------------------------------
			$('#js-car-oven-temp-info-reg-popup-attach-file-template-container').on('click', '.js-car-oven-temp-info-reg-popup-attach-file-download', this.downloadHandler.request);
			
			// ------------------------------------
			// Handlebars 템플릿 초기화
			// ------------------------------------
			
			try {
				var $source = $('#js-car-oven-temp-info-reg-popup-attach-file-template');
				
				if ($source.length) {
					this.attachFileHandler.attachment.$htmlTemplateContainer = $('#js-car-oven-temp-info-reg-popup-attach-file-template-container');
					this.attachFileHandler.attachment.htmlTemplate = Handlebars.compile($source.html());
					
				}else
				{
					console.log('------------------------------------');
					console.log('[error] $source object does not exist');
					console.log('------------------------------------');
				}
			}catch (error)
			{
				console.log('------------------------------------');
				console.log(error);
				console.log('------------------------------------');
			}
	
	
		}
	};
	
	
	</script>
	<!-- Mixing Tank 오븐 온도 삭제 - 스크립트 [END] -->
	
	
	<script type="text/x-handlebars-template" id="js-car-oven-temp-info-reg-popup-attach-file-template">
		{{#if items.length}}
			{{#each items}}
				<tr class="js-car-oven-temp-info-reg-popup-attach-file-item" data-item-id="{{itemId}}" data-upload-completed="{{uploadCompleted}}" data-seq-file="{{seqFile}}" >
					<td class="wp-al">{{name}}</td>
					<td>{{displaySize}}</td>
					<td><button type="button" class="wp-btn small darkgray cr3 js-car-oven-temp-info-reg-popup-attach-file-remove"><spring:message code="TODO.KEY" text="삭제" /></button></td>
				</tr>
			{{/each}}
		{{/if}}
	</script>
	
	
	<script type="text/javascript">
	// ------------------------------------
	// 특수문자 제거(return string)
	// ------------------------------------
	var regExp = function(str){
		
		var reg = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi
		
		//특수문자 검증
		if(reg.test(str)){
		    //특수문자 제거후 리턴
		    return str.replace(reg, "");
		} else {
		    //특수문자가 없으므로 본래 문자 리턴
		   	return str;
		}
	}
	
	
	// ------------------------------------
	// DB 데이터 문제로 인해 임시로 처리
	// ------------------------------------
	var comboData = function(val){
		
		if(val == 'SP007')
			return val = 'SP001';
		else
			return val;
		
	}
	
	
	// ------------------------------------
	// cursor 처리
	// ------------------------------------
	var dataCursor = function(date){
		
		if(app.utils.isEmpty(date)){
			return "default";
		} else {
			return "pointer";
		}
		
	}
	</script>
	
	
	</tiles:putAttribute>
	<!-- 팝업 콘텐츠 E -->
</tiles:insertDefinition>