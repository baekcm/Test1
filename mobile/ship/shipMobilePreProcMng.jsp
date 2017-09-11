<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.03.08] ship mobile 도정 공정정보 현황" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.mobile">
	<!-- [s] 모바일 콘텐츠 -->
	<tiles:putAttribute name="page-content">

		<div class="wp-wrap">
		
			<!-- header -->
			<header class="wp-header">
				<button type="button" class="wp-btn wp-left wp-prev-white"><spring:message code="TODO.KEY" text="이전" /></button>
				<h1><spring:message code="TODO.KEY" text="전처리장 관리" /></h1>
			</header>
			<!-- //header -->
			
			<!-- wp-container -->
			<section class="wp-container wp-pb50 wp-weather-area">
			
				<div class="wp-cont-area wp-date wp-bg-none">
					<button id="js-ship-mobile-pre-proc-mng-prev-date" type="button" class="wp-btn wp-prev-date">이전</button>
					<span id="js-ship-mobile-pre-proc-mng-date">-</span>
					<button id="js-ship-mobile-pre-proc-mng-next-date" type="button" class="wp-btn wp-next-date">다음</button>
					<input type="hidden" id="js-ship-mobile-pre-proc-mng-selected-date">
				</div>
				
				<div id="js-ship-mobile-pre-proc-mng-list">
				</div>
				
				<!-- 날씨 측정 정보 추가 버튼 -->
				<a id="js-ship-mobile-pre-proc-mng-reg" class="wp-btn-add">+<span><spring:message code="TODO.KEY" text="날씨 측정 정보 추가" /></span></a>
			</section>
			<!-- //wp-container -->
		</div>
		</tiles:putAttribute>
		<!-- [e] 모바일 콘텐츠 -->
		
		
		<!-- [s] 페이지 레벨 스크립트 -->
		<tiles:putAttribute name="page-level-js">
	
		<script id="js-template-ship-mobile-pre-proc-mng-list" type="text/x-handlebars-template">
			{{#rows}}
				<div id="js-ship-pre-proc-mng-edit-{{seq}}" data-lineNo="{{lineNo}}" data-inspDate="{{inspDate}}" class="wp-box-cont">
					<div class="wp-table-top">
						<div class="wp-time">
							{{lineNoNm}}
							<input type="hidden" id="js-ship-mobile-pre-proc-mng-line-no" value="{{lineNo}}">
						</div>
						<div class="wp-noti">{{inspEmp}}</div>
					</div>
					<div class="wp-text-section wp-textalign">
						<div class="wp-60p"><span>가동 여부</span>{{operCond}}</div>
						<div class="wp-40p"><span>General Cond.</span>{{genCond}}</div>
						<div class="wp-60p"><span>LOT No.(PTA)</span>{{ptaLotNo}}</div>
						<div class="wp-40p"><span>Paint Holiday</span>{{paintHoliday}}</div>
						<div class="wp-60p"><span>LOT No.(PTB)</span>{{ptbLotNo}}</div>
						<div class="wp-40p"><span>Dust Spray</span>{{dustSpray}}</div>
					</div>
				</div>
			{{/rows}}
		</script>
		
		<script type="text/javascript">
		
			var yardCode = getQuerystring('yardCode');
			var yardName = getQuerystring('yardName');
		
			var shipMobilePreProcMngListTemplate;
			
			$(document).ready(function(){
				
				var todayDate = fn_getTodayDate().replace(/-/gi,"");
				$("#js-ship-mobile-pre-proc-mng-selected-date").val(todayDate);
				
				// Handlebar 초기화
				var source = $('#js-template-ship-mobile-pre-proc-mng-list').html();
				shipMobilePreProcMngListTemplate = Handlebars.compile(source);
				
				// 등록 버튼
				$("#js-ship-mobile-pre-proc-mng-reg").off().on('click', function() {
					retrieveShipMobilePreProcRegStep1();
				});
				
				// 뒤로가기 버튼
				$('.wp-prev-white').off().on('click', function() {
					var url = '/mobile/ship/shipMobileMain.do';
					window.location.href = url;
				});
				
				// 조회
				retrieveMobilePreInfoList.request();
				
				// 전일 날짜 버튼
				$("#js-ship-mobile-pre-proc-mng-prev-date").off().on('click', function() {
					getBeforeDate();
				});
				
				// 후일 날짜 버튼
				$("#js-ship-mobile-pre-proc-mng-next-date").off().on('click', function() {
					getAfterDate();
				});

			});
			
			// 전일
			var getBeforeDate = function(todayDate){
				today = fn_getBeforeDate(todayDate, 0, 0, 1);
				$("#js-ship-mobile-pre-proc-mng-selected-date").val(today);
				retrieveMobilePreInfoList.request();
			};
			
			// 다음일
			var getAfterDate = function(todayDate){
				today = fn_getAfterDate(todayDate, 0, 0, 1);
				$("#js-ship-mobile-pre-proc-mng-selected-date").val(today);
				retrieveMobilePreInfoList.request();
			};
			
			// string => date
			function getDateObjectFromDashStr(dateStr){
              	var dateinfo = dateStr.split("-");
                return new Date(dateinfo[0] , dateinfo[1] -1 , dateinfo[2]);
			}
			
			// 선택 날짜 요일
			var fn_getSelectedDay = function(selectedDate){
				var dayArr  = ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"];
				return dayArr[selectedDate];
			}
			
			
			var retrieveMobilePreInfoList = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							// TODO
							var data = {
								rows : response.rs.main
							};
							
							var html = shipMobilePreProcMngListTemplate(data);
							$('#js-ship-mobile-pre-proc-mng-list').empty().append(html);
							
							$('div[id*=js-ship-pre-proc-mng-edit]').on('click', function(){
								var id 			= this.id.substring("js-ship-pre-proc-mng-edit".length + 1);
								var lineNo 		= $(this).attr("data-lineNo");
								var inspDate 	= $(this).attr("data-inspDate");
								retrieveShipMobilePreProcRegStep1(id, lineNo, inspDate);
							});
							
							var nowDate = new Date();
							
							var selectedDate = $("#js-ship-mobile-pre-proc-mng-selected-date").val().substring(0, 4) + "-" + $("#js-ship-mobile-pre-proc-mng-selected-date").val().substring(4, 6) + "-" + $("#js-ship-mobile-pre-proc-mng-selected-date").val().substring(6, 8);
							// 선택 날짜 요일
							var nowDay = fn_getSelectedDay(getDateObjectFromDashStr(selectedDate).getDay());
							$("#js-ship-mobile-pre-proc-mng-date").text(selectedDate + " " + nowDay);
							
							// 전일 날짜 버튼
							$("#js-ship-mobile-pre-proc-mng-prev-date").off().on('click', function() {
								getBeforeDate($("#js-ship-mobile-pre-proc-mng-selected-date").val());
							});
							
							// 후일 날짜 버튼
							$("#js-ship-mobile-pre-proc-mng-next-date").off().on('click', function() {
								getAfterDate($("#js-ship-mobile-pre-proc-mng-selected-date").val());
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
					// ------------------------------------`
					// ajax request
					// ------------------------------------
					var yardCode = getQuerystring('yardCode');
					
					if(app.utils.isEmpty(yardCode)){
						fn_alertInfo('A', '조선소 코드가 없습니다.');
						return;
					}

					var params = {
						service: 'ship.preinfo',
						method: 'retrieveMobilePreInfoList',
						yardCode: yardCode,
						inspDate: $("#js-ship-mobile-pre-proc-mng-selected-date").val()
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			var retrieveShipMobilePreProcRegStep1 = function(seqShipPreProcInfo, lineNo, inspDate){
				
				var url = '/mobile/ship/shipMobilePreProcRegStep1.do';
				
				if(app.utils.isEmpty(yardCode) || app.utils.isEmpty(yardName)){
					fn_alertInfo('A', '조선소 코드가 없습니다.');
					return;
				}
				
				url += '?yardCode='+ yardCode +'&yardName='+ yardName;
				if(!app.utils.isEmpty(seqShipPreProcInfo)) url += '&seqShipPreProcInfo=' +seqShipPreProcInfo + '&lineNo='+ lineNo + '&inspDate='+ inspDate.replace(/-/gi, "");
				
				window.location.href = url;

			}
		
		</script>
		

	</tiles:putAttribute>
	<!-- [e] 페이지 레벨 스크립트 -->
</tiles:insertDefinition>
</html>