<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2016.12.26] 8D 메인" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.mobile">
	<!-- [s] 모바일 콘텐츠 -->
	<tiles:putAttribute name="page-content">
	<div class="wp-main-wrap">
		<!-- header -->
		<header class="wp-header wp-dark-shadow">
			<h1><b><spring:message code="TODO.KEY" text="TQM"/></b> <spring:message code="TODO.KEY" text="선박"/></h1>
			<button type="button" class="wp-header-logout" id="js-ship-mobile-main-logout"><spring:message code="TODO.KEY" text="로그아웃"/></button>
		</header>
		<!-- //header -->
		<!-- visual -->
		<section class="wp-visual">
			<input type="hidden" id="js-ship-session-login-user-tsd-cust-site" value="${sessionScope.LoginUserInfo.tsdCustSite}">
			<div class="wp-ui-select">
				<select id="js-ship-mobile-main-yard-code">
				</select>
			</div>
			<div class="wp-date">
				<p id="js-ship-mobile-main-today-date"></p>
				<span id="js-ship-mobile-main-today-time"></span>
				<i class="wp-weather-mobile-main wi-day-cloudy" id="js-ship-mobile-main-today-weather-image"></i>
				<div class="wp-temperature" id="js-ship-mobile-main-today-temp"><span>℃</span></div>
				<div class="wp-announce-time">
					<div style="display:inline" id="js-ship-mobile-main-today-weather-occur-date"></div><!-- 
				 --><button type="button" class="weather-refrash" id="js-ship-mobile-main-today-weather-refresh"><spring:message code="TODO.KEY" text="새로고침"/></button>
				</div>
			</div>
		</section>
		<!-- //visual -->
		<!-- icon-menu -->
		<section class="wp-slide-menu">
			<ul>
				<li><a href="#" name="js-ship-mobile-main-page-move" moveTo="shipMobileWeatherRecordsMng.do"><img src="/image/mobile/slide_menu01.png" style="width: 42px;"><spring:message code="TODO.KEY" text="Weather Records"/></a></li>
				<li><a href="#" name="js-ship-mobile-main-page-move" moveTo="shipMobileHumidity.do"><img src="/image/mobile/slide_menu02.png" style="width: 42px;"><spring:message code="TODO.KEY" text="습도 환산"/></a></li>
				<li><a href="#" name="js-ship-mobile-main-page-move" moveTo="shipMobileProcInfoMng.do"><img src="/image/mobile/slide_menu03.png" style="width: 53.5px;"><spring:message code="TODO.KEY" text="도장공정정보"/></a></li>
				<li><a href="#" name="js-ship-mobile-main-page-move" moveTo="shipMobileRecoatingInterval.do"><img src="/image/mobile/slide_menu04.png" style="width: 42px;"><spring:message code="TODO.KEY" text="재도장 간격"/></a></li>
				<li><a href="#" name="js-ship-mobile-main-page-move" moveTo="shipMobileImmersionTime.do"><img src="/image/mobile/slide_menu05.png" style="width: 42px;"><spring:message code="TODO.KEY" text="주수 시간"/></a></li>
				<li><a href="#" name="js-ship-mobile-main-page-move" moveTo="mobileItemsLotInfo.do"><img src="/image/mobile/slide_menu06.png" style="width: 42px;"><spring:message code="TODO.KEY" text="Lot 생산이력"/></a></li>
				<li><a href="#" name="js-ship-mobile-main-page-move" moveTo="shipMobileDBR.do"><img src="/image/mobile/slide_menu07.png" style="width: 33px;"><spring:message code="TODO.KEY" text="D.B.R 관리"/></a></li>				
				<li><a href="#" name="js-ship-mobile-main-page-move" moveTo="shipMobilePreProcMng.do"><img src="/image/mobile/slide_menu08.png" style="width: 33px;"><spring:message code="TODO.KEY" text="전처리장 관리"/></a></li>
			</ul>
		</section>
		<!-- //icon-menu -->
	</div>
	</tiles:putAttribute>
	<!-- [e] 모바일 콘텐츠 -->
	
	<!-- [s] 페이지 레벨 스크립트 -->
	<tiles:putAttribute name="page-level-js">
	<script type="text/javascript">	
	
	var gvMobileWeatherRecordsRegYardCode;

	$(document).ready(function(){
		
		// 오늘 날짜 + 요일 + 시간 
		var todayDateTimeArr = fn_amPmToDateTime(fn_getTodayDateTime(), "colon");
		var todayDate = todayDateTimeArr[0].substring(0, 4) + "." + todayDateTimeArr[0].substring(4, 6) + "." + todayDateTimeArr[0].substring(6);
		var todayTime = todayDateTimeArr[1];
		var todayDay  = fn_getTodayDay();
		$("#js-ship-mobile-main-today-date").text(todayDate + " " + todayDay);
		$("#js-ship-mobile-main-today-time").text(todayTime);
		
		// 새로고침 버튼 클릭
		$("#js-ship-mobile-main-today-weather-refresh").off().on('click', function(){
			
			// 날씨 새로고침
			retrieveShortWeatherOccurInfo.request();
		});
		
		// 로그아웃 버튼 클릭
		$("#js-ship-mobile-main-logout").off().on('click', function(){
			
			window.location.href = '/doLogout.action';
		});
		
		// 페이지 이동 클릭
		$("a[name=js-ship-mobile-main-page-move]").off().on('click', function(e){
			e.preventDefault();
			
			var moveTo   = $(this).attr("moveTo");
			var yardCode = $('#js-ship-mobile-main-yard-code').val();
			var yardName = $('#js-ship-mobile-main-yard-code option:selected').text();
			
			if(app.utils.isEmpty(moveTo)){
				return;
			}
			if(app.utils.isEmpty(yardCode)){
				fn_alertInfo("A", "조선소 코드가 없습니다.");
				return;
			}
			window.location.href = '/mobile/ship/' + moveTo + '?yardCode=' + yardCode + "&yardName=" + yardName;
		});
		
		// 조선소코드 조회
		retrieveShipCust.request();
	});

	// ------------------------------------------------
	// 조선소 콤보 조회
	// ------------------------------------------------
	var retrieveShipCust = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {
						
						$('#js-ship-mobile-main-yard-code').find('option').remove();
						for(var i=0; i<response.rs.length; i++)
						{
							$('#js-ship-mobile-main-yard-code').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
						}
						$('#js-ship-mobile-main-yard-code').attr("title", response.rs.length+" <spring:message code='TODO.KEY' text='건'/>");
						
						// 조선소 콤보박스 change 이벤트
						$('#js-ship-mobile-main-yard-code').off().on('change', function(){
							// 날씨 예보 조회
							retrieveShortWeatherOccurInfo.request();
					    });
						
						// 사용자가 속한 조선소로 설정(없으면 첫번째 조선소 설정)
						var sessionLoginUserTsdCustSite = $("#js-ship-session-login-user-tsd-cust-site").val();
						if(sessionLoginUserTsdCustSite){
							$('#js-ship-mobile-main-yard-code').val(sessionLoginUserTsdCustSite);
						}
						
						// 날씨예보 조회
						retrieveShortWeatherOccurInfo.request();
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
					service: 'ship.common',
					method: 'retrieveShipCust'
				};
				app.mask.pageLock();
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
						
						$("#js-ship-mobile-main-today-weather-image").removeClass();
						$("#js-ship-mobile-main-today-temp").html("<span>℃</span>");
						$("#js-ship-mobile-main-today-weather-occur-date").text("");
						
						$("#js-ship-mobile-main-today-weather-image").addClass("wp-weather-mobile-main");
						$("#js-ship-mobile-main-today-weather-image").addClass(data.codeNm);
						
						var temp = "";
						if(data.catTemp){
							temp = data.catTemp;
						}
						$("#js-ship-mobile-main-today-temp").html(temp + "<span>℃</span>");
						
						var date = "";
						if(data.dispOccurDate){
							date = data.dispOccurDate;
						}
						var time = "";
						if(data.dispOccurTime){
							time = data.dispOccurTime;
						}
						$("#js-ship-mobile-main-today-weather-occur-date").text(date + " " + time + " 기준");
						
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
					, yardCode  : $('#js-ship-mobile-main-yard-code').val()
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