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
			<button type="button" id="js-ship-mobile-dbr-prev-move-button" class="wp-btn wp-left wp-prev-white"><spring:message code="TODO.KEY" text="이전"/></button>
			<h1><spring:message code="TODO.KEY" text="D.B.R. 관리"/></h1>
		</header>
		<!-- //header -->
		<!-- wp-container -->
		<section class="wp-container wp-weather-area wp-pb50">
			<div class="wp-cont-area wp-date wp-bg-none">
				<input type="date" id="js-ship-mobile-dbr-retrieve-today" title="내용입력" placeholder="측정시간">
			</div>
			<div class="wp-cont-area wp-cont-area02">
				<ul id="js-ship-mobile-dbr-info-list" class="wp-list01">
				</ul>
			</div>
			<!-- //content -->
			<!-- 날씨 측정 정보 추가 버튼 -->
			<a id="js-ship-mobile-dbr-add-button" class="wp-btn-add">+<span><spring:message code="TODO.KEY" text="날씨 측정 정보 추가"/></span></a>
			<input type="hidden" id="js-ship-mobile-dbr-yardcode" value="${param.yardCode}">
		</section>
		<!-- //wp-container -->
	</div>
	</tiles:putAttribute>
	<!-- [e] 모바일 콘텐츠 -->
	<!-- [s] 페이지 레벨 스크립트 -->
	<tiles:putAttribute name="page-level-js">
	
	<!-- 결과 스트립트 -->
	<script id="js-template-ship-mobile-dbr-info-list" type="text/x-handlebars-template">
	{{#rows}}
		<li>
			<a name="js-ship-mobile-dbr-info-list-button" seq={{seqShipDbrMast}} class="wp-link">
				<span class="wp-thumbnail"><img src="/image/mobile/data/thumbnail/DBR/@thumbnail_DBR.png" alt="" /></span>
				<ul>
					<li>Hull No. : {{hullNo}}</li>
					<li>Type/Size : {{shipTypeSize}}</li>
					<li>Inspector : {{empNm}}</li>
				</ul>
			</a>
		</li>
	{{/rows}}
	</script>
	
	<script type="text/javascript">
	
	var shipMobileDbrInfoListTemplate;
	
	$(document).ready(function(){

		// Handlebar 초기화
		initHandlebarsTemplate();
		
		// 오늘 날짜
		var todayDate = fn_getTodayDate();
		$("#js-ship-mobile-dbr-retrieve-today").val(todayDate);

		// DBR 메인 조회
		retrieveDbrInfo.request();
		
		// 날짜 change 이벤트
		$("#js-ship-mobile-dbr-retrieve-today").off().on("change", function(){
			
			// DBR 메인 조회
			retrieveDbrInfo.request();
		});
		
		// 이전 클릭
		$('#js-ship-mobile-dbr-prev-move-button').off().on('click', function(){
			window.location.href = '/mobile/ship/shipMobileMain.do';
		});
		
		// 등록 버튼 클릭
		$("#js-ship-mobile-dbr-add-button").off().on("click", function(e){
			e.preventDefault();
			e.stopPropagation();
			
			window.location.href = '/mobile/ship/shipMobileDBRreg.do?yardCode=' + $("#js-ship-mobile-dbr-yardcode").val();
		});
	});
	
	// ------------------------------------------------
	// Handlebar 초기화
	// ------------------------------------------------
	var initHandlebarsTemplate = function() {
		
		// DBR 정보 리스트
		var source = $('#js-template-ship-mobile-dbr-info-list').html();
		shipMobileDbrInfoListTemplate = Handlebars.compile(source);
	}

	// ------------------------------------------------
	// DBR 메인 조회
	// ------------------------------------------------
	var retrieveDbrInfo = {
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
					var result = shipMobileDbrInfoListTemplate(data);
					$("#js-ship-mobile-dbr-info-list").empty().append(result);
					
					$("[name=js-ship-mobile-dbr-info-list-button]").off().on("click", function(){
						var seq = $(this).attr("seq");
						
						window.location.href = '/mobile/ship/shipMobileDBRreg.do?seqMast=' + seq + "&yardCode=" + $("#js-ship-mobile-dbr-yardcode").val();
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
				  service   : 'ship.dbr'
				, method    : 'retrieveDbrInfo'
				, yardCode  : $("#js-ship-mobile-dbr-yardcode").val()
				, regDate   : $("#js-ship-mobile-dbr-retrieve-today").val().replace(/-/gi, "") 
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