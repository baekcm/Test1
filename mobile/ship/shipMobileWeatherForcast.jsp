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
			<button type="button" class="wp-btn wp-left wp-prev-white" id="js-ship-mobile-weather-forcast-prev-move-button"><spring:message code="TODO.KEY" text="이전"/></button>
			<h1><spring:message code="TODO.KEY" text="날씨예보"/></h1>
		</header>
		<!-- //header -->
		<!-- wp-container -->
		<section class="wp-container wp-weather-area">
			<!-- title -->
			<div class="wp-title-area wp-pb0">
				<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="동네예보"/></h2>
			</div>
			<div class="wp-cont-area wp-date">
				<span id="js-ship-mobile-weather-forcast-today"></span>
			</div>
					<!-- content -->
			<div class="wp-cont-area wp-h100">
				<i class="wp-weather-mobile-submain" id="js-ship-mobile-weather-forcast-today-weather-class"></i><!-- wi-day-cloudy -->
				<div class="wp-temperature">
					<span id="js-ship-mobile-weather-forcast-today-weather-remark"></span> <span class="wp-num" id="js-ship-mobile-weather-forcast-today-weather-temp">.</span><span class="wp-celsius">℃</span>
					<div class="wp-max-min"><span id="js-ship-mobile-weather-forcast-today-humidity"></span>% / <span id="js-ship-mobile-weather-forcast-today-rainfall"></span>mm</div>
				</div>
			</div>
			<!-- //content -->
			<!-- title -->
			<div class="wp-title-area">
				<h3 class="wp-sub-title"><spring:message code="TODO.KEY" text="온도/강수정보"/></h3>
				<span class="wp-noti" id="js-ship-mobile-weather-forcast-occur-date-time"></span>
			</div>
			<!-- content -->
			
		<script id="js-template-ship-mobile-weather-forecast-weather-list" type="text/x-handlebars-template">
		{{#rows}} 
			<li>
		 		<i class="wp-weather-mobile-cont {{codeNm}}"></i>
		 		<span>{{fcstHour}}</span>
		 		<div class="wp-rainfall"><i class="wp-weather-mobile-small wi-day-rain"></i><span>{{catRainRate}}%</span></div>
		 	</li>
		{{/rows}}
		</script>
			
			<div class="wp-cont-area">
				<div style="height: 132px; text-align: center; background:#a5cde6;" id="js-ship-mobile-weather-forcast-chart"><spring:message code="TODO.KEY" text="온도영역"/></div> 
			 	<ul class="wp-date-weather" id="js-ship-mobile-weather-forcast-weather-list">
			 	</ul>
			</div>
			<!-- //content -->
			<!-- title -->
			<div class="wp-title-area wp-pt0">
				<h3 class="wp-sub-title wp-bordertop"><spring:message code="TODO.KEY" text="바람/습도 정보"/></h3>
			</div>
			<!-- content -->
			<div class="wp-cont-area">
			<!-- 북풍 / wi-direction-up
			북서풍 /wi-direction-up-right
			서풍 /wi-direction-right
			남서풍 /wi-direction-down-right
			남풍 /wi-direction-down
			남동풍 /wi-direction-down-left
			동풍 /wi-direction-left
			북동풍 /wi-direction-up-left
			바람없음 / -               -->
			
			
		<script id="js-template-ship-mobile-weather-forecast-vec-hum-list" type="text/x-handlebars-template">
		{{#rows}} 
		 	<li>
		 		<i class="wp-direction {{fcstValue}}"></i>
		 		<span>{{fcstHour}}</span>
		 		<div class="wp-rainfall"><i class="wp-weather-mobile-small wi-humidity"></i><span>{{catReh}}%</span></div>
		 	</li>
		{{/rows}}
		</script>		
				<div style="height: 62px; text-align: center; background:#a5cde6;" id="js-ship-mobile-weather-forecast-wsd-chart"><spring:message code="TODO.KEY" text="풍속영역"/></div> 
			 	<ul class="wp-date-weather" id="js-ship-mobile-weather-forecast-vec-hum-list">
			 	</ul>
			</div>
			<!-- //content -->
			<hr>
			<!-- title -->
			<div class="wp-title-area">
				<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="주간예보"/></h2>
				<span class="wp-noti" id="js-ship-mobile-weather-forcast-week-occur-date">2017.02.08 08:00 <spring:message code="TODO.KEY" text="발표"/></span>
			</div>
			<!-- content -->
			
		<script id="js-template-ship-mobile-weather-forecast-week-weather-list" type="text/x-handlebars-template">
		{{#rows}} 
			<tr>
				<th><span class="{{setTodayClass stDate}}">{{stDate}}</span></th>
				<td><spring:message code="TODO.KEY" text="오전"/> <i class="wp-weather-mobile-cont {{wfAmClass}}"></i></td>
				<td><spring:message code="TODO.KEY" text="오후"/> <i class="wp-weather-mobile-cont {{wfPmClass}}"></i></td>
				<td>{{taTemp}}</td>
			</tr>
		{{/rows}}
		</script>		
			<div class="wp-cont-area wp-pb50">
				<div class="wp-table h-center wp-line wp-margin0">
				<table>
						<caption><spring:message code="TODO.KEY" text="최종 온습도 측정"/></caption>
						<colgroup>
							<col style="width:15%">
						</colgroup>
						<tbody id="js-ship-mobile-weather-forecast-week-weather-list">
						</tbody>
				</table>
				</div>
			</div>
			<!-- //content -->
			<!-- 날씨 측정 정보 추가 버튼 -->
			<a href="#" id="js-ship-mobile-weather-forecast-info-reg-button" class="wp-btn-add">+<span><spring:message code="TODO.KEY" text="날씨 측정 정보 추가"/></span></a>
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
	
	var weatherForecastWeatherListTemplate;
	var weatherForecastWeekWeatherListTemplate;
	var weatherForecastVecHumListTemplate;
	
	var gvMobileWeatherForecastYardCode;
	
	$(document).ready(function(){
		
		// 오늘 날짜 + 요일
		var todayDate = fn_getTodayDate();
		var todayDay  = fn_getTodayDay();
		$("#js-ship-mobile-weather-forcast-today").text(todayDate + " " + todayDay);
		
		var yardCode = getQuerystring('yardCode');
		
		gvMobileWeatherForecastYardCode = yardCode;
	
		// Handlebar 초기화
		initHandlebarsTemplate();

		// 이전 클릭
		$('#js-ship-mobile-weather-forcast-prev-move-button').off().on('click', function(){
			window.location.href = '/mobile/ship/shipMobileWeatherRecordsMng.do?yardCode=' + gvMobileWeatherForecastYardCode;
		});
		
		// (+) 등록 버튼 클릭
		$('#js-ship-mobile-weather-forecast-info-reg-button').off().on('click', function(e){
			e.preventDefault();
			window.location.href = '/mobile/ship/shipMobileWeatherRecordsReg.do?yardCode=' + gvMobileWeatherForecastYardCode + "&prevPgmId=shipMobileWeatherForcast";
		});
		
		if(app.utils.isEmpty(yardCode) || yardCode == "undefined"){
			alert("조선소코드가 없습니다.");
			return;
		}

		// 날씨예보 조회
		retrieveShortWeatherOccurInfo.request();
		
		// 온도/강수정보 조회
		retrieveWeatherOccurInfo.request();
		
		// 풍향습도 조회
		retrieveWeatherOccurInfoVecHum.request();
		
		// 주간예보 조회
		retrieveMoblieWeekWeatherInfo.request();
	});

	// ------------------------------------------------
	// Handlebar 초기화
	// ------------------------------------------------
	var initHandlebarsTemplate = function() {
		
		// 온도/강수정보 리스트
		var source = $('#js-template-ship-mobile-weather-forecast-weather-list').html();
		weatherForecastWeatherListTemplate = Handlebars.compile(source);
		
		// 주간 예보 조회
		var source = $('#js-template-ship-mobile-weather-forecast-week-weather-list').html();
		weatherForecastWeekWeatherListTemplate = Handlebars.compile(source);
		
		Handlebars.registerHelper('setTodayClass', function(stDate) {
			var todayDay  = fn_getTodayDay().substring(0, 1);
			if(todayDay == stDate){
				return "on";
			} else {
				return "";
			}
		});
		
		// 풍향,습도 조회
		var source = $('#js-template-ship-mobile-weather-forecast-vec-hum-list').html();
		weatherForecastVecHumListTemplate = Handlebars.compile(source);
	}
	
	// ------------------------------------------------
	// 풍향습도 조회
	// ------------------------------------------------
	var retrieveWeatherOccurInfoVecHum = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {
						
						var data = {
								rows : response.rs
						}
						
						console.log("********* retrieveWeatherOccurInfoVecHum ");
						console.log(response);
						
						var data = {
								rows : response.rs.occurInfo
						};
						
						var result = weatherForecastVecHumListTemplate(data);
						$("#js-ship-mobile-weather-forecast-vec-hum-list").empty().append(result);
						
						// 하이차트 풍속
						setHighChartMobileWeatherForecastWsd(response.rs.occurInfo);
						
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
					, method    : 'retrieveWeatherOccurInfoVecHum'
					, yardCode  : gvMobileWeatherForecastYardCode
				};
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
	};
	
	// ------------------------------------------------
	// 주간예보 조회
	// ------------------------------------------------
	var retrieveMoblieWeekWeatherInfo = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {
						
						var data = {
								rows : response.rs
						}
						
						console.log("********* retrieveMoblieWeekWeatherInfo ");
						console.log(response);
						
						if(data.rows.length > 0){
							$("#js-ship-mobile-weather-forcast-week-occur-date").text(data.rows[0].tmFc + " 발표");
							
						}
						
						var result = weatherForecastWeekWeatherListTemplate(data);
						$("#js-ship-mobile-weather-forecast-week-weather-list").empty().append(result);
						
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
					, method    : 'retrieveMoblieWeekWeatherInfo'
					, yardCode  : gvMobileWeatherForecastYardCode
				};
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
	};

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
						
						$("#js-ship-mobile-weather-forcast-today-weather-temp").text(data.catTemp);
						$("#js-ship-mobile-weather-forcast-today-weather-class").addClass(data.codeNm);
						$("#js-ship-mobile-weather-forcast-today-weather-remark").text(data.remark1);
						$("#js-ship-mobile-weather-forcast-today-humidity").text(data.catReh);
						$("#js-ship-mobile-weather-forcast-today-rainfall").text(data.catRn1);
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
					, yardCode  : gvMobileWeatherForecastYardCode
				};
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
						$("#js-ship-mobile-weather-forcast-occur-date-time").text(occurDateTime.dispOccurDate + " " + occurDateTime.dispOccurTime + " 발표");
						
						var occurInfo = {
								rows : response.rs.occurInfo
						}
						var result = weatherForecastWeatherListTemplate(occurInfo);
						$("#js-ship-mobile-weather-forcast-weather-list").empty().append(result);
						
						// 하이차트
						setHighChartMobileWeatherForecastTemp(response.rs.occurInfo);
						
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
					, yardCode  : gvMobileWeatherForecastYardCode
				};
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
	};

	// ------------------------------------------------
	// 하이차트 - 온도
	// ------------------------------------------------
	var setHighChartMobileWeatherForecastTemp = function(data){
		var tempArr  = new Array();
		var dateArr  = new Array();
		for(var i=0 ; i<data.length ; i++){
			tempArr.push(data[i].catTemp);
			dateArr.push(data[i].fcstHour);
		}
		Highcharts.chart('js-ship-mobile-weather-forcast-chart', {
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
	// 하이차트 - 풍속
	// ------------------------------------------------
	var setHighChartMobileWeatherForecastWsd = function(data){
		var wsdArr  = new Array();
		var dateArr  = new Array();
		for(var i=0 ; i<data.length ; i++){
			wsdArr.push(data[i].catWsd);
			dateArr.push(data[i].fcstHour);
		}
		Highcharts.chart('js-ship-mobile-weather-forecast-wsd-chart', {
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
		        name: '풍속',
		        data: wsdArr
		    }]
	    });
	}
	</script>
	</tiles:putAttribute>
	<!-- [e] 페이지 레벨 스크립트 -->
</tiles:insertDefinition>