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
					<li><a href="/car/inspection/carBoothTempHumidInfo.do" class="active"><spring:message code="TODO.KEY" text="부스별 온/습도 정보" /></a></li>
					<li><a href="/car/inspection/carHabTempInfo.do"><spring:message code="TODO.KEY" text="HAB Zone 정보" /></a></li>
					<li><a href="/car/inspection/carOvenTempInfo.do"><spring:message code="TODO.KEY" text="오븐 온도 정보" /></a></li>
					<li><a href="/car/inspection/carUfInfo.do"><spring:message code="TODO.KEY" text="UF 정보" /></a></li>
				</ul>
				<!-- //tab -->
				<!-- 상단 버튼 -->
				<div class="wp-clearfix">
					<div class="wp-fl">
						<div class="wp-ui-btn-switch wp-clearfix noborder-switch wp-fl">
							<ul id="js-car-booth-temp-humid-info-proc-list">
							</ul>
						</div>
					</div>
				</div>
				<!-- //상단 버튼 -->
					
				<!-- content box -->
				<div class="wp-table-width wp-mt13">
					<div class="wp-title-section wp-no-line">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="일자별 현황" /></h2>
						<div class="wp-btn-area">
							<input type="text" name="js-car-booth-temp-humid-info-start-date" id="js-car-booth-temp-humid-info-start-date" title="내용입력" class="wp-inp-datepicker" placeholder="<spring:message code="TODO.KEY" text="날짜입력" />"> ~ <input type="text" name="js-car-booth-temp-humid-info-end-date" id="js-car-booth-temp-humid-info-end-date" title="내용입력" class="wp-inp-datepicker" placeholder="<spring:message code="TODO.KEY" text="날짜입력" />"><button type="button" id="js-car-booth-temp-humid-info-retrieve-button" class="wp-btn cr3 darkgray small wp-ml5"><spring:message code="TODO.KEY" text="검색" /></button>
							<button type="button" class="wp-btn small skyblue cr3 upload-white" id="js-car-booth-temp-humid-info-spec-reg-button" data-link="js-car-booth-temp-humid-spec-reg-popup" data-depth="1"><spring:message code="TODO.KEY" text="Spec. 등록" /></button>
							<%-- <button type="button" class="wp-btn small grayblue cr3" id="js-car-booth-temp-humid-info-excel-download-button"><spring:message code="TODO.KEY" text="엑셀 다운로드" /></button> --%>
							<button type="button" name="js-car-booth-temp-humid-info-paging-button" class="wp-btn small white bgray prev wp-ml10"><span><spring:message code="TODO.KEY" text="이전" /></span></button>
							<div class="wp-btn-paging"><span class="wp-ship-fc-blue" id="js-car-booth-temp-humid-info-page-current">1</span> / <span id="js-car-booth-temp-humid-info-page-total">1</span></div>
							<button type="button" class="wp-btn small white bgray next" name="js-car-booth-temp-humid-info-paging-button"><span><spring:message code="TODO.KEY" text="다음" /></span></button>
						</div>
					</div>
					
					<!-- table -->
					<div class="wp-table-st1 wp-temphum wp-vertical-line">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:6.5%">
								<col style="width:6.5%">
								<col style="width:6.5%">
								<col style="width:6.5%">
								<col style="width:6.5%">
								<col style="width:6.5%">
								<col style="width:6.5%">
								<col style="width:6.5%">
								<col style="width:6.5%">
								<col style="width:6.5%">
								<col style="width:6.5%">
								<col style="width:6.5%">
								<col style="width:6.5%">
								<col style="width:6.5%">
							</colgroup>
							<thead>
								<tr id="js-car-booth-temp-humid-info-booth-insp-info-date-list">
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="온도" /></th>
									<th><spring:message code="TODO.KEY" text="습도" /></th>
									<th><spring:message code="TODO.KEY" text="온도" /></th>
									<th><spring:message code="TODO.KEY" text="습도" /></th>
									<th><spring:message code="TODO.KEY" text="온도" /></th>
									<th><spring:message code="TODO.KEY" text="습도" /></th>
									<th><spring:message code="TODO.KEY" text="온도" /></th>
									<th><spring:message code="TODO.KEY" text="습도" /></th>
									<th><spring:message code="TODO.KEY" text="온도" /></th>
									<th><spring:message code="TODO.KEY" text="습도" /></th>
									<th><spring:message code="TODO.KEY" text="온도" /></th>
									<th><spring:message code="TODO.KEY" text="습도" /></th>
									<th><spring:message code="TODO.KEY" text="온도" /></th>
									<th><spring:message code="TODO.KEY" text="습도" /></th>
								</tr>
							</thead>
							<tbody id="js-car-booth-temp-humid-info-booth-insp-info-temp-humid-row-list">
							</tbody>
						</table>
					</div>
					<!-- //table -->
					
					<div class="wp-title-section wp-no-line wp-mt20">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="일자별 상세 현황" /><span id="js-car-booth-temp-humid-info-booth-insp-info-detail-date-text" class="wp-fc-blue2 wp-ml10"></span></h2>
						<div class="wp-btn-area">
							<button type="button" class="wp-btn small white bgray write" id="js-car-booth-temp-humid-info-booth-insp-info-reg-button" data-link="js-car-booth-temp-humid-info-reg-popup" data-depth="1"><span><spring:message code="TODO.KEY" text="등록"/></span></button>
						</div>
					</div>
					<!-- table -->
					<div class="wp-table-st1 wp-temphum">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:10%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:auto">
								<col style="width:10%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="Booth" /></th>
									<th><spring:message code="TODO.KEY" text="측정일시" /></th>
									<th><spring:message code="TODO.KEY" text="온도(℃)" /></th>
									<th><spring:message code="TODO.KEY" text="습도(%)" /></th>
									<th><spring:message code="TODO.KEY" text="비고" /></th>
									<!-- <th>수정/삭제</th> -->
									<th><spring:message code="TODO.KEY" text="수정 / 삭제" /></th>
								</tr>
							</thead>
							<tbody id="js-car-booth-temp-humid-info-booth-daily-insp-info-temp-humid-list">
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
							<em class="wp-tit"><spring:message code="TODO.KEY" text="부스 No." /></em>
							<div class="wp-ui-select wp-wd130">
								<select title="항목 개수 설정" id="js-car-booth-temp-humid-info-booth-combo">
								</select>
							</div>
							<em class="wp-tit wp-ml10">기준일자</em>
							<input type="text" name="" id="js-car-booth-temp-humid-info-graph-date" title="내용입력" class="wp-inp-datepicker" placeholder="<spring:message code="TODO.KEY" text="날짜입력" />">
							<button type="button" id="js-car-booth-temp-humid-info-graph-retrieve-button" class="wp-btn darkgray small cr3"><spring:message code="TODO.KEY" text="검색" /></button>
						</div>
					</div>
					
					<div class="wp-fr wp-vt wp-blue-comment wp-inblock"><spring:message code="TODO.KEY" text="기준일자 이전 최대 15개의 정보가 차트에 표시됩니다." /></div>
					
					<div id="js-car-booth-temp-humid-info-graph-area" class="wp-fc-red bold"></div>
				</div>
				<!-- // content box -->
				
				<!-- content box -->
				<div class="wp-table-width wp-mt13">
				
					<!-- 날씨  -->
					<h2 class="wp-section-title wp-mt10"><spring:message code="TODO.KEY" text="Weather Forecast" /></h2>
					
					<!-- 동네예보 -->
					<div id="js-car-booth-temp-humid-info-forecast-info"></div>
					<!-- //동네예보 -->
					
					<!-- 주간예보 -->
					<div id="js-car-booth-temp-humid-info-week-weather-info"></div>
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
	<script id="js-template-car-booth-temp-humid-info-forecast-info" type="text/x-handlebars-template">
		<h3 class="wp-sub-title"><spring:message code="TODO.KEY" text="동네예보" />
			<div class="wp-fr wp-vt wp-blue-comment wp-inblock">{{rows.dispOccurDate}} {{rows.dispOccurTime}} <spring:message code="TODO.KEY" text="발표" /></div>
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
					<th><spring:message code="TODO.KEY" text="기온 (℃)"/></th>
					{{#rows.forecast}}
					{{#T3H}}
					<td>{{fcstValue}}</td>
					{{/T3H}}
					{{/rows.forecast}}
				</tr>
				<tr>
					<th><spring:message code="TODO.KEY" text="강수확률 (%)"/></th>
					{{#rows.forecast}}
					{{#POP}}
					<td>{{fcstValue}}</td>
					{{/POP}}
					{{/rows.forecast}}
				</tr>
				<tr>
					<th><spring:message code="TODO.KEY" text="최저/최고기온 (℃)"/></th>
					{{#rows.forecast}}
					<td colspan="{{fcstTime.length}}">{{tmn}} ℃ / {{tmx}} ℃</td>
					{{/rows.forecast}}
				</tr>
				<tr>
					<th><spring:message code="TODO.KEY" text="강수 (mm)"/></th>
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
					{{#R06}}
						{{#if @first}}
							<td>-</td>
						{{/if}}
						<td>{{fcstValue}}</td>
						<td>-</td>
					{{/R06}}
				{{/ifCond2}}
			{{/ifCond}}
		{{/rows.forecast}}
					</tr>
				<tr>
					<th><spring:message code="TODO.KEY" text="작설 (cm)"/></th>
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
					{{#S06}}
						{{#if @first}}
							<td>-</td>
						{{/if}}
						<td>{{fcstValue}}</td>
						<td>-</td>
					{{/S06}}
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
					<th><spring:message code="TODO.KEY" text="풍속 (m/s)"/></th>
			{{#rows.forecast}}
				{{#WSD}}
					<td>{{fcstValue}}</td>
				{{/WSD}}
			{{/rows.forecast}}
				</tr>
				<tr>
					<th><spring:message code="TODO.KEY" text="습도 (%)"/></th>
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
		<script id="js-template-car-booth-temp-humid-info-week-weather-info" type="text/x-handlebars-template">
			<h3 class="wp-sub-title"><spring:message code="TODO.KEY" text="주간예보" />
				<div class="wp-fr wp-vt wp-blue-comment wp-inblock">{{tmFc}} <spring:message code="TODO.KEY" text="발표" /></div>
			</h3>
			<table class="wp-table-st1 h-center wp-temperature wp-vertical-line">
				<caption><spring:message code="TODO.KEY" text="주간예보" /></caption>
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
		<script id="js-template-car-booth-temp-humid-info-booth-insp-info-date-list" type="text/x-handlebars-template">
			{{#rows}}
				{{#if @first}}
					<th rowspan="2"><spring:message code="TODO.KEY" text="부스"/></th>
				{{/if}}
					<th colspan="2">{{inspDatetime}}</th>
			{{/rows}}
		</script>

		<!-- 부스별 온습도 부스별 row - 스크립트 -->
		<script id="js-template-car-booth-temp-humid-info-booth-insp-info-temp-humid-row-list" type="text/x-handlebars-template">
			{{#rows}}
				<tr id="js-car-booth-temp-humid-info-booth-insp-info-temp-humid-row-list-{{boothCode}}">
				</tr>
			{{/rows}}
		</script>
		
		<!-- 부스별 온습도 데이터 - 스크립트 -->
		<script id="js-template-car-booth-temp-humid-info-booth-insp-info-temp-humid-list" type="text/x-handlebars-template">
			{{#rows}}
				{{#if @first}}
					<th>{{boothNm}}</th>
				{{/if}}
					<td name="js-car-booth-temp-humid-info-booth-insp-info-temp-humid-td" inspDatetime="{{inspDatetime}}" style="cursor:{{setCursor inspDatetime}};"><span class="wp-temphum-icon {{setTempSpecOut tempSpecOut}}">{{temperature}}</span></td>
					<td name="js-car-booth-temp-humid-info-booth-insp-info-temp-humid-td" inspDatetime="{{inspDatetime}}" style="cursor:{{setCursor inspDatetime}};">
						<span class="wp-temphum-icon {{setHumidSpecOut humidSpecOut}}">{{humidity}}</span>
						<input type="hidden" id="js-car-booth-temp-humid-info-booth-insp-info-daily-date">
					</td>
			{{/rows}}
		</script>
			
		<!-- 일자별 온습도 리스트 - 스크립트 -->
		<script id="js-template-car-booth-temp-humid-info-booth-daily-insp-info-temp-humid-list" type="text/x-handlebars-template">
			{{#rows}}
				<tr>
					<td>{{boothNm}}</td>
					<td>{{inspDatetime}}</td>
					<td><span class="wp-temphum-icon wp-ac {{setTempSpecOut tempSpecOut}}">{{temperature}}</span></td>
					<td><span class="wp-temphum-icon wp-ac {{setHumidSpecOut humidSpecOut}}">{{humidity}}</span></td>
					<td class="wp-al">{{remark}}</td>
					<td>
						<button type="button" class="wp-btn small white bgray mody" name="js-car-booth-temp-humid-info-daily-info-modify-button" data-index="{{@index}}" data-link="js-car-booth-temp-humid-info-reg-popup" data-depth="1"><span>수정</span></button>
						<button type="button" class="wp-btn small white bgray trash-gray" name="js-car-booth-temp-humid-info-daily-info-delete-button" data-index="{{@index}}"><span>삭제</span></button>
					</td>
					<input type="hidden" id="js-car-booth-temp-humid-info-daily-info-boothid-{{@index}}" value="{{boothId}}" >
					<input type="hidden" id="js-car-booth-temp-humid-info-daily-info-time-{{@index}}"    value="{{inspDatetime}}" >
					<input type="hidden" id="js-car-booth-temp-humid-info-daily-info-temp-{{@index}}"    value="{{temperature}}" >
					<input type="hidden" id="js-car-booth-temp-humid-info-daily-info-humid-{{@index}}"   value="{{humidity}}" >
					<input type="hidden" id="js-car-booth-temp-humid-info-daily-info-remark-{{@index}}"  value="{{remark}}" >
					<input type="hidden" id="js-car-booth-temp-humid-info-daily-info-seqBoothTemp-{{@index}}"  value="{{seqBoothTemp}}" >
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
			
			var carBoothTempHumidInfoForecastInfoTemplate;
			var carBoothTempHumidInfoWeekWeatherInfoTemplate;
			var carBoothTempHumidInfoBoothInspInfoDateListTemplate;
			var carBoothTempHumidInfoBoothInspInfoTempHumidListTemplate;
			var carBoothTempHumidInfoBoothInspInfoTempHumidRowListTemplate;
			var carBoothTempHumidInfoBoothDailyInspInfoTempHumidListTemplate;
			
			$(document).ready(function() {
				
				// Handlebar 초기화
				initCarBoothTempHumidInfoHandlebarsTemplate();
				
				// 부스별 온습도 - [검색] 버튼 클릭
				$('#js-car-booth-temp-humid-info-retrieve-button').off().on('click', function() {
					$("#js-car-booth-temp-humid-info-page-current").text("1");
					$("#js-car-booth-temp-humid-info-booth-insp-info-daily-date").val("");
					$("#js-car-booth-temp-humid-info-booth-daily-insp-info-temp-humid-list").empty();
					
					// 부스별 온/습도 정보 조회
					$('#js-car-booth-temp-humid-info-page-current').text("1");
					retrieveBoothInspInfo.request();
				});
				
				// 온,습도 그래프 - [검색] 버튼 클릭
				$('#js-car-booth-temp-humid-info-graph-retrieve-button').off().on('click', function() {
					// 온,습도 그래프 조회
					retrieveBoothGraphInfo.request();
				});
				
				// 페이징 버튼 처리
				$('button[name=js-car-booth-temp-humid-info-paging-button]').off().on('click', function(){
					
					var currPage  = Number($("#js-car-booth-temp-humid-info-page-current").text());
					var totalPage = Number($("#js-car-booth-temp-humid-info-page-total").text());
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
					$("#js-car-booth-temp-humid-info-page-current").text(paramPage);
					
					// 부스별 온/습도 정보 조회
					retrieveBoothInspInfo.request();
			    });
				
				// [Spec. 등록] 버튼 클릭
				$('#js-car-booth-temp-humid-info-spec-reg-button').off().on('click', function() {
					fn_openPop($(this));
					initCarBoothTempHumidSpecRegPopup();
				});
				
				// [상세 등록] 버튼 클릭
				$('#js-car-booth-temp-humid-info-booth-insp-info-reg-button').off().on('click', function() {
					fn_openPop($(this));
					initCarBoothTempHumidInfoRegPopup();
				});
				
			});
			
			// ------------------------------------------------
			// 전체조회
			// ------------------------------------------------
			var retrieveCarBoothTempHumidInfoAll = function(){

				// 검색조건 날짜 세팅 - 현재 년월
				var date = app.utils.formatDate(new Date(), "YYYYMMDD");
				$("#js-car-booth-temp-humid-info-start-date").val(fn_getBeforeDate(date, 0, 1));		// 1개월전
				$("#js-car-booth-temp-humid-info-end-date, #js-car-booth-temp-humid-info-graph-date").val(date);
				$("#js-car-booth-temp-humid-info-start-date, #js-car-booth-temp-humid-info-end-date, #js-car-booth-temp-humid-info-graph-date").mask('9999-99-99');
				
				
				// 공정 코드 리스트 조회
				retrieveProcInfo.request();
				
				// 동네예보 조회
				retrieveForeCastInfo.request();
				
				// 주간예보 조회
				retrieveWeekWeatherInfo.request();
				
				// 차트 조회
				retrieveBoothGraphInfo.request();
				
			};
			
			// ------------------------------------------------
			// Handlebar 초기화
			// ------------------------------------------------
			var initCarBoothTempHumidInfoHandlebarsTemplate = function() {
				
				// 동네예보
				var source = $('#js-template-car-booth-temp-humid-info-forecast-info').html();
				carBoothTempHumidInfoForecastInfoTemplate = Handlebars.compile(source);
				
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
				
				Handlebars.registerHelper('setWindDirect', function(value) {
					
					if(value =="wi-direction-up"){              return "<spring:message code='TODO.KEY' text='북풍'/>"; }   
					else if(value =="wi-direction-up-right"){   return "<spring:message code='TODO.KEY' text='북서풍'/>"; }
					else if(value =="wi-direction-right"){      return "<spring:message code='TODO.KEY' text='서풍'/>"; }
					else if(value =="wi-direction-down-right"){ return "<spring:message code='TODO.KEY' text='남서풍'/>"; }
					else if(value =="wi-direction-down"){       return "<spring:message code='TODO.KEY' text='남풍'/>"; }
					else if(value =="wi-direction-down-left"){  return "<spring:message code='TODO.KEY' text='남동풍'/>"; }
					else if(value =="wi-direction-left"){       return "<spring:message code='TODO.KEY' text='동풍'/>"; }
					else if(value =="wi-direction-up-left"){    return "<spring:message code='TODO.KEY' text='북동풍'/>"; }
					else { return"<spring:message code='TODO.KEY' text='바람없음'/>"; }
					
				});
				
				// 주간 예보
				source = $('#js-template-car-booth-temp-humid-info-week-weather-info').html();
				carBoothTempHumidInfoWeekWeatherInfoTemplate = Handlebars.compile(source);
				
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
				source = $('#js-template-car-booth-temp-humid-info-booth-insp-info-date-list').html();
				carBoothTempHumidInfoBoothInspInfoDateListTemplate = Handlebars.compile(source);
				
				
				// 부스별 온습도 부스별 Row
				source = $('#js-template-car-booth-temp-humid-info-booth-insp-info-temp-humid-row-list').html();
				carBoothTempHumidInfoBoothInspInfoTempHumidRowListTemplate = Handlebars.compile(source);
				
				// 부스별 온습도 데이터
				source = $('#js-template-car-booth-temp-humid-info-booth-insp-info-temp-humid-list').html();
				carBoothTempHumidInfoBoothInspInfoTempHumidListTemplate = Handlebars.compile(source);
				
				Handlebars.registerHelper('setTempSpecOut', function(value) {
					if(value == "Y"){
						return "wp-ph";
					}
					return "";
				});
				Handlebars.registerHelper('setHumidSpecOut', function(value) {
					if(value == "Y"){
						return "wp-cz";
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
				source = $('#js-template-car-booth-temp-humid-info-booth-daily-insp-info-temp-humid-list').html();
				carBoothTempHumidInfoBoothDailyInspInfoTempHumidListTemplate = Handlebars.compile(source);
				
			};
			
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
								str += '<li><button type="button" name="js-car-booth-temp-humid-info-proc-type-button" procId="' + obj.procId + '"><spring:message code="TODO.KEY" text="' + obj.procIdNm +'"/></button></li>';
							});
							$("#js-car-booth-temp-humid-info-proc-list").html(str);
							$("button[name=js-car-booth-temp-humid-info-proc-type-button]:first").addClass("on");
							
							// 공정 버튼 클릭 이벤트
							$("button[name=js-car-booth-temp-humid-info-proc-type-button]").off().on('click', function(){
								$("button[name=js-car-booth-temp-humid-info-proc-type-button]").removeClass("on");
								$(this).addClass("on");
								
								var procId = $(this).attr("procId");

								// 부스 리스트 조회
								retrieveBoothInfo.request(procId);
								
								// 부스별 온/습도 정보 조회
								$('#js-car-booth-temp-humid-info-page-current').text("1");
								retrieveBoothInspInfo.request(procId);
							});
							
							var procId = $("button[name=js-car-booth-temp-humid-info-proc-type-button]:first").attr("procId");
							
							// 부스 리스트 조회
							retrieveBoothInfo.request(procId);
							
							// 부스별 온/습도 정보 조회
							$('#js-car-booth-temp-humid-info-page-current').text("1");
							retrieveBoothInspInfo.request(procId);
							
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
						, inspType : 'Booth'
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				},
				carBoothTempHumidSpecRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								$('#js-car-booth-temp-humid-spec-reg-popup-proc-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-booth-temp-humid-spec-reg-popup-proc-combo').append("<option value='"+response.rs[i].procId+"'>"+response.rs[i].procIdNm+"</option>");
								}
								
								var procIdBtn = $("button[name=js-car-booth-temp-humid-info-proc-type-button].on").attr("procId");
								
								$('#js-car-booth-temp-humid-spec-reg-popup-proc-combo').val(procIdBtn);
								
								// 공정 change 이벤트
								$("#js-car-booth-temp-humid-spec-reg-popup-proc-combo").off().on('change', function(){
									var procId = $(this).val();
									// 부스 리스트 조회
									retrieveBoothInfo.carBoothTempHumidSpecRegPopup.request(procId);
								});
								
								var procId = $("#js-car-booth-temp-humid-spec-reg-popup-proc-combo").val();
								
								// 부스 리스트 조회
								retrieveBoothInfo.carBoothTempHumidSpecRegPopup.request(procId);
								
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
							, inspType : 'Booth'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carBoothTempHumidInfoRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								$('#js-car-booth-temp-humid-info-reg-popup-proc-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-booth-temp-humid-info-reg-popup-proc-combo').append("<option value='"+response.rs[i].procId+"'>"+response.rs[i].procIdNm+"</option>");
								}
								
								// 공정 change 이벤트
								$("#js-car-booth-temp-humid-info-reg-popup-proc-combo").off().on('change', function(){
									var procId = $(this).val();
									// 부스 리스트 조회
									retrieveBoothInfo.carBoothTempHumidInfoRegPopup.request(procId);
								});
								var procId = $("#js-car-booth-temp-humid-info-reg-popup-proc-combo").val();
								// 부스 리스트 조회
								retrieveBoothInfo.carBoothTempHumidInfoRegPopup.request(procId);
								
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
							, inspType : 'Booth'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				}
			};
			
			var gvCarBoothTempHumidInfoBoothRs = null;
			
			//-------------------------------------------------
			// 부스 리스트 조회
			//-------------------------------------------------
			var retrieveBoothInfo = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							// 부스 콤보 set
							var boothInfo = response.rs;
							$('#js-car-booth-temp-humid-info-booth-combo').find('option').remove();
							for(var i=0; i<boothInfo.length; i++)
							{
								$('#js-car-booth-temp-humid-info-booth-combo').append("<option value='"+boothInfo[i].boothCode+"'>"+boothInfo[i].boothNm+"</option>");
							}
							
							gvCarBoothTempHumidInfoBoothRs = boothInfo;

							// 온,습도 그래프 조회
							retrieveBoothGraphInfo.request();
							
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
						, method   : 'retrieveBoothInfo'
						, carPlant : $("#js-car-header-car-plant").val()
						, procId   : procId
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				},
				carBoothTempHumidSpecRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								// 부스 콤보 set
								var boothInfo = response.rs;
								$('#js-car-booth-temp-humid-spec-reg-popup-booth-combo').find('option').remove();
								for(var i=0; i<boothInfo.length; i++)
								{
									$('#js-car-booth-temp-humid-spec-reg-popup-booth-combo').append("<option value='"+boothInfo[i].boothCode+"'>"+boothInfo[i].boothNm+"</option>");
								}
								
								// 부스 change 이벤트
								$("#js-car-booth-temp-humid-spec-reg-popup-booth-combo").off().on('change', function(){
									var procId = $("#js-car-booth-temp-humid-spec-reg-popup-proc-combo").val();
									var boothId = $("#js-car-booth-temp-humid-spec-reg-popup-booth-combo").val();
									
									// Booth 선택 전 초기화
									$("[name=js-car-booth-temp-humid-spec-reg-popup-input-data]").val("");
									
									// 공장, 공정, 부스 선택값에 의한 Spec 상한 온도/습도, 하한 온도/습도 조회.
									retrieveBoothInspSpec.request(procId, boothId);
								});
								
								var procId = $("#js-car-booth-temp-humid-spec-reg-popup-proc-combo").val();
								var boothId = $("#js-car-booth-temp-humid-spec-reg-popup-booth-combo").val();
								
								// 공장, 공정, 부스 선택값에 의한 Spec 상한 온도/습도, 하한 온도/습도 조회.
								retrieveBoothInspSpec.request(procId, boothId);
								
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
						//app.mask.pageUnlock();
					},
					request: function(procId) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						var params = {
							  service  : 'car.booth'
							, method   : 'retrieveBoothInfo'
							, carPlant : $("#js-car-booth-temp-humid-spec-reg-popup-carplant").val()
							, procId   : procId
						};
						//app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carBoothTempHumidInfoRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								// 부스 콤보 set
								var boothInfo = response.rs;
								$('#js-car-booth-temp-humid-info-reg-popup-booth-combo').find('option').remove();
								for(var i=0; i<boothInfo.length; i++)
								{
									$('#js-car-booth-temp-humid-info-reg-popup-booth-combo').append("<option value='"+boothInfo[i].boothCode+"'>"+boothInfo[i].boothNm+"</option>");
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
						//app.mask.pageUnlock();
					},
					request: function(procId) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						var params = {
							  service  : 'car.booth'
							, method   : 'retrieveBoothInfo'
							, carPlant : $("#js-car-booth-temp-humid-info-reg-popup-carplant").val()
							, procId   : procId
						};
						//app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				}
			};
			
			
			//-------------------------------------------------
			// 부스별 온/습도 스펙조회
			//-------------------------------------------------
			var retrieveBoothInspSpec = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
						
							var data = response.rs || {};
							
							if(data.length > 0){
								$('#js-car-booth-temp-humid-spec-reg-popup-max-temp').val(data[0].tempUsl);
								$('#js-car-booth-temp-humid-spec-reg-popup-max-humid').val(data[0].humidUsl);
								$('#js-car-booth-temp-humid-spec-reg-popup-min-temp').val(data[0].tempLsl);
								$('#js-car-booth-temp-humid-spec-reg-popup-min-humid').val(data[0].humidLsl);
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
				request: function(procId, boothId) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					
					console.log('procId **************************************** : '+ procId);
					console.log('boothId **************************************** : '+ boothId);
					
					var params = {
						  service  : 'car.booth'
						, method   : 'retrieveBoothInspSpec'
						, carPlant : $("#js-car-header-car-plant").val()
						, procId   : procId
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
			// 부스별 온,습도 그래프 조회
			//-------------------------------------------------
			var retrieveBoothGraphInfo = {
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
					var boothId = $("#js-car-booth-temp-humid-info-booth-combo").val();
					/*if(app.utils.isEmpty(boothId)){
						app.message.alert({
							  title             : '<spring:message code="TODO.KEY" text="알림"/>'
							, message           : '<spring:message code="TODO.KEY" text="해당 공정에 등록된 부스 정보가 없습니다."/>'
							, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							, callback          : {
								confirm: function() {
								}
							}
						});
						return;
					}*/
					
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service  : 'car.booth'
						, method   : 'retrieveBoothGraphInfo'
						, carPlant : $("#js-car-header-car-plant").val()
						, procId   : $("button[name=js-car-booth-temp-humid-info-proc-type-button].on").attr("procId")
						, boothId  : $("#js-car-booth-temp-humid-info-booth-combo").val()
						, stdDate  : $("#js-car-booth-temp-humid-info-graph-date").val().replace(/-/gi, "")
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//-------------------------------------------------
			// 부스별 온/습도 정보 조회
			//-------------------------------------------------
			var retrieveBoothInspInfo = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							
							$("#js-car-booth-temp-humid-info-booth-insp-info-detail-date-text").text("");
							
							// 페이징
							var totalPageBooth = response.rs.totalPageBooth;
							if(totalPageBooth.length > 0){
								var currPage  = $('#js-car-booth-temp-humid-info-page-current').text();
								var totalPage = totalPageBooth[0].totalPage;
								
								$('#js-car-booth-temp-humid-info-page-total').text(totalPage);
								
								if(currPage == 1){
									$('button[name=js-car-booth-temp-humid-info-paging-button].prev').addClass("disable");
								} else {
									$('button[name=js-car-booth-temp-humid-info-paging-button].prev').removeClass("disable");
								}
								if(currPage == totalPage){
									$('button[name=js-car-booth-temp-humid-info-paging-button].next').addClass("disable");
								} else {
									$('button[name=js-car-booth-temp-humid-info-paging-button].next').removeClass("disable");
								}
							} else {
								// 페이징 버튼 활성/비활성화 처리
								$('button[name=js-car-booth-temp-humid-info-paging-button]').addClass("disable");
							}
							
							// 부스별 데이터 수집
							var inspInfoBooth = response.rs.inspInfoBooth;
							var boothObjArr = [];
							var resultBoothList = [];	// 결과 부스리스트
							for(var i=0 ; i<gvCarBoothTempHumidInfoBoothRs.length ; i++){
								var boothArr = [];
								for(var j=0 ; j<inspInfoBooth.length ; j++){
									if(gvCarBoothTempHumidInfoBoothRs[i].boothCode == inspInfoBooth[j].boothId){
										boothArr.push(inspInfoBooth[j]);
									}
								}
								if(boothArr.length > 0){
									var jsonStr = '{"' + gvCarBoothTempHumidInfoBoothRs[i].boothCode + '":' + JSON.stringify(boothArr) + '}';
									boothObjArr.push(JSON.parse(jsonStr));	// 부스별 데이터 수집
									
									// 조회된 부스리스트 set
									resultBoothList.push({
										  boothCode : gvCarBoothTempHumidInfoBoothRs[i].boothCode
										, boothNm   : gvCarBoothTempHumidInfoBoothRs[i].boothNm
									});
								}
								
							}
							
							// 데이터 7칸 채우기
							for(var i=0; i<resultBoothList.length; i++)
							{
								for(var j=0 ; j<boothObjArr.length ; j++){
									var obj = boothObjArr[j][resultBoothList[i].boothCode];
									if(obj != undefined){
										for(var k=0 ; k<7 ; k++){
											if(obj[k] == undefined){
												obj[k] = {
													  humidSpecOut : ""
													, humidity     : "-"
													, tempSpecOut  : ""
													, temperature  : "-"
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
								for(var j=0 ; j<7 ; j++){	// 날짜 7칸 채우기
									
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
							var result = carBoothTempHumidInfoBoothInspInfoDateListTemplate({rows : dateObjList});
							$("#js-car-booth-temp-humid-info-booth-insp-info-date-list").empty().append(result);
							
							// 부스별 TR  Set. 
							var result = carBoothTempHumidInfoBoothInspInfoTempHumidRowListTemplate({rows : resultBoothList});
							$("#js-car-booth-temp-humid-info-booth-insp-info-temp-humid-row-list").empty().append(result);
							
							
							// 최종 데이터 set
							for(var i=0; i<resultBoothList.length; i++)
							{
								for(var j=0 ; j<boothObjArr.length ; j++){
									
									var result = carBoothTempHumidInfoBoothInspInfoTempHumidListTemplate({rows : boothObjArr[j][resultBoothList[i].boothCode]});
									$("#js-car-booth-temp-humid-info-booth-insp-info-temp-humid-row-list-" + resultBoothList[i].boothCode).append(result);
								}
							}
							
							// 조회결과 테이블 클릭
							$("td[name=js-car-booth-temp-humid-info-booth-insp-info-temp-humid-td]").off().on('click', function(){
								
								var inspDatetime = $(this).attr("inspDatetime");
								$("#js-car-booth-temp-humid-info-booth-insp-info-detail-date-text").text(inspDatetime.substring(0, 10));
								
								if(app.utils.isEmpty(inspDatetime)){
									return;
								}
								
								var inspDate = inspDatetime.substring(0, 10);
								$("#js-car-booth-temp-humid-info-booth-insp-info-daily-date").val(inspDate);
								
								// 클릭한 날짜로 날짜별 온/습도 조회
								retrieveBoothDailyInspInfo.request(inspDate);
							});
							
							$("#js-car-booth-temp-humid-info-booth-daily-insp-info-temp-humid-list").empty();
							
							// 첫번째 날짜로 날짜별 온/습도 조회
							if(dateList.length > 0){
								$("#js-car-booth-temp-humid-info-booth-insp-info-detail-date-text").text(dateList[0].substring(0, 10));
								
								var inspDate = dateList[0].substring(0, 10);
								$("#js-car-booth-temp-humid-info-booth-insp-info-daily-date").val(inspDate);
								retrieveBoothDailyInspInfo.request(inspDate);
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
						, method   : 'retrieveBoothInspInfo'
						, carPlant : $("#js-car-header-car-plant").val()
						, procId   : procId ? procId : $("button[name=js-car-booth-temp-humid-info-proc-type-button].on").attr("procId")
						, fromDate : $("#js-car-booth-temp-humid-info-start-date").val().replace(/-/gi, "")
						, toDate   : $("#js-car-booth-temp-humid-info-end-date").val().replace(/-/gi, "")
						, currPage : $("#js-car-booth-temp-humid-info-page-current").text()
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			// ------------------------------------------------
			// 일자별 온습도 조회
			// ------------------------------------------------
			var retrieveBoothDailyInspInfo = {
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
							
							var result = carBoothTempHumidInfoBoothDailyInspInfoTempHumidListTemplate(data);
							$("#js-car-booth-temp-humid-info-booth-daily-insp-info-temp-humid-list").empty().append(result);
							
							// 수정 버튼 클릭
							$("button[name=js-car-booth-temp-humid-info-daily-info-modify-button]").off().on('click', function(){
								var index   		= $(this).attr("data-index");
								var procId  		= $("button[name=js-car-booth-temp-humid-info-proc-type-button].on").attr("procId");
								var boothId 		= $("#js-car-booth-temp-humid-info-daily-info-boothid-" + index).val();
								var date    		= $("#js-car-booth-temp-humid-info-booth-insp-info-daily-date").val();
								var time    		= $("#js-car-booth-temp-humid-info-daily-info-time-"    + index).val();
								var temp    		= $("#js-car-booth-temp-humid-info-daily-info-temp-"    + index).val();
								var humid   		= $("#js-car-booth-temp-humid-info-daily-info-humid-"   + index).val();
								var remark  		= $("#js-car-booth-temp-humid-info-daily-info-remark-"  + index).val();
								var seqBoothTemp  	= $("#js-car-booth-temp-humid-info-daily-info-seqBoothTemp-"  + index).val();
								
								var param = {
										procId   		: procId
									  , boothId  		: boothId
									  , date     		: date
									  , time     		: time
									  , temp     		: temp   
									  , humid    		: humid  
									  , remark   		: remark
									  , seqBoothTemp   	: seqBoothTemp
								};
								
								fn_openPop($(this));
								initCarBoothTempHumidInfoRegPopup(param);
							});
							
							// 삭제 버튼 클릭
							$("button[name=js-car-booth-temp-humid-info-daily-info-delete-button]").off().on('click', function(){
								var index   = $(this).attr("data-index");
								var seqBoothTemp   = $("#js-car-booth-temp-humid-info-daily-info-seqBoothTemp-" + index).val();
								deleteBoothTemphumidInfo(seqBoothTemp);
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
				request: function(inspDate) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service  : 'car.booth'
						, method   : 'retrieveBoothDailyInspInfo'
						, carPlant : $("#js-car-header-car-plant").val()
						, procId   : $("button[name=js-car-booth-temp-humid-info-proc-type-button].on").attr("procId")
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
							
							var result = carBoothTempHumidInfoForecastInfoTemplate(data);
							$("#js-car-booth-temp-humid-info-forecast-info").empty().append(result);
							
							
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
							
							var result = carBoothTempHumidInfoWeekWeatherInfoTemplate(data);
							$("#js-car-booth-temp-humid-info-week-weather-info").empty().append(result);
							
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
				var tempArr         = new Array();
				var humidityArr     = new Array();
				
				for(var i=0 ; i<data.length ; i++){
					measureDateArr.push(data[i].inspDatetime);
					tempArr.push(data[i].temperature);
					humidityArr.push(data[i].humidity);
				}
				
				Highcharts.chart('js-car-booth-temp-humid-info-graph-area', {
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
			        	min: 0,
			        	max: 50,
			            labels: {
			                format: '{value}°C',
			                style: {
			                    color: "red"
			                }
			            },
			            title: {
			                text: 'Temperature',
			                style: {
			                    color: "red"
			                }
			            }
			        }, { // Secondary yAxis
			            title: {
			                text: 'Humidity',
			                style: {
			                    color: "blue"
			                }
			            },
			            labels: {
			                format: '{value} %',
			                style: {
			                    color: "blue"
			                }
			            },
			            opposite: true
			        }],
			        tooltip: {
			            shared: true
			        },
			        exporting: {enabled: false },
			        series: [{
			            name: '습도',
			            type: 'spline',
			            yAxis: 1,
			            data: humidityArr,
			            tooltip: {
			                valueSuffix: ' %'
			            },
			            color: "blue"

			        }, {
			            name: '온도',
			            type: 'spline',
			            data: tempArr,
			            tooltip: {
			                valueSuffix: '°C'
			            },
		                color: "red"
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
	    <div id="js-car-booth-temp-humid-spec-reg-popup" class="wp-pop-layer wp-pop-w500 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="Spec. 관리"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-booth-temp-humid-spec-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
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
								<input type="text"   id="js-car-booth-temp-humid-spec-reg-popup-carplant-name" title="내용입력" disabled="disabled">
								<input type="hidden" id="js-car-booth-temp-humid-spec-reg-popup-carplant">
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="등록자"/></th>
							<td  class="wp-al wp-vm">
								<input type="text"   id="js-car-booth-temp-humid-spec-reg-popup-emp-name" title="내용입력" disabled="disabled">
								<input type="hidden" id="js-car-booth-temp-humid-spec-reg-popup-emp">
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="공정"/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-booth-temp-humid-spec-reg-popup-proc-combo">
									</select>
								</div>
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="Booth"/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-booth-temp-humid-spec-reg-popup-booth-combo">
									</select>
								</div>
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
						<col style="width:40%">
						<col style="width:40%">
					</colgroup>
					<thead>
						<tr>
							<th><spring:message code="TODO.KEY" text="구분"/></th>
							<th><spring:message code="TODO.KEY" text="온도"/>(℃)</th>
							<th><spring:message code="TODO.KEY" text="습도"/>(%)</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><spring:message code="TODO.KEY" text="상한"/></td>
							<td><input type="text" name="js-car-booth-temp-humid-spec-reg-popup-input-data" id="js-car-booth-temp-humid-spec-reg-popup-max-temp" title="내용입력"></td>
							<td><input type="text" name="js-car-booth-temp-humid-spec-reg-popup-input-data" id="js-car-booth-temp-humid-spec-reg-popup-max-humid" title="내용입력"></td>
						</tr>
						<tr>
							<td><spring:message code="TODO.KEY" text="하한"/></td>
							<td><input type="text" name="js-car-booth-temp-humid-spec-reg-popup-input-data" id="js-car-booth-temp-humid-spec-reg-popup-min-temp" title="내용입력"></td>
							<td><input type="text" name="js-car-booth-temp-humid-spec-reg-popup-input-data" id="js-car-booth-temp-humid-spec-reg-popup-min-humid" title="내용입력"></td>
						</tr>
					</tbody>
				</table>
	            </div>
		<!-- // scroll Area -->
		</div>
		<div class="wp-btn-area">
			<button type="button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18" id="js-car-booth-temp-humid-spec-reg-popup-save-button"><spring:message code="TODO.KEY" text="저장"/></button>
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
	var initCarBoothTempHumidSpecRegPopup = function() {
		
		$("[name=js-car-booth-temp-humid-spec-reg-popup-input-data]").val("");
		
		// 공장
		$("#js-car-booth-temp-humid-spec-reg-popup-carplant-name").val($("#js-car-header-car-plant").text());
		$("#js-car-booth-temp-humid-spec-reg-popup-carplant").val($("#js-car-header-car-plant").val());
		
		// 등록자
		$("#js-car-booth-temp-humid-spec-reg-popup-emp-name").val("${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}");
		$("#js-car-booth-temp-humid-spec-reg-popup-emp").val("${sessionScope.LoginUserInfo.empNum}");
		
		// 공정 코드 리스트 조회
		retrieveProcInfo.carBoothTempHumidSpecRegPopup.request();
		
		// [저장] 버튼 클릭
		$('#js-car-booth-temp-humid-spec-reg-popup-save-button').off().on('click', function() {
			saveCarBoothTempHumidSpecRegPopup();
		});
		
		// 상한, 하한 값 : 마이너스 없는 양수(실수). 소수점1째자리만 입력 가능
		onlyDecimal($('input[name=js-car-booth-temp-humid-spec-reg-popup-input-data]'), 10, 1);
	};

	//------------------------------------------------
	// Spec. 관리 팝업 저장
	// ------------------------------------------------
	var saveCarBoothTempHumidSpecRegPopup = function(){
		var carPlant = $("#js-car-booth-temp-humid-spec-reg-popup-carplant").val();
		var emp      = $("#js-car-booth-temp-humid-spec-reg-popup-emp").val();
		var procId   = $("#js-car-booth-temp-humid-spec-reg-popup-proc-combo").val();
		var boothId  = $("#js-car-booth-temp-humid-spec-reg-popup-booth-combo").val();
		var maxTemp  = $("#js-car-booth-temp-humid-spec-reg-popup-max-temp").val();
		var minTemp  = $("#js-car-booth-temp-humid-spec-reg-popup-min-temp").val();
		var maxHumid = $("#js-car-booth-temp-humid-spec-reg-popup-max-humid").val();
		var minHumid = $("#js-car-booth-temp-humid-spec-reg-popup-min-humid").val();
		
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
				, message           : '<spring:message code="TODO.KEY" text="부스코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		if(app.utils.isEmpty(maxTemp)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="상한 온도가 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-booth-temp-humid-spec-reg-popup-max-temp").focus();
					}
				}
			});
			return;
		}
		if(app.utils.isEmpty(minTemp)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="하한 온도가 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-booth-temp-humid-spec-reg-popup-min-temp").focus();
					}
				}
			});
			return;
		}
		if(app.utils.isEmpty(maxHumid)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="상한 습도가 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-booth-temp-humid-spec-reg-popup-max-humid").focus();
					}
				}
			});
			return;
		}
		if(app.utils.isEmpty(minHumid)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="하한 습도가 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-booth-temp-humid-spec-reg-popup-min-humid").focus();
					}
				}
			});
			return;
		}
		if(Number(maxTemp) < Number(minTemp)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="하한 온도가 상한 온도보다 큽니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-booth-temp-humid-spec-reg-popup-max-temp").focus();
					}
				}
			});
			return;
		}
		if(Number(maxHumid) < Number(minHumid)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="하한 습도가 상한 습도보다 큽니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-booth-temp-humid-spec-reg-popup-max-humid").focus();
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
					saveBoothInspSpec.request();
				}
			}
		});
	};

	//-------------------------------------------------
	// Spec 관리 저장
	//-------------------------------------------------
	var saveBoothInspSpec = {
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
			var carPlant = $("#js-car-booth-temp-humid-spec-reg-popup-carplant").val();
			var emp      = $("#js-car-booth-temp-humid-spec-reg-popup-emp").val();
			var procId   = $("#js-car-booth-temp-humid-spec-reg-popup-proc-combo").val();
			var boothId  = $("#js-car-booth-temp-humid-spec-reg-popup-booth-combo").val();
			var tempUsl  = $("#js-car-booth-temp-humid-spec-reg-popup-max-temp").val();
			var tempLsl  = $("#js-car-booth-temp-humid-spec-reg-popup-min-temp").val();
			var humidUsl = $("#js-car-booth-temp-humid-spec-reg-popup-max-humid").val();
			var humidLsl = $("#js-car-booth-temp-humid-spec-reg-popup-min-humid").val();
			
			var params = {
				  service  : 'car.booth'
				, method   : 'saveBoothInspSpec'
				, carPlant   : carPlant
				, emp        : emp     
				, procId     : procId  
				, boothId    : boothId 
				, tempUsl    : tempUsl 
				, tempLsl    : tempLsl 
				, humidUsl   : humidUsl
				, humidLsl   : humidLsl

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
	
	
	
	
		
	<!-- 온/습도 결과 등록 팝업 [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-booth-temp-humid-info-reg-popup" class="wp-pop-layer wp-pop-w500 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="온/습도 결과 등록"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-booth-temp-humid-info-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
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
								<input type="text"   id="js-car-booth-temp-humid-info-reg-popup-carplant-name" title="내용입력" disabled="disabled">
								<input type="hidden" id="js-car-booth-temp-humid-info-reg-popup-carplant">
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="등록자"/></th>
							<td  class="wp-al wp-vm">
								<input type="text"   id="js-car-booth-temp-humid-info-reg-popup-emp-name" title="내용입력" disabled="disabled">
								<input type="hidden" id="js-car-booth-temp-humid-info-reg-popup-emp">
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="공정"/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-booth-temp-humid-info-reg-popup-proc-combo">
									</select>
								</div>
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="Booth"/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-booth-temp-humid-info-reg-popup-booth-combo">
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="측정일자"/></th>
							<td  class="wp-al wp-vm">
								<input type="text" class="wp-inp-datepicker maxdate" id="js-car-booth-temp-humid-info-reg-popup-date" placeholder="날짜입력" readonly="readonly">
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="측정시간"/></th>
							<td  class="wp-al wp-vm">
								<input type="text" class="wp-timeFormat" id="js-car-booth-temp-humid-info-reg-popup-time">
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
						<col style="width:40%">
						<col style="width:40%">
					</colgroup>
					<thead>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="구분"/></th>
							<th><spring:message code="TODO.KEY" text="온도"/>(℃)</th>
							<th><spring:message code="TODO.KEY" text="습도"/>(%)</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="입력 값"/></th>
							<td><input type="text" name="js-car-booth-temp-humid-info-reg-popup-input-data" id="js-car-booth-temp-humid-info-reg-popup-temp" title="내용입력"></td>
							<td><input type="text" name="js-car-booth-temp-humid-info-reg-popup-input-data" id="js-car-booth-temp-humid-info-reg-popup-humid" title="내용입력"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="비고"/></th>
							<td colspan="2">
								<input type="text" id="js-car-booth-temp-humid-info-reg-popup-remark" title="내용입력">
								<input type="hidden" name="js-car-booth-temp-humid-info-reg-popup-seqBoothTemp" id="js-car-booth-temp-humid-info-reg-popup-seqBoothTemp">
							</td>
						</tr>
					</tbody>
				</table>
	            </div>
		<!-- // scroll Area -->
		</div>
		<div class="wp-btn-area">
			<button type="button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18" id="js-car-booth-temp-humid-info-reg-popup-save-button"><spring:message code="TODO.KEY" text="저장"/></button>
		</div>
	        </div>
	    </div>
	</div>
	<!-- 온/습도 결과 등록 팝업 [END] -->
	

	<!-- 온/습도 결과 등록 팝업 - 스크립트 START -->
	<script type="text/javascript">
	
	//------------------------------------------------
	// 온/습도 결과 등록 팝업 초기화
	// ------------------------------------------------
	var initCarBoothTempHumidInfoRegPopup = function(param) {
		
		// 공장
		$("#js-car-booth-temp-humid-info-reg-popup-carplant-name").val($("#js-car-header-car-plant").text());
		$("#js-car-booth-temp-humid-info-reg-popup-carplant").val($("#js-car-header-car-plant").val());
		
		// 등록자
		$("#js-car-booth-temp-humid-info-reg-popup-emp-name").val("${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}");
		$("#js-car-booth-temp-humid-info-reg-popup-emp").val("${sessionScope.LoginUserInfo.empNum}");
		
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
		
		//$("#js-car-booth-temp-humid-info-reg-popup-date").val(date).mask('9999-99-99');
		
		$("#js-car-booth-temp-humid-info-reg-popup-date").val(date);
		$("#js-car-booth-temp-humid-info-reg-popup-time").val(time);
		
		// 공정 코드 리스트 조회
		retrieveProcInfo.carBoothTempHumidInfoRegPopup.request();
		
		// 팝업 입력창 초기화. 수정 버튼 클릭 후 다시 등록 버튼 클릭 시 초기화가 필요하다.
		$("#js-car-booth-temp-humid-info-reg-popup-temp").val("");
		$("#js-car-booth-temp-humid-info-reg-popup-humid").val("");
		$("#js-car-booth-temp-humid-info-reg-popup-remark").val("");
		$("#js-car-booth-temp-humid-info-reg-popup-seqBoothTemp").val("");
		
		// [저장] 버튼 클릭
		$('#js-car-booth-temp-humid-info-reg-popup-save-button').off().on('click', function() {
			saveCarBoothTempHumidInfoRegPopup();
		});
		
		// 상한, 하한 값 : 마이너스 없는 양수(실수). 소수점1째자리만 입력 가능
		onlyDecimal($('input[name=js-car-booth-temp-humid-info-reg-popup-input-data]'), 10, 1);
		
		// 수정 인 경우, 파라미터 세팅
		if(param != undefined){
			$("#js-car-booth-temp-humid-info-reg-popup-proc-combo").val(param.procId);
			retrieveBoothInfo.carBoothTempHumidInfoRegPopup.request(param.procId);
			$("#js-car-booth-temp-humid-info-reg-popup-booth-combo").val(param.boothId);
			$("#js-car-booth-temp-humid-info-reg-popup-date").val(param.date);
			$("#js-car-booth-temp-humid-info-reg-popup-time").val(param.time);
			$("#js-car-booth-temp-humid-info-reg-popup-temp").val(param.temp);
			$("#js-car-booth-temp-humid-info-reg-popup-humid").val(param.humid);
			$("#js-car-booth-temp-humid-info-reg-popup-remark").val(param.remark);
			$("#js-car-booth-temp-humid-info-reg-popup-seqBoothTemp").val(param.seqBoothTemp);
			
		}
	};

	//------------------------------------------------
	// 온/습도 결과 등록 팝업 저장
	// ------------------------------------------------
	var saveCarBoothTempHumidInfoRegPopup = function(){
		var carPlant = $("#js-car-booth-temp-humid-info-reg-popup-carplant").val();
		var emp      = $("#js-car-booth-temp-humid-info-reg-popup-emp").val();
		var procId   = $("#js-car-booth-temp-humid-info-reg-popup-proc-combo").val();
		var boothId  = $("#js-car-booth-temp-humid-info-reg-popup-booth-combo").val();
		var date     = $("#js-car-booth-temp-humid-info-reg-popup-date").val();
		var time     = $("#js-car-booth-temp-humid-info-reg-popup-time").val();
		var temp     = $("#js-car-booth-temp-humid-info-reg-popup-temp").val();
		var humid    = $("#js-car-booth-temp-humid-info-reg-popup-humid").val();
		var remark   = $("#js-car-booth-temp-humid-info-reg-popup-remark").val();
		
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
						$("#js-car-booth-temp-humid-info-reg-popup-date").focus();
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
						$("#js-car-booth-temp-humid-info-reg-popup-time").focus();
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
						$("#js-car-booth-temp-humid-info-reg-popup-time").focus();
					}
				}
			});
			return;
		}
		if(app.utils.isEmpty(temp)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="온도가 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-booth-temp-humid-info-reg-popup-temp").focus();
					}
				}
			});
			return;
		}
		if(app.utils.isEmpty(humid)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="습도가 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-booth-temp-humid-info-reg-popup-humid").focus();
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
					saveBoothInspInfo.request();
				}
			}
		});
	};

	//-------------------------------------------------
	// 부스별 온,습도 결과 저장
	//-------------------------------------------------
	var saveBoothInspInfo = {
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
								$('#js-car-booth-temp-humid-info-reg-popup-close-button').click();
								retrieveBoothInspInfo.request();
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
			var carPlant    	= $("#js-car-booth-temp-humid-info-reg-popup-carplant").val();
			var emp         	= $("#js-car-booth-temp-humid-info-reg-popup-emp").val();
			var procId      	= $("#js-car-booth-temp-humid-info-reg-popup-proc-combo").val();
			var boothId     	= $("#js-car-booth-temp-humid-info-reg-popup-booth-combo").val();
			var inspDate    	= $("#js-car-booth-temp-humid-info-reg-popup-date").val().replace(/-/gi, "");
			var inspTime    	= $("#js-car-booth-temp-humid-info-reg-popup-time").val().replace(/:/gi, "");
			var temperature 	= $("#js-car-booth-temp-humid-info-reg-popup-temp").val();
			var humidity    	= $("#js-car-booth-temp-humid-info-reg-popup-humid").val();
			var remark      	= $("#js-car-booth-temp-humid-info-reg-popup-remark").val();
			var seqBoothTemp  	= $('#js-car-booth-temp-humid-info-reg-popup-seqBoothTemp').val() == '' ? 0 : $('#js-car-booth-temp-humid-info-reg-popup-seqBoothTemp').val();
			
			var params = {
				  service     	: 'car.booth'
				, method      	: 'saveBoothInspInfo'
				, carPlant    	: carPlant
				, emp         	: emp
				, procId      	: procId
				, boothId     	: boothId
				, inspDate    	: inspDate
				, inspTime    	: inspTime
				, temperature	: temperature
				, humidity    	: humidity
				, remark      	: remark
				, seqBoothTemp  : seqBoothTemp
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	</script>
	<!-- 온/습도 결과 등록 팝업 - 스크립트 [END] -->
	
	
	
	<!-- 일자별 상세 현황 삭제 - 스크립트 START -->
	<script type="text/javascript">
	
	var deleteBoothTemphumidInfo = function(seqBoothTemp){
		
		if(app.utils.isEmpty(seqBoothTemp))
		{
			fn_alertInfo("A", '<spring:message code="TODO.KEY" text="삭제 데이터를 선택해 주세요."/>');
			return;
		}
		
		if(!confirm("삭제하시겠습니까?")){
			return;
		}
		
		deleteBoothInspInfo.request(seqBoothTemp);
		
		var procId = $("button[name=js-car-booth-temp-humid-info-proc-type-button]:first").attr("procId");
		retrieveBoothInspInfo.request(procId);
		
	};
	
	
	//------------------------------------------------
	// 일자별 상세 현황 - 삭제
	//------------------------------------------------
	var deleteBoothInspInfo = {
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
								retrieveBoothInspInfo.request();
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
		request: function(seqBoothTemp) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var userEmp		  = '${sessionScope.LoginUserInfo.empNum}';
			
			var params = {
				  service           : 'car.booth'
				, method            : 'deleteBoothInspInfo'
				, userEmp       	: '${sessionScope.LoginUserInfo.empNum}'
				, seqBoothTemp      : seqBoothTemp
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