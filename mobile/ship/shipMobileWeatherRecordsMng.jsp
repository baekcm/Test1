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
			<button type="button" class="wp-btn wp-left wp-prev-white" id="js-ship-mobile-weather-records-mng-prev-move-button"><spring:message code="TODO.KEY" text="이전"/></button>
			<h1><spring:message code="TODO.KEY" text="Weather Record"/></h1>
		</header>
		<!-- //header -->
		<!-- wp-container -->
		<section class="wp-container wp-weather-area">
			<!-- title -->
			<div class="wp-title-area">
				<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="날씨예보"/></h2>
				<button type="button" class="wp-btn wp-next-gray" id="js-ship-mobile-weather-records-mng-detail-button"><spring:message code="TODO.KEY" text="상세보기"/></button>
			</div>
			<!-- content -->
			<div class="wp-cont-area wp-h100">
				<i class="wp-weather-mobile-submain" id="js-ship-mobile-weather-records-mng-today-weather-class"></i><!-- wi-day-cloudy -->
				<div class="wp-temperature">
					<span id="js-ship-mobile-weather-records-mng-today-weather-remark"></span> <span class="wp-num" id="js-ship-mobile-weather-records-mng-today-weather-temp">.</span><span class="wp-celsius">℃</span>
					<div class="wp-max-min"><span id="js-ship-mobile-weather-records-mng-today-humidity"></span>% / <span id="js-ship-mobile-weather-records-mng-today-rainfall"></span>mm</div>
				</div>
			</div>
			<!-- //content -->
			<!-- title -->
			<div class="wp-title-area">
				<h3 class="wp-sub-title"><spring:message code="TODO.KEY" text="온도/강수정보"/></h3>
				<span class="wp-noti" id="js-ship-mobile-weather-records-mng-occur-date-time">- <spring:message code="TODO.KEY" text="발표"/></span>
			</div>
			<!-- content -->
			
			<script id="js-template-ship-mobile-weather-records-mng-weather-list" type="text/x-handlebars-template">
		{{#rows}} 
			<li>
		 		<i class="wp-weather-mobile-cont {{codeNm}}"></i>
		 		<span>{{fcstHour}}</span>
		 		<div class="wp-rainfall"><i class="wp-weather-mobile-small wi-day-rain"></i><span>{{catRainRate}}%</span></div>
		 	</li>
		{{/rows}}
		</script>
			
			<div class="wp-cont-area">
				<div style="height: 132px; text-align: center; background:#a5cde6;" id="js-ship-mobile-weather-records-mng-chart"><spring:message code="TODO.KEY" text="온도영역"/></div> 
			 	<ul class="wp-date-weather" id="js-ship-mobile-weather-records-mng-weather-list">
			 	</ul>
			</div>
			<!-- //content -->
			<hr>
			<!-- title -->
			<div class="wp-title-area">
				<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="일자 별 온습도"/></h2>
				<button type="button" class="wp-btn wp-next-gray" id="js-ship-mobile-weather-records-mng-hum-detail-button"><spring:message code="TODO.KEY" text="자세히 보기"/></button>
			</div>
			<!-- content -->
			<div class="wp-cont-area">
				<div class="wp-text-section">
					<div id="js-ship-mobile-weather-records-mng-measure-count"><span><spring:message code="TODO.KEY" text="측정횟수"/></span><spring:message code="TODO.KEY" text="회"/></div>
				</div>
				<h3 class="wp-list-title"><spring:message code="TODO.KEY" text="최종 온습도 측정"/></h3>
				<div class="wp-table h-center">
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
						<thead>
							<tr>
								<th><spring:message code="TODO.KEY" text="DT"/></th>
								<th><spring:message code="TODO.KEY" text="WT"/></th>
								<th><spring:message code="TODO.KEY" text="ST"/></th>
								<th><spring:message code="TODO.KEY" text="DP"/></th>
								<th><spring:message code="TODO.KEY" text="RH"/></th>
								<th><spring:message code="TODO.KEY" text="SW"/></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td id="js-ship-mobile-weather-records-mng-dt"></td>
								<td id="js-ship-mobile-weather-records-mng-wt"></td>
								<td id="js-ship-mobile-weather-records-mng-st"></td>
								<td id="js-ship-mobile-weather-records-mng-dp"></td>
								<td id="js-ship-mobile-weather-records-mng-rh"></td>
								<td id="js-ship-mobile-weather-records-mng-sw"></td>
							</tr>
						</tbody>
				</table>
				</div>
			</div>
			<!-- //content -->
		</section>
		<!-- //wp-container -->
	</div>
	</tiles:putAttribute>
	<!-- [e] 모바일 콘텐츠 -->
	
	<!-- [s] 페이지 레벨 스크립트 -->
	<tiles:putAttribute name="page-level-js">
	<!-- 하이차트 -->
	<script src="/highcharts/highcharts.js"></script>
	<script src="/highcharts/modules/exporting.js"></script>
	<script src="/highcharts/modules/no-data-to-display.js"></script>	
	<script type="text/javascript">
	
	var weatherRecordsMngWeatherListTemplate;
	
	var gvMobileWeatherRecordsMngYardCode;
	
	
	$(document).ready(function(){
		
		var yardCode = getQuerystring('yardCode');
		gvMobileWeatherRecordsMngYardCode = yardCode;
	
		// Handlebar 초기화
		initHandlebarsTemplate();
		
		// 날씨 상세버튼 클릭
		$('#js-ship-mobile-weather-records-mng-detail-button').off().on('click', function(){
			window.location.href = '/mobile/ship/shipMobileWeatherForcast.do?yardCode=' + gvMobileWeatherRecordsMngYardCode;
		});
		
		// 온습도 상세버튼 클릭
		$('#js-ship-mobile-weather-records-mng-hum-detail-button').off().on('click', function(){
			window.location.href = '/mobile/ship/shipMobileWeatherResults.do?yardCode=' + gvMobileWeatherRecordsMngYardCode;
		});
		
		// 이전 클릭
		$('#js-ship-mobile-weather-records-mng-prev-move-button').off().on('click', function(){
			window.location.href = '/mobile/ship/shipMobileMain.do';
		});
		
		if(app.utils.isEmpty(yardCode) || yardCode == "undefined"){
			alert("조선소코드가 없습니다.");
			return;
		}

		// 날씨예보 조회
		retrieveShortWeatherOccurInfo.request();
		
		// 온도/강수정보 조회
		retrieveWeatherOccurInfo.request();
		
		// 온습도 조회
		retrieveTempHumidity.request();
		
	});

	// ------------------------------------------------
	// Handlebar 초기화
	// ------------------------------------------------
	var initHandlebarsTemplate = function() {
		
		// 온도/강수정보 리스트
		var source = $('#js-template-ship-mobile-weather-records-mng-weather-list').html();
		weatherRecordsMngWeatherListTemplate = Handlebars.compile(source);
	}

	// ------------------------------------------------
	// 날씨 예보 조회
	// ------------------------------------------------
	var retrieveShortWeatherOccurInfo = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {
						
						var data = response.rs;
						
						console.log("********* retrieveShortWeatherOccurInfo ");
						console.log(response);
						
						$("#js-ship-mobile-weather-records-mng-today-weather-temp").text(data.catTemp);
						$("#js-ship-mobile-weather-records-mng-today-weather-class").addClass(data.codeNm);
						$("#js-ship-mobile-weather-records-mng-today-weather-remark").text(data.remark1);
						$("#js-ship-mobile-weather-records-mng-today-humidity").text(data.catReh);
						$("#js-ship-mobile-weather-records-mng-today-rainfall").text(data.catRn1);
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
					  service   : 'ship.mobile.weatherInfo'
					, method    : 'retrieveShortWeatherOccurInfo'
					, yardCode  : gvMobileWeatherRecordsMngYardCode
				};
				console.log("retrieveShortWeatherOccurInfo - param");
				console.log(params);
				
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
	};
	
	// ------------------------------------------------
	// 동네/강수정보 조회
	// ------------------------------------------------
	var retrieveWeatherOccurInfo = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {
						
						console.log("********* retrieveWeatherOccurInfo ");
						console.log(response);
						
						var occurDateTime = response.rs.occurDateTime;
						$("#js-ship-mobile-weather-records-mng-occur-date-time").text(occurDateTime.dispOccurDate + " " + occurDateTime.dispOccurTime + " 발표");
						
						var occurInfo = {
								rows : response.rs.occurInfo
						}
						var result = weatherRecordsMngWeatherListTemplate(occurInfo);
						$("#js-ship-mobile-weather-records-mng-weather-list").empty().append(result);
						
						// 하이차트
						mobileWeatherRecordsMngSetHighChart(response.rs.occurInfo);
						
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
					  service   : 'ship.mobile.weatherInfo'
					, method    : 'retrieveWeatherOccurInfo'
					, yardCode  : gvMobileWeatherRecordsMngYardCode
				};
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
	};
	
	

	// ------------------------------------------------
	// 하이차트
	// ------------------------------------------------
	var mobileWeatherRecordsMngSetHighChart = function(data){
		var tempArr  = new Array();
		var dateArr  = new Array();
		for(var i=0 ; i<data.length ; i++){
			tempArr.push(data[i].catTemp);
			dateArr.push(data[i].fcstHour);
		}
		Highcharts.chart('js-ship-mobile-weather-records-mng-chart', {
			chart: {
		        type: 'line'
		        ,margin: [0, 0, 0, 0]
		        //,spacing: [0, 0, 0, 0]
		    },
			title: {
		        text: ''
		    },
		    exporting: {
		    	enabled: false
		    },
		    credits: {
		        enabled: false
		    },
		    xAxis: [{
			            categories: dateArr,
			            crosshair: true
			}],
		    yAxis: {
		        title: {
		            text: 'Temperature'
		        }
		    },
		    legend: {
		    	enabled: false,
		        layout: 'vertical',
		        align: 'right',
		        verticalAlign: 'middle'
		    },
		    plotOptions: {
		        line: {
		            dataLabels: {
		                enabled: true
		            },
		            enableMouseTracking: false
		        }
		    },
		    series: [{
		        name: '온도',
		        data: tempArr
		        
		    }]
	    });
	}
	
	// ------------------------------------------------
	// 온습도 조회
	// ------------------------------------------------
	var retrieveTempHumidity = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {
						console.log("********* retrieveTempHumidity ");
						console.log(response);
						
						var tempHumidityCnt = "";
						if(response.rs.tempHumidityCnt.measureCnt != null){
							tempHumidityCnt = response.rs.tempHumidityCnt.measureCnt;
						}
						$("#js-ship-mobile-weather-records-mng-measure-count").html("<span>측정횟수</span>" + tempHumidityCnt +"회");
						
						var tempHumidityInfo = response.rs.tempHumidityInfo;
						
						if(tempHumidityInfo){
							$("#js-ship-mobile-weather-records-mng-dt").text(tempHumidityInfo.dryTemp);
							$("#js-ship-mobile-weather-records-mng-wt").text(tempHumidityInfo.wetTemp);
							$("#js-ship-mobile-weather-records-mng-st").text(tempHumidityInfo.steelTemp);
							$("#js-ship-mobile-weather-records-mng-dp").text(tempHumidityInfo.dewPoint);
							$("#js-ship-mobile-weather-records-mng-rh").text(tempHumidityInfo.relHumidity);
							$("#js-ship-mobile-weather-records-mng-sw").text(tempHumidityInfo.seaWaterTemp);
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
			request: function() {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					  service   : 'ship.mobile.weatherInfo'
					, method    : 'retrieveTempHumidity'
					, yardCode  : gvMobileWeatherRecordsMngYardCode
				};
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