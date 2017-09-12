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
					<li><a href="/car/inspection/carHabTempInfo.do" class="active"><spring:message code="TODO.KEY" text="HAB Zone 정보" /></a></li>
					<li><a href="/car/inspection/carOvenTempInfo.do"><spring:message code="TODO.KEY" text="오븐 온도 정보" /></a></li>
					<li><a href="/car/inspection/carUfInfo.do"><spring:message code="TODO.KEY" text="UF 정보" /></a></li>
				</ul>
				<!-- //tab -->
				
				<!-- content box -->
				<div class="wp-table-width wp-mt13">	
					
					<!-- 상단 버튼 -->
					<div class="wp-title-section wp-no-line">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="일자별 현황" /></h2>
						<div class="wp-btn-area">
							<input type="text" name="js-car-hab-temp-info-start-date" id="js-car-hab-temp-info-start-date" title="내용입력" class="wp-inp-datepicker" placeholder="<spring:message code="TODO.KEY" text="날짜입력" />"> ~ <input type="text" name="js-car-hab-temp-info-end-date" id="js-car-hab-temp-info-end-date" title="내용입력" class="wp-inp-datepicker" placeholder="<spring:message code="TODO.KEY" text="날짜입력" />"><button type="button" id="js-car-hab-temp-info-retrieve-button" class="wp-btn cr3 darkgray small wp-ml5"><spring:message code="TODO.KEY" text="검색" /></button>
							<button type="button" class="wp-btn small skyblue cr3 upload-white wp-ml10" id="js-car-hab-temp-info-spec-reg-button" data-link="js-car-hab-temp-spec-reg-popup" data-depth="1"><spring:message code="TODO.KEY" text="Spec. 등록" /></button>
							<%-- <button type="button" class="wp-btn small grayblue cr3" id="js-car-hab-temp-info-excel-download-button"><spring:message code="TODO.KEY" text="엑셀 다운로드" /></button> --%>
							<button type="button" class="wp-btn small white bgray prev wp-ml10" name="js-car-hab-temp-info-paging-button"><span><spring:message code="TODO.KEY" text="이전" /></span></button>
							<div class="wp-btn-paging"><span class="wp-ship-fc-blue" id="js-car-hab-temp-info-page-current">1</span> / <span id="js-car-hab-temp-info-page-total">1</span></div>
							<button type="button" class="wp-btn small white bgray next" name="js-car-hab-temp-info-paging-button"><span><spring:message code="TODO.KEY" text="다음" /></span></button>
						</div>
					</div>
	
					<!-- table -->
					<div class="wp-table-st1 wp-temphum wp-vertical-line">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:6%">
								<col style="width:6%">
								<col style="width:6%">
								<col style="width:6%">
								<col style="width:6%">
								<col style="width:6%">
								<col style="width:6%">
								<col style="width:6%">
								<col style="width:6%">
								<col style="width:6%">
								<col style="width:6%">
								<col style="width:6%">
								<col style="width:6%">
								<col style="width:6%">
								<col style="width:6%">
								<col style="width:6%">
							</colgroup>
							<thead>
								<tr id="js-car-hab-temp-info-booth-insp-info-date-list">
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="P/H"/></th>
									<th><spring:message code="TODO.KEY" text="HAB"/></th>
									<th><spring:message code="TODO.KEY" text="C/Z"/></th>
									<th><spring:message code="TODO.KEY" text="풍속"/></th>
									<th><spring:message code="TODO.KEY" text="P/H"/></th>
									<th><spring:message code="TODO.KEY" text="HAB"/></th>
									<th><spring:message code="TODO.KEY" text="C/Z"/></th>
									<th><spring:message code="TODO.KEY" text="풍속"/></th>
									<th><spring:message code="TODO.KEY" text="P/H"/></th>
									<th><spring:message code="TODO.KEY" text="HAB"/></th>
									<th><spring:message code="TODO.KEY" text="C/Z"/></th>
									<th><spring:message code="TODO.KEY" text="풍속"/></th>
									<th><spring:message code="TODO.KEY" text="P/H"/></th>
									<th><spring:message code="TODO.KEY" text="HAB"/></th>
									<th><spring:message code="TODO.KEY" text="C/Z"/></th>
									<th><spring:message code="TODO.KEY" text="풍속"/></th>
								</tr>
							</thead>
							<tbody id="js-car-hab-temp-info-booth-insp-info-temp-humid-row-list">
							</tbody>
						</table>
					</div>
					<!-- //table -->
					<div class="wp-title-section wp-no-line wp-mt20">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="일자별 상세" /><span id="js-car-hab-temp-info-booth-insp-info-detail-date-text" class="wp-fc-blue2 wp-ml10"></span></h2>
						<div class="wp-btn-area">
							<button type="button" class="wp-btn small white bgray write" id="js-car-hab-temp-info-reg-popup-button" data-link="js-car-hab-temp-info-reg-popup" data-depth="1"><span><spring:message code="TODO.KEY" text="등록" /></span></button>
						</div>
					</div>
					<!-- table -->
					<div class="wp-table-st1 wp-temphum">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:11%">
								<col style="width:11%">
								<col style="width:11%">
								<col style="width:11%">
								<col style="width:13%">
								<col style="width:11%">
								<col style="width:auto">
								<col style="width:10%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="Booth"/></th>
									<th><spring:message code="TODO.KEY" text="측정일시"/></th>
									<th><spring:message code="TODO.KEY" text="Pre Heating (℃)"/></th>
									<th><spring:message code="TODO.KEY" text="HAB (℃)"/></th>
									<th><spring:message code="TODO.KEY" text="Cooling Zone(℃)"/></th>
									<th><spring:message code="TODO.KEY" text="풍속 (Hz)"/></th>
									<th><spring:message code="TODO.KEY" text="비고"/></th>
									<th><spring:message code="TODO.KEY" text="수정 / 삭제" /></th>
								</tr>
							</thead>
							<tbody id="js-car-hab-temp-info-booth-daily-insp-info-temp-humid-list">
							</tbody>
						</table>
					</div>
					<!-- //table -->
				</div>
				<!-- // content box -->
				
				<!-- content box -->
				<div class="wp-table-width wp-mt13">	
					
					<div class="wp-title-section wp-no-line">
						<h2 class="wp-section-title">기간별 조회</h2>
						<div class="wp-btn-area">
							<em class="wp-tit">부스 No.</em>
							<div class="wp-ui-select wp-wd130">
								<select title="항목 개수 설정" id="js-car-hab-temp-info-booth-combo">
								</select>
							</div>
							<em class="wp-tit wp-ml10"><spring:message code="TODO.KEY" text="기준일자" /></em>
							<input type="text" name="" id="js-car-hab-temp-info-graph-date" title="내용입력" class="wp-inp-datepicker" placeholder="날짜입력">
							<button type="button" class="wp-btn darkgray small cr3" id="js-car-hab-temp-info-graph-retrieve-button"><spring:message code="TODO.KEY" text="검색" /></button>
						</div>
					</div>
					
					<div class="wp-fr wp-vt wp-blue-comment wp-inblock"><spring:message code="TODO.KEY" text="기준일자 이전 최대 15개의 정보가 차트에 표시됩니다." /></div>
					
					<div class="wp-fc-red bold" id="js-car-hab-temp-info-graph-area"></div>
					
				</div>
				<!-- // content box -->
				
				<!-- content box -->
				<div class="wp-table-width wp-mt13">	
				
					<!-- 날씨  -->
					<h2 class="wp-section-title wp-mt10">Weather Forecast</h2>
					
					<!-- 동네예보 -->
					<div id="js-car-hab-temp-info-forecast-info"></div>
					<!-- //동네예보 -->
					
					<!-- 주간예보 -->
					<div id="js-car-hab-temp-info-week-weather-info"></div>
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
		<script id="js-template-car-hab-temp-info-forecast-info" type="text/x-handlebars-template">
			<h3 class="wp-sub-title"><spring:message code="TODO.KEY" text="동네예보" />
				<div class="wp-fr wp-vt wp-blue-comment wp-inblock">{{rows.dispOccurDate}} {{rows.dispOccurTime}} <spring:message code="TODO.KEY" text="발표"/></div>
			</h3>
			<table class="wp-table-st1 h-center wp-temperature wp-vertical-line">
				<caption><spring:message code="TODO.KEY" text="동네예보" /></caption>
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
		<script id="js-template-car-hab-temp-info-week-weather-info" type="text/x-handlebars-template">
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
		
		<!-- 부스별 온습도 - 날짜 리스트 - 스크립트 -->
		<script id="js-template-car-hab-temp-info-booth-insp-info-date-list" type="text/x-handlebars-template">
			{{#rows}}
				{{#if @first}}
					<th rowspan="2"><spring:message code="TODO.KEY" text="부스"/></th>
				{{/if}}
					<th colspan="4">{{inspDatetime}}</th>
			{{/rows}}
		</script>

		<!-- 부스별 온습도 부스별 row - 스크립트 -->
		<script id="js-template-car-hab-temp-info-booth-insp-info-temp-humid-row-list" type="text/x-handlebars-template">
			{{#rows}}
				<tr id="js-car-hab-temp-info-booth-insp-info-temp-humid-row-list-{{boothCode}}">
				</tr>
			{{/rows}}
		</script>
		
		<!-- 부스별 온습도 데이터 - 스크립트 -->
		<script id="js-template-car-hab-temp-info-booth-insp-info-temp-humid-list" type="text/x-handlebars-template">
			{{#rows}}
				{{#if @first}}
					<th>{{boothNm}}</th>
				{{/if}}
					<td name="js-car-hab-temp-info-booth-insp-info-temp-humid-td" inspDatetime="{{inspDatetime}}" style="cursor:{{setCursor inspDatetime}};"><span class="wp-temphum-icon {{setPhSpecOut phSpecOut}}">{{phTemp}}</span></td>
					<td name="js-car-hab-temp-info-booth-insp-info-temp-humid-td" inspDatetime="{{inspDatetime}}" style="cursor:{{setCursor inspDatetime}};"><span class="wp-temphum-icon {{setHabSpecOut habSpecOut}}">{{habTemp}}</span></td>
					<td name="js-car-hab-temp-info-booth-insp-info-temp-humid-td" inspDatetime="{{inspDatetime}}" style="cursor:{{setCursor inspDatetime}};"><span class="wp-temphum-icon {{setCoolSpecOut coolSpecOut}}">{{coolTemp}}</span></td>
					<td name="js-car-hab-temp-info-booth-insp-info-temp-humid-td" inspDatetime="{{inspDatetime}}" style="cursor:{{setCursor inspDatetime}};">
						<span class="wp-temphum-icon {{setWindSpecOut windSpecOut}}">{{windSpeed}}</span>
						<input type="hidden" id="js-car-hab-temp-info-booth-insp-info-daily-date">
					</td>
			{{/rows}}
		</script>
			
		<!-- 일자별 온습도 리스트 - 스크립트 -->
		<script id="js-template-car-hab-temp-info-booth-daily-insp-info-temp-humid-list" type="text/x-handlebars-template">
			{{#rows}}
				<tr>
					<td>{{boothNm}}</td>
					<td>{{inspDatetime}}</td>
					<td><span class="wp-temphum-icon wp-ac {{setPhSpecOut phSpecOut}}">{{phTemp}}</span></td>
					<td><span class="wp-temphum-icon wp-ac {{setHabSpecOut habSpecOut}}">{{habTemp}}</span></td>
					<td><span class="wp-temphum-icon wp-ac {{setCoolSpecOut coolSpecOut}}">{{coolTemp}}</span></td>
					<td><span class="wp-temphum-icon wp-ac {{setWindSpecOut windSpecOut}}">{{windSpeed}}</span></td>
					<td class="wp-al">{{remark}}</td>
					<td>
						<button type="button" class="wp-btn small white bgray mody" name="js-car-booth-temp-humid-info-daily-info-modify-button" data-index="{{@index}}" data-link="js-car-hab-temp-info-reg-popup" data-depth="1"><span>수정</span></button>
						<button type="button" class="wp-btn small white bgray trash-gray" name="js-car-booth-temp-humid-info-daily-info-delete-button" data-index="{{@index}}"><span>삭제</span></button>
					</td>
					<input type="hidden" id="js-car-booth-temp-humid-info-daily-info-boothid-{{@index}}" value="{{boothId}}" >
					<input type="hidden" id="js-car-booth-temp-humid-info-daily-info-date-{{@index}}"    value="{{inspDate}}" >
					<input type="hidden" id="js-car-booth-temp-humid-info-daily-info-time-{{@index}}"    value="{{inspDatetime}}" >
					<input type="hidden" id="js-car-booth-temp-humid-info-daily-info-ph-temp-{{@index}}"    value="{{phTemp}}" >
					<input type="hidden" id="js-car-booth-temp-humid-info-daily-info-hab-temp-{{@index}}"   value="{{habTemp}}" >
					<input type="hidden" id="js-car-booth-temp-humid-info-daily-info-cool-temp-{{@index}}"   value="{{coolTemp}}" >
					<input type="hidden" id="js-car-booth-temp-humid-info-daily-info-wind-temp-{{@index}}"   value="{{windSpeed}}" >
					<input type="hidden" id="js-car-booth-temp-humid-info-daily-info-remark-{{@index}}"  value="{{remark}}" >
					<input type="hidden" id="js-car-booth-temp-humid-info-daily-info-seqHabStatus-{{@index}}"  value="{{seqHabStatus}}" >
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
			
			var carHabTempInfoForecastInfoTemplate;
			var carHabTempInfoWeekWeatherInfoTemplate;
			var carHabTempInfoBoothInspInfoDateListTemplate;
			var carHabTempInfoBoothInspInfoTempHumidListTemplate;
			var carHabTempInfoBoothInspInfoTempHumidRowListTemplate;
			var carHabTempInfoBoothDailyInspInfoTempHumidListTemplate;
			
			$(document).ready(function() {
				
				// Handlebar 초기화
				initCarHabTempInfoHandlebarsTemplate();
				
				// HAB Zone - [검색] 버튼 클릭
				$('#js-car-hab-temp-info-retrieve-button').off().on('click', function() {
					$("#js-car-hab-temp-info-page-current").text("1");
					$("#js-car-hab-temp-info-booth-insp-info-daily-date").val("");
					$("#js-car-hab-temp-info-booth-daily-insp-info-temp-humid-list").empty();
					
					// HAB Zone 정보 조회
					$("#js-car-hab-temp-info-page-current").text("1");
					retrieveHabInspInfo.request();
				});
				
				// HAB Zone 정보 그래프 - [검색] 버튼 클릭
				$('#js-car-hab-temp-info-graph-retrieve-button').off().on('click', function() {
					// HAB Zone 정보 그래프 조회
					retrieveHabGraphInfo.request();
				});
				
				// 페이징 버튼 처리
				$('button[name=js-car-hab-temp-info-paging-button]').off().on('click', function(){
					
					var currPage  = Number($("#js-car-hab-temp-info-page-current").text());
					var totalPage = Number($("#js-car-hab-temp-info-page-total").text());
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
					$("#js-car-hab-temp-info-page-current").text(paramPage);
					
					// HAB Zone 정보 조회
					retrieveHabInspInfo.request();
			    });
				
				// [Spec. 등록] 버튼 클릭
				$("#js-car-hab-temp-info-spec-reg-button").off().on('click', function() {
					fn_openPop($(this));
					initCarHabTempSpecRegPopup();
				});
				
				// [등록] 버튼 클릭
				$("#js-car-hab-temp-info-reg-popup-button").off().on('click', function() {
					fn_openPop($(this));
					initCarHabTempInfoRegPopup();
				});
			});
			
			// ------------------------------------------------
			// 전체조회
			// ------------------------------------------------
			var retrieveCarHabTempInfoAll = function(){

				// 검색조건 날짜 세팅 - 현재 년월
				var date = app.utils.formatDate(new Date(), "YYYYMMDD");
				$("#js-car-hab-temp-info-start-date").val(fn_getBeforeDate(date, 0, 1));		// 1개월전
				$("#js-car-hab-temp-info-end-date, #js-car-hab-temp-info-graph-date").val(date);
				$("#js-car-hab-temp-info-start-date, #js-car-hab-temp-info-end-date, #js-car-hab-temp-info-graph-date").mask('9999-99-99');
				
				// 부스리스트 조회
				retrieveOvenInfo.request();
				
				// HAB Zone 정보 조회
				$("#js-car-hab-temp-info-page-current").text("1");
				retrieveHabInspInfo.request();

				// 동네예보 조회
				retrieveForeCastInfo.request();
				
				// 주간예보 조회
				retrieveWeekWeatherInfo.request();
				
			};
			
			// ------------------------------------------------
			// Handlebar 초기화
			// ------------------------------------------------
			var initCarHabTempInfoHandlebarsTemplate = function() {
				
				// 동네예보
				var source = $('#js-template-car-hab-temp-info-forecast-info').html();
				carHabTempInfoForecastInfoTemplate = Handlebars.compile(source);
				
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
				source = $('#js-template-car-hab-temp-info-week-weather-info').html();
				carHabTempInfoWeekWeatherInfoTemplate = Handlebars.compile(source);
				
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
				
				// 부스별 온습도 날짜 리스트
				source = $('#js-template-car-hab-temp-info-booth-insp-info-date-list').html();
				carHabTempInfoBoothInspInfoDateListTemplate = Handlebars.compile(source);
				
				
				// 부스별 온습도 부스별 Row
				source = $('#js-template-car-hab-temp-info-booth-insp-info-temp-humid-row-list').html();
				carHabTempInfoBoothInspInfoTempHumidRowListTemplate = Handlebars.compile(source);
				
				// 부스별 온습도 데이터
				source = $('#js-template-car-hab-temp-info-booth-insp-info-temp-humid-list').html();
				carHabTempInfoBoothInspInfoTempHumidListTemplate = Handlebars.compile(source);
				
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
				
				// 일자별 온습도 데이터
				source = $('#js-template-car-hab-temp-info-booth-daily-insp-info-temp-humid-list').html();
				carHabTempInfoBoothDailyInspInfoTempHumidListTemplate = Handlebars.compile(source);
				
			};
			
			

			var gvCarHabTempInfoBoothRs = null;
			
			//-------------------------------------------------
			// 부스 리스트 조회
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
							$('#js-car-hab-temp-info-booth-combo').find('option').remove();
							for(var i=0; i<boothInfo.length; i++)
							{
								$('#js-car-hab-temp-info-booth-combo').append("<option value='"+boothInfo[i].boothCode+"'>"+boothInfo[i].boothNm+"</option>");
							}
							
							gvCarHabTempInfoBoothRs = boothInfo;

							// HAB Zone 정보 그래프 조회
							retrieveHabGraphInfo.request();
							
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
						, method   : 'retrieveOvenInfo'
						, carPlant : $("#js-car-header-car-plant").val()
						, procId   : "P05"
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				},
				carHabTempSpecRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								// 부스 콤보 set
								var boothInfo = response.rs;
								
								$('#js-car-hab-temp-spec-reg-popup-booth-combo').find('option').remove();
								
								for(var i=0; i < boothInfo.length; i++)
								{
									$('#js-car-hab-temp-spec-reg-popup-booth-combo').append("<option value='"+boothInfo[i].boothCode+"'>"+boothInfo[i].boothNm+"</option>");
								}
								
								// 부스 change 이벤트
								$("#js-car-hab-temp-spec-reg-popup-booth-combo").off().on('change', function(){
									var boothId = $("#js-car-hab-temp-spec-reg-popup-booth-combo").val();
									
									// Booth 선택 전 초기화
									$("[name=js-car-hab-temp-spec-reg-popup-input-data]").val("");
									
									// 부스 선택값에 의한 Spec 조회.
									retrieveHabInspSpec.request(boothId);
								});
								
								var boothId = $("#js-car-hab-temp-spec-reg-popup-booth-combo").val();
								
								// 부스 선택값에 의한 Spec 조회.
								retrieveHabInspSpec.request(boothId);
								
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
							, method   : 'retrieveOvenInfo'
							, carPlant : $("#js-car-header-car-plant").val()
							, procId   : "P05"
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carHabTempInfoRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								// 부스 콤보 set
								var boothInfo = response.rs;
								$('#js-car-hab-temp-info-reg-popup-booth-combo').find('option').remove();
								for(var i=0; i<boothInfo.length; i++)
								{
									$('#js-car-hab-temp-info-reg-popup-booth-combo').append("<option value='"+boothInfo[i].boothCode+"'>"+boothInfo[i].boothNm+"</option>");
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
							  service  : 'car.booth'
							, method   : 'retrieveOvenInfo'
							, carPlant : $("#js-car-header-car-plant").val()
							, procId   : "P05"
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
			var retrieveHabInspSpec = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
						
							var data = response.rs || {};
							
							if(data.length > 0){
								$('#js-car-hab-temp-spec-reg-popup-max-preheating-temp').val(data[0].phUsl);
								$('#js-car-hab-temp-spec-reg-popup-max-hab-temp').val(data[0].habUsl);
								$('#js-car-hab-temp-spec-reg-popup-max-coolingzone-temp').val(data[0].coolUsl);
								$('#js-car-hab-temp-spec-reg-popup-max-wind-speed').val(data[0].windUsl);
								$('#js-car-hab-temp-spec-reg-popup-min-preheating-temp').val(data[0].phLsl);
								$('#js-car-hab-temp-spec-reg-popup-min-hab-temp').val(data[0].habLsl);
								$('#js-car-hab-temp-spec-reg-popup-min-coolingzone-temp').val(data[0].coolLsl);
								$('#js-car-hab-temp-spec-reg-popup-min-wind-speed').val(data[0].windLsl);
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
				request: function(boothId) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					
					console.log('boothId **************************************** : '+ boothId);
					
					var params = {
						  service  : 'car.booth'
						, method   : 'retrieveHabInspSpec'
						, carPlant : $("#js-car-header-car-plant").val()
						, procId   : 'P05'
						, boothId  : boothId
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			//-------------------------------------------------
			// 부스별 HAB Zone 정보 그래프 조회
			//-------------------------------------------------
			var retrieveHabGraphInfo = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							setHighChart(response.rs);
							
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
						, method   : 'retrieveHabGraphInfo'
						, procId   : "P05"
						, carPlant : $("#js-car-header-car-plant").val()
						, boothId  : $("#js-car-hab-temp-info-booth-combo").val()
						, stdDate  : $("#js-car-hab-temp-info-graph-date").val().replace(/-/gi, "")
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//-------------------------------------------------
			// HAB Zone 정보 조회
			//-------------------------------------------------
			var retrieveHabInspInfo = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							$("#js-car-hab-temp-info-booth-insp-info-detail-date-text").text("");

							// 페이징
							var totalPageHab = response.rs.totalPageHab;
							if(totalPageHab.length > 0){
								var currPage  = $('#js-car-hab-temp-info-page-current').text();
								var totalPage = totalPageHab[0].totalPage;
								
								//$('#js-car-hab-temp-info-page-current').text(inspInfoHab[0].currPage);
								$('#js-car-hab-temp-info-page-total').text(totalPage);
								
								if(currPage == 1){
									$('button[name=js-car-hab-temp-info-paging-button].prev').addClass("disable");
								} else {
									$('button[name=js-car-hab-temp-info-paging-button].prev').removeClass("disable");
								}
								if(currPage == totalPage){
									$('button[name=js-car-hab-temp-info-paging-button].next').addClass("disable");
								} else {
									$('button[name=js-car-hab-temp-info-paging-button].next').removeClass("disable");
								}
							} else {
								// 페이징 버튼 활성/비활성화 처리
								$('button[name=js-car-hab-temp-info-paging-button]').addClass("disable");
							}
							
							// 부스별 데이터 수집
							var inspInfoHab = response.rs.inspInfoHab;
							var boothObjArr = [];
							var resultBoothList = [];	// 결과 부스리스트
							for(var i=0 ; i<gvCarHabTempInfoBoothRs.length ; i++){
								var boothArr = [];
								for(var j=0 ; j<inspInfoHab.length ; j++){
									if(gvCarHabTempInfoBoothRs[i].boothCode == inspInfoHab[j].boothId){
										boothArr.push(inspInfoHab[j]);
									}
								}
								if(boothArr.length > 0){
									var jsonStr = '{"' + gvCarHabTempInfoBoothRs[i].boothCode + '":' + JSON.stringify(boothArr) + '}';
									boothObjArr.push(JSON.parse(jsonStr));	// 부스별 데이터 수집
									
									// 조회된 부스리스트 set
									resultBoothList.push({
										  boothCode : gvCarHabTempInfoBoothRs[i].boothCode
										, boothNm   : gvCarHabTempInfoBoothRs[i].boothNm
									});
								}
							}
							
							// 데이터 4칸 채우기
							for(var i=0; i<resultBoothList.length; i++)
							{
								for(var j=0 ; j<boothObjArr.length ; j++){
									var obj = boothObjArr[j][resultBoothList[i].boothCode];
									if(obj != undefined){
										for(var k=0 ; k<4 ; k++){
											if(obj[k] == undefined){
												obj[k] = {
													  phSpecOut   : ""
													, phTemp      : "-"
													, habSpecOut  : ""
													, habTemp     : "-"
													, coolSpecOut : ""
													, coolTemp    : "-"
													, windSpecOut : ""
													, windSpeed   : "-"
												};
											}
										}
									}
								}
							}
							
							// 날짜 리스트 수집   
							var dateList = [];
							if(boothObjArr.length > 0 && resultBoothList.length > 0){
								var arr = boothObjArr[0][resultBoothList[0].boothCode];
								for(var j=0 ; j<4 ; j++){	// 날짜 4칸 채우기
									
									if(arr[j] == undefined){
										dateList.push("-");
									} else {
										dateList.push(arr[j].inspDatetime);
									}
								}
							}
							var dateObjList = [];
							for(var i=0 ; i<dateList.length ; i++){
								dateObjList.push({
									inspDatetime : dateList[i]
								});
							}
							var result = carHabTempInfoBoothInspInfoDateListTemplate({rows : dateObjList});
							$("#js-car-hab-temp-info-booth-insp-info-date-list").empty().append(result);
							
							// 부스별 TR  Set. 
							var result = carHabTempInfoBoothInspInfoTempHumidRowListTemplate({rows : resultBoothList});
							$("#js-car-hab-temp-info-booth-insp-info-temp-humid-row-list").empty().append(result);
							
							
							// 최종 데이터 set
							for(var i=0; i<resultBoothList.length; i++)
							{
								for(var j=0 ; j<boothObjArr.length ; j++){
									
									var result = carHabTempInfoBoothInspInfoTempHumidListTemplate({rows : boothObjArr[j][resultBoothList[i].boothCode]});
									$("#js-car-hab-temp-info-booth-insp-info-temp-humid-row-list-" + resultBoothList[i].boothCode).append(result);
								}
							}
							
							// 조회결과 테이블 클릭
							$("td[name=js-car-hab-temp-info-booth-insp-info-temp-humid-td]").off().on('click', function(){
								var inspDatetime = $(this).attr("inspDatetime");
								$("#js-car-hab-temp-info-booth-insp-info-detail-date-text").text(inspDatetime.substring(0, 10));
								
								if(app.utils.isEmpty(inspDatetime)){
									return;
								}
								var inspDate = inspDatetime.substring(0, 10);
								$("#js-car-hab-temp-info-booth-insp-info-daily-date").val(inspDate);
								
								// 클릭한 날짜로 날짜별 검사 결과
								retrieveHabDailyInspInfo.request(inspDate);
							});
							
							// 첫번째 날짜로 날짜별 검사 결과
							if(dateList.length > 0){
								$("#js-car-hab-temp-info-booth-insp-info-detail-date-text").text(dateList[0].substring(0, 10));
								var inspDate = dateList[0].substring(0, 10);
								$("#js-car-hab-temp-info-booth-insp-info-daily-date").val(inspDate);
								retrieveHabDailyInspInfo.request(inspDate);
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
						  service  : 'car.booth'
						, method   : 'retrieveHabInspInfo'
						, carPlant : $("#js-car-header-car-plant").val()
						, fromDate : $("#js-car-hab-temp-info-start-date").val().replace(/-/gi, "")
						, toDate   : $("#js-car-hab-temp-info-end-date").val().replace(/-/gi, "")
						, currPage : $("#js-car-hab-temp-info-page-current").text()
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			// ------------------------------------------------
			// HAB Zone 정보 - 일자별 검사 결과
			// ------------------------------------------------
			var retrieveHabDailyInspInfo = {
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
							
							var result = carHabTempInfoBoothDailyInspInfoTempHumidListTemplate(data);
							$("#js-car-hab-temp-info-booth-daily-insp-info-temp-humid-list").empty().append(result);
							
							// 수정 버튼 클릭
							$("button[name=js-car-booth-temp-humid-info-daily-info-modify-button]").off().on('click', function(){
								
								var index   = $(this).attr("data-index");
								
								var boothId 		= $("#js-car-booth-temp-humid-info-daily-info-boothid-" + index).val();
								var date    		= $("#js-car-booth-temp-humid-info-daily-info-date-"    + index).val();
								var time    		= $("#js-car-booth-temp-humid-info-daily-info-time-"    + index).val();
								var phTemp    		= $("#js-car-booth-temp-humid-info-daily-info-ph-temp-"    + index).val();
								var habTemp   		= $("#js-car-booth-temp-humid-info-daily-info-hab-temp-"   + index).val();
								var coolTemp   		= $("#js-car-booth-temp-humid-info-daily-info-cool-temp-"   + index).val();
								var windTemp   		= $("#js-car-booth-temp-humid-info-daily-info-wind-temp-"   + index).val();
								var remark  		= $("#js-car-booth-temp-humid-info-daily-info-remark-"  + index).val();
								var seqHabStatus  	= $("#js-car-booth-temp-humid-info-daily-info-seqHabStatus-"  + index).val();
								
								var param = {
									  boothId  			: boothId
									  , date     		: date
									  , time     		: time
									  , phTemp     		: phTemp
									  , habTemp    		: habTemp
									  , coolTemp    	: coolTemp
									  , windTemp    	: windTemp
									  , remark   		: remark
									  , seqHabStatus   	: seqHabStatus 
								};
								
								fn_openPop($(this));
								initCarHabTempInfoRegPopup(param);
								
							});
							
							
							// 삭제 버튼 클릭
							$("button[name=js-car-booth-temp-humid-info-daily-info-delete-button]").off().on('click', function(){
								var index   		= $(this).attr("data-index");
								var seqHabStatus   	= $("#js-car-booth-temp-humid-info-daily-info-seqHabStatus-" + index).val();
								var date			= $("#js-car-booth-temp-humid-info-daily-info-date-" + index).val();
								$("#js-car-hab-temp-info-booth-insp-info-daily-date").val(date)
								deleteBoothHabTemphumidInfo(seqHabStatus);
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
						, method   : 'retrieveHabDailyInspInfo'
						, carPlant : $("#js-car-header-car-plant").val()
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
							
							var result = carHabTempInfoForecastInfoTemplate(data);
							$("#js-car-hab-temp-info-forecast-info").empty().append(result);
							
							
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
							
							var result = carHabTempInfoWeekWeatherInfoTemplate(data);
							$("#js-car-hab-temp-info-week-weather-info").empty().append(result);
							
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
				var phTempArr       = new Array();
				var habTempArr      = new Array();
				var coolTempArr     = new Array();
				var windSpeedArr    = new Array();
				
				for(var i=0 ; i<data.length ; i++){
					measureDateArr.push(data[i].inspDatetime);
					phTempArr.push(data[i].phTemp);
					habTempArr.push(data[i].habTemp);
					coolTempArr.push(data[i].coolTemp);
					windSpeedArr.push(data[i].windSpeed);
				}
				
				Highcharts.chart('js-car-hab-temp-info-graph-area', {
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
			                format: '{value}°C',
			                style: {
			                    color: "black"
			                }
			            },
			            title: {
			                text: 'Temperature',
			                style: {
			                    color: "black"
			                }
			            }
			        }, { // Secondary yAxis
			            title: {
			                text: 'Wind Speed',
			                style: {
			                    color: "black"
			                }
			            },
			            labels: {
			                format: '{value} Hz',
			                style: {
			                    color: "black"
			                }
			            },
			            opposite: true
			        }],
			        tooltip: {
			            shared: true
			        },
			        exporting: {enabled: false },
			        series: [{
			            name: 'Pre Heating',
			            type: 'spline',
			            data: phTempArr,
			            tooltip: {
			                valueSuffix: '°C'
			            },
		                color: "red"
			        }, {
			            name: 'HAB',
			            type: 'spline',
			            data: habTempArr,
			            tooltip: {
			                valueSuffix: '°C'
			            },
		                color: "orange"
			        },{
			            name: 'Cooling Zone',
			            type: 'spline',
			            data: coolTempArr,
			            tooltip: {
			                valueSuffix: '°C'
			            },
		                color: "blue"
			        },{
			            name: '풍속',
			            type: 'spline',
			            yAxis: 1,
			            data: windSpeedArr,
			            tooltip: {
			                valueSuffix: ' Hz'
			            },
			            color: "green"

			        }]
			    });
			};	
		</script>
	</tiles:putAttribute>
	<!-- 페이지 레벨 스크립트 E -->

	<!-- 팝업 콘텐츠 S -->
	<tiles:putAttribute name="popup-content">
	

	<!-- Spec. 관리 팝업 [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-hab-temp-spec-reg-popup" class="wp-pop-layer wp-pop-w700 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="Spec. 관리"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-hab-temp-spec-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
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
							<th class="wp-ar"><spring:message code="TODO.KEY" text="Booth"/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-hab-temp-spec-reg-popup-booth-combo">
									</select>
								</div>
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="등록자"/></th>
							<td  class="wp-al wp-vm">
								<input type="text"   id="js-car-hab-temp-spec-reg-popup-emp-name" title="내용입력" disabled="disabled">
								<input type="hidden" id="js-car-hab-temp-spec-reg-popup-emp">
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- 기본 정보 -->
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="Spec."/></h2>
			<div class="wp-table-st1">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:auto">
						<col style="width:23%">
						<col style="width:20%">
						<col style="width:23%">
						<col style="width:20%">
					</colgroup>
					<thead>
						<tr>
							<th><spring:message code="TODO.KEY" text="구분"/></th>
							<th><spring:message code="TODO.KEY" text="Pre Heating 온도"/>(℃)</th>
							<th><spring:message code="TODO.KEY" text="HAB 온도"/>(℃)</th>
							<th><spring:message code="TODO.KEY" text="Cooling Zone 온도"/>(℃)</th>
							<th><spring:message code="TODO.KEY" text="풍속"/>(Hz)</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><spring:message code="TODO.KEY" text="상한"/></td>
							<td><input type="text" name="js-car-hab-temp-spec-reg-popup-input-data" id="js-car-hab-temp-spec-reg-popup-max-preheating-temp" title="내용입력"></td>
							<td><input type="text" name="js-car-hab-temp-spec-reg-popup-input-data" id="js-car-hab-temp-spec-reg-popup-max-hab-temp" title="내용입력"></td>
							<td><input type="text" name="js-car-hab-temp-spec-reg-popup-input-data" id="js-car-hab-temp-spec-reg-popup-max-coolingzone-temp" title="내용입력"></td>
							<td><input type="text" name="js-car-hab-temp-spec-reg-popup-input-data" id="js-car-hab-temp-spec-reg-popup-max-wind-speed" title="내용입력"></td>
						</tr>
						<tr>
							<td><spring:message code="TODO.KEY" text="하한"/></td>
							<td><input type="text" name="js-car-hab-temp-spec-reg-popup-input-data" id="js-car-hab-temp-spec-reg-popup-min-preheating-temp" title="내용입력"></td>
							<td><input type="text" name="js-car-hab-temp-spec-reg-popup-input-data" id="js-car-hab-temp-spec-reg-popup-min-hab-temp" title="내용입력"></td>
							<td><input type="text" name="js-car-hab-temp-spec-reg-popup-input-data" id="js-car-hab-temp-spec-reg-popup-min-coolingzone-temp" title="내용입력"></td>
							<td><input type="text" name="js-car-hab-temp-spec-reg-popup-input-data" id="js-car-hab-temp-spec-reg-popup-min-wind-speed" title="내용입력"></td>
						</tr>
					</tbody>
				</table>
	            </div>
		<!-- // scroll Area -->
		</div>
		<div class="wp-btn-area">
			<button type="button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18" id="js-car-hab-temp-spec-reg-popup-save-button"><spring:message code="TODO.KEY" text="저장"/></button>
		</div>
	        </div>
	    </div>
	</div>
	<!-- Spec. 관리 팝업 [END] -->
	

	<!-- Spec. 관리 팝업 - 스크립트 START -->
	<script type="text/javascript">
	
	//------------------------------------------------
	// Spec. 관리 팝업 초기화
	// ------------------------------------------------
	var initCarHabTempSpecRegPopup = function() {
		
		$("[name=js-car-hab-temp-spec-reg-popup-input-data]").val("");
		
		// 등록자
		$("#js-car-hab-temp-spec-reg-popup-emp-name").val("${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}");
		$("#js-car-hab-temp-spec-reg-popup-emp").val("${sessionScope.LoginUserInfo.empNum}");
		
		// 부스 콤보 리스트 조회
		retrieveOvenInfo.carHabTempSpecRegPopup.request();
		
		// [저장] 버튼 클릭
		$('#js-car-hab-temp-spec-reg-popup-save-button').off().on('click', function() {
			saveCarHabTempSpecRegPopup();
		});
		
		// 상한, 하한 값 : 마이너스 없는 양수(실수). 소수점1째자리만 입력 가능
		onlyDecimal($('input[name=js-car-hab-temp-spec-reg-popup-input-data]'), 10, 1);
	};

	//------------------------------------------------
	// Spec. 관리 팝업 저장
	// ------------------------------------------------
	var saveCarHabTempSpecRegPopup = function(){
		var carPlant = $("#js-car-header-car-plant").val();
		var emp      = $("#js-car-hab-temp-spec-reg-popup-emp").val();
		var boothId  = $("#js-car-hab-temp-spec-reg-popup-booth-combo").val();
		var phUsl    = $("#js-car-hab-temp-spec-reg-popup-max-preheating-temp").val();
		var habUsl   = $("#js-car-hab-temp-spec-reg-popup-max-hab-temp").val();
		var coolUsl  = $("#js-car-hab-temp-spec-reg-popup-max-coolingzone-temp").val();
		var windUsl  = $("#js-car-hab-temp-spec-reg-popup-max-wind-speed").val();
		var phLsl    = $("#js-car-hab-temp-spec-reg-popup-min-preheating-temp").val();
		var habLsl   = $("#js-car-hab-temp-spec-reg-popup-min-hab-temp").val();
		var coolLsl  = $("#js-car-hab-temp-spec-reg-popup-min-coolingzone-temp").val();
		var windLsl  = $("#js-car-hab-temp-spec-reg-popup-min-wind-speed").val();
		
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
		if(app.utils.isEmpty(boothId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="부스코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		if(app.utils.isEmpty(phUsl)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="상한 Pre Heating 온도가 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-hab-temp-spec-reg-popup-max-preheating-temp").focus();
					}
				}
			});
			return;
		}
		if(app.utils.isEmpty(phLsl)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="하한 Pre Heating 온도가 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-hab-temp-spec-reg-popup-min-preheating-temp").focus();
					}
				}
			});
			return;
		}
		if(app.utils.isEmpty(habUsl)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="상한 HAB 온도가 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-hab-temp-spec-reg-popup-max-hab-temp").focus();
					}
				}
			});
			return;
		}
		if(app.utils.isEmpty(habLsl)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="하한 HAB 온도가 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-hab-temp-spec-reg-popup-min-hab-temp").focus();
					}
				}
			});
			return;
		}
		if(app.utils.isEmpty(coolUsl)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="상한 Cooling Zone 온도가 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-hab-temp-spec-reg-popup-max-coolingzone-temp").focus();
					}
				}
			});
			return;
		}
		if(app.utils.isEmpty(coolLsl)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="하한 Cooling Zone 온도가 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-hab-temp-spec-reg-popup-min-coolingzone-temp").focus();
					}
				}
			});
			return;
		}
		if(app.utils.isEmpty(windUsl)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="상한 풍속이 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-hab-temp-spec-reg-popup-max-wind-speed").focus();
					}
				}
			});
			return;
		}
		if(app.utils.isEmpty(windLsl)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="하한 풍속이 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-hab-temp-spec-reg-popup-min-wind-speed").focus();
					}
				}
			});
			return;
		}
		if(Number(phUsl) < Number(phLsl)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="Pre Heating 하한 온도가 상한 온도보다 큽니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-hab-temp-spec-reg-popup-max-preheating-temp").focus();
					}
				}
			});
			return;
		}
		if(Number(habUsl) < Number(habLsl)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="HAB 하한 온도가 상한 온도보다 큽니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-hab-temp-spec-reg-popup-max-hab-temp").focus();
					}
				}
			});
			return;
		}
		if(Number(coolUsl) < Number(coolLsl)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="Cooling Zone 하한 온도가 상한 온도보다 큽니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-hab-temp-spec-reg-popup-max-coolingzone-temp").focus();
					}
				}
			});
			return;
		}
		if(Number(windUsl) < Number(windLsl)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="하한 풍속이 상한 풍속보다 큽니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-hab-temp-spec-reg-popup-max-wind-speed").focus();
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
					saveHabInspSpec.request();
				}
			}
		});
	};

	//-------------------------------------------------
	// Spec 관리 저장
	//-------------------------------------------------
	var saveHabInspSpec = {
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
			var carPlant = $("#js-car-header-car-plant").val();
			var emp      = $("#js-car-hab-temp-spec-reg-popup-emp").val();
			var boothId  = $("#js-car-hab-temp-spec-reg-popup-booth-combo").val();
			var phUsl    = $("#js-car-hab-temp-spec-reg-popup-max-preheating-temp").val();
			var habUsl   = $("#js-car-hab-temp-spec-reg-popup-max-hab-temp").val();
			var coolUsl  = $("#js-car-hab-temp-spec-reg-popup-max-coolingzone-temp").val();
			var windUsl  = $("#js-car-hab-temp-spec-reg-popup-max-wind-speed").val();
			var phLsl    = $("#js-car-hab-temp-spec-reg-popup-min-preheating-temp").val();
			var habLsl   = $("#js-car-hab-temp-spec-reg-popup-min-hab-temp").val();
			var coolLsl  = $("#js-car-hab-temp-spec-reg-popup-min-coolingzone-temp").val();
			var windLsl  = $("#js-car-hab-temp-spec-reg-popup-min-wind-speed").val();
			
			var params = {
				  service  : 'car.booth'
				, method   : 'saveHabInspSpec'
				, carPlant   : carPlant
				, emp        : emp     
				, boothId    : boothId 
				, phUsl      : phUsl    
				, habUsl     : habUsl 
				, coolUsl    : coolUsl
				, windUsl    : windUsl
				, phLsl      : phLsl  
				, habLsl     : habLsl 
				, coolLsl    : coolLsl
				, windLsl    : windLsl

			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	</script>
	<!-- Spec. 관리 팝업 - 스크립트 [END] -->
	
	<!-- HAB 결과 등록 팝업 [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-hab-temp-info-reg-popup" class="wp-pop-layer wp-pop-w700 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="결과 등록"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-hab-temp-info-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
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
								<input type="text"   id="js-car-hab-temp-info-reg-popup-carplant-name" title="내용입력" disabled="disabled">
								<input type="hidden" id="js-car-hab-temp-info-reg-popup-carplant">
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="등록자"/></th>
							<td  class="wp-al wp-vm">
								<input type="text"   id="js-car-hab-temp-info-reg-popup-emp-name" title="내용입력" disabled="disabled">
								<input type="hidden" id="js-car-hab-temp-info-reg-popup-emp">
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="Booth"/></th>
							<td  class="wp-al wp-vm" colspan="3">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-hab-temp-info-reg-popup-booth-combo">
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="측정일자"/></th>
							<td  class="wp-al wp-vm">
								<input type="text" class="wp-inp-datepicker maxdate" id="js-car-hab-temp-info-reg-popup-date" placeholder="날짜입력" readonly="readonly">
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="측정시간"/></th>
							<td  class="wp-al wp-vm">
								<input type="text" class="wp-timeFormat" id="js-car-hab-temp-info-reg-popup-time">
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- 기본 정보 -->
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="측정결과"/></h2>
			<div class="wp-table-st1">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:auto">
						<col style="width:23%">
						<col style="width:20%">
						<col style="width:23%">
						<col style="width:20%">
					</colgroup>
					<thead>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="구분"/></th>
							<th><spring:message code="TODO.KEY" text="Pre Heating 온도"/>(℃)</th>
							<th><spring:message code="TODO.KEY" text="HAB 온도"/>(℃)</th>
							<th><spring:message code="TODO.KEY" text="Cooling Zone 온도"/>(℃)</th>
							<th><spring:message code="TODO.KEY" text="풍속"/>(Hz)</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="측정 값"/></th>
							<td><input type="text" name="js-car-hab-temp-info-reg-popup-input-data" id="js-car-hab-temp-info-reg-popup-preheating-temp" title="내용입력"></td>
							<td><input type="text" name="js-car-hab-temp-info-reg-popup-input-data" id="js-car-hab-temp-info-reg-popup-hab-temp" title="내용입력"></td>
							<td><input type="text" name="js-car-hab-temp-info-reg-popup-input-data" id="js-car-hab-temp-info-reg-popup-coolingzone-temp" title="내용입력"></td>
							<td>
								<input type="text" name="js-car-hab-temp-info-reg-popup-input-data" id="js-car-hab-temp-info-reg-popup-wind-speed" title="내용입력">
							</td>
						</tr>
					</tbody>
				</table>
	            </div>
	            <div class="wp-table-st1">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:auto">
						<col style="width:70%">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="비고"/></th>
							<td colspan="2">
								<input type="text" id="js-car-hab-temp-info-reg-popup-remark" title="내용입력">
								<input type="hidden" name="js-car-hab-temp-info-reg-popup-seqHabStatus" id="js-car-hab-temp-info-reg-popup-seqHabStatus">
							</td>
						</tr>
					</tbody>
				</table>
	            </div>
		<!-- // scroll Area -->
		</div>
		<div class="wp-btn-area">
			<button type="button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18" id="js-car-hab-temp-info-reg-popup-save-button"><spring:message code="TODO.KEY" text="저장"/></button>
		</div>
	        </div>
	    </div>
	</div>
	<!-- HAB 결과 등록 팝업 [END] -->
	

	<!-- HAB 결과 등록 팝업 - 스크립트 START -->
	<script type="text/javascript">
	
	//------------------------------------------------
	// HAB 결과 등록 팝업 초기화
	// ------------------------------------------------
	var initCarHabTempInfoRegPopup = function(param) {
		
		// 공장
		$("#js-car-hab-temp-info-reg-popup-carplant-name").val($("#js-car-header-car-plant").text());
		$("#js-car-hab-temp-info-reg-popup-carplant").val($("#js-car-header-car-plant").val());
		
		// 등록자
		$("#js-car-hab-temp-info-reg-popup-emp-name").val("${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}");
		$("#js-car-hab-temp-info-reg-popup-emp").val("${sessionScope.LoginUserInfo.empNum}");
		
		// 측정일자 초기날짜(오늘)
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
		
		$("#js-car-hab-temp-info-reg-popup-date").val(date);
		$("#js-car-hab-temp-info-reg-popup-time").val(time);
		
		// 부스 콤보 리스트 조회
		retrieveOvenInfo.carHabTempInfoRegPopup.request();
		
		// 팝업 입력창 초기화. 수정 버튼 클릭 후 다시 등록 버튼 클릭 시 초기화가 필요하다.
		$("#js-car-hab-temp-info-reg-popup-preheating-temp").val("");
		$("#js-car-hab-temp-info-reg-popup-hab-temp").val("");
		$("#js-car-hab-temp-info-reg-popup-coolingzone-temp").val("");
		$("#js-car-hab-temp-info-reg-popup-wind-speed").val("");
		$("#js-car-hab-temp-info-reg-popup-remark").val("");
		$("#js-car-hab-temp-info-reg-popup-seqHabStatus").val("");
		
		// [저장] 버튼 클릭
		$('#js-car-hab-temp-info-reg-popup-save-button').off().on('click', function() {
			saveCarHabTempInfoRegPopup();
		});
		
		// 상한, 하한 값 : 마이너스 없는 양수(실수). 소수점1째자리만 입력 가능
		onlyDecimal($('input[name=js-car-hab-temp-info-reg-popup-input-data]'), 10, 1);
		
		// 수정 인 경우, 파라미터 세팅 ?
		if(param != undefined){
			$("#js-car-hab-temp-info-reg-popup-booth-combo").val(param.boothId);
			$("#js-car-hab-temp-info-reg-popup-date").val(param.date).mask('9999-99-99');
			$("#js-car-hab-temp-info-reg-popup-time").val(param.time);
			$("#js-car-hab-temp-info-reg-popup-preheating-temp").val(param.phTemp);
			$("#js-car-hab-temp-info-reg-popup-hab-temp").val(param.habTemp);
			$("#js-car-hab-temp-info-reg-popup-coolingzone-temp").val(param.coolTemp);
			$("#js-car-hab-temp-info-reg-popup-wind-speed").val(param.windTemp);
			$("#js-car-hab-temp-info-reg-popup-remark").val(param.remark);
			$("#js-car-hab-temp-info-reg-popup-seqHabStatus").val(param.seqHabStatus);
		}
		
	};
	
	//------------------------------------------------
	// HAB 결과 등록 팝업 저장
	// ------------------------------------------------
	var saveCarHabTempInfoRegPopup = function(){
		var carPlant        = $("#js-car-hab-temp-info-reg-popup-carplant").val();
		var emp             = $("#js-car-hab-temp-info-reg-popup-emp").val();
		var boothId         = $("#js-car-hab-temp-info-reg-popup-booth-combo").val();
		var date            = $("#js-car-hab-temp-info-reg-popup-date").val();
		var time            = $("#js-car-hab-temp-info-reg-popup-time").val();
		var preHeatingTemp  = $("#js-car-hab-temp-info-reg-popup-preheating-temp").val();
		var habTemp         = $("#js-car-hab-temp-info-reg-popup-hab-temp").val();
		var coolingZoneTemp = $("#js-car-hab-temp-info-reg-popup-coolingzone-temp").val();
		var windSpeed       = $("#js-car-hab-temp-info-reg-popup-wind-speed").val();
		
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
		if(app.utils.isEmpty(boothId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="부스코드가 없습니다."/>'
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
						$("#js-car-hab-temp-info-reg-popup-date").focus();
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
						$("#js-car-hab-temp-info-reg-popup-time").focus();
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
						$("#js-car-hab-temp-info-reg-popup-time").focus();
					}
				}
			});
			return;
		}
		/* if(app.utils.isEmpty(preHeatingTemp)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="Pre Heating 온도가 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-hab-temp-info-reg-popup-preheating-temp").focus();
					}
				}
			});
			return;
		}
		if(app.utils.isEmpty(habTemp)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="HAB 온도가 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-hab-temp-info-reg-popup-hab-temp").focus();
					}
				}
			});
			return;
		}
		if(app.utils.isEmpty(coolingZoneTemp)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="Cooling Zone 온도가 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-hab-temp-info-reg-popup-coolingzone-temp").focus();
					}
				}
			});
			return;
		}
		if(app.utils.isEmpty(windSpeed)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="풍속이 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-hab-temp-info-reg-popup-wind-speed").focus();
					}
				}
			});
			return;
		} */
		app.message.confirm({
			  title             : '<spring:message code="TODO.KEY" text="알림"/>'
			, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
			, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
			, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
			, callback          : {
				confirm: function() {
					// 저장
					saveHabInspInfo.request();
				}
			}
		});
	};

	//-------------------------------------------------
	// HAB 결과 저장
	//-------------------------------------------------
	var saveHabInspInfo = {
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
								$('#js-car-hab-temp-info-reg-popup-close-button').click();
								retrieveHabInspInfo.request();
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
			var carPlant        = $("#js-car-hab-temp-info-reg-popup-carplant").val();
			var emp             = $("#js-car-hab-temp-info-reg-popup-emp").val();
			var boothId         = $("#js-car-hab-temp-info-reg-popup-booth-combo").val();
			var date            = $("#js-car-hab-temp-info-reg-popup-date").val().replace(/-/gi, "");;
			var time            = $("#js-car-hab-temp-info-reg-popup-time").val().replace(/:/gi, "");;
			var phTemp  		= $("#js-car-hab-temp-info-reg-popup-preheating-temp").val();
			var habTemp         = $("#js-car-hab-temp-info-reg-popup-hab-temp").val();
			var coolTemp 		= $("#js-car-hab-temp-info-reg-popup-coolingzone-temp").val();
			var windSpeed       = $("#js-car-hab-temp-info-reg-popup-wind-speed").val();
			var remark          = $("#js-car-hab-temp-info-reg-popup-remark").val();
			var seqHabStatus 	= $("#js-car-hab-temp-info-reg-popup-seqHabStatus").val() == '' ? 0 : $("#js-car-hab-temp-info-reg-popup-seqHabStatus").val();
			
			var params = {
				  service         	: 'car.booth'
				, method          	: 'saveHabInspInfo'
				, carPlant        	: carPlant
				, emp             	: emp
				, boothId         	: boothId
				, inspDate        	: date
				, inspTime        	: time
				, phTemp		  	: phTemp
				, habTemp         	: habTemp
				, coolTemp         	: coolTemp
				, windSpeed       	: windSpeed
				, remark          	: remark
				, seqHabStatus		: seqHabStatus
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	</script>
	<!-- HAB 결과 등록 팝업 - 스크립트 [END] -->
	
	
	<!-- 일자별 상세 삭제 - 스크립트 START -->
	<script type="text/javascript">
	
	var deleteBoothHabTemphumidInfo = function(seqHabStatus){
		
		if(app.utils.isEmpty(seqHabStatus))
		{
			fn_alertInfo("A", '<spring:message code="TODO.KEY" text="삭제 데이터를 선택해 주세요."/>');
			return;
		}
		
		if(!confirm("삭제하시겠습니까?")){
			return;
		}
		
		deleteBoothHabInspInfo.request(seqHabStatus);
		
		retrieveHabInspInfo.request();
	};
	
	
	//------------------------------------------------
	// 일자별 상세 - 삭제
	//------------------------------------------------
	var deleteBoothHabInspInfo = {
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
							cnfirm: function() {
								retrieveHabInspInfo.request();
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
		request: function(seqHabStatus) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var userEmp		  = '${sessionScope.LoginUserInfo.empNum}';
			
			var params = {
				  service           : 'car.booth'
				, method            : 'deleteHabInspInfo'
				, userEmp       	: '${sessionScope.LoginUserInfo.empNum}'
				, seqHabStatus      : seqHabStatus
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
	
	</script>
	<!-- 일자별 상세 현황 삭제 - 스크립트 [END] -->
	
	
	
	</tiles:putAttribute>
	<!-- 팝업 콘텐츠 E -->
</tiles:insertDefinition>
