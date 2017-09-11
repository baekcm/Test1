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
			<button type="button" class="wp-btn wp-left wp-prev-white" id="js-ship-mobile-immersion-time-prev-move-button"><spring:message code="TODO.KEY" text="이전"/></button>
			<h1><spring:message code="TODO.KEY" text="주수 시간 조회"/></h1>
		</header>
		<!-- //header -->
		<!-- wp-container -->
		<section class="wp-container" id="js-ship-mobile-immersion-time-info-area">
			<!-- title -->
			<div class="wp-title-area">
				<h3 class="wp-section-title"><spring:message code="TODO.KEY" text="주수시간 조회 옵션"/></h3>
				<a href="#" class="wp-text-btn wp-btn-m-pop" data-link="js-ship-mobile-immersion-time-option-layer"><spring:message code="TODO.KEY" text="옵션선택"/></a>
			</div>
			<!-- content -->
			<div class="wp-cont-area">
				<div class="wp-text-section">
					<div><span><spring:message code="TODO.KEY" text="부위"/></span><div id="js-ship-mobile-immersion-time-major-area-name" style="display: inline"></div></div>
					<div><span><spring:message code="TODO.KEY" text="Area"/></span><div id="js-ship-mobile-immersion-time-area-name" style="display: inline"></div></div>
					<div><span><spring:message code="TODO.KEY" text="Section"/></span><div id="js-ship-mobile-immersion-time-section-name" style="display: inline"></div></div>
					<div><span><spring:message code="TODO.KEY" text="하도"/></span><div id="js-ship-mobile-immersion-time-fst-name" style="display: inline"></div></div>
					<div><span><spring:message code="TODO.KEY" text="상도"/></span><div id="js-ship-mobile-immersion-time-sec-name" style="display: inline"></div></div>
				</div>
			</div>
			<!-- //content -->
			<hr>
			<!-- box content -->
			<!-- //box content -->
		</section>
	</div>
	<div class="wp-dim-layer">
		<div class="wp-dimBg"></div>
		<div id="js-ship-mobile-immersion-time-option-layer" class="wp-option-area">
			<div class="wp-section-title"><spring:message code="TODO.KEY" text="주수시간 옵션"/></div>
			<div class="wp-select">
				<div class="wp-ui-select wp-wd100p">
				<select id="js-ship-mobile-immersion-time-major-area-combo">
				</select>
				</div>
				<div class="wp-ui-select wp-wd100p">
				<select id="js-ship-mobile-immersion-time-area-combo">
				</select>
				</div>
				<div class="wp-ui-select wp-wd100p">
				<select id="js-ship-mobile-immersion-time-section-combo">
				</select>
				</div>
				<div class="wp-ui-select wp-wd100p">
				<select id="js-ship-mobile-immersion-time-fst-combo">
				</select>
				</div>
				<div class="wp-ui-select wp-wd100p">
				<select id="js-ship-mobile-immersion-time-sec-combo">
				</select>
				</div>
			</div>
			<button type="button" class="wp-btn" id="js-ship-mobile-immersion-time-retrieve-immersion-time-info-list-button"><spring:message code="TODO.KEY" text="옵션 적용"/></button>
		</div>
	</div>
	</tiles:putAttribute>
		<!-- [s] 페이지 레벨 스크립트 -->
	<tiles:putAttribute name="page-level-js">
	
	<script id="js-template-ship-mobile-immersion-time-info-list" type="text/x-handlebars-template">
	{{#rows}}
		<div class="wp-box-cont" name="js-ship-mobile-immersion-time-info-list">
	   		<div class="wp-table-top">
	   			<div class="wp-time">{{coatAreaIdNm}}</div>
	   		</div>
	   		<div class="wp-table h-center wp-simple-line wp-margin0">
	   		<table>
	   				<caption></caption>
	   				<colgroup>
	   					<col style="width:auto">
	   					<col style="width:auto">
	   					<col style="width:auto">
						<col style="width:auto">
						<col style="width:auto">
						<col style="width:auto">
						<col style="width:auto">
						<col style="width:auto">
	   				</colgroup>
	   				<tbody>
	   					<tr>
	   						<th>-5℃</th>
	   						<th>0℃</th>
	   						<th>5℃</th>
	   					</tr>
	   					<tr>
	   						<td>{{immersion1}}</td>
	   						<td>{{immersion2}}</td>
	   						<td>{{immersion2}}</td>
	   					</tr>
	   				</tbody>
	   		</table>
	   		<table>
	   				<caption></caption>
	   				<colgroup>
	   					<col style="width:auto">
	   					<col style="width:auto">
	   					<col style="width:auto">
						<col style="width:auto">
						<col style="width:auto">
						<col style="width:auto">
						<col style="width:auto">
						<col style="width:auto">
	   				</colgroup>
	   				<tbody>
	   					<tr>
	   						<th>10℃</th>
	   						<th>15℃</th>
	   						<th>20℃</th>
	   					</tr>
	   					<tr>
	   						<td>{{immersion4}}</td>
	   						<td>{{immersion5}}</td>
	   						<td>{{immersion6}}</td>
	   					</tr>
	   				</tbody>
	   		</table>
	   		<table>
	   				<caption></caption>
	   				<colgroup>
	   					<col style="width:auto">
	   					<col style="width:auto">
	   					<col style="width:auto">
						<col style="width:auto">
						<col style="width:auto">
						<col style="width:auto">
						<col style="width:auto">
						<col style="width:auto">
	   				</colgroup>
	   				<tbody>
	   					<tr>
	   						<th>25℃</th>
	   						<th>30℃</th>
	   						<th>35℃</th>
	   					</tr>
	   					<tr>
	   						<td>{{immersion7}}</td>
	   						<td>{{immersion8}}</td>
	   						<td>{{immersion9}}</td>
	   					</tr>
	   				</tbody>
	   		</table>
	   		</div>
		</div>
	{{/rows}}
	</script>
	
	<script type="text/javascript">
	
	var immersionTimeInfoListTemplate;
	
	$(document).ready(function(){
	
		// Handlebar 초기화
		initHandlebarsTemplate();
		
		// 이전 클릭
		$('#js-ship-mobile-immersion-time-prev-move-button').off().on('click', function(){
			window.location.href = '/mobile/ship/shipMobileMain.do';
		});
		
		// 옵션적용 클릭
		$('#js-ship-mobile-immersion-time-retrieve-immersion-time-info-list-button').off().on('click', function(){
			/* 
			if(app.utils.isEmpty($("#js-ship-mobile-immersion-time-major-area-combo").val())){
				fn_alertInfo("A", "부위는 필수 선택 항목입니다.");
				return;
			}
			if(app.utils.isEmpty($("#js-ship-mobile-immersion-time-area-combo").val())){
				fn_alertInfo("A", "Area는 필수 선택 항목입니다.");
				return;
			}
			if(app.utils.isEmpty($("#js-ship-mobile-immersion-time-section-combo").val())){
				fn_alertInfo("A", "Section은 필수 선택 항목입니다.");
				return;
			}
			if(app.utils.isEmpty($("#js-ship-mobile-immersion-time-fst-combo").val())){
				fn_alertInfo("A", "하도는 필수 선택 항목입니다.");
				return;
			}
			if(app.utils.isEmpty($("#js-ship-mobile-immersion-time-sec-combo").val())){
				fn_alertInfo("A", "상도는 필수 선택 항목입니다.");
				return;
			}
			 */
			// 레이어 닫기
			$('body').css('overflow','');
			$('.wp-option-area').css('bottom', $('.wp-option-area').height()*-1);
            $("div.wp-dim-layer").fadeOut();
			
			// 주수시간 조회
			retrieveMobileImmersionTimeInfo.request();
		});
		
		// 부위 콤보 조회
		retrieveShipMajorArea.request();
		
		var yardCode = getQuerystring('yardCode');
		if(app.utils.isEmpty(yardCode) || yardCode == "undefined"){
			alert("조선소코드가 없습니다.");
			return;
		}

		// 하도 콤보 조회
		retrieveImmersionTimeFstItem.request(yardCode);
		
		// 상도 콤보 조회
		retrieveImmersionTimeSecItem.request(yardCode);

		// 주수시간 조회
		retrieveMobileImmersionTimeInfo.request();
	});

	// ------------------------------------------------
	// Handlebar 초기화
	// ------------------------------------------------
	var initHandlebarsTemplate = function() {
		
		// 주수시간 정보
		var source = $('#js-template-ship-mobile-immersion-time-info-list').html();
		immersionTimeInfoListTemplate = Handlebars.compile(source);
	}

	// ------------------------------------------------
	// 주수시간 조회
	// ------------------------------------------------
	var retrieveMobileImmersionTimeInfo = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {
						
						console.log("~~~ retrieveMobileImmersionTimeInfo");
						console.log(response);
						
						$("#js-ship-mobile-immersion-time-major-area-name").text($("#js-ship-mobile-immersion-time-major-area-combo option:selected").text());
						$("#js-ship-mobile-immersion-time-area-name").text($("#js-ship-mobile-immersion-time-area-combo option:selected").text());
						$("#js-ship-mobile-immersion-time-section-name").text($("#js-ship-mobile-immersion-time-section-combo option:selected").text());
						$("#js-ship-mobile-immersion-time-fst-name").text($("#js-ship-mobile-immersion-time-fst-combo option:selected").text());
						$("#js-ship-mobile-immersion-time-sec-name").text($("#js-ship-mobile-immersion-time-sec-combo option:selected").text());

						if(app.utils.isEmpty($("#js-ship-mobile-immersion-time-major-area-combo option:selected").val())){
							$("#js-ship-mobile-immersion-time-major-area-name").text("전체");
						}
						if(app.utils.isEmpty($("#js-ship-mobile-immersion-time-area-combo option:selected").val())){
							$("#js-ship-mobile-immersion-time-area-name").text("전체");
						}
						if(app.utils.isEmpty($("#js-ship-mobile-immersion-time-section-combo option:selected").val())){
							$("#js-ship-mobile-immersion-time-section-name").text("전체");
						}
						if(app.utils.isEmpty($("#js-ship-mobile-immersion-time-fst-combo option:selected").val())){
							$("#js-ship-mobile-immersion-time-fst-name").text("전체");
						}
						if(app.utils.isEmpty($("#js-ship-mobile-immersion-time-sec-combo option:selected").val())){
							$("#js-ship-mobile-immersion-time-sec-name").text("전체");
						}
						
						$("div[name=js-ship-mobile-immersion-time-info-list]").remove();
						var data = {
								rows : response.rs
						};
						var result = immersionTimeInfoListTemplate(data);
						$("#js-ship-mobile-immersion-time-info-area").append(result);
						
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
					  service          : 'ship.prodInfo'
					, method           : 'retrieveMobileImmersionTimeInfo'
					, majorArea        : $("#js-ship-mobile-immersion-time-major-area-combo").val()
					, area             : $("#js-ship-mobile-immersion-time-area-combo").val()
					, section          : $("#js-ship-mobile-immersion-time-section-combo").val()
					, fstCoatProductId : $("#js-ship-mobile-immersion-time-fst-combo").val()
					, secCoatProductId : $("#js-ship-mobile-immersion-time-sec-combo").val()
				};
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
	};
	
	// ------------------------------------------------
	// 부위 콤보 조회
	// ------------------------------------------------
	var retrieveShipMajorArea = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {
						
						var data = response.rs;
						
						$('#js-ship-mobile-immersion-time-major-area-combo').find('option').remove();
						
						$('#js-ship-mobile-immersion-time-major-area-combo').append("<option value=''>부위 선택 (전체)</option>");
						for(var i=0; i<response.rs.length; i++)
						{
							$('#js-ship-mobile-immersion-time-major-area-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
						}
						$('#js-ship-mobile-immersion-time-major-area-combo').attr("title", response.rs.length+" <spring:message code='TODO.KEY' text='건'/>");
						
						// majorArea 콤보 change 이벤트
						$('#js-ship-mobile-immersion-time-major-area-combo').off().on('change', function() {
							var majorArea = $('#js-ship-mobile-immersion-time-major-area-combo').val();
							retrieveShipArea.request(majorArea);
						});
						var majorArea = $('#js-ship-mobile-immersion-time-major-area-combo').val();
						retrieveShipArea.request(majorArea);
						
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
					  service   : 'ship.common'
					, method    : 'retrieveShipMajorArea'
				};
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
	};

	// ------------------------------------------------
	// Area 콤보 조회
	// ------------------------------------------------
	var retrieveShipArea = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
	
					if (message === 'OK') {
						//셀렉트 항목 적용
						var comboCnt = 0;
						$('#js-ship-mobile-immersion-time-area-combo').find('option').remove();
						$('#js-ship-mobile-immersion-time-area-combo').append("<option value=''>Area 선택 (전체)</option>");
						for(var i=0; i<response.rs.length; i++) 	{
							$('#js-ship-mobile-immersion-time-area-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
							comboCnt++;									
						}

						// Area 콤보 change 이벤트
						$('#js-ship-mobile-immersion-time-area-combo').off().on('change', function() {
							var majorArea = $('#js-ship-mobile-immersion-time-major-area-combo').val();
							var area = $('#js-ship-mobile-immersion-time-area-combo').val();
							retrieveShipSection.request(majorArea, area);
						});
						var majorArea = $('#js-ship-mobile-immersion-time-major-area-combo').val();
						var area = $('#js-ship-mobile-immersion-time-area-combo').val();
						retrieveShipSection.request(majorArea, area);
						
					} else 	{
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
			request: function(majorArea) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				
				var params = {
					service: 'ship.common',
					method: 'retrieveShipArea',
					majorArea : majorArea
				};
	
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
	};
	

	// ------------------------------------------------
	// Section 콤보 조회
	// ------------------------------------------------
	var retrieveShipSection = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {
						//셀렉트 항목 적용
						$('#js-ship-mobile-immersion-time-section-combo').find('option').remove();
						$('#js-ship-mobile-immersion-time-section-combo').append("<option value=''>Section 선택 (전체)</option>");
						for(var i=0; i<response.rs.length; i++) 	{
							$('#js-ship-mobile-immersion-time-section-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
						}
						$('#js-ship-mobile-immersion-time-section-combo').attr("title", response.rs.length+" <spring:message code='TODO.KEY' text='건'/>");
						
					} else 	{
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
			request: function(majorArea, area) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					service: 'ship.common',
					method: 'retrieveShipSection',
					majorArea : majorArea,
					area : area
				};
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
	};
	
	// ------------------------------------------------
	// 하도 제품그룹 콤보 조회
	// ------------------------------------------------
	var retrieveImmersionTimeFstItem = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {
						
						var data = response.rs;
						
						console.log("~~ retrieveImmersionTimeFstItem");
						console.log(response);
						
						$('#js-ship-mobile-immersion-time-fst-combo').find('option').remove();
						
						$('#js-ship-mobile-immersion-time-fst-combo').append("<option value=''>하도 선택 (전체)</option>");
						for(var i=0; i<response.rs.length; i++)
						{
							$('#js-ship-mobile-immersion-time-fst-combo').append("<option value='"+response.rs[i].fstCoatProductId+"'>"+response.rs[i].fscCoatProductNm+"</option>");
						}
						$('#js-ship-mobile-immersion-time-fst-combo').attr("title", response.rs.length+" <spring:message code='TODO.KEY' text='건'/>");
						
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
			request: function(yardCode) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					  service   : 'ship.prodInfo'
					, method    : 'retrieveImmersionTimeFstItem'
					, yardCode  : yardCode
				};
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
	};
	
	// ------------------------------------------------
	// 상도 제품그룹 콤보 조회
	// ------------------------------------------------
	var retrieveImmersionTimeSecItem = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {
						
						var data = response.rs;
						
						$('#js-ship-mobile-immersion-time-sec-combo').find('option').remove();
						
						$('#js-ship-mobile-immersion-time-sec-combo').append("<option value=''>상도 선택 (전체)</option>");
						for(var i=0; i<response.rs.length; i++)
						{
							$('#js-ship-mobile-immersion-time-sec-combo').append("<option value='"+response.rs[i].secCoatProductId+"'>"+response.rs[i].secCoatProductNm+"</option>");
						}
						$('#js-ship-mobile-immersion-time-sec-combo').attr("title", response.rs.length+" <spring:message code='TODO.KEY' text='건'/>");
						
						
						
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
			request: function(yardCode) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					  service   : 'ship.prodInfo'
					, method    : 'retrieveImmersionTimeSecItem'
					, yardCode  : yardCode
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