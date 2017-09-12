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
					<li><a href="/car/inspection/carOvenTempInfo.do"><spring:message code="TODO.KEY" text="오븐 온도 정보" /></a></li>
					<li><a href="/car/inspection/carUfInfo.do" class="active"><spring:message code="TODO.KEY" text="UF 정보" /></a></li>
				</ul>
				<!-- //tab -->
				
				<!-- content box -->
				<div class="wp-table-width wp-mt13">
	
					<!-- 20170615 -->
					<!-- 상단 버튼  -->
					<div class="wp-title-section wp-no-line">
						<h2 class="wp-section-title">일자별 현황</h2>
						<div class="wp-btn-area">
							<input type="text" name="js-car-uf-temp-info-start-date" id="js-car-uf-temp-info-start-date" title="<spring:message code="TODO.KEY" text="날짜입력" />" class="wp-inp-datepicker" placeholder="<spring:message code="TODO.KEY" text="날짜입력" />"> ~ <input type="text" name="js-car-uf-temp-info-end-date" id="js-car-uf-temp-info-end-date" title="<spring:message code="TODO.KEY" text="날짜입력" />" class="wp-inp-datepicker" placeholder="<spring:message code="TODO.KEY" text="날짜입력" />"><button type="button" class="wp-btn cr3 darkgray small wp-ml5" id="js-car-uf-temp-info-retrieve-button"><spring:message code="TODO.KEY" text="검색" /></button>
							<button type="button" class="wp-btn small white bgray prev wp-ml10" name="js-car-uf-temp-info-paging-button"><span><spring:message code="TODO.KEY" text="이전" /></span></button>
							<div class="wp-btn-paging"><span class="wp-ship-fc-blue" id="js-car-uf-temp-info-page-current">1</span> / <span id="js-car-uf-temp-info-page-total">1</span></div>
							<button type="button" class="wp-btn small white bgray next" name="js-car-uf-temp-info-paging-button"><span><spring:message code="TODO.KEY" text="다음" /></span></button>
						</div>
					</div>
					
					<!-- table  -->
					<div class="wp-table-st1 wp-temphum wp-vertical-line">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:7.5%">
								<col style="width:7.5%">
								<col style="width:8.5%">
								<col style="width:7.5%">
								<col style="width:7.5%">
								<col style="width:8.5%">
								<col style="width:7.5%">
								<col style="width:7.5%">
								<col style="width:8.5%">
								<col style="width:7.5%">
								<col style="width:7.5%">
								<col style="width:8.5%">
							</colgroup>
							<thead>
								<tr id="js-car-uf-temp-info-booth-insp-info-date-list">
								</tr>
								<tr>
									<th>입구압력</th>
									<th>출구압력</th>
									<th>여액량</th>
									<th>입구압력</th>
									<th>출구압력</th>
									<th>여액량</th>
									<th>입구압력</th>
									<th>출구압력</th>
									<th>여액량</th>
									<th>입구압력</th>
									<th>출구압력</th>
									<th>여액량</th>
								</tr>
							</thead>
							<tbody id="js-car-uf-temp-info-booth-insp-info-temp-humid-row-list">
							</tbody>
						</table>
					</div>
	
					<div class="wp-title-section wp-no-line wp-mt20">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="일자별 상세 현황" /><span class="wp-fc-blue2 wp-ml10" id="js-car-uf-temp-info-day-choice-date-text"></span></h2>
						<div class="wp-btn-area">
							<button type="button" class="wp-btn small white bgray write" id="js-car-uf-temp-info-reg-button" data-link="js-car-uf-temp-info-reg-popup" data-depth="1"><span><spring:message code="TODO.KEY" text="등록" /></span></button>
						</div>
					</div>
					<!-- table -->
					<div class="wp-table-st1 wp-temphum">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:10%">
								<col style="width:10%">
								<col style="width:10%">
								<col style="width:10%">
								<col style="width:10%">
								<col style="width:auto">
								<col style="width:10%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="부스" /></th>
									<th><spring:message code="TODO.KEY" text="측정시간" /></th>
									<th><spring:message code="TODO.KEY" text="입구압력(bar)" /></th>
									<th><spring:message code="TODO.KEY" text="출구압력(bar)" /></th>
									<th><spring:message code="TODO.KEY" text="여액량(ℓ/min)" /></th>
									<th><spring:message code="TODO.KEY" text="비고" /></th>
									<th><spring:message code="TODO.KEY" text="수정/삭제" /></th>
								</tr>
							</thead>
							<tbody id="js-car-uf-temp-info-insp-list">
								<!-- 
								<tr>
									<td>1</td>
									<td>13:00</td>
									<td>1</td>
									<td>1</td>
									<td>1</td>
									<td>-</td>
									<td>
										<button type="button" class="wp-btn small white bgray mody"><span>수정</span></button>
										<button type="button" class="wp-btn small white bgray trash-gray"><span>삭제</span></button>
									</td>
								</tr>
								 -->
							</tbody>
						</table>
					</div>
					<!-- //table -->
					<!-- //20170615 -->
				</div>
				<!-- // content box -->
				
				<!-- content box -->
				<div class="wp-table-width wp-mt13">
					<div class="wp-title-section wp-no-line">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="기간별 현황" /></h2>
						<div class="wp-btn-area">
							<em class="wp-tit"><spring:message code="TODO.KEY" text="부스 No." /></em>
							<div class="wp-ui-select wp-wd80">
								<select title="항목 개수 설정" id="js-car-uf-info-booth-combo">
								</select>
							</div>
							<em class="wp-tit wp-ml10"><spring:message code="TODO.KEY" text="기준일자" /></em>
							<input type="text" name="" id="js-car-uf-info-graph-date" title="내용입력" class="wp-inp-datepicker" placeholder="<spring:message code="TODO.KEY" text="날짜입력" />">
							<button type="button" class="wp-btn darkgray small cr3" id="js-car-uf-info-graph-retrieve-button"><spring:message code="TODO.KEY" text="검색" /></button>
						</div>
					</div>
					
					<div class="wp-fr wp-vt wp-blue-comment wp-inblock"><spring:message code="TODO.KEY" text="기준일자 이전 최대 15개의 정보가 차트에 표시됩니다." /></div>
					
					<div class="wp-fc-red bold" id="js-car-uf-info-graph-area"></div>
					
				</div>
				<!-- // content box -->
	
				<!-- content box -->
				<div class="wp-table-width wp-mt13">	
					
					
					<!-- 날씨  -->
					<h2 class="wp-section-title wp-mt10"><spring:message code="TODO.KEY" text="Weather Forecast" /></h2>
					
					<!-- 동네예보 -->
					<div id="js-car-uf-info-forecast-info"></div>
					<!-- //동네예보 -->
					
					<!-- 주간예보 -->
					<div id="js-car-uf-info-week-weather-info"></div>
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
		<script id="js-template-car-uf-info-forecast-info" type="text/x-handlebars-template">
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
		<script id="js-template-car-uf-info-week-weather-info" type="text/x-handlebars-template">
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
		<script id="js-template-car-uf-temp-info-booth-insp-info-date-list" type="text/x-handlebars-template">
			{{#rows}}
				{{#if @first}}
					<th rowspan="2"><spring:message code="TODO.KEY" text="부스"/></th>
				{{/if}}
					<th colspan="3">{{inspDatetime}}</th>
			{{/rows}}
		</script>
		
		<!-- 부스별 온습도 부스별 row - 스크립트 -->
		<script id="js-template-car-uf-temp-info-booth-insp-info-temp-humid-row-list" type="text/x-handlebars-template">
			{{#rows}}
				<tr id="js-car-uf-temp-info-booth-insp-info-temp-humid-row-list-{{boothCode}}">
				</tr>
			{{/rows}}
		</script>
		
		<!-- 부스별 온습도 데이터 - 스크립트 -->
		<script id="js-template-car-uf-temp-info-booth-insp-info-temp-humid-list" type="text/x-handlebars-template">
			{{#rows}}
				{{#if @first}}
					<th>{{boothNm}}</th>
				{{/if}}
					<td class="wp-ar" name="js-car-uf-temp-info-booth-insp-info-temp-humid-td" inspDatetime="{{inspDatetime}}" style="cursor:{{setCursor inspDatetime}};">{{setUfPressure ufEnterPressure}}</span></td>
					<td class="wp-ar" name="js-car-uf-temp-info-booth-insp-info-temp-humid-td" inspDatetime="{{inspDatetime}}" style="cursor:{{setCursor inspDatetime}};">{{setUfPressure ufExitPressure}}</span></td>
					<td class="wp-ar" name="js-car-uf-temp-info-booth-insp-info-temp-humid-td" inspDatetime="{{inspDatetime}}" style="cursor:{{setCursor inspDatetime}};">{{setUfVqty ufVqty}}</span></td>
						<input type="hidden" id="js-car-uf-temp-info-booth-insp-info-daily-date">
					</td>
			{{/rows}}
		</script>
		
		
		
			
		<!-- 일자별 검사결과 상세(시간) 리스트 - 스크립트 -->
		<script id="js-template-car-uf-info-insp-list" type="text/x-handlebars-template">
			{{#rows}}
				<tr>
					<td>{{boothNm}}</td>
					<td>{{inspDatetime}}</td>
					<td>{{ufEnterPressure}}</td>
					<td>{{ufExitPressure}}</td>
					<td>{{ufVqty}}</td>
					<td class="wp-al">{{remark}}</td>
					<td>
						<button type="button" class="wp-btn small white bgray mody" name="js-car-uf-temp-info-insp-list-modify-button" seq="{{seqEdUf}}" data-link="js-car-uf-temp-info-reg-popup" data-depth="1" data-index="{{@index}}"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
						<button type="button" class="wp-btn small white bgray trash-gray" name="js-car-uf-temp-info-insp-list-delete-button" seq="{{seqEdUf}}"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
					</td>
					<input type="hidden" id="js-car-uf-temp-info-insp-list-inspDate-{{@index}}" 		value="{{inspDate}}" />
					<input type="hidden" id="js-car-uf-temp-info-insp-list-inspDatetime-{{@index}}" 	value="{{inspDatetime}}" />
					<input type="hidden" id="js-car-uf-temp-info-insp-list-boothId-{{@index}}"  		value="{{boothId}}" />
					<input type="hidden" id="js-car-uf-temp-info-insp-list-ufEnterPressure-{{@index}}" 	value="{{ufEnterPressure}}" />
					<input type="hidden" id="js-car-uf-temp-info-insp-list-ufExitPressure-{{@index}}"  	value="{{ufExitPressure}}" />
					<input type="hidden" id="js-car-uf-temp-info-insp-list-ufVqty-{{@index}}" 			value="{{ufVqty}}" />
					<input type="hidden" id="js-car-uf-temp-info-insp-list-remark-{{@index}}" 			value="{{remark}}" />
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
			
			
			var carUfTempInfoBoothInspInfoDateListTemplate;
			var carUfTempInfoBoothInspInfoTempHumidRowListTemplate;
			var carUfTempInfoBoothInspInfoTempHumidListTemplate;
			
			var carUfTempInfoInspListTemplate;
			
			var carUfInfoForecastInfoTemplate;
			var carUfInfoWeekWeatherInfoTemplate;
			
			$(document).ready(function() {
				
				// 검색조건 날짜 세팅 - 현재 년월
				var date = app.utils.formatDate(new Date(), "YYYYMMDD");
				$("#js-car-uf-temp-info-start-date").val(fn_getBeforeDate(date, 0, 1));		// 1개월전
				$("#js-car-uf-temp-info-end-date, #js-car-uf-info-graph-date").val(date);
				$("#js-car-uf-temp-info-start-date, #js-car-uf-temp-info-end-date, #js-car-uf-info-graph-date").mask('9999-99-99');
				
				// 그래프 기준일자
				$("#js-car-uf-info-graph-date").val(date);
				$("#js-car-uf-info-graph-date").mask('9999-99-99');
				
				// 기준일자
				$("#js-car-uf-temp-info-check-date-yyyymmdd").val(date);
				
				// Handlebar 초기화
				initCarUfInfoHandlebarsTemplate();
				
				$('#js-car-uf-temp-info-retrieve-button').off().on('click', function() {
					retrieveCarUfInfoAll();
				});
				
				// 그래프 - [검색] 버튼 클릭
				$('#js-car-uf-info-graph-retrieve-button').off().on('click', function() {
					// 그래프 조회
					retrieveUfGraphInfo.request();
				});
				
				// 페이징 버튼 처리
				$('button[name=js-car-uf-temp-info-paging-button]').off().on('click', function(){
					var checkDate = $("#js-car-uf-info-check-date-yyyymmdd").val();
					
					var currPage  = Number($("#js-car-uf-temp-info-page-current").text());
					var totalPage = Number($("#js-car-uf-temp-info-page-total").text());
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
					$("#js-car-uf-temp-info-page-current").text(paramPage);
					
					// UF 정보 조회
					retrieveUfInspInfo.request();
			    });
				
				// [등록] 버튼 클릭
				$("#js-car-uf-temp-info-reg-button").off().on('click', function() {
					fn_openPop($(this));
					initCarUfInfoRegPopup();
				});
				
			});
			
			
			// ------------------------------------------------
			// 전체조회
			// ------------------------------------------------
			var retrieveCarUfInfoAll = function(){

				// 부스 리스트 조회
				retrieveBoothInfo.request();
				
				// UF 정보 조회
				retrieveUfInspInfo.request();
				
				// 동네예보 조회
				retrieveForeCastInfo.request();
				
				// 주간예보 조회
				retrieveWeekWeatherInfo.request();
			};
			
			// ------------------------------------------------
			// Handlebar 초기화
			// ------------------------------------------------
			var initCarUfInfoHandlebarsTemplate = function() {
				
				// 동네예보
				var source = $('#js-template-car-uf-info-forecast-info').html();
				carUfInfoForecastInfoTemplate = Handlebars.compile(source);
				
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
				source = $('#js-template-car-uf-info-week-weather-info').html();
				carUfInfoWeekWeatherInfoTemplate = Handlebars.compile(source);
				
				// 부스별 온습도 날짜 리스트
				source = $('#js-template-car-uf-temp-info-booth-insp-info-date-list').html();
				carUfTempInfoBoothInspInfoDateListTemplate = Handlebars.compile(source);
				
				// 부스별 온습도 부스별 Row
				source = $('#js-template-car-uf-temp-info-booth-insp-info-temp-humid-row-list').html();
				carUfTempInfoBoothInspInfoTempHumidRowListTemplate = Handlebars.compile(source);
				
				// 부스별 온습도 데이터
				source = $('#js-template-car-uf-temp-info-booth-insp-info-temp-humid-list').html();
				carUfTempInfoBoothInspInfoTempHumidListTemplate = Handlebars.compile(source);
				
				
				// 일자별 검사결과 상세
				source = $('#js-template-car-uf-info-insp-list').html();
				carUfTempInfoInspListTemplate = Handlebars.compile(source);
				
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
				
				Handlebars.registerHelper('setCursor', function(date) {
					if(app.utils.isEmpty(date)){
						return "default";
					} else {
						return "pointer";
					}
				});
				
				Handlebars.registerHelper('setUfPressure', function(val) {
					if(val == undefined){
						return "-";
					} else {
						return val + " bar";
					}
				});
				
				Handlebars.registerHelper('setUfVqty', function(ufVqty) {
					if(ufVqty == undefined){
						return "-";
					} else {
						return ufVqty + " ℓ/min";
					}
				});
				
			};
			
			
			var gvCarUfTempInfoBoothRs = null;
			
			
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
							$('#js-car-uf-info-booth-combo').find('option').remove();
							
							for(var i=0; i<boothInfo.length; i++)
							{
								$('#js-car-uf-info-booth-combo').append("<option value='"+boothInfo[i].boothCode+"'>"+boothInfo[i].boothNm+"</option>");
							}
							
							gvCarUfTempInfoBoothRs = boothInfo;
							
							// 그래프 조회
							retrieveUfGraphInfo.request();
							
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
						, method   : 'retrieveBoothInfo'
						, carPlant : $("#js-car-header-car-plant").val()
						, procId   : "P02"
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				},
				carUfInfoRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								// 부스 콤보 set
								var boothInfo = response.rs;
								$('#js-car-uf-info-reg-popup-booth-combo').find('option').remove();
								
								for(var i=0; i<boothInfo.length; i++)
								{
									$('#js-car-uf-info-reg-popup-booth-combo').append("<option value='"+boothInfo[i].boothCode+"'>"+boothInfo[i].boothNm+"</option>");
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
							, method   : 'retrieveBoothInfo'
							, carPlant : $("#js-car-header-car-plant").val()
							, procId   : "P02"
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
			// 그래프 조회
			//-------------------------------------------------
			var retrieveUfGraphInfo = {
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
						, method   : 'retrieveUfGraphInfo'
						, carPlant : $("#js-car-header-car-plant").val()
						, boothId  : $("#js-car-uf-info-booth-combo").val()
						, stdDate  : $("#js-car-uf-info-graph-date").val().replace(/-/gi, "")
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//-------------------------------------------------
			// UF 정보 조회
			//-------------------------------------------------
			var retrieveUfInspInfo = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							
							$("#js-car-uf-temp-info-day-choice-date-text").text("");
							
							// 페이징
							var totalPageUf = response.rs.totalPageUf;
							
							if(totalPageUf[0].totalPage != null){
								var currPage  = $('#js-car-uf-temp-info-page-current').text();
								var totalPage = totalPageUf[0].totalPage;
								
								$('#js-car-uf-temp-info-page-total').text(totalPage);
								
								if(currPage == 1){
									$('button[name=js-car-uf-temp-info-paging-button].prev').addClass("disable");
								} else {
									$('button[name=js-car-uf-temp-info-paging-button].prev').removeClass("disable");
								}
								if(currPage == totalPage){
									$('button[name=js-car-uf-temp-info-paging-button].next').addClass("disable");
								} else {
									$('button[name=js-car-uf-temp-info-paging-button].next').removeClass("disable");
								}
							} else {
								// 페이징 버튼 활성/비활성화 처리
								$('button[name=js-car-uf-temp-info-paging-button]').addClass("disable");
							}
							
							// 부스별 데이터 수집
							var inspInfoUf = response.rs.inspInfoUf;
							var boothObjArr = [];
							var resultBoothList = [];	// 결과 부스리스트
							
							for(var i=0 ; i < gvCarUfTempInfoBoothRs.length ; i++){
								
								var boothArr = [];
								
								for(var j=0 ; j < inspInfoUf.length ; j++){
									if(gvCarUfTempInfoBoothRs[i].boothCode == inspInfoUf[j].boothId){
										boothArr.push(inspInfoUf[j]);
									}
								}
								
								if(boothArr.length > 0){
									var jsonStr = '{"' + gvCarUfTempInfoBoothRs[i].boothCode + '":' + JSON.stringify(boothArr) + '}';
									boothObjArr.push(JSON.parse(jsonStr));	// 부스별 데이터 수집
									
									// 조회된 부스리스트 set
									resultBoothList.push({
										  boothCode : gvCarUfTempInfoBoothRs[i].boothCode
										, boothNm   : gvCarUfTempInfoBoothRs[i].boothNm
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
													  ufEnterPressure	: "-"
													, ufExitPressure  	: "-"
													, ufVqty     		: "-"
													, remark 			: "-"
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
								for(var j=0 ; j < 4 ; j++){	// 날짜 4칸 채우기
									
									if(arr[j] == undefined){
										dateList.push("-");
									} else {
										dateList.push(arr[j].inspDatetime);
									}
								}
							}
							
							var dateObjList = [];
							
							for(var i=0 ; i < dateList.length ; i++){
								dateObjList.push({
									inspDatetime : dateList[i]
								});
							}
							
							var result = carUfTempInfoBoothInspInfoDateListTemplate({rows : dateObjList});
							$("#js-car-uf-temp-info-booth-insp-info-date-list").empty().append(result);
							
							// 부스별 TR  Set. 
							var result = carUfTempInfoBoothInspInfoTempHumidRowListTemplate({rows : resultBoothList});
							$("#js-car-uf-temp-info-booth-insp-info-temp-humid-row-list").empty().append(result);
							
							// 최종 데이터 set
							for(var i=0; i < resultBoothList.length; i++)
							{
								for(var j=0 ; j < boothObjArr.length ; j++){
									var result = carUfTempInfoBoothInspInfoTempHumidListTemplate({rows : boothObjArr[j][resultBoothList[i].boothCode]});
									$("#js-car-uf-temp-info-booth-insp-info-temp-humid-row-list-" + resultBoothList[i].boothCode).append(result);
								}
							}
							
							// 조회결과 테이블 클릭
							$("td[name=js-car-uf-temp-info-booth-insp-info-temp-humid-td]").off().on('click', function(){
								var inspDatetime = $(this).attr("inspDatetime");
								$("#js-car-uf-temp-info-booth-insp-info-detail-date-text").text(inspDatetime.substring(0, 10));
								$("#js-car-uf-temp-info-day-choice-date-text").text(inspDatetime.substring(0, 10));
								
								if(app.utils.isEmpty(inspDatetime)){
									return;
								}
								var inspDate = inspDatetime.substring(0, 10);
								$("#js-car-uf-temp-info-booth-insp-info-daily-date").val(inspDate);
								
								// 클릭한 날짜로 날짜별 검사 결과
								retrieveUfDailyInspInfo.request(inspDate);
							});
							
							// 첫번째 날짜로 날짜별 검사 결과
							if(dateList.length > 0){
								var inspDate = dateList[0].substring(0, 10);
								$("#js-car-uf-temp-info-booth-insp-info-detail-date-text").text(inspDate);
								$("#js-car-uf-temp-info-day-choice-date-text").text(inspDate);
								
								$("#js-car-uf-temp-info-booth-insp-info-daily-date").val(inspDate);
								retrieveUfDailyInspInfo.request(inspDate);
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
						, method   : 'retrieveUfInspInfo'
						, carPlant : $("#js-car-header-car-plant").val()
						, fromDate : $("#js-car-uf-temp-info-start-date").val().replace(/-/gi, "")
						, toDate   : $("#js-car-uf-temp-info-end-date").val().replace(/-/gi, "")
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			
			// ------------------------------------------------
			// 오븐 온도 정보 - 일자별 검사 결과 조회
			// ------------------------------------------------
			var retrieveUfDailyInspInfo = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';

						if (message === 'OK') {
							
							var data = { 
								rows : response.rs.inspInfoUf
							};
							
							var result = carUfTempInfoInspListTemplate(data);
							$("#js-car-uf-temp-info-insp-list").empty().append(result);
							
							// 일자별 상세 현황 수정버튼 클릭
							$("button[name=js-car-uf-temp-info-insp-list-modify-button]").off().on('click', function(){
								
								var index    		= $(this).attr("data-index");
								var seqEdUf      	= $(this).attr("seq");
								var inspDate 		= $("#js-car-uf-temp-info-insp-list-inspDate-" + index).val();
								var inspDatetime 	= $("#js-car-uf-temp-info-insp-list-inspDatetime-" + index).val();
								var boothId 		= $("#js-car-uf-temp-info-insp-list-boothId-" + index).val();
								var ufEnterPressure = $("#js-car-uf-temp-info-insp-list-ufEnterPressure-" + index).val();
								var ufExitPressure 	= $("#js-car-uf-temp-info-insp-list-ufExitPressure-" + index).val();
								var ufVqty 			= $("#js-car-uf-temp-info-insp-list-ufVqty-" + index).val();
								var remark 			= $("#js-car-uf-temp-info-insp-list-remark-" + index).val();
								
								var param = {
										index     		: index
									  , inspDate  		: inspDate
									  , inspDatetime  	: inspDatetime
									  , boothId      	: boothId
									  , ufEnterPressure	: ufEnterPressure
									  , ufExitPressure  : ufExitPressure
									  , ufVqty     		: ufVqty
									  , seqEdUf     	: seqEdUf
									  , remark   		: remark
								      , procId    		: 'P02'
								};
								
								fn_openPop($(this));
								initCarUfInfoRegPopup(param);
							});
							
							// TODO : 확인
							// 삭제버튼 클릭
							$("button[name=js-car-uf-temp-info-insp-list-delete-button]").off().on('click', function(){
								var seqEdUf = $(this).attr("seq");
								deleteBoothUfhumidInfo(seqEdUf);
							});
							
						}
						else
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
						, method   : 'retrieveUfDailyInspInfo'
						, carPlant : $("#js-car-header-car-plant").val()
						, procId   : 'P02'
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
							
							var result = carUfInfoForecastInfoTemplate(data);
							$("#js-car-uf-info-forecast-info").empty().append(result);
							
							
						}else
						{
							// 서비스 요청 처리 오류 발생 메시지
							
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="' + message + '"/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="공장코드가 없습니다."/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
								, callback          : {
									confirm: function() {
									}
								}
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
							
							var result = carUfInfoWeekWeatherInfoTemplate(data);
							$("#js-car-uf-info-week-weather-info").empty().append(result);
							
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
				var enterArr        = new Array();
				var exitArr         = new Array();
				var vqtyArr         = new Array();
				
				for(var i=0 ; i<data.length ; i++){
					measureDateArr.push(data[i].inspDatetime);
					enterArr.push(data[i].ufEnterPressure);
					exitArr.push(data[i].ufExitPressure);
					vqtyArr.push(data[i].ufVqty);
				}
				
				Highcharts.chart('js-car-uf-info-graph-area', {
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
			                format: '{value}',
			                style: {
			                    color: "black"
			                }
			            },
			            title: {
			                text: '압력',
			                style: {
			                    color: "black"
			                }
			            }
			        }, { // Secondary yAxis
			            title: {
			                text: '여액량',
			                style: {
			                    color: "black"
			                }
			            },
			            labels: {
			                format: '{value}',
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
			            name: 'UF 모듈 입구 압력',
			            type: 'spline',
			            data: enterArr,
			            tooltip: {
			                valueSuffix: ''
			            },
		                color: "red"
			        }, {
			            name: 'UF 모듈 출구 압력',
			            type: 'spline',
			            data: exitArr,
			            tooltip: {
			                valueSuffix: ''
			            },
		                color: "orange"
			        },{
			            name: 'UF 여액량',
			            type: 'spline',
			            yAxis: 1,
			            data: vqtyArr,
			            tooltip: {
			                valueSuffix: ''
			            },
			            color: "blue"

			        }]
			    });
			};	
		</script>
	</tiles:putAttribute>
	<!-- 페이지 레벨 스크립트 E -->

	<!-- 팝업 콘텐츠 S -->
	<tiles:putAttribute name="popup-content">
	
	
	<!-- UF 정보 등록 팝업 [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-uf-temp-info-reg-popup" class="wp-pop-layer wp-pop-w500 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="UF 정보 등록"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-uf-info-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
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
								<input type="text"   id="js-car-uf-info-reg-popup-carplant-name" title="내용입력" disabled="disabled">
								<input type="hidden" id="js-car-uf-info-reg-popup-carplant">
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="측정자"/></th>
							<td  class="wp-al wp-vm">
								<input type="text"   id="js-car-uf-info-reg-popup-emp-name" title="내용입력" disabled="disabled">
								<input type="hidden" id="js-car-uf-info-reg-popup-emp">
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="부스 No."/></th>
							<td  class="wp-al wp-vm" colspan="3">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-uf-info-reg-popup-booth-combo">
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="측정일자"/></th>
							<td  class="wp-al wp-vm">
								<input type="text" class="wp-inp-datepicker maxdate" id="js-car-uf-info-reg-popup-date" placeholder="날짜입력" readonly="readonly">
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="측정시간"/></th>
							<td  class="wp-al wp-vm">
								<input type="text" class="wp-timeFormat" id="js-car-uf-info-reg-popup-time">
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
						<col style="width:23%">
						<col style="width:20%">
						<col style="width:23%">
						<col style="width:20%">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="입구 압력(bar)"/></th>
							<td><input type="text" name="js-car-uf-info-reg-popup-input-data" id="js-car-uf-info-reg-popup-enter" title="내용입력"></td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="출구 압력(bar)"/></th>
							<td><input type="text" name="js-car-uf-info-reg-popup-input-data" id="js-car-uf-info-reg-popup-exit" title="내용입력"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="여액량(ℓ/min)"/></th>
							<td colspan="3"><input type="text" name="js-car-uf-info-reg-popup-input-data" id="js-car-uf-info-reg-popup-vqty" title="내용입력"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="비고"/></th>
							<td colspan="3"><input type="text" id="js-car-uf-info-reg-popup-remark" title="내용입력"></td>
						</tr>
					</tbody>
				</table>
	            </div>
		<!-- // scroll Area -->
		</div>
		<div class="wp-btn-area">
			<button type="button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18" id="js-car-uf-info-reg-popup-save-button"><spring:message code="TODO.KEY" text="저장"/></button>
			<input type="hidden" id="js-car-uf-info-reg-popup-seqEdUf" >
		</div>
	        </div>
	    </div>
	</div>
	<!-- UF 정보 등록 팝업 [END] -->
	

	<!-- UF 정보 등록 팝업 - 스크립트 START -->
	<script type="text/javascript">
	
	//------------------------------------------------
	// UF 정보 등록 팝업 초기화
	// ------------------------------------------------
	var initCarUfInfoRegPopup = function(param) {
		
		$("[name=js-car-uf-info-reg-popup-input-data]").val("");
		$("#js-car-uf-info-reg-popup-remark").val("");
		
		// 공장
		$("#js-car-uf-info-reg-popup-carplant-name").val($("#js-car-header-car-plant").text());
		$("#js-car-uf-info-reg-popup-carplant").val($("#js-car-header-car-plant").val());
		
		// 등록자
		$("#js-car-uf-info-reg-popup-emp-name").val("${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}");
		$("#js-car-uf-info-reg-popup-emp").val("${sessionScope.LoginUserInfo.empNum}");
		
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
		
		var time = hours + ":" + minutes;
		
		$("#js-car-uf-info-reg-popup-date").val(date);
		$("#js-car-uf-info-reg-popup-time").val(time);
		
		// [저장] 버튼 클릭
		$('#js-car-uf-info-reg-popup-save-button').off().on('click', function() {
			saveCarUfInfoRegPopup();
		});
		
		// 입구압력, 출구압력, 여액량 : 마이너스 없는 양수(실수). 소수점1째자리만 입력 가능
		onlyDecimal($('input[name=js-car-uf-info-reg-popup-input-data]'), 10, 1);
		
		$("#js-car-uf-info-reg-popup-seqEdUf").val("0");
		
		// 부스 콤보 조회
		retrieveBoothInfo.carUfInfoRegPopup.request();
		
		// 수정 인 경우, 파라미터 세팅
		if(param != undefined){
			$("#js-car-uf-info-reg-popup-booth-combo").val(param.boothId);
			$("#js-car-uf-info-reg-popup-seqEdUf").val(param.seqEdUf);
			$("#js-car-uf-info-reg-popup-date").val(param.inspDate).mask('9999-99-99');
			$("#js-car-uf-info-reg-popup-time").val(param.inspDatetime);
			$("#js-car-uf-info-reg-popup-enter").val(param.ufEnterPressure);
			$("#js-car-uf-info-reg-popup-exit").val(param.ufExitPressure);
			$("#js-car-uf-info-reg-popup-vqty").val(param.ufVqty);
			$("#js-car-uf-info-reg-popup-remark").val(param.remark);
		}
		
	};

	//------------------------------------------------
	// UF 정보 등록 팝업 저장
	// ------------------------------------------------
	var saveCarUfInfoRegPopup = function(){
		var carPlant        = $("#js-car-uf-info-reg-popup-carplant").val();
		var emp             = $("#js-car-uf-info-reg-popup-emp").val();
		var boothId         = $("#js-car-uf-info-reg-popup-booth-combo").val();
		var date            = $("#js-car-uf-info-reg-popup-date").val().replace(/-/gi, "");
		var time            = $("#js-car-uf-info-reg-popup-time").val().replace(/:/gi, "");
		var enter           = $("#js-car-uf-info-reg-popup-enter").val();
		var exit            = $("#js-car-uf-info-reg-popup-exit").val();
		var vqty            = $("#js-car-uf-info-reg-popup-vqty").val();
		
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
						$("#js-car-uf-info-reg-popup-date").focus();
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
						$("#js-car-uf-info-reg-popup-time").focus();
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
						$("#js-car-uf-info-reg-popup-time").focus();
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
					saveUfInspInfo.request();
				}
			}
		});
	};

	//-------------------------------------------------
	// UF 정보 결과 등록
	//-------------------------------------------------
	var saveUfInspInfo = {
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
								$('#js-car-uf-info-reg-popup-close-button').click();
								retrieveUfInspInfo.request();
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
			var carPlant        = $("#js-car-uf-info-reg-popup-carplant").val();
			var procId          = 'P02';
			var emp             = $("#js-car-uf-info-reg-popup-emp").val();
			var boothId         = $("#js-car-uf-info-reg-popup-booth-combo").val();
			var date            = $("#js-car-uf-info-reg-popup-date").val().replace(/-/gi, "");
			var time            = $("#js-car-uf-info-reg-popup-time").val().replace(/:/gi, "");
			var enter           = $("#js-car-uf-info-reg-popup-enter").val();
			var exit            = $("#js-car-uf-info-reg-popup-exit").val();
			var vqty            = $("#js-car-uf-info-reg-popup-vqty").val();
			var remark          = $("#js-car-uf-info-reg-popup-remark").val();
			var seqEdUf 		= $("#js-car-uf-info-reg-popup-seqEdUf").val();
			
			var params = {
				  service      		: 'car.booth'
				, method       		: 'saveUfInspInfo'
				, carPlant     		: carPlant
				, emp          		: emp
				, boothId      		: boothId
				, inspDate     		: date
				, inspTime     		: time
				, ufEnterPressure   : enter
				, ufExitPressure    : exit
				, ufVqty    		: vqty
				, remark    		: remark
				, seqEdUf   		: seqEdUf
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	</script>
	<!-- UF 정보 등록 팝업 - 스크립트 [END] -->
	
	
	<!-- 일자별 상세 현황 삭제 - 스크립트 START -->
	<script type="text/javascript">
	
	var deleteBoothUfhumidInfo = function(seqEdUf){
		
		if(app.utils.isEmpty(seqEdUf))
		{
			fn_alertInfo("A", '<spring:message code="TODO.KEY" text="삭제 데이터를 선택해 주세요."/>');
			return;
		}
		
		if(!confirm("삭제하시겠습니까?")){
			return;
		}
		
		deleteBoothUfInspInfo.request(seqEdUf);
		
		// 오븐 온도 정보
		retrieveUfInspInfo.request();
	};
	
	
	//------------------------------------------------
	// 일자별 상세 현황 - 삭제
	//------------------------------------------------
	var deleteBoothUfInspInfo = {
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
								retrieveUfInspInfo.request();
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
		request: function(seqEdUf) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var params = {
				  service           : 'car.booth'
				, method            : 'deleteUfInspInfo'
				, userEmp       	: '${sessionScope.LoginUserInfo.empNum}'
				, seqEdUf      		: seqEdUf
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
	<!-- Mixing Tank 오븐 온도 삭제 - 스크립트 [END] -->
	
	
	</tiles:putAttribute>
	<!-- 팝업 콘텐츠 E -->
</tiles:insertDefinition>