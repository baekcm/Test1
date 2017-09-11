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
		<header class="wp-header wp-dark-shadow">
			<button type="button" class="wp-btn wp-left wp-prev-white" id="js-ship-mobile-humidity-prev-move-button"><spring:message code="TODO.KEY" text="이전"/></button>
			<h1><spring:message code="TODO.KEY" text="습도환산"/></h1>
		</header>
		<!-- //header -->
		<!-- wp-container -->
		<section class="wp-container wp-humidity">
			<div class="wp-result-dt" name="js-ship-mobile-humidity-input-area" type="dt" on="on">
				<div class="wp-result-title"><spring:message code="TODO.KEY" text="DT"/></div>
				<div class="wp-result-cont on" id="js-ship-mobile-humidity-dt-value">0</div>
			</div>
			<div class="wp-result-wt" name="js-ship-mobile-humidity-input-area" type="wt" on="">
				<div class="wp-result-title"><spring:message code="TODO.KEY" text="WT"/></div>
				<div class="wp-result-cont" id="js-ship-mobile-humidity-wt-value">0</div>
			</div>
			<div class="wp-result">
				<div class="wp-result-cont" id="js-ship-mobile-humidity-result"></div>
			</div>
	
			<div class="wp-area-number">
				<ul>
					<li><button type="button" name="js-ship-mobile-humidity-button">7</button></li>
					<li><button type="button" name="js-ship-mobile-humidity-button">8</button></li>
					<li><button type="button" name="js-ship-mobile-humidity-button">9</button></li>
					<li><button type="button" name="js-ship-mobile-humidity-button">4</button></li>
					<li><button type="button" name="js-ship-mobile-humidity-button">5</button></li>
					<li><button type="button" name="js-ship-mobile-humidity-button">6</button></li>
					<li><button type="button" name="js-ship-mobile-humidity-button">1</button></li>
					<li><button type="button" name="js-ship-mobile-humidity-button">2</button></li>
					<li><button type="button" name="js-ship-mobile-humidity-button">3</button></li>
					<li class="wp-col2"><button type="button" name="js-ship-mobile-humidity-button">0</button></li>
					<li class="bnone"><button type="button" name="js-ship-mobile-humidity-button">.</button></li>
					<li class="wp-etc bright"><button type="button" name="js-ship-mobile-humidity-button"><spring:message code="TODO.KEY" text="AC"/></button></li>
					<li class="wp-etc"><button type="button" name="js-ship-mobile-humidity-button">=</button></li>
					<li class="wp-etc"><button type="button" id="js-ship-mobile-humidity-del-button"><img src="/image/btn/btn_m_del.png" width="33" alt="del"></button></li>
				</ul>
			</div>
		</section>
		<!-- //wp-container -->
	</div>
	</tiles:putAttribute>
	<!-- [e] 모바일 콘텐츠 -->
	
	<!-- [s] 페이지 레벨 스크립트 -->
	<tiles:putAttribute name="page-level-js">
	<script type="text/javascript">	
	
	$(document).ready(function(){
		
		// 이전 클릭
		$('#js-ship-mobile-humidity-prev-move-button').off().on('click', function(){
			window.location.href = '/mobile/ship/shipMobileMain.do';
		});
		
		// 인풋 영역 클릭
		$('div[name=js-ship-mobile-humidity-input-area]').off().on('click', function(){
			
			var type = $(this).attr("type");
			
			$('div[name=js-ship-mobile-humidity-input-area]').attr("on", "");
			$(this).attr("on", "on");
			
			if(type == "dt"){
				$("#js-ship-mobile-humidity-wt-value").removeClass("on");
				$("#js-ship-mobile-humidity-dt-value").addClass("on");
				
				
			} else {
				$("#js-ship-mobile-humidity-dt-value").removeClass("on");
				$("#js-ship-mobile-humidity-wt-value").addClass("on");
			}
			
		});
		
		
		// 숫자 버튼 클릭
		$('button[name=js-ship-mobile-humidity-button]').off().on('click', function(){
			
			var type   = "";
			var value  = "";
			
			$('div[name=js-ship-mobile-humidity-input-area]').each(function(){
				if($(this).attr("on") == "on"){
					type = $(this).attr("type");
				}
			});
			
			// 인풋값
			var inputValue = $(this).text();
			
			// AC 클릭 시, 전체 삭제
			if(inputValue == "AC"){
				$("#js-ship-mobile-humidity-dt-value").text("0");
				$("#js-ship-mobile-humidity-wt-value").text("0");
				$('#js-ship-mobile-humidity-result').text("");
				return;
			} else if(inputValue == "="){
				// 습도 계산
				retrieveStdHumidityInfo.request();
				return;
			}
			
			inputValue = inputValue.replace(/[^0-9.-]/g,'');
			
			// 기존값 가져오기
			if(type == "dt"){
				value = $("#js-ship-mobile-humidity-dt-value").text();
			} else {
				value = $("#js-ship-mobile-humidity-wt-value").text();
			}
			
			if(value == "0"){
				if(inputValue == "."){
					value = value + inputValue;
				} else {
					value = inputValue;
				}
			} else {
				if(value.indexOf(".") > -1){
					if(inputValue == "."){
						inputValue = "";
					}
					
					if(inputValue != "0" && inputValue != "5"){
						inputValue = "";
					}
					
					
					var sosu = value.substring(value.indexOf(".") + 1);
					
					if(sosu != ""){
						inputValue = "";
					}
					
				}
				value = value + inputValue;
			}
			
			// 값 넣기
			if(type == "dt"){
				$("#js-ship-mobile-humidity-dt-value").text(value);
				
				// 소수점까지 입력하면 WT로 포커스 이동
				if(value.indexOf(".") > -1){
					var sosu = value.substring(value.indexOf(".") + 1);
					if(sosu != ""){
						$('div[name=js-ship-mobile-humidity-input-area]').attr("on", "");
						$('div[name=js-ship-mobile-humidity-input-area]').each(function(){
							if("wt" == $(this).attr("type")){
								$(this).attr("on", "on");
							}
						});
						$("#js-ship-mobile-humidity-dt-value").removeClass("on");
						$("#js-ship-mobile-humidity-wt-value").addClass("on");
					}
				}
			} else {
				$("#js-ship-mobile-humidity-wt-value").text(value);
			}
			
		});
		
		// 백스페이스 클릭
		$('#js-ship-mobile-humidity-del-button').off().on('click', function(){
			
			var value  = "";
			var type   = "";
			
			$('div[name=js-ship-mobile-humidity-input-area]').each(function(){
				if($(this).attr("on") == "on"){
					type = $(this).attr("type");
				}
			});
			
			// 기존값 가져오기
			if(type == "dt"){
				value = $("#js-ship-mobile-humidity-dt-value").text();
			} else {
				value = $("#js-ship-mobile-humidity-wt-value").text();
			}
			
			if(value == "" || value == "0"){
				value = "0";
			} else {
				value = value.substring(0, value.length-1);
			}

			if(value == ""){
				value = "0";
			}
			
			// 값 넣기
			if(type == "dt"){
				$("#js-ship-mobile-humidity-dt-value").text(value);
			} else {
				$("#js-ship-mobile-humidity-wt-value").text(value);
			}
		});
	});
	

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

						$('#js-ship-mobile-humidity-result').text("");
						
						if(response.rs.length > 0){
							$('#js-ship-mobile-humidity-result').text("DP=" + response.rs[0].dewPoint + ", RH=" + response.rs[0].relHumidity);
						} else {
							$('#js-ship-mobile-humidity-result').text("습도 환산정보 오류");
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
				dryTemp = $("#js-ship-mobile-humidity-dt-value").text();
				wetTemp = $("#js-ship-mobile-humidity-wt-value").text();
				
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
	
	</script>
	</tiles:putAttribute>
	<!-- [e] 페이지 레벨 스크립트 -->
</tiles:insertDefinition>