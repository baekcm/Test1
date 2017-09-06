<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.06.26] industry 제품정보-제품 출고 이력 정보" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.industry">

	<!-- 메인 콘텐츠 S -->
	<tiles:putAttribute name="page-content">
		<section class="wp-stat">
			<div class="wp-cont wp-car-sub">
				<!-- content start -->
				<header class="wp-contents-title">
					<h1>제품 기준정보</h1>
					<div class="wp-location"><span>도장공정</span><span class="wp-fc-54">제품 기준정보</span></div>
				</header>
				<div class="wp-table-width">
					<!-- title area -->
					<div class="wp-title-section wp-no-line">
						<h2 class="wp-section-title">제품 기준정보 목록</h2>
						<div class="wp-btn-area">
								<button type="button" class="wp-layer-open wp-btn small blue1 cr3 search-white" data-link="layer1">검색</button>
								<button type="button" class="wp-btn-pop wp-btn small skyblue cr3 upload-white" id="js-indus-prod-std-info-reg-popup-button" data-link="js-indus-prod-std-info-reg-popup">제품 기준정보 등록</button>
							</div>
					</div>
					<!-- //title area -->
					<!-- wp-layerstyle -->
					<article id="layer1" class="wp-layerstyle wp-wd360" style="right: 32px;">
						<h1>제품 기준정보 검색</h1>
							<div>
								<h2 class="wp-sub-title">Q-Code/명칭</h2>
								<input type="text" name="" title="내용입력" class="wp-wd96p">
							</div>
							<div class="wp-section2">
								<div>
									<h2 class="wp-sub-title">제품구분</h2>
									<div class="wp-ui-select wp-wd100p wp-fn">
										<select title="항목 개수 설정" id="js-indus-prod-std-search-item-id">
										</select>
									</div>
								</div>
								<div>
									<h2 class="wp-sub-title">적용 공정</h2>
									<div class="wp-ui-select wp-wd100p wp-fn">
										<select title="항목 개수 설정" id="js-indus-prod-std-search-proc-type">
										</select>
									</div>
								</div>
							</div>
	
						<div class="wp-ac wp-mt20">
							<button type="button" class="wp-btn big blue cr3" id="js-indus-prod-std-info-search-button"> 검 색 </button>
						</div>
					</article>
					<!-- //wp-layerstyle -->
					<!-- table -->
					<div class="wp-table-st1">
						<table class="wp-title-table">
							<caption>제품정보</caption>
							<colgroup>
								<col style="width:10%">
								<col style="width:18%">
								<col style="width:18%">
								<col style="width:auto">
								<col style="width:10%">
								<col style="width:10%">
								<col style="width:10%">
							</colgroup>
							<thead>
								<tr>
									<th>제품구분</th>
									<th>Q-Code 명</th>
									<th>Q-Code 한글명</th>
									<th>Q-Code 영문명</th>
									<th>적용 공정</th>
									<th>수지 타입</th>
									<th>수정 / 삭제</th>
								</tr>
							</thead>
							<tbody id="js-indus-prod-std-info-list">						
							</tbody>
						</table>
					</div>
					<!-- //table -->
				</div>
				<!-- //content end -->
			</div>
		</section>
	</tiles:putAttribute>
	
	<tiles:putAttribute name="page-level-js">
		<script id="js-template-indus-prod-std-info-list" type="text/x-handlebars-template">
			{{#rows}}
				<tr>
					<td>{{itemIdNm}}</td>
					<td>{{qcodeNm}}</td>
					<td>{{qcodeKorNm}}</td>
					<td>{{qcodeEngNm}}</td>
					<td>{{procTypeNm}}</td>
					<td>{{paintTypeNm}}</td>
					<td>
						<button type="button" class="wp-btn-pop wp-btn white small bgray mody" id="js-indus-prod-std-info-mod-button-{{qcode}}" data-link="js-indus-prod-std-info-reg-popup"><span>수정</span></button>
						<button type="button" class="wp-btn white small bgray trash-gray" id="js-indus-prod-std-info-del-button-{{qcode}}"><span>삭제</span></button>
					</td>
				</tr>
			{{/rows}}
		</script>
		
		
		<script type="text/javascript">
			var indusProdStdInfoListTemplate;
				
			//메시지 파라미터 정의함수
			var messageParam = {
				title: '에러',
				message: '',
				confirmButtonText: '확인'				
			};
			
			$(document).ready(function() {
	
				// Handlebar 초기화
				initHandlebarsTemplate();
				
				//검색 버튼
				$("#js-indus-prod-std-info-search-button").off().on('click', function() {
					retrieveIndusStdProdInfo.request();				
				});
				
				// 제품 기준정보 등록 버튼
				$("#js-indus-prod-std-info-reg-popup-button").off().on('click', function(){
					initIndusProdStdInfoRegPopup();
				});
				
			});
			
			var initHandlebarsTemplate = function() {
				//list 영역 템플릿 컴파일
				var source = $('#js-template-indus-prod-std-info-list').html();
				indusProdStdInfoListTemplate = Handlebars.compile(source);
				
				
			};
			
			var retrieveIndusStdProdInfoAll = function(itemType) {
				//자동조회
				retrieveIndusStdProdInfo.request();
			}
			
			// ------------------------------------------------
			// 제품 기준정보 조회
			// ------------------------------------------------
			var retrieveIndusStdProdInfo = {
				success : function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							// TODO
							var data = {
								rows : response.rs.stdInfo
							};
							
							var itemCombo = response.rs.itemCombo;
							$("#js-indus-prod-std-search-item-id").find('option').remove();
							$("#js-indus-prod-std-search-item-id").append("<option value=''>전체</option>");
							for(var i=0; i<itemCombo.length; i++)
							{
								$("#js-indus-prod-std-search-item-id").append("<option value='"+itemCombo[i].code+"'>"+itemCombo[i].codeNm+"</option>");
							}
							
							
							var procCombo = response.rs.procCombo;
							$("#js-indus-prod-std-search-proc-type").find('option').remove();
							$("#js-indus-prod-std-search-proc-type").append("<option value=''>전체</option>");
							for(var i=0; i<procCombo.length; i++)
							{
								$("#js-indus-prod-std-search-proc-type").append("<option value='"+procCombo[i].code+"'>"+procCombo[i].codeNm+"</option>");
							}
							
							var html = indusProdStdInfoListTemplate(data);							
							$('#js-indus-prod-std-info-list').empty().append(html);
							
							// 버튼 이벤트
							for(var i=0 ; i<data.rows.length ; i++){
								$("#js-indus-prod-std-info-mod-button-"+data.rows[i].qcode).off().on('click', function(e){
									var qcode = this.id.substring("js-indus-prod-std-info-mod-button".length + 1);
									initIndusProdStdInfoRegPopup(qcode);
								});		
								
								$("#js-indus-prod-std-info-del-button-"+data.rows[i].qcode).off().on('click', function(e){
									var qcode = this.id.substring("js-indus-prod-std-info-del-button".length + 1);
									
									app.message.confirm({
										  title             : '<spring:message code="TODO.KEY" text="삭제"/>'
										, message           : '<spring:message code="TODO.KEY" text="선택한 기준정보를 삭제하시겠습니까?"/>'
										, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
										, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
										, callback          : {
											confirm: function() {
												deleteIndusProdStdInfo.request(qcode);
											}
										}
									});
								});		
							}
							
							
						} else {
							// 서비스 요청 처리 오류 발생 메시지
							
							messageParam.title = "에러";
							messageParam.message = message;
							app.message.alert(messageParam);
							// 서비스 요청 처리 Exception 메시지
							console.log(response.error || '');
						}
					}
				},
				error : function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
					messageParam.title = "에러";
					messageParam.message = errorText;
					app.message.alert(messageParam);
				},
				complete : function(jqueryXHR, status) {
					// ------------------------------------
					// http response complete
					// ------------------------------------
					app.mask.pageUnlock();
				},
				request : function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					
										
					var itemType 	= jsCommon.itemType.getItem().code;		
					var keyword 	= $('#js-indus-prod-std-search-keyword').val();					
					var itemId 		= $('#js-indus-prod-std-search-item-id').val();			
					var procType 	= $('#js-indus-prod-std-search-proc-type').val();	
					
					var params = {
							service : 'ind.prodInfo',
							method : 'retrieveStdProdInfo',						
							itemType : itemType,		//상단 제품유형
							keyword  : keyword,			//q코드/명칭
							itemId   : itemId,			//하단 제품구분
							procType : procType		//적용 공정
					};
					
					app.mask.pageLock();					
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			
			//-------------------------------------------------
			// 기준정보 삭제
			//-------------------------------------------------
			var deleteIndusProdStdInfo = {
				success: function(response, status, jqueryXHR) {
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							//삭제 완료 메세지
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="삭제 완료 되었습니다."/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
								, callback          : {
									confirm: function() {
										retrieveIndusStdProdInfo.request();
									}
								}
							});							
						} else 	{
							// 서비스 요청 처리 오류 발생 메시지
							//console.log(message);
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="에러"/>'
								, message           : message
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
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
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="에러"/>'
						, message           : errorText
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					});
				},
				complete: function(jqueryXHR, status) {
					// ------------------------------------
					// http response complete
					// ------------------------------------
					app.mask.pageUnlock();
				},
				request: function(qcode) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service : 'ind.prodInfo'
						, method  : 'delIndProdInfo'
						, qcode	  : qcode
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
		
			// ------------------------------------------------
			// 페이지 본문
			// ------------------------------------------------
			var pageBodyHandler = {
				init: function() {
					// ------------------------------------
					// 타일즈 레이아웃 템플릿에서 호출되는 페이지 init 메소드
					// ------------------------------------

					//--- 상단 헤더 영역 제품유형 변경 콜백 펑션 설정
					jsCommon.itemType.changed(retrieveIndusStdProdInfoAll);
					
					//--- 본문 데이터 조회
					retrieveIndusStdProdInfo.request();
				}
			};
		</script>
	</tiles:putAttribute>
	<!-- 페이지 레벨 스크립트 E -->
	
	<!-- 팝업 콘텐츠 S -->
	<tiles:putAttribute name="popup-content">
		<c:import url="./indusProdStdInfoReg.jsp" charEncoding="utf-8"></c:import>
		<c:import url="./indusProdStdInfoQcodePop.jsp" charEncoding="utf-8"></c:import>
		<c:import url="/WEB-INF/static/industry/popup/prodSearch.popup.industry.jsp" charEncoding="utf-8"></c:import>
	</tiles:putAttribute>
	<!-- 팝업 콘텐츠 E -->
	
</tiles:insertDefinition>

	