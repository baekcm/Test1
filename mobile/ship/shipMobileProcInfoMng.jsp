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
			<button type="button" class="wp-btn wp-left wp-prev-white"><spring:message code="TODO.KEY" text="이전"/></button>
			<h1><spring:message code="TODO.KEY" text="도장 공정정보 현황"/></h1>
		</header>
		<!-- //header -->
		<!-- wp-container -->
		<section class="wp-container wp-pb50">
		
			<div id="js-ship-mobile-proc-mng-list"></div>
			
			<!-- 날씨 측정 정보 추가 버튼 -->
			<a id="js-ship-mobile-proc-mng-reg" class="wp-btn-add">+<span><spring:message code="TODO.KEY" text="날씨 측정 정보 추가"/></span></a>
		</section>
		<!-- //wp-container -->
	</div>
	</tiles:putAttribute>
	<!-- [e] 모바일 콘텐츠 -->
	
	<!-- [s] 페이지 레벨 스크립트 -->
	<tiles:putAttribute name="page-level-js">
	
		<script id="js-template-ship-mobile-proc-mng-list" type="text/x-handlebars-template">
			{{#rows}}
				<!-- box content -->
				<div id="js-ship-proc-mng-edit_{{seqShipProcInfo}}" class="wp-box-cont">
					<div class="wp-table-top">
						<div class="wp-time">{{yardCodeNm}}</div>
						<div class="wp-noti">{{inspDate}}</div>
					</div>
					<div class="wp-text-section">
						<div class="wp-50p"><span><spring:message code="TODO.KEY" text="측정자"/></span>{{emp}}</div>
						<div class="wp-50p"><span><spring:message code="TODO.KEY" text="측정 장소"/></span>{{inspPlaceNm}}</div>
						<div class="wp-50p"><span><spring:message code="TODO.KEY" text="Hull No."/></span>{{hullNo}}</div>
						<div class="wp-50p"><span><spring:message code="TODO.KEY" text="제품명"/></span>{{productNm}}</div>
						<div><span><spring:message code="TODO.KEY" text="Lot No.(PTA)"/></span>{{ptaLotNo}}</div>
					</div>
				</div>
				<!-- //box content -->
			{{/rows}}
		</script>
		
		<script type="text/javascript">
		
			var shipMobileProcMngListTemplate;
			
			$(document).ready(function(){
				
				//Handlebar 초기화
				var source = $('#js-template-ship-mobile-proc-mng-list').html();
				shipMobileProcMngListTemplate = Handlebars.compile(source);
				
				//등록 버튼
				$("#js-ship-mobile-proc-mng-reg").off().on('click', function() {
					retrieveShipMobileProcInfoRegStep1();
				});
				
				//뒤로가기 버튼
				$('.wp-prev-white').off().on('click', function() {
					var url = '/mobile/ship/shipMobileMain.do';
					
					window.location.href = url;
				});
				
				//조회
				retrieveProcMainInfo.request();
			});
			
			var retrieveProcMainInfo = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {
								// TODO
								var data = {
									rows : response.rs
								};
								
								var html = shipMobileProcMngListTemplate(data);
								
								$('#js-ship-mobile-proc-mng-list').append(html);
								
								$('div[id*=js-ship-proc-mng-edit]').on('click', function(){
									var id = this.id.substring("js-ship-proc-mng-edit".length + 1);
									retrieveShipMobileProcInfoRegStep1(id);
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
							service: 'ship.procInfo',
							method: 'retrieveProcMainInfo',
							yardCode: yardCode
						};
						
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			var retrieveShipMobileProcInfoRegStep1 = function(seqShipProcInfo){
				var url = '/mobile/ship/shipMobileProcInfoRegStep1.do';
				var yardCode = getQuerystring('yardCode');
				var yardName = getQuerystring('yardName');
				
				if(app.utils.isEmpty(yardCode)){
					fn_alertInfo('A', '조선소 코드가 없습니다.');
					return;
				}
				
				if(app.utils.isEmpty(yardName)){
					fn_alertInfo('A', '조선소 코드명이 없습니다.');
					return;
				}
				
				url += '?yardCode='+yardCode+'&yardName='+yardName;
				
				if(!app.utils.isEmpty(seqShipProcInfo)) url += '&seqShipProcInfo='+seqShipProcInfo;
				
				window.location.href = url;
			}
		
		</script>
		
	</tiles:putAttribute>
	<!-- [e] 페이지 레벨 스크립트 -->
</tiles:insertDefinition>
