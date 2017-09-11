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
			<button type="button" class="wp-btn wp-left wp-prev-white" id="js-ship-mobile-weather-records-reg-prev-move-button"><spring:message code="TODO.KEY" text="이전"/></button>
			<h1><spring:message code="TODO.KEY" text="온도 측정 결과 등록"/></h1>
			<button type="button" class="wp-btn wp-right wp-white-line" id="js-ship-mobile-weather-records-reg-save-button"><spring:message code="TODO.KEY" text="완료"/></button>
		</header>
		<!-- //header -->
		<!-- wp-container -->
		<section class="wp-container wp-weather-area">
			<!-- title -->
			<div class="wp-title-area">
				<h3 class="wp-section-title"><spring:message code="TODO.KEY" text="온도 측정 기본정보"/></h3>
			</div>
			<!-- content -->
			<div class="wp-cont-area">
				<div class="wp-ui-select wp-wd100p wp-mb10">
				<input type="datetime-local" id="js-ship-mobile-weather-records-reg-measure-date" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-mb10" placeholder="<spring:message code="TODO.KEY" text="측정일시"/>">
				</div>
				<div class="wp-ui-select wp-wd100p wp-mb10">
					<select id="js-ship-mobile-weather-records-reg-yard-area-combo">
					</select>
				</div>
				<!-- title -->
				<div class="wp-title-area" name="js-ship-mobile-weather-records-reg-place-detail-area" style="display: none;">
					<h3 class="wp-sub-title"><spring:message code="TODO.KEY" text="옥내외 선택"/></h3>
					<div class="wp-toggle-area"><div class="wp-toggle-place toggle-light" id="js-ship-mobile-weather-records-reg-inout-button"></div></div>					
				</div>
				<input type="text" id="js-ship-mobile-weather-records-reg-place-detail" name="js-ship-mobile-weather-records-reg-place-detail-area" style="display: none;" title="<spring:message code="TODO.KEY" text="내용입력"/>" placeholder="<spring:message code="TODO.KEY" text="상세장소"/>" class="wp-mb10">
				<div class="wp-ui-select wp-wd100p wp-mb10">
					<select id="js-ship-mobile-weather-records-reg-weather-cond-combo">
					</select>
				</div>
				<!-- title -->
				<div class="wp-title-area wp-placebtn">
					<h3 class="wp-sub-title"><spring:message code="TODO.KEY" text="Sweat/Icing"/></h3>
					<div class="wp-toggle-area"><div class="wp-toggle toggle-light" id="js-ship-mobile-weather-records-reg-si-button"></div></div>
				</div>
				<!-- title -->
				<div class="wp-title-area">
					<h3 class="wp-section-title"><spring:message code="TODO.KEY" text="온도 측정 결과"/></h3>
				</div>
				<div class="wp-table h-center wp-noline">
				<table>
						<caption><spring:message code="TODO.KEY" text="최종 온습도 측정"/></caption>
						<colgroup>
							<col style="width:20%">
							<col style="width:30%">
							<col style="width:20%">
							<col style="width:30%">
						</colgroup>
						<tbody>
							<tr>
								<th><spring:message code="TODO.KEY" text="DT(℃)"/></th>
								<td><input type="text" name="js-ship-mobile-weather-records-reg-temp" id="js-ship-mobile-weather-records-reg-dt" title="<spring:message code="TODO.KEY" text="내용입력"/>"></td>
								<th><spring:message code="TODO.KEY" text="WT(℃)"/></th>
								<td><input type="text" name="js-ship-mobile-weather-records-reg-temp" id="js-ship-mobile-weather-records-reg-wt" title="<spring:message code="TODO.KEY" text="내용입력"/>"></td>
							</tr>
							<tr>
								<th><spring:message code="TODO.KEY" text="ST(℃)"/></th>
								<td><input type="text" name="js-ship-mobile-weather-records-reg-temp" id="js-ship-mobile-weather-records-reg-st" title="<spring:message code="TODO.KEY" text="내용입력"/>"></td>
								<th><spring:message code="TODO.KEY" text="RH(℃)"/></th>
								<td><input type="text" name="js-ship-mobile-weather-records-reg-temp" id="js-ship-mobile-weather-records-reg-rh" title="<spring:message code="TODO.KEY" text="내용입력"/>" disabled="disabled"></td>
							</tr>
							<tr>
								<th><spring:message code="TODO.KEY" text="DP(℃)"/></th>
								<td><input type="text" name="js-ship-mobile-weather-records-reg-temp" id="js-ship-mobile-weather-records-reg-dp" title="<spring:message code="TODO.KEY" text="내용입력"/>" disabled="disabled"></td>
								<th><spring:message code="TODO.KEY" text="SWT(℃)"/></th>
								<td><input type="text" name="js-ship-mobile-weather-records-reg-temp" id="js-ship-mobile-weather-records-reg-swt" title="<spring:message code="TODO.KEY" text="내용입력"/>"></td>
							</tr>
						</tbody>
				</table>
				</div>
				<input type="text" id="js-ship-mobile-weather-records-reg-remark" title="<spring:message code="TODO.KEY" text="내용입력"/>" placeholder="<spring:message code="TODO.KEY" text="특이사항"/>">
				<input type="hidden" id="js-ship-mobile-weather-records-reg-emp"   value="${sessionScope.LoginUserInfo.empNum}">
				<input type="hidden" id="js-ship-mobile-weather-records-reg-seqShipWeatherMast" value="0">
			</div>
			<!-- //content -->
		</section>
		<!-- //wp-container -->
	</div>
	</tiles:putAttribute>
	<!-- [e] 모바일 콘텐츠 -->
	<!-- [s] 페이지 레벨 스크립트 -->
	<tiles:putAttribute name="page-level-js">
	<script type="text/javascript">
	
	var gvMobileWeatherRecordsRegYardCode;

	$(document).ready(function(){
		
		// 오늘 날짜 시간
		var todayDateTimeArr = fn_amPmToDateTime(fn_getTodayDateTime(), "colon");
		var todayDate = todayDateTimeArr[0].substring(0, 4) + "-" + todayDateTimeArr[0].substring(4, 6) + "-" + todayDateTimeArr[0].substring(6);
		var todayTime = todayDateTimeArr[1];
		$("#js-ship-mobile-weather-records-reg-measure-date").val(todayDate + "T" + todayTime);
		
		var yardCode = getQuerystring('yardCode');
		
		gvMobileWeatherRecordsRegYardCode = yardCode;

		var prevPgmId = getQuerystring('prevPgmId');
		
		// 이전 클릭
		$('#js-ship-mobile-weather-records-reg-prev-move-button').off().on('click', function(){
			window.location.href = '/mobile/ship/' + prevPgmId + '.do?yardCode=' + gvMobileWeatherRecordsRegYardCode;
		});
		
		// 온도 입력 시 
		$('input[name=js-ship-mobile-weather-records-reg-temp]').off().on('keyup', function() {
			
			// "숫자", ".", "-" 만 입력 허용
			$(this).val($(this).val().replace(/[^0-9.-]/g,''));
			
			var inputValue = $(this).val();
			var type       = $(this).attr("id").substring($(this).attr("id").lastIndexOf("-") + 1).toUpperCase();
			
			var returnValue = checkDecimalPoint(inputValue, type);
			
			$(this).val(returnValue);
			
			if(type == "DT" || type == "WT"){
				if(app.utils.isEmpty($('#js-ship-mobile-weather-records-reg-dt').val()) || app.utils.isEmpty($('#js-ship-mobile-weather-records-reg-wt').val())){
					$('#js-ship-mobile-weather-records-reg-dp').val('');
					$('#js-ship-mobile-weather-records-reg-rh').val('');
				}
			}
		});
		
		// 온도 입력 focusout 
		$('input[name=js-ship-mobile-weather-records-reg-temp]').on('focusout', function() {
			
			var inputValue = $(this).val();
			var returnValue = "";
			
			if(inputValue != "" && inputValue != "-"){
				returnValue = Number(inputValue);
			}
			$(this).val(returnValue);
					
			var type       = $(this).attr("id").substring($(this).attr("id").lastIndexOf("-") + 1).toUpperCase();
			
			// DT, WT 모두 입력했을 경우, 습도 자동계산
			if(type == "DT" || type == "WT"){
				if(!app.utils.isEmpty($('#js-ship-mobile-weather-records-reg-dt').val()) && !app.utils.isEmpty($('#js-ship-mobile-weather-records-reg-wt').val())){
					
					// 습도 계산
					retrieveStdHumidityInfo.request();
				}
			}
		});
		
		// 완료 버튼 클릭
		$('#js-ship-mobile-weather-records-reg-save-button').off().on('click', function(){
			saveShipWeatherMngInfo();
		});
		
		if(app.utils.isEmpty(yardCode) || yardCode == "undefined"){
			alert("조선소코드가 없습니다.");
			return;
		}
		
		// 측정장소 콤보 조회
		retrieveShipYardArea.request();
		
		// 기후 상태 콤보
		retrieveShipWeatherCond.request();
		
		// 기존 온도 정보 조회
		retrieveDailyWeatherInfoDetails.request();
		
	});

	//------------------------------------------------
	// 온도 측정 관리 등록 저장
	//------------------------------------------------
	var saveShipWeatherMngInfo = function(){
		
		var measureDate   = $('#js-ship-mobile-weather-records-reg-measure-date').val();
		var measureEmp    = $('#js-ship-mobile-weather-records-reg-emp').val();
		var placeCode     = $('#js-ship-mobile-weather-records-reg-yard-area-combo').val();
		var placeDetail   = $('#js-ship-mobile-weather-records-reg-place-detail').val();
		var weatherCond   = $('#js-ship-mobile-weather-records-reg-weather-cond-combo').val();
		var dryTemp       = $('#js-ship-mobile-weather-records-reg-dt').val();
		var wetTemp       = $('#js-ship-mobile-weather-records-reg-wt').val();
		
		if(app.utils.isEmpty(gvMobileWeatherRecordsRegYardCode))
		{
			fn_alertInfo("A", '<spring:message code="TODO.KEY" text="조선소 코드가 없습니다."/>');
			$('#js-ship-mobile-weather-records-reg-measure-date').focus();
			return;
		}
		if(app.utils.isEmpty(measureDate))
		{
			fn_alertInfo("A", '<spring:message code="TODO.KEY" text="측정일자를 입력해 주세요."/>');
			$('#js-ship-mobile-weather-records-reg-measure-date').focus();
			return;
		}
		if(app.utils.isEmpty(measureEmp))
		{
			fn_alertInfo("A", '<spring:message code="TODO.KEY" text="측정자 정보가 없습니다."/>');
			return;
		}
		if(app.utils.isEmpty(placeCode))
		{
			fn_alertInfo("A", '<spring:message code="TODO.KEY" text="측정장소를 입력해 주세요."/>');
			$('#js-ship-mobile-weather-records-reg-yard-area-combo').focus();
			return;
		}
		if(placeCode == "A0038" && app.utils.isEmpty(placeDetail))
		{
			fn_alertInfo("A", '<spring:message code="TODO.KEY" text="측정 세부장소를 입력해 주세요."/>');
			$('#js-ship-mobile-weather-records-reg-place-detail').focus();
			return;
		}
		if(app.utils.isEmpty(weatherCond))
		{
			fn_alertInfo("A", '<spring:message code="TODO.KEY" text="기후상태를 입력해 주세요."/>');
			$('#js-ship-mobile-weather-records-reg-weather-cond-combo').focus();
			return;
		}
		if(app.utils.isEmpty(dryTemp))
		{
			fn_alertInfo("A", '<spring:message code="TODO.KEY" text="DT를 입력해 주세요."/>');
			$('#js-ship-mobile-weather-records-reg-dt').focus();
			return;
		}
		if(app.utils.isEmpty(wetTemp))
		{
			fn_alertInfo("A", '<spring:message code="TODO.KEY" text="WT를 입력해 주세요."/>');
			$('#js-ship-mobile-weather-records-reg-wt').focus();
			return;
		}
		if(!confirm("저장하시겠습니까?")){
			return;
		}
		saveTemperatureInfo.request();
	};

	//------------------------------------------------
	//온도 측정 결과 등록 - 저장
	//------------------------------------------------
	var saveTemperatureInfo = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {
						
						fn_alertInfo("A", "<spring:message code='TODO.KEY' text='저장 완료 되었습니다.'/>");
						
						window.location.href = '/mobile/ship/shipMobileWeatherResults.do?yardCode=' + gvMobileWeatherRecordsRegYardCode;
						
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
				var dateTimeArr   = $('#js-ship-mobile-weather-records-reg-measure-date').val().replace(/-/gi,"").replace(/:/gi,"").split("T");
				var measureDate   = dateTimeArr[0];
				var measureTime   = dateTimeArr[1];			

				var seqShipWeatherMast = $('#js-ship-mobile-weather-records-reg-seqShipWeatherMast').val();
				var yardCode      = gvMobileWeatherRecordsRegYardCode;
				var measureEmp    = $('#js-ship-mobile-weather-records-reg-emp').val();
				var placeCode     = $('#js-ship-mobile-weather-records-reg-yard-area-combo').val();
				var placeDetail   = "";
				var inOutId       = "";
				if(placeCode == "A0038"){
					if($("#js-ship-mobile-weather-records-reg-inout-button .active").text() == "옥외"){
						inOutId = "OUT";
					} else {
						inOutId = "IN";
					}
					placeDetail   = $('#js-ship-mobile-weather-records-reg-place-detail').val();
				}
				var weatherCond   = $('#js-ship-mobile-weather-records-reg-weather-cond-combo').val();
				var dryTemp       = $('#js-ship-mobile-weather-records-reg-dt').val();
				var wetTemp       = $('#js-ship-mobile-weather-records-reg-wt').val();
				var steelTemp     = $('#js-ship-mobile-weather-records-reg-st').val();
				var dewPoint      = $('#js-ship-mobile-weather-records-reg-dp').val();
				var relHumidity   = $('#js-ship-mobile-weather-records-reg-rh').val();
				var seaWaterTemp  = $('#js-ship-mobile-weather-records-reg-swt').val();
				var remark        = $('#js-ship-mobile-weather-records-reg-remark').val();
				var sweatIcingYn  = "";
				if($("#js-ship-mobile-weather-records-reg-si-button .active").text() == "유"){
					sweatIcingYn = "Y";
				} else {
					sweatIcingYn = "N";
				}

				var params = {
					  service           : 'ship.weatherInfo'
					, method            : 'saveTemperatureInfo'
					, seqShipWeatherMast: seqShipWeatherMast
					, yardCode          : yardCode          
					, measureDate       : measureDate
					, measureTime       : measureTime
					, measureEmp        : measureEmp        
					, placeCode         : placeCode         
					, placeDetail       : placeDetail       
					, inOutId           : inOutId           
					, weatherCond       : weatherCond       
					, dryTemp           : dryTemp           
					, wetTemp           : wetTemp           
					, steelTemp         : steelTemp         
					, dewPoint          : dewPoint          
					, relHumidity       : relHumidity       
					, seaWaterTemp      : seaWaterTemp      
					, remark            : remark            
					, sweatIcingYn      : sweatIcingYn      
					, workType			: 'MOBILE'
				};
				
				console.log("***** saveTemperatureInfo - PARAM");
				console.log(params);

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
	};
	

	//------------------------------------------------
	// 온도 소수점 첫째자리까지 입력 허용 체크
	// param1 : 체크할 value
	// param2 : type. ex) DT, WT, ST, SWT 등
	//------------------------------------------------
	var checkDecimalPoint = function(inputValue, type){
		
		// 잘못된 형식으로 입력 방지
		if(inputValue.substring(0, 1) == "."){
			return "";
		}
		if(inputValue.length > 1 && inputValue.substring(0, 2) == "-."){
			return "";
		}
		if(inputValue.split("-").length > 2 || inputValue.split(".").length > 2){
			return "";
		}
		if(inputValue.indexOf("-") > -1 && inputValue.indexOf("-") != 0){
			return "";
		}

		var returnValue = "";
		
		if(inputValue.indexOf(".") > -1){
			var tempArr = new Array();
			tempArr = inputValue.split(".");
			
			// 소수점 1자리까지만 허용
			if(tempArr[1].length > 1){
				tempArr[1] = tempArr[1].substring(0, 1);
			}
			
			// DT, WT 일 경우, 소수점 첫째자리는 0 또는 5만 입력 가능
			if(type == "DT" || type == "WT"){
				if(tempArr[1] != "0" && tempArr[1] != "5"){
					tempArr[1] = "";
				}
			}
			
			if(tempArr[0].substring(0, 1) == "-"){
				returnValue = "-" + Number(tempArr[0].substring(1)) + "." + tempArr[1];
			} else {
				returnValue = Number(tempArr[0]) + "." + tempArr[1];
			}
		} else {
			if(inputValue == "" || inputValue.substring(0, 1) == "-"){
				returnValue = inputValue;
			} else {
				returnValue = Number(inputValue);
			}
		}
		return returnValue;
	};
	

	//------------------------------------------------
	// 온도 측정 관리 등록 - 습도 환산정보 조회
	//------------------------------------------------
	var retrieveStdHumidityInfo = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {
						
						console.log("********* retrieveStdHumidityInfo ");
						console.log(response.rs);
						
						if(response.rs.length > 0){
							$('#js-ship-mobile-weather-records-reg-dp').val(response.rs[0].dewPoint);
							$('#js-ship-mobile-weather-records-reg-rh').val(response.rs[0].relHumidity);
						} else {
							fn_alertInfo("E", "습도 환산정보 오류입니다.<br>DT, WT를 다시 입력하세요.");
							$('#js-ship-mobile-weather-records-reg-dp').val("");
							$('#js-ship-mobile-weather-records-reg-rh').val("");
							$('#js-ship-mobile-weather-records-reg-dt').val("");
							$('#js-ship-mobile-weather-records-reg-wt').val("");
							$('#js-ship-mobile-weather-records-reg-dt').focus();
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
				
			},
			request: function() {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var dryTemp, wetTemp;
				dryTemp = $('#js-ship-mobile-weather-records-reg-dt').val();
				wetTemp = $('#js-ship-mobile-weather-records-reg-wt').val();
				
				var params = {
					service: 'ship.weatherInfo',
					method: 'retrieveStdHumidityInfo',
					dryTemp: dryTemp,
					wetTemp: wetTemp
				};

				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);				
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
	};
	

	//------------------------------------------------
	// 기후 상태 콤보
	//------------------------------------------------
	var retrieveShipWeatherCond = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {
						
						var weatherConditionCnt = 0;
						$('#js-ship-mobile-weather-records-reg-weather-cond-combo').find('option').remove();
						
						for(var i=0; i<response.rs.length; i++)
						{
							$('#js-ship-mobile-weather-records-reg-weather-cond-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
							
							weatherConditionCnt++;
							
							$('#js-ship-mobile-weather-records-reg-weather-cond-combo').attr("title", weatherConditionCnt+" <spring:message code='TODO.KEY' text='건'/>");
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
					service: 'ship.common',
					method: 'retrieveShipWeatherCond'
				};
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
	};	

	//------------------------------------------------
	// 측정 장소 콤보
	// ------------------------------------------------
	var retrieveShipYardArea = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {
						
						console.log("~~~ 측정 장소 콤보:retrieveShipYardArea");
						console.log(response);
						
						var shipYardAreaCnt = 0;
						$('#js-ship-mobile-weather-records-reg-yard-area-combo').find('option').remove();
						
						for(var i=0; i<response.rs.length; i++)
						{
							$('#js-ship-mobile-weather-records-reg-yard-area-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
							
							shipYardAreaCnt++;
							
							$('#js-ship-mobile-weather-records-reg-yard-area-combo').attr("title", shipYardAreaCnt+" <spring:message code='TODO.KEY' text='건'/>");
						}
						
						// 측정장소가 기타 일 경우, [옥내/옥외]콤보박스, 상세장소 입력 활성화
						var placeCode = $('#js-ship-mobile-weather-records-reg-yard-area-combo').val();
						if(placeCode == "A0038"){
							$('#js-ship-mobile-weather-records-reg-place-detail').attr("disabled", false);
							$('#js-ship-mobile-weather-records-reg-inout-button').attr("disabled", false);
						} else {
							$('#js-ship-mobile-weather-records-reg-place-detail').val("");
							$('#js-ship-mobile-weather-records-reg-place-detail').attr("disabled", true);
							$('#js-ship-mobile-weather-records-reg-inout-button').attr("disabled", true);
						}
						
						
						// 측정장소 콤보박스 change 이벤트
						$('#js-ship-mobile-weather-records-reg-yard-area-combo').off().on('change', function(){
							
							var placeCode = $('#js-ship-mobile-weather-records-reg-yard-area-combo').val();
							
							// 기타
							if(placeCode == "A0038"){
								$('#js-ship-mobile-weather-records-reg-place-detail').attr("disabled", false);
								$('#js-ship-mobile-weather-records-reg-inout-button').attr("disabled", false);
								$("[name=js-ship-mobile-weather-records-reg-place-detail-area]").css("display", "block");
							} else {
								$('#js-ship-mobile-weather-records-reg-place-detail').val("");
								$('#js-ship-mobile-weather-records-reg-place-detail').attr("disabled", true);
								$('#js-ship-mobile-weather-records-reg-inout-button').attr("disabled", true);
								$("[name=js-ship-mobile-weather-records-reg-place-detail-area]").css("display", "none");
							}
							
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
					service: 'ship.common',
					method: 'retrieveShipYardArea',
					code: gvMobileWeatherRecordsRegYardCode
				};
				
				console.log("~~~ 측정 장소 콤보:retrieveShipYardArea - params");
				console.log(params);
				
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
	};
	
	var retrieveDailyWeatherInfoDetails = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {
						
						var dateTimeArr   = $('#js-ship-mobile-weather-records-reg-measure-date').val().replace(/-/gi,"").replace(/:/gi,"").split("T");
						var measureDate   = dateTimeArr[0];
						var measureTime   = dateTimeArr[1];			

						var seqShipWeatherMast = "0";
						var yardCode      = gvMobileWeatherRecordsRegYardCode;
						var measureEmp    = $('#js-ship-mobile-weather-records-reg-emp').val();
						var placeCode     = $('#js-ship-mobile-weather-records-reg-yard-area-combo').val();
						var placeDetail   = "";
						var inOutId       = "";
						if(placeCode == "A0038"){
							if($("#js-ship-mobile-weather-records-reg-inout-button .active").text() == "옥외"){
								inOutId = "OUT";
							} else {
								inOutId = "IN";
							}
							placeDetail   = $('#js-ship-mobile-weather-records-reg-place-detail').val();
						}
						
						//$('#js-ship-mobile-weather-records-reg-weather-cond-combo').val("");
						$('#js-ship-mobile-weather-records-reg-dt').val("");
						$('#js-ship-mobile-weather-records-reg-wt').val("");
						$('#js-ship-mobile-weather-records-reg-st').val("");
						$('#js-ship-mobile-weather-records-reg-dp').val("");
						$('#js-ship-mobile-weather-records-reg-rh').val("");
						$('#js-ship-mobile-weather-records-reg-swt').val("");
						$('#js-ship-mobile-weather-records-reg-remark').val("");
						$('#js-ship-mobile-weather-records-reg-seqShipWeatherMast').val("");
						
						if(response.rs.detail.length > 0){
							var tempHumidityInfo = response.rs.detail[0];
							tempHumidityInfo.measureCnt = response.rs.detail.length;

							$("#js-ship-mobile-weather-records-reg-measure-date").val(tempHumidityInfo.measureDate + "T" + tempHumidityInfo.measureTime);
							$("#js-ship-mobile-weather-records-reg-yard-area-combo").val(tempHumidityInfo.placeCode);
							$("#js-ship-mobile-weather-records-reg-weather-cond-combo").val(tempHumidityInfo.weatherCond);
							$('#js-ship-mobile-weather-records-reg-dt').val(tempHumidityInfo.dryTemp);
							$('#js-ship-mobile-weather-records-reg-wt').val(tempHumidityInfo.wetTemp);
							$('#js-ship-mobile-weather-records-reg-st').val(tempHumidityInfo.steelTemp);
							$('#js-ship-mobile-weather-records-reg-dp').val(tempHumidityInfo.dewPoint);
							$('#js-ship-mobile-weather-records-reg-rh').val(tempHumidityInfo.relHumidity);
							$('#js-ship-mobile-weather-records-reg-swt').val(tempHumidityInfo.seaWaterTemp);
							$('#js-ship-mobile-weather-records-reg-remark').val(tempHumidityInfo.remark);
							$('#js-ship-mobile-weather-records-reg-seqShipWeatherMast').val(tempHumidityInfo.seqShipWeatherMast);
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
							
				var measureDate = getQuerystring('measureDate');
				var seqShipWeatherMast = getQuerystring('seqShipWeatherMast');
				
				var params = {
					  service      : 'ship.weatherInfo'
					, method       : 'retrieveDailyWeatherInfoDetails'
					, yardCode     : gvMobileWeatherRecordsRegYardCode
					, measureDate  : measureDate
					, seqShipWeatherMast : seqShipWeatherMast
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