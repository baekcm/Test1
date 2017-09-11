<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2016.12.26] 8D 메인" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.mobile">
	<!-- [s] 모바일 콘텐츠 -->
	<tiles:putAttribute name="page-content">
	<div class="wp-wrap">
		<!-- header -->
		<header class="wp-header">
			<button type="button" class="wp-btn wp-left wp-prev-white" id="js-ship-mobile-weather-results-prev-move-button"><spring:message code="TODO.KEY" text="이전"/></button>
			<h1><spring:message code="TODO.KEY" text="일자별 온습도 현황"/></h1>
		</header>
		<!-- //header -->
		<!-- wp-container -->
		<section class="wp-container wp-weather-area wp-pb50">
			<div class="wp-cont-area wp-date wp-bg-none">
				<button type="button" class="wp-btn wp-left wp-prev-date" id="js-ship-mobile-weather-results-today-prev-button"><spring:message code="TODO.KEY" text="이전"/></button>
				<span id="js-ship-mobile-weather-results-today">0000-00-00 -<spring:message code="TODO.KEY" text="요일"/></span>
				<button type="button" class="wp-btn wp-next-date" id="js-ship-mobile-weather-results-today-next-button"><spring:message code="TODO.KEY" text="다음"/></button>
			</div>
			<!-- title -->
			<%-- 
			<div class="wp-title-area">
				<h3 class="wp-sub-title"><spring:message code="TODO.KEY" text="측정장소"/></h3>
				<div class="wp-btn-place" id="js-ship-mobile-weather-results-inout-button">
					<span class="wp-place-text" id="js-ship-mobile-weather-results-inout"><spring:message code="TODO.KEY" text="옥외"/></span>
					<span class="wp-place-icon"></span>
				</div>
			</div>
			 --%>
			<!-- content -->
			<div class="wp-cont-area">
				<div class="wp-text-section">
					<div id="js-ship-mobile-weather-results-measure-count"><span><spring:message code="TODO.KEY" text="측정횟수"/></span><spring:message code="TODO.KEY" text="회"/></div>
				</div>
				<h3 class="wp-list-title"><spring:message code="TODO.KEY" text="최종 온습도 측정"/></h3>
				<div class="wp-table wp-no-line h-center">
				<table>
						<caption><spring:message code="TODO.KEY" text="최종 온습도 측정"/></caption>
						<colgroup>
							<col style="width:auto">
							<col style="width:16.6%">
							<col style="width:16.6%">
							<col style="width:16.6%">
							<col style="width:16.6%">
							<col style="width:16.6%">
						</colgroup>
						<tbody>
							<tr>
								<th><spring:message code="TODO.KEY" text="DT"/></th>
								<td id="js-ship-mobile-weather-results-dt"></td>
								<th><spring:message code="TODO.KEY" text="WT"/></th>
								<td id="js-ship-mobile-weather-results-wt"></td>
								<th><spring:message code="TODO.KEY" text="ST"/></th>
								<td id="js-ship-mobile-weather-results-st"></td>
							</tr>						
							<tr>
								<th><spring:message code="TODO.KEY" text="DP"/></th>
								<td id="js-ship-mobile-weather-results-dp"></td>
								<th><spring:message code="TODO.KEY" text="RH"/></th>
								<td id="js-ship-mobile-weather-results-rh"></td>
								<th><spring:message code="TODO.KEY" text="SW"/></th>
								<td id="js-ship-mobile-weather-results-sw"></td>
							</tr>
						</tbody>
				</table>
				</div>
			</div>
			<!-- //content -->
			<!-- box content -->
			<script id="js-template-ship-mobile-weather-results-inout-weather-info" type="text/x-handlebars-template">
			{{#rows}} 
				{{#if @first}}
					<div class="wp-title"><span>{{inOutNm}}</span></div>
				{{/if}}
				<div class="wp-box-cont" id="js-ship-mobile-weather-results-inout-weather-info-detail-{{seqShipWeatherMast}}">
					<div class="wp-table-top">
						<div class="wp-time">{{measureTime}}&nbsp;&nbsp;[{{placeCodeNm}}]&nbsp;&nbsp;{{empNm}}</div>
						<div class="wp-weather-icon"><i class="wp-weather-mobile-cont {{weatherCondClass}}"></i><span>{{weatherCondNm}}</span></div>
					</div>
					<div class="wp-table wp-no-line h-center">
					<table>
							<caption><spring:message code="TODO.KEY" text="최종 온습도 측정"/></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:16.6%">
								<col style="width:16.6%">
								<col style="width:16.6%">
								<col style="width:16.6%">
								<col style="width:16.6%">
							</colgroup>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="DT"/></th>
									<td>{{dryTemp}}</td>
									<th><spring:message code="TODO.KEY" text="WT"/></th>
									<td>{{wetTemp}}</td>
									<th><spring:message code="TODO.KEY" text="ST"/></th>
									<td>{{steelTemp}}</td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="DP"/></th>
									<td>{{dewPoint}}</td>
									<th><spring:message code="TODO.KEY" text="RH"/></th>
									<td>{{relHumidity}}%</td>
									<th><spring:message code="TODO.KEY" text="SW"/></th>
									<td>{{seaWaterTemp}}</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			{{/rows}}
			</script>
			<div class="wp-place wp-outside" id="js-ship-mobile-weather-results-inout-weather-info-outside">
			</div>
			<div class="wp-place wp-inside"  id="js-ship-mobile-weather-results-inout-weather-info-inside">
			</div>
			<!-- //box content -->
			<!-- 날씨 측정 정보 추가 버튼 -->
			<a href="#" class="wp-btn-add" id="js-ship-mobile-weather-results-reg-button">+<span><spring:message code="TODO.KEY" text="날씨 측정 정보 추가"/></span></a>
		</section>
		<!-- //wp-container -->
	</div>
	</tiles:putAttribute>
	<!-- [e] 모바일 콘텐츠 -->
	
	<!-- [s] 페이지 레벨 스크립트 -->
	<tiles:putAttribute name="page-level-js">
	<script type="text/javascript">
	
	var weatherResultsWeatherInfoListTemplate;
	
	var gvMobileWeatherResultsYardCode;
	var gvMobileWeatherResultsTodayDate;
	
	
	$(document).ready(function(){
		
		// 오늘 날짜 + 요일
		var todayDate = fn_getTodayDate();
		var todayDay  = fn_getTodayDay();
		
		$("#js-ship-mobile-weather-results-today").text(todayDate);
		
		gvMobileWeatherResultsTodayDate = todayDate;
		
		var yardCode = getQuerystring('yardCode');
		
		gvMobileWeatherResultsYardCode = yardCode;
	
		// Handlebar 초기화
		initHandlebarsTemplate();
		
		// 이전 클릭
		$('#js-ship-mobile-weather-results-prev-move-button').off().on('click', function(){
			window.location.href = '/mobile/ship/shipMobileWeatherRecordsMng.do?yardCode=' + gvMobileWeatherResultsYardCode;
		});
		
		// 이전날짜 클릭
		$('#js-ship-mobile-weather-results-today-prev-button').off().on('click', function(){
			gvMobileWeatherResultsTodayDate = fn_getBeforeDate(todayDate.replace(/-/gi,""),0,0,1);
			todayDate = gvMobileWeatherResultsTodayDate.substr(0,4) + "-" + gvMobileWeatherResultsTodayDate.substr(4,2) + "-" + gvMobileWeatherResultsTodayDate.substr(6,2);
			$("#js-ship-mobile-weather-results-today").text(todayDate);
			retrieveDailyWeatherInfoDetails.request();
		});
		
		// 다음날짜 클릭
		$('#js-ship-mobile-weather-results-today-next-button').off().on('click', function(){
			gvMobileWeatherResultsTodayDate = fn_getAfterDate(todayDate.replace(/-/gi,""),0,0,1);
			todayDate = gvMobileWeatherResultsTodayDate.substr(0,4) + "-" + gvMobileWeatherResultsTodayDate.substr(4,2) + "-" + gvMobileWeatherResultsTodayDate.substr(6,2);				
			$("#js-ship-mobile-weather-results-today").text(todayDate);
			retrieveDailyWeatherInfoDetails.request();
		});
		
		// 옥외/옥내 클릭
		$('#js-ship-mobile-weather-results-inout-button').off().on('click', function(){
			var firstChild = $("#js-ship-mobile-weather-results-inout-button span:first-child").detach();
			$("#js-ship-mobile-weather-results-inout-button").append(" ");
			$("#js-ship-mobile-weather-results-inout-button").append(firstChild);
			
			var inoutText = $("#js-ship-mobile-weather-results-inout").text();
			if(inoutText == "옥외"){
				inoutText = "옥내";
			} else {
				inoutText = "옥외";
			}
			$("#js-ship-mobile-weather-results-inout").text(inoutText);
			
			// 시간대별 온/습도 조회
			retrieveDailyWeatherInfoDetails.request();
		});
		
		// (+) 등록 버튼 클릭
		$('#js-ship-mobile-weather-results-reg-button').off().on('click', function(e){
			e.preventDefault();
			window.location.href = '/mobile/ship/shipMobileWeatherRecordsReg.do?yardCode=' + gvMobileWeatherResultsYardCode + "&prevPgmId=shipMobileWeatherResults";
		});
		
		if(app.utils.isEmpty(yardCode) || yardCode == "undefined"){
			alert("조선소코드가 없습니다.");
			return;
		}
		
		// 시간대별 온/습도 조회
		retrieveDailyWeatherInfoDetails.request();
	});

	// ------------------------------------------------
	// Handlebar 초기화
	// ------------------------------------------------
	var initHandlebarsTemplate = function() {
		
		// 온/습도 리스트
		var source = $('#js-template-ship-mobile-weather-results-inout-weather-info').html();
		weatherResultsWeatherInfoListTemplate = Handlebars.compile(source);
	}
	

	// ------------------------------------------------
	// 시간대별 온/습도조회
	// ------------------------------------------------
	var retrieveDailyWeatherInfoDetails = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {

						console.log("********* retrieveDailyWeatherInfoDetails ");
						console.log(response);

						$("#js-ship-mobile-weather-results-today").append(" " + response.rs.day[0].todayDay);
						
						var inData  = { rows : [] };
						var outData = { rows : [] };
						
						for(var i=0 ; i<response.rs.detail.length ; i++){
							if(response.rs.detail[i].inOutNm == "옥내"){
								inData.rows.push(response.rs.detail[i]);
							} else if(response.rs.detail[i].inOutNm == "옥외"){
								outData.rows.push(response.rs.detail[i]);
							}
						}
						
						// 시간별 온습도 현황
						var result1 = weatherResultsWeatherInfoListTemplate(inData);
						$("#js-ship-mobile-weather-results-inout-weather-info-inside").empty().append(result1);
						var result2 = weatherResultsWeatherInfoListTemplate(outData);
						$("#js-ship-mobile-weather-results-inout-weather-info-outside").empty().append(result2);
						
						// 최종 온습도 정보
						$("#js-ship-mobile-weather-results-measure-count").html("<span>측정횟수</span>" + "0회");
						$("#js-ship-mobile-weather-results-dt").text("");
						$("#js-ship-mobile-weather-results-wt").text("");
						$("#js-ship-mobile-weather-results-st").text("");
						$("#js-ship-mobile-weather-results-dp").text("");
						$("#js-ship-mobile-weather-results-rh").text("");
						$("#js-ship-mobile-weather-results-sw").text("");
						
						if(response.rs.detail.length > 0){
							var tempHumidityInfo = response.rs.detail[0];
							tempHumidityInfo.measureCnt = response.rs.detail.length;
							
							$("#js-ship-mobile-weather-results-measure-count").html("<span>측정횟수</span>" + tempHumidityInfo.measureCnt +"회");
							$("#js-ship-mobile-weather-results-dt").text(tempHumidityInfo.dryTemp);
							$("#js-ship-mobile-weather-results-wt").text(tempHumidityInfo.wetTemp);
							$("#js-ship-mobile-weather-results-st").text(tempHumidityInfo.steelTemp);
							$("#js-ship-mobile-weather-results-dp").text(tempHumidityInfo.dewPoint);
							$("#js-ship-mobile-weather-results-rh").text(tempHumidityInfo.relHumidity);
							$("#js-ship-mobile-weather-results-sw").text(tempHumidityInfo.seaWaterTemp);
						}
						
						// 항목 클릭하여 수정
						$("div[id*=js-ship-mobile-weather-results-inout-weather-info-detail-]").off().on('click', function(e){
							var seqShipWeatherMast = this.id.substring("js-ship-mobile-weather-results-inout-weather-info-detail".length + 1);
							var convertDate = gvMobileWeatherResultsTodayDate.replace(/-/gi,"");
							console.log(seqShipWeatherMast);
							window.location.href = '/mobile/ship/shipMobileWeatherRecordsReg.do?yardCode=' + gvMobileWeatherResultsYardCode + "&prevPgmId=shipMobileWeatherResults&measureDate=" + convertDate + "&seqShipWeatherMast=" + seqShipWeatherMast;
						});
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
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					  service      : 'ship.weatherInfo'
					, method       : 'retrieveDailyWeatherInfoDetails'
					, yardCode     : gvMobileWeatherResultsYardCode
					, measureDate  : gvMobileWeatherResultsTodayDate.replace(/-/gi,"")
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
	<!-- [e] 페이지 레벨 스크립트 -->
</tiles:insertDefinition>
