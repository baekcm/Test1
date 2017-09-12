<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.04.14] car 일반운영정보 - 거래선 정보 관리 > 생산 특이 사항" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.car">

	<!-- 메인 콘텐츠 S -->
	<tiles:putAttribute name="page-content">
		
		<section class="wp-stat">
			<div class="wp-cont wp-car-sub">
				<!-- content start -->
				<header class="wp-contents-title">
					<h1><spring:message code="TODO.KEY" text="거래선 정보 관리"/></h1>
					<div class="wp-location"><span><spring:message code="TODO.KEY" text="일반운영정보"/></span><span class="wp-fc-54"><spring:message code="TODO.KEY" text="거래선 정보 관리"/></span></div>
				</header>
				<div class="wp-table-width">
					<!-- tab -->
					<ul class="wp-prod-tab wp-two">
						<li><a href="/car/general/carProdHistInfo.do" class="active"><spring:message code="TODO.KEY" text="생산 특이사항"/></a></li>
						<li><a href="/car/general/carMonthlyProdInfo.do"><spring:message code="TODO.KEY" text="월간 생산현황"/></a></li>
					</ul>
					<!-- //tab -->
					<!-- search area -->
					<!-- <div class="wp-search-area">
						<em class="wp-mr3">기간</em>
						<div class="wp-ui-select wp-wd85">
							<select title="항목 개수 설정">
								<option>조건선택</option>
								<option>선택1</option>
								<option>선택2</option>
								<option>선택3</option>
							</select>
						</div>
						<div class="wp-ui-select wp-wd85">
							<select title="항목 개수 설정">
								<option>기간선택</option>
								<option>선택1</option>
								<option>선택2</option>
								<option>선택3</option>
							</select>
						</div>
						<input type="text" name="key2" title="내용입력" class="wp-inp-datepicker month-picker" placeholder="날짜입력1">
						&nbsp;~&nbsp; 
						<input type="text" name="key2" title="내용입력" class="wp-inp-datepicker month-picker" placeholder="날짜입력2">
						<em class="wp-ml20 wp-mr3">경쟁사</em>
						<div class="wp-input-search wp-wd130">
							<input type="text" id="searchTop">
							<button type="button" class="wp-btn-search"><span>검색</span></button>
						</div>
						<button type="button" id="js-car-prod-hist-info-create-popup-button" data-link="js-car-prod-hist-info-reg-popup" class="wp-btn-pop wp-btn small skyblue cr3 upload-white">생산 특이사항 등록</button>
					</div> -->
					
					<div class="wp-title-section">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="생산 특이사항 목록"/></h2>
							<div class="wp-btn-area">
							<!-- <button type="button" class="wp-layer-open wp-btn small blue1 cr3 search-white">검색</button> -->
							<button type="button" id="js-car-prod-hist-info-create-popup-button" data-link="js-car-prod-hist-info-reg-popup" class="wp-btn-pop wp-btn small skyblue cr3 upload-white"><spring:message code="TODO.KEY" text="생산 특이사항 등록"/></button>
							</div>
					</div>
					<!-- //search area -->
					<!-- rootcause-list -->
					<div class="wp-rootcause-list wp-car-contlist">
						<div class="wp-rc-box">
							<div id="js-car-prod-hist-info-list" class="wp-rc-box-in">								
							</div>
						</div>
					</div>
					<!-- //rootcause-list -->
				</div>
				<!-- //content end -->
			</div>
		</section>
		
			
	</tiles:putAttribute>
	<!-- 메인 콘텐츠 E -->
	
	
	<!-- 페이지 레벨 스크립트 S -->
	<tiles:putAttribute name="page-level-js">
		
		<!-- 생산 특이 사항 정보 리스트 - 스크립트--><!-- <span class="wp-info-benner">{{makerId}}</span> -->
		<script id="js-template-car-prod-hist-info-list" type="text/x-handlebars-template">
			<div id="js-car-prod-hist-info-list-top-{{docNo}}" class="wp-rc-cont wp-rc-cont-color0{{lvl}}">
				<div class="wp-rc-cont-top">
					<div class="wp-rp-right">
						<div id="js-car-prod-hist-info-list-title-{{docNo}}" class="wp-rp-r-title"><span class="wp-name-benner">{{carPlantNm}}</span>{{histTitle}}</div>
						<div class="wp-rp-r-desc">
							<span class="wp-rp-r-info"><em>{{histEmp}}</em></span><span class="wp-rp-r-info"><em>{{histDate}}</em></span><span class="wp-rp-r-info"><em>{{proc}}</em></span><span class="wp-rp-r-info"><em>{{items}}</em></span>
						</div>
					</div>
					<div class="wp-rp-bttn">
						{{#isRelatedPostsYn}}	
						<button type="button" id="js-car-prod-hist-info-list-create-related-posts-{{docNo}}" data-link="js-car-prod-hist-info-reg-popup" class="wp-btn-pop wp-btn"><spring:message code="TODO.KEY" text="연관글 작성"/></button>
						{{else}}
						{{/isRelatedPostsYn}}
						<button type="button" id="js-car-prod-hist-info-list-show-detail-{{docNo}}" data-link="js-car-prod-hist-info-reg-popup" class="wp-btn-pop wp-btn"><spring:message code="TODO.KEY" text="자세히보기"/></button>
						<input type="hidden" id="js-car-prod-hist-info-list-car-plant-{{docNo}}" value="{{carPlant}}">
						<input type="hidden" id="js-car-prod-hist-info-list-doc-no-{{docNo}}" value="{{docNo}}">
						<input type="hidden" id="js-car-prod-hist-info-list-org-doc-no-{{docNo}}" value="{{orgDocNo}}">
						<input type="hidden" id="js-car-prod-hist-info-list-org-title-{{docNo}}" value="{{histTitle}}">
					</div>
				</div>				
				<div class="wp-rc-cont-detail">
					<span class="wp-fs-13-3">
						{{{histDescription}}}
					</span>
					<div class="wp-reply-form wp-mt40">
						<div class="wp-reply-limit"><span id="js-car-prod-hist-info-list-comment-text-cnt-{{docNo}}">0</span>/150 <spring:message code="TODO.KEY" text="글자"/></div>
						<textarea id="js-car-prod-hist-info-list-comment-write-{{docNo}}"></textarea>
						<button type="button" id="js-car-prod-hist-info-list-comment-create-{{docNo}}" class="wp-btn-wl-plus"><spring:message code="TODO.KEY" text="등록"/></button>
					</div>
					<div class="wp-reply">
						<h2 class="wp-reply-tit"><spring:message code="TODO.KEY" text="댓글내용"/><em id="js-car-prod-hist-info-list-comment-count-{{docNo}}" class="wp-reply-cnt">(-)</em></h2>
						<div class="wp-reply-list">
							<ul id="js-car-prod-hist-info-list-comment-list-{{docNo}}">
							</ul>
						</div>
					</div>
				</div>
			</div>
		</script>
		<!-- 리스트 에서 내용 빠짐 -->
		<%-- <div class="wp-table-st3">
				<table>
					<caption>거래선 정보</caption>
					<colgroup>
						<col style="width:19%">
						<col style="width:31%">
						<col style="width:19%">
						<col style="width:31%">
					</colgroup>
					<tbody>
						<tr>
							<th>공정</th>
							<td class="wp-al">{{proc}}</td>
							<th>컬러코드</th>
							<td class="wp-al">{{color}}</td>
						</tr>
						<tr>
							<th>차종</th>
							<td class="wp-al">{{model}}</td>
							<th>불량유형</th>
							<td class="wp-al">{{badReason}}</td>
						</tr>
						<tr>
							<th>사고유형</th>
							<td class="wp-al">{{histReasonType}}</td>
							<th>제품명</th>
							<td class="wp-al">{{items}}</td>
						</tr>
						<tr>
							<th>부위</th>
							<td class="wp-al" colspan="3">{{partId}}</td>
						</tr>
					</tbody>
				</table>
			</div> --%>
		
		<!-- 댓글 리스트 - 스크립트-->
		<script id="js-template-car-prod-hist-info-list-comment-list" type="text/x-handlebars-template">		
			{{#rows}}
				<li>
					<span class="wp-reply-title">{{empNm}}</span>
					<span class="wp-reply-date">{{inputDatetime}}</span>
					<span class="wp-reply-desc">{{replyDescription}}</span>
					<div class="wp-reply-btn">
						<button type="button" id="js-car-prod-hist-info-list-comment-delete-{{seqCarProdIssueReply}}" class="wp-btn small white bgray trash"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
						<input type="hidden" id="js-car-prod-hist-info-list-comment-doc-no-{{seqCarProdIssueReply}}" value="{{docNo}}">
					</div>
				</li>
			{{/rows}}
		</script>
		

		<script type="text/javascript">		
			var carProdHistInfoListTemplate;
			var carProdHistInfoListCommentListTemplate;
			
			$(document).ready(function() {
				// Handlebar 초기화
				initCarProdHistInfoListHandlebarsTemplate();
				
				// 생산 특이 사항 등록 버튼 클릭
				$("#js-car-prod-hist-info-create-popup-button").off().on('click', function(){
					var carPlant = $("#js-car-header-car-plant").val();
					initCarProdHistInfoRegPopup(carPlant);
				});
			});
			

			// ------------------------------------------------
			// Handlebar 초기화
			// ------------------------------------------------
			var initCarProdHistInfoListHandlebarsTemplate = function() {
				// 생산 특이 사항 정보 리스트		
				var source = $('#js-template-car-prod-hist-info-list').html();
				carProdHistInfoListTemplate = Handlebars.compile(source);
				
				// 연관글 작성
				Handlebars.registerHelper('isRelatedPostsYn', function(options) {
					if (this.lvl == '1'){
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});		

				// 댓글 리스트
				var source = $('#js-template-car-prod-hist-info-list-comment-list').html();
				carProdHistInfoListCommentListTemplate = Handlebars.compile(source);
			};
			
			//-------------------------------------------------
			// 생산 특이 사항 정보 - 자동차 공장 콤보 조회 완료 후
			//-------------------------------------------------
			var retrieveCarProdHistInfoAll = function(){
				// 생산 특이 사항 정보 리스트 조회
				retrieveCarProdIssueList.request();
			};
			
			//-------------------------------------------------
			// 생산 특이 사항 정보 리스트 조회
			//-------------------------------------------------
			var retrieveCarProdIssueList = {
				success: function(response, status, jqueryXHR) {
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							if(response.rs.prodList){
								var data = {
									rows : response.rs.prodList
								};
								
								if(data.rows.length > 0){
									for(var i=0 ; i<data.rows.length ; i++){
										var html = carProdHistInfoListTemplate(data.rows[i]);
										$("#js-car-prod-hist-info-list").append(html);
										
										if(data.rows[i].replyList.length > 0){
											var dataPeplyList = {
												rows : 	data.rows[i].replyList
											};
											var htmlReplyList = carProdHistInfoListCommentListTemplate(dataPeplyList);
											$("#js-car-prod-hist-info-list-comment-list-"+data.rows[i].docNo).empty().append(htmlReplyList);
											
										}
										//댓글 갯수 셋팅
										$("#js-car-prod-hist-info-list-comment-count-"+data.rows[i].docNo).text('('+data.rows[i].replyList.length+')');
										
										// event setting
										// 리스트 제목 부분 클릭시 접기/펴기
										$('#js-car-prod-hist-info-list-title-'+data.rows[i].docNo).off().on('click', function(e){
											
											var code = this.id.substring("js-car-prod-hist-info-list-title".length + 1);
											
											var target = 'js-car-prod-hist-info-list-top-' + code;
											
											if($("#"+target).hasClass('open')){
												$("#"+target).removeClass('open');
											} else {
												$("#"+target).addClass('open');
											}									
									    });
	
										// 연관글 작성 버튼 클릭
										if(data.rows[i].lvl == '1'){//depth 1 일때만..
											$("#js-car-prod-hist-info-list-create-related-posts-"+data.rows[i].docNo).off().on('click', function(e){
												var docNo = this.id.substring("js-car-prod-hist-info-list-create-related-posts".length + 1);
												var carPlant = $("#js-car-prod-hist-info-list-car-plant-"+docNo).val();
												var orgTitle = $("#js-car-prod-hist-info-list-org-title-"+docNo).val();
												
												initCarProdHistInfoRegPopup(carPlant, '', docNo, orgTitle);
											});
										}
										// 자세히 보기 버튼 클릭
										$("#js-car-prod-hist-info-list-show-detail-"+data.rows[i].docNo).off().on('click', function(e){
											var docNo = this.id.substring("js-car-prod-hist-info-list-show-detail".length + 1);
											var orgDocNo = $("#js-car-prod-hist-info-list-org-doc-no-"+docNo).val();
											var carPlant = $("#js-car-prod-hist-info-list-car-plant-"+docNo).val();
											
											initCarProdHistInfoRegPopup(carPlant, docNo, orgDocNo);
										});
										// 댓글 등록 버튼 클릭
										$("#js-car-prod-hist-info-list-comment-create-"+data.rows[i].docNo).off().on('click', function(e){
											var docNo = this.id.substring("js-car-prod-hist-info-list-comment-create".length + 1);
											var comment = $("#js-car-prod-hist-info-list-comment-write-"+docNo).val();
											if(comment){
												saveCarReply.request(docNo, comment);
											}
										});									
										// 댓글 삭제 버튼 클릭
										if(data.rows[i].replyList.length > 0){//댓글 있을때만
											for(var j=0 ; j<data.rows[i].replyList.length ; j++){
												$("#js-car-prod-hist-info-list-comment-delete-"+data.rows[i].replyList[j].seqCarProdIssueReply).off().on('click', function(e){
													var seqCarProdIssueReply = this.id.substring("js-car-prod-hist-info-list-comment-delete".length + 1);
													var docNo = $("#js-car-prod-hist-info-list-comment-doc-no-"+seqCarProdIssueReply).val();
													delCarReply.request(docNo, seqCarProdIssueReply);
												});											
											}
										}
										// 댓글 입력 textarea 글자수 체크
										$("#js-car-prod-hist-info-list-comment-write-"+data.rows[i].docNo).off().on('keyup', function(){
											var docNo = this.id.substring("js-car-prod-hist-info-list-comment-write".length + 1);
											var byteTxt = "";
											var byte = function(str){
												var byteNum=0;
												for(i=0;i<str.length;i++){
													byteNum+=(str.charCodeAt(i)>127)?2:1;
													if(byteNum<300){
														byteTxt+=str.charAt(i);
													};
												};
												return Math.round( byteNum/2 );
											};
											if(byte($(this).val())>150){
												//알림 메세지
												app.message.alert({
													  title             : '<spring:message code="TODO.KEY" text="알림"/>'
													, message           : '<spring:message code="TODO.KEY" text="150자 이상 입력할수 없습니다."/>'
													, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
													, callback          : {
														confirm: function() {
															$(this).val("");
															$(this).val(byteTxt);
														}
													}
												});
											}else{
												//글자수 찍어주기
												$("#js-car-prod-hist-info-list-comment-text-cnt-"+docNo).html( byte($(this).val()) );
											}
										});
										
									}
								}
								
							}
							
							
						} else 	{
							// 서비스 요청 처리 오류 발생 메시지
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
				request: function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					// 리스트 초기화 
					$("#js-car-prod-hist-info-list").empty();
					
					var carPlant = $("#js-car-header-car-plant").val();;
					var params = {
						  service : 'car.prodIssue'
						, method  : 'retrieveCarProdIssueList'
						, carPlant: carPlant
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//-------------------------------------------------
			// 댓글 저장, 삭제 용 append 
			//-------------------------------------------------
			var carProdHistInfoReplyAppend = function(data){
				var docNo = data.docNo;
				$("#js-car-prod-hist-info-list-comment-write-"+docNo).val('');
				$("#js-car-prod-hist-info-list-comment-write-"+docNo).keyup();
				if(data.replyList.length > 0){
					var dataPeplyList = {
						rows : 	data.replyList
					};
					var htmlReplyList = carProdHistInfoListCommentListTemplate(dataPeplyList);
					$("#js-car-prod-hist-info-list-comment-list-"+docNo).empty().append(htmlReplyList);
					
					for(var i=0 ; i<dataPeplyList.rows.length ; i++){
						$("#js-car-prod-hist-info-list-comment-delete-"+dataPeplyList.rows[i].seqCarProdIssueReply).off().on('click', function(e){
							var seqCarProdIssueReply = this.id.substring("js-car-prod-hist-info-list-comment-delete".length + 1);
							var docNo = $("#js-car-prod-hist-info-list-comment-doc-no-"+seqCarProdIssueReply).val();
							delCarReply.request(docNo, seqCarProdIssueReply);
						});											
					}
				} else {
					$("#js-car-prod-hist-info-list-comment-list-"+docNo).empty();
				}
				//댓글 갯수 셋팅
				$("#js-car-prod-hist-info-list-comment-count-"+docNo).text('('+data.replyList.length+')');
			}
			
			//-------------------------------------------------
			// 댓글 저장
			//-------------------------------------------------
			var saveCarReply = {
				success: function(response, status, jqueryXHR) {
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {					
							//저장 완료 메세지
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="저장 완료 되었습니다."/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
								, callback          : {
									confirm: function() {
										//댓글 영역 append
										carProdHistInfoReplyAppend(response.rs);
									}
								}
							});
							
						} else 	{
							// 서비스 요청 처리 오류 발생 메시지
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
				request: function(docNo, replyDescription) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service : 'car.prodIssue'
						, method  : 'saveCarReply'
						, docNo: docNo
						, replyDescription: replyDescription
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//-------------------------------------------------
			// 댓글 삭제
			//-------------------------------------------------
			var delCarReply = {
				success: function(response, status, jqueryXHR) {
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {				
							//저장 완료 메세지
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="삭제 완료 되었습니다."/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
								, callback          : {
									confirm: function() {
										//댓글 영역 append
										carProdHistInfoReplyAppend(response.rs);
									}
								}
							});							
						} else 	{
							// 서비스 요청 처리 오류 발생 메시지
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
				request: function(docNo, seqCarProdIssueReply) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service : 'car.prodIssue'
						, method  : 'delCarReply'
						, docNo   : docNo
						, seqCarProdIssueReply: seqCarProdIssueReply
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
		</script>
	</tiles:putAttribute>
	<!-- 페이지 레벨 스크립트 E -->
	
	

	<!-- 팝업 콘텐츠 S -->
	<tiles:putAttribute name="popup-content">
				
		<div class="wp-dim-layer">
		    <div class="wp-dimBg"></div>
		    <div id="js-car-prod-hist-info-reg-popup" class="wp-pop-layer wp-pop-w940 wp-box-sizing wp-car-popup">
		    	<div class="wp-pop-title">
		    		<h1><spring:message code="TODO.KEY" text="생산 특이 사항"/></h1>
		    		<button type="button" id="js-car-prod-hist-info-reg-popup-close-button" class="wp-btn-close-layer wp-spr-btn"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
		    	</div>
		        <div class="wp-pop-conts">
					<!-- scroll Area -->
					<div class="wp-pop-cont-scrollable">
			            <!--content //-->
						<div id="js-car-prod-hist-info-reg-popup-org-title-div" class="wp-table-st1 wp-issue-apply">
							<table>
								<caption><spring:message code="TODO.KEY" text="원글"/></caption>
								<colgroup>
									<col style="width:14%">
									<col style="width:auto;">
									<%-- <col style="width:12%;"> --%>
								</colgroup>
								<tbody>
									<tr>
										<th><spring:message code="TODO.KEY" text="원글"/></th>
										<td id="js-car-prod-hist-info-reg-popup-org-title" class="wp-al">
										</td>
										<!-- <td><button type="button" class="wp-btn small blue2 cr3">연관글 보기</button></td> -->
									</tr>
								</tbody>
							</table>
						</div>
						<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="기본 정보"/></h2>
						<!-- 기본 정보 -->
						<div class="wp-table-st1 wp-issue-apply">
							<table>
								<caption><spring:message code="TODO.KEY" text="기본 정보등록"/></caption>
								<colgroup>
									<col style="width:14%">
									<col style="width:20%;">
									<col style="width:13%">
									<col style="width:20%;">
									<col style="width:13%">
									<col style="width:20%;">
								</colgroup>
								<tbody>
									<tr>
										<th class="wp-ar"><spring:message code="TODO.KEY" text="공장"/></th>
										<td class="wp-al">
											<div class="wp-ui-select wp-wd100p">
												<select id="js-car-prod-hist-info-reg-pop-carFactoryList-combo" title="" disabled="disabled">
												</select>
											</div>
										</td>
										<th class="wp-ar"><spring:message code="TODO.KEY" text="특이사항구분"/></th>
										<td class="wp-al">
											<div class="wp-ui-select wp-wd100p">
												<select id="js-car-prod-hist-info-reg-pop-issueList-combo" title="">
												</select>
											</div>
										</td>
										<th class="wp-ar"><spring:message code="TODO.KEY" text="발생일자" /></th>
										<td class="wp-al"><input type="text" id="js-car-prod-hist-info-reg-pop-histDate" title="" class="wp-inp-datepicker maxdate" placeholder=""></td>
									</tr>
									<tr>
										<th class="wp-ar"><spring:message code="TODO.KEY" text="담당자"/></th>
										<td colspan="5" class="wp-al wp-vm">
											<input type="hidden"  id="js-car-prod-hist-info-reg-pop-session-emp"   value="${sessionScope.LoginUserInfo.empNum}">
											<input type="hidden"  id="js-car-prod-hist-info-reg-pop-session-emp-name"  value="${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}">
											<input type="hidden"  id="js-car-prod-hist-info-reg-pop-emp">
											<input type="text"    id="js-car-prod-hist-info-reg-pop-emp-name" title="" class="wp-wd108" disabled="disabled">
											<button type="button" id="js-car-prod-hist-info-reg-pop-emp-button" data-link="js-car-emp-popup" data-depth="2" class="wp-btn small gray cr3 wp-btn-pop"><spring:message code="TODO.KEY" text="조회"/></button>
											<select id="js-car-prod-hist-info-reg-pop-makerList-combo" title="" style="display: none">
											</select>
										</td>
									</tr>
								</tbody>
							</table>
			            </div>
						<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="특이사항 상세"/></h2>
			            <!-- 특이사항 상세 -->
						<div class="wp-table-st1 wp-issue-apply">
							<table>
								<caption><spring:message code="TODO.KEY" text="경쟁사 제품 특이사항 등록"/></caption>
								<colgroup>
									<col style="width:14%">
									<col style="width:86%;">
								</colgroup>
								<tbody>
									<tr>
										<th class="wp-ar"><spring:message code="TODO.KEY" text="공정" /></th>
										<td class="wp-al">
											<div class="wp-check-list wp-mb5">
												<span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" id="js-car-prod-hist-info-reg-pop-carProcList-item-check-all"></span>
												<label for="chk1" class="wp-ui-label">전체</label>
											</div>
											<ul class="wp-check-block" id="js-car-prod-hist-info-reg-pop-carProcList-ul">
											</ul>
										</td>
									</tr>
									<tr>
										<th class="wp-ar"><spring:message code="TODO.KEY" text="차종" /></th>
										<td class="wp-al">
											<div class="wp-check-list wp-mb5">
												<span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" id="js-car-prod-hist-info-reg-pop-carModelList-item-check-all"></span>
												<label for="chk2" class="wp-ui-label">전체</label>
											</div>
											<ul id="js-car-prod-hist-info-reg-pop-carModelList-ul" class="wp-check-block">
											</ul>
										</td>
									</tr>
									<tr>
										<th class="wp-ar"><spring:message code="TODO.KEY" text="칼라코드"/></th>
										<td class="wp-al">
											<div class="wp-check-list wp-mb5">
												<span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" id="js-car-prod-hist-info-reg-pop-carColorList-item-check-all"></span>
												<label for="chk3" class="wp-ui-label">전체</label>
											</div>
											<ul id="js-car-prod-hist-info-reg-pop-carColorList-ul" class="wp-check-block"><!-- 6개 정렬 wp-row6 -->
											</ul>
										</td>
									</tr>
									<tr>
									<tr>
										<th class="wp-ar"><spring:message code="TODO.KEY" text="불량유형"/></th>
										<td class="wp-add-btn">								
											<div class="wp-style-sel">
												<ul id="js-car-prod-hist-info-reg-pop-badReason-list" class="wp-wd700">
												</ul>
											</div>
											<button type="button" id="js-car-prod-hist-info-reg-pop-badReason-button" class="wp-btn gray cr3 wp-btn-pop" data-depth="2" data-link="js-car-bad-popup"><spring:message code="TODO.KEY" text="등록"/></button>
										</td>
									</tr>
									<tr>
										<th class="wp-ar"><spring:message code="TODO.KEY" text="사고유형"/></th>
										<td class="wp-al">
											<div class="wp-ui-select wp-wd190">
												<select id="js-car-prod-hist-info-reg-pop-carReasonList1-combo" title="">
												</select>
											</div>
											<div class="wp-ui-select wp-wd190">
												<select id="js-car-prod-hist-info-reg-pop-carReasonList2-combo" title="">
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<th class="wp-ar"><spring:message code="TODO.KEY" text="제품명"/></th>
										<td class="wp-add-btn">
											<div class="wp-ui-select wp-wd190 wp-mb5 wp-fl">
												<select id="js-car-prod-hist-info-reg-pop-carItems-combo" title="">
												</select>
											</div>	
											<div class="wp-style-sel wp-fl wp-ml10 wp-wd550">
												<ul id="js-car-prod-hist-info-reg-pop-carItems-selected-list">
												</ul>
											</div>
										</td>
									</tr>
									<tr>
										<th class="wp-ar"><spring:message code="TODO.KEY" text="Lot No."/></th>
										<td class="wp-add-btn">
											<div class="wp-style-sel">
												<ul id="js-car-prod-hist-info-reg-pop-lotNo-list">
												</ul>
												<input type="text" id="js-car-prod-hist-info-reg-pop-lotNo" class="wp-nodesign">
											</div>
										</td>
									</tr>
									<tr>
										<th class="wp-ar"><spring:message code="TODO.KEY" text="발생 부위" /></th>
										<td class="wp-add-btn">
											
											<div class="wp-check-list">
												<span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" id="js-car-prod-hist-info-reg-pop-allPartsYn"></span>
												<label for="chk4" class="wp-ui-label">전체</label>
											</div>
											
											<div class="wp-style-sel wp-wd650">
												<ul id="js-car-prod-hist-info-reg-pop-partSel-list">
												</ul>
											</div>
											<button type="button" id="js-car-prod-hist-info-reg-pop-part-sel-button" class="wp-btn gray cr3 wp-btn-pop" data-depth="2" data-link="js-car-part-sel-popup"><spring:message code="TODO.KEY" text="등록"/></button>
										</td>
									</tr>
									<tr>
										<th class="wp-ar"><spring:message code="TODO.KEY" text="제목"/></th>
										<td class="wp-al"><input type="text" id="js-car-prod-hist-info-reg-pop-title" class="wp-wd100p"></td>
									</tr>
								</tbody>
							</table>			
			          	</div>
			
						<!-- 파일첨부 -->
						<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="파일첨부"/></h2>
				        <div class="wp-table-st1 wp-issue-apply">
							<table>
								<caption><spring:message code="TODO.KEY" text="파일첨부"/></caption>
								<colgroup>
									<col style="width:14%">
									<col style="width:86%;">
								</colgroup>
								<tbody>
									<tr>
										<th class="wp-ar"><spring:message code="TODO.KEY" text="첨부파일"/></th>
										<td colspan="3">											
											<div class="wp-form-writer">
												<div class="wp-upload wp-mt0">
													<div class="wp-upload-top">
														<button type="button" class="wp-spr-btn wp-btn-wl-fold" id="js-car-prod-hist-info-reg-popup-fold-button"><span><spring:message code="TODO.KEY" text="접기펴기"/></span></button>
														<button type="button" class="wp-btn-wl-text wp-file" id="js-car-prod-hist-info-reg-popup-attach-file"><spring:message code="TODO.KEY" text="내 PC"/></button>
														<input type="file" id="js-car-prod-hist-info-reg-popup-attach-file-target" style="display: none;" multiple>
														<div class="subcont" id="js-car-prod-hist-info-reg-popup-sum-file-size"></div>
													</div>
													<div class="wp-upload-list">
														<table>
															<colgroup>
																<%-- <col style="width:3%"> --%>
																<col style="width: auto;" />
																<col style="width: 75px;" />
																<col style="width: 75px;" />
																<col style="width: 75px;" />
																<col style="width: 75px;" />
															</colgroup>
															<thead>
																<tr>
																	<th><spring:message code="TODO.KEY" text="파일명"/></th>
																	<th><spring:message code="TODO.KEY" text="용량"/></th>
																	<th><spring:message code="TODO.KEY" text="삭제"/></th>
																	<th><spring:message code="TODO.KEY" text="보기"/></th>
																	<th><spring:message code="TODO.KEY" text="다운로드"/></th>
																</tr>
															</thead>
															<tbody id="js-car-prod-hist-info-reg-popup-attach-file-template-container">
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						
						<div class="wp-form-writer">
							<div class="wp-area-editor intable">
								<!-- 나모 Editor -->
								<textarea id=js-car-prod-hist-info-reg-pop-editor name="js-car-prod-hist-info-reg-pop-editor"></textarea>
								<script type="text/javascript" src="/crosseditor/js/namo_scripteditor.js"></script>
								<script type="text/javascript">
								// ------------------------------------
								// namo web editor
								// ------------------------------------
								var carProdHistInfoRegPopEditor = null;
								
								var carProdHistInfoRegPopEditorParams = {
								    ConfigXmlURL: '/crosseditor/config/xmls/edps.common.xml',
								    Font: {
								        "gulimChe" : "굴림체", "Gungsuh" : "궁서", "DotumChe" : "돋움체", "Malgun Gothic" : "맑은 고딕", "BatangChe" : "바탕체", "New Gulim" : "새굴림", "가는각진제목체" : "가는각진제목체", "Arial" : "Arial", "Curier New" : "Curier New", "Tahoma" : "Tahoma", "Times New Roman" : "Times New Roman"
								    },
								    CreateTab: '0|2',
								    DisableInputIdClass: true,
								    Width: '100%',
								    Height: '600px',
								    FullScreen: false,
								    ImageSavePath: '/crosseditor/binary',
								    UploadFileExecutePath: '/crossEditorImageUpload.ajax',
								    UploadFileNameType: 'trans',
								    SetFocus: false,
								    Skin: 'default'
								};
								
								var OnInitCompleted = function(e) {
								    // ------------------------------------
								    // 나모 Editor 초기화 완료 후 호출되는 콜백 함수 (http://comp.namo.co.kr/ce3/help/ko/dev_index.html)
								    // ------------------------------------
								    // 하단 TAB 숨기기
								    // ------------------------------------
								    var editorTarget = e.editorTarget || null;
								    
								    if (editorTarget != null) {
								        editorTarget.ShowTab(false);
								        editorTarget.SetBodyStyle('font-family','나눔고딕, Nanum Gothic');
								    }
								};
								
								var initCarProdHistInfoRegPopEditor = function() {
									// ------------------------------------
									// 나모 Editor 인스턴스 생성
									// ------------------------------------
								    if (carProdHistInfoRegPopEditor == null) {
								        carProdHistInfoRegPopEditor = new NamoSE('js-car-prod-hist-info-reg-pop-editor');
								        carProdHistInfoRegPopEditor.params = carProdHistInfoRegPopEditorParams;
								        carProdHistInfoRegPopEditor.EditorStart();
								    }
								};
								
								initCarProdHistInfoRegPopEditor();
								</script>
							</div>
						</div>
				<!-- // scroll Area -->
				</div>
		
				<div class="wp-btn-area">
					<button type="button" id="js-car-prod-hist-info-reg-pop-regist-button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="저장"/></button>
					<button type="button" id="js-car-prod-hist-info-reg-pop-delete-button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="삭제"/></button>
					<input type="hidden" id="js-car-prod-hist-info-reg-pop-docNo" value="">
					<input type="hidden" id="js-car-prod-hist-info-reg-pop-orgDocNo" value="">
					<input type="hidden" id="js-car-prod-hist-info-reg-pop-carPlant" value="">
					<div class="wp-add-right-btn">
						<button type="button" id="js-car-prod-hist-sfa-active-button"  class="wp-btn skyblue cr3">SFA 활동보고</button>
						<button type="button" id="js-ship-compet-mng-regist-sfa-related-button" data-depth="2" data-link="js-ship-std-info-popup" onclick="initCarStdInfoPopup('carIssue');" class="wp-btn skyblue cr3 wp-btn-pop">SFA 연관글</button>
					</div>
				</div>
			
		        </div>
		    </div>
		</div>
		
		
		<script type="text/x-handlebars-template" id="js-car-prod-hist-info-reg-popup-attach-file-template">
			{{#if items.length}}
				{{#each items}}
					<tr class="js-car-prod-hist-info-reg-popup-attach-file-item" data-item-id="{{itemId}}" data-upload-completed="{{uploadCompleted}}" data-seq-file="{{seqFile}}" >
						<td class="wp-al">{{name}}</td>
						<td>{{displaySize}}</td>
						<td><button type="button" class="wp-btn small darkgray cr3 js-car-prod-hist-info-reg-popup-attach-file-remove"><spring:message code="TODO.KEY" text="삭제"/></button></td>
						<td><button type="button" class="wp-btn small white bdarkgray cr3 js-car-prod-hist-info-reg-popup-attach-file-show" data-seq-file="{{seqFile}}" data-file-path="{{filePath}}" data-trans-file-name="{{transFilename}}" data-is-convert-completed="{{isConvertCompleted}}" data-web-office-path="{{webOfficePath}}" data-web-office-name="{{webOfficeName}}"><spring:message code="TODO.KEY" text="보기"/></button></td>
						<td><button type="button" class="wp-btn small white bdarkgray cr3 js-car-prod-hist-info-reg-popup-attach-file-download" data-file-path="{{filePath}}" data-trans-file-name="{{transFilename}}" data-origin-file-name="{{name}}"><spring:message code="TODO.KEY" text="다운로드"/></button></td>
					</tr>
				{{/each}}
			{{/if}}
		</script>
		
		<script id="js-template-car-prod-hist-info-reg-pop-badReason-selected-list" type="text/x-handlebars-template">
			<li id="js-car-prod-hist-info-reg-pop-badReason-selected-li-{{badCause}}">
			<span id="js-car-prod-hist-info-reg-pop-badReason-selected-code-name-{{badCause}}">{{badCauseNm}}</span>
			<input type='hidden' id='js-car-prod-hist-info-reg-pop-badReason-selected-group-code-{{badCause}}' value='{{causeType}}'>
			<input type='hidden' id='js-car-prod-hist-info-reg-pop-badReason-selected-group-code-name-{{badCause}}' value='{{causeTypeNm}}'>
			<button type='button' id='js-car-prod-hist-info-reg-pop-badReason-selected-remove-{{badCause}}' class='wp-spr-btn wp-close-sel'>
			<span><spring:message code='TODO.KEY' text='닫기'/></span></button></li>
		</script>
		
		<script id="js-template-car-prod-hist-info-reg-pop-partSel-selected-list" type="text/x-handlebars-template">
			<li id="js-car-prod-hist-info-reg-pop-partSel-selected-li-{{code}}">
			{{#isDth4Yn}}
			<span id="js-car-prod-hist-info-reg-pop-partSel-selected-code-name-{{code}}">{{dth1Nm}} > {{dth2Nm}} > {{dth3Nm}} > {{dth4Nm}}</span>
			{{else}}
			<span id="js-car-prod-hist-info-reg-pop-partSel-selected-code-name-{{code}}">{{dth1Nm}} > {{dth2Nm}} > {{dth3Nm}}</span>
			{{/isDth4Yn}}
			<input type='hidden' id='js-car-prod-hist-info-reg-pop-partSel-selected-dth1Code-{{code}}' value='{{dth1Code}}'>
			<input type='hidden' id='js-car-prod-hist-info-reg-pop-partSel-selected-dth2Code-{{code}}' value='{{dth2Code}}'>
			<input type='hidden' id='js-car-prod-hist-info-reg-pop-partSel-selected-dth3Code-{{code}}' value='{{dth3Code}}'>
			<input type='hidden' id='js-car-prod-hist-info-reg-pop-partSel-selected-dth4Code-{{code}}' value='{{dth4Code}}'>
			<input type='hidden' id='js-car-prod-hist-info-reg-pop-partSel-selected-dth1Nm-{{code}}' value='{{dth1Nm}}'>
			<input type='hidden' id='js-car-prod-hist-info-reg-pop-partSel-selected-dth2Nm-{{code}}' value='{{dth2Nm}}'>
			<input type='hidden' id='js-car-prod-hist-info-reg-pop-partSel-selected-dth3Nm-{{code}}' value='{{dth3Nm}}'>
			<input type='hidden' id='js-car-prod-hist-info-reg-pop-partSel-selected-dth4Nm-{{code}}' value='{{dth4Nm}}'>
			<button type='button' id='js-car-prod-hist-info-reg-pop-partSel-selected-remove-{{code}}' class='wp-spr-btn wp-close-sel'>
			<span><spring:message code='TODO.KEY' text='닫기'/></span></button></li>
		</script>
		
		<script type="text/javascript">
		var carProdHistInfoRegPopupBadReasonSelectedTemplate;
		var carProdHistInfoRegPopupPartSelSelectedTemplate;
		
		var initCarProdHistInfoRegPopup = function(carPlant, docNo, orgDocNo, orgTitle){
		
			var source = $('#js-template-car-prod-hist-info-reg-pop-badReason-selected-list').html();
			carProdHistInfoRegPopupBadReasonSelectedTemplate = Handlebars.compile(source);
			var source = $('#js-template-car-prod-hist-info-reg-pop-partSel-selected-list').html();
			carProdHistInfoRegPopupPartSelSelectedTemplate = Handlebars.compile(source);

			Handlebars.registerHelper('isDth4Yn', function(options) {
				if (this.dth4Code){
					return options.fn(this);
				} else {
					return options.inverse(this);
				}
			});
			
			// 첨부파일 업로드 handler 초기화
			carProdHistInfoRegPopupFileSaveHandler.init();
			$("#js-car-prod-hist-info-reg-popup-attach-file-template-container").empty();
			$('#js-car-prod-hist-info-reg-popup-sum-file-size').html('<spring:message code="TODO.KEY" text="첨부파일크기 : "/>' + convFileSize(0));
			
			//초기화	
			$("#js-car-prod-hist-info-reg-pop-emp").val($("#js-car-prod-hist-info-reg-pop-session-emp").val());
			$("#js-car-prod-hist-info-reg-pop-emp-name").val($("#js-car-prod-hist-info-reg-pop-session-emp-name").val());
			
			$("#js-car-prod-hist-info-reg-pop-histDate").val(fn_getTodayDate()).mask('9999-99-99');
			
			$("#js-car-prod-hist-info-reg-pop-docNo").val('');
			$("#js-car-prod-hist-info-reg-pop-orgDocNo").val('');
			$("#js-car-prod-hist-info-reg-pop-carPlant").val('');
			
			$("#js-car-prod-hist-info-reg-pop-badReason-list").find("li").remove();
			$("#js-car-prod-hist-info-reg-pop-carItems-selected-list").find("li").remove();
			$("#js-car-prod-hist-info-reg-pop-lotNo-list").find("li").remove();
			$("#js-car-prod-hist-info-reg-pop-partSel-list").find("li").remove();
			$("#js-car-prod-hist-info-reg-pop-title").val('');
			window.carProdHistInfoRegPopEditor.SetBodyValue('');
			$("#js-car-prod-hist-info-reg-popup-org-title-div").css("display", "none");
			
			//담당자 조회 버튼
			$("#js-car-prod-hist-info-reg-pop-emp-button").off().on('click', function() {
				initCarEmpPopup('js-car-prod-hist-info-reg-popup');
			});
				
			//불량유형 선택 버튼
			$("#js-car-prod-hist-info-reg-pop-badReason-button").off().on('click', function() {

				var carProdHistInfoRegPopupBadReason = [];
				
				// 불만유형 목록
				$("#js-car-prod-hist-info-reg-pop-badReason-list").find("li").each(function( index ) {
					var badReasonId = this.id.substring('js-car-prod-hist-info-reg-pop-badReason-selected-li'.length+1);
					
					carProdHistInfoRegPopupBadReason.push({
						  code      : badReasonId
						, groupCode : $("#js-car-prod-hist-info-reg-pop-badReason-selected-group-code-"  + badReasonId).val()
					});
				});
				
				initCarBadPopup('16', 'js-car-prod-hist-info-reg-popup', carProdHistInfoRegPopupBadReason);
			});
				
			//부위 선택 버튼
			$("#js-car-prod-hist-info-reg-pop-part-sel-button").off().on('click', function() {
				
				var carProdHistInfoRegPopupPartSel = [];
				
				// 부위 목록
				$("#js-car-prod-hist-info-reg-pop-partSel-list").find("li").each(function( index ) {
					var partSel = this.id.substring('js-car-prod-hist-info-reg-pop-partSel-selected-li'.length+1);
					
					carProdHistInfoRegPopupPartSel.push({
						  code     : partSel
						, dth1Code : $("#js-car-prod-hist-info-reg-pop-partSel-selected-dth1Code-"  + partSel).val()
						, dth1Nm   : $("#js-car-prod-hist-info-reg-pop-partSel-selected-dth1Nm-"  + partSel).val()
						, dth2Code : $("#js-car-prod-hist-info-reg-pop-partSel-selected-dth2Code-"  + partSel).val()
						, dth2Nm   : $("#js-car-prod-hist-info-reg-pop-partSel-selected-dth2Nm-"  + partSel).val()
						, dth3Code : $("#js-car-prod-hist-info-reg-pop-partSel-selected-dth3Code-"  + partSel).val()
						, dth3Nm   : $("#js-car-prod-hist-info-reg-pop-partSel-selected-dth3Nm-"  + partSel).val()
						, dth4Code : $("#js-car-prod-hist-info-reg-pop-partSel-selected-dth4Code-"  + partSel).val()
						, dth4Nm   : $("#js-car-prod-hist-info-reg-pop-partSel-selected-dth4Nm-"  + partSel).val()
					});
				});
				
				initCarPartSelPopup('js-car-prod-hist-info-reg-popup', carProdHistInfoRegPopupPartSel);
			});
				
			//저장 버튼
			$("#js-car-prod-hist-info-reg-pop-regist-button").off().on('click', function() {
				carProdHistInfoRegPopupCheckSaveValues();
			});
			
			//SFA 활동보고 버튼 - 거래선 정보
			$("#js-car-prod-hist-sfa-active-button").off().on("click", function() {
				sfaStdActReport();
			});
			
			var sfaStdActReport = function(){				
				
				var type = 'BCA';
				
				var loginId = '${sessionScope.LoginUserInfo.userID}';
				var docNo = $("#js-car-prod-hist-info-reg-pop-docNo").val();
				console.log(docNo);				
				window.open( 'http://sfa.kccworld.info/mobile/kaissfa/views/login/S0208SFACreateSession_E.jsp?sloId='+loginId +"&redirectUrl=http%3A%2F%2Fsfa.kccworld.info%2Fmobile%2Fkaissfa%2Fviews%2FactReport%2FS0208SFAactReportCombine_E.jsp%3F%26dispatch%3DCAR_ISSUE%26seqCarProdType%3D" +type +"%26docNo%3D"+docNo+"%26sysType%3DTSDCARINFO");
				type = '';
			}
			
			//삭제 버튼
			$("#js-car-prod-hist-info-reg-pop-delete-button").off().on('click', function() {
				var docNo = $("#js-car-prod-hist-info-reg-pop-docNo").val();
				if(docNo){
					app.message.confirm({
						  title             : '<spring:message code="TODO.KEY" text="삭제"/>'
						, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
						, callback          : {
							confirm: function() {
								delCarCompProdIssue.request(docNo);
							}
						}
					});					
				} else {
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="에러"/>'
						, message           : '<spring:message code="TODO.KEY" text="문서번호가 없습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					});
				}
			});
			
			//제품명 선택 콤보
			$('#js-car-prod-hist-info-reg-pop-carItems-combo').off().on('change', function(){
				var value = this.value;
				var text = "";
				
				var $el = this.selectedOptions["0"] || null;
				
				if($el != null) {					
					text = $el.innerText;				
				}
				
				if(value){
					var listCheck = true;
					$("#js-car-prod-hist-info-reg-pop-carItems-selected-list").find("li").each(function(){
						var code = this.id.substring('js-car-prod-hist-info-reg-pop-carItems-selected-li'.length + 1);
						
						if(value == code){
							listCheck = false;
						}
					});
					
					if(listCheck){
						var html = '<li id="js-car-prod-hist-info-reg-pop-carItems-selected-li-'+value+'">'+text+'<button type="button" id="js-car-prod-hist-info-reg-pop-carItems-remove-'+value+'" class="wp-spr-btn wp-close-sel"><span><spring:message code="TODO.KEY" text="닫기"/></span></button></li>';
						$("#js-car-prod-hist-info-reg-pop-carItems-selected-list").append(html);
						$("#js-car-prod-hist-info-reg-pop-carItems-combo").val('');
						
						$("#js-car-prod-hist-info-reg-pop-carItems-remove-"+value).off().on('click', function(){
							var id = 'js-car-prod-hist-info-reg-pop-carItems-selected-li-' + this.id.substring('js-car-prod-hist-info-reg-pop-carItems-remove'.length + 1);
							$("#"+id).remove();
						});
					} else {
						//이미 추가됨
						$("#js-car-prod-hist-info-reg-pop-carItems-combo").val('').focus();
					}
				}else{
					$("#js-car-prod-hist-info-reg-pop-carItems-combo").val('');
				}
				
			});
			
			//공장 선택 콤보
			$('#js-car-prod-hist-info-reg-pop-carFactoryList-combo').off().on('change', function() {						
				//컬러코드 조회(생산 특이 사항 정보 등록 공통코드 - 컬러코드)
				retrieveCarColorList.request();
				//차종 조회(생산 특이 사항 정보 등록 공통코드 - 차종)
				retrieveCarModelList.request();
			});
			
			//사고유형1 선택 콤보
			$('#js-car-prod-hist-info-reg-pop-carReasonList1-combo').off().on('change', function() {
				//사고유형2
				retrieveCarAccidentType2.request();
			});
			
			//메이커 선택 콤보
// 			$('#js-car-prod-hist-info-reg-pop-makerList-combo').off().on('change', function() {
// 				//제품명
// 				retrieveCarItemsList.request();
// 			});
			
			//자릿수 제한 10 자리
			$("#js-car-prod-hist-info-reg-pop-lotNo").attr('maxlength', '10');
		
			//Lot No
			$('#js-car-prod-hist-info-reg-pop-lotNo').off().on('keyup', function(e) {
				if(e.which == 13 || this.value.length == 10){
					var id = this.id;
					
					var lotNo = $("#"+id).val();
					if(lotNo){
						var listCheck = true;
						
						$("#"+id+"List").find("li[id*="+id+"]").each(function() {
							var code = this.id.substring(id.length + 1);
							
							if(lotNo == code){
								listCheck = false;
							}
						});
						
						if(listCheck){
							var html = '<li id="'+id+'-'+lotNo+'">'+lotNo+'<button type="button" id="'+id+'-remove-'+lotNo+'" class="wp-spr-btn wp-close-sel"><span><spring:message code="TODO.KEY" text="닫기"/></span></button></li>';
							$("#"+id+"-list").append(html);
							$("#"+id).val('');					
						} else {
							//이미 추가됨
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="이미 추가된 Lot No. 입니다."/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
								, callback          : {
									confirm: function() {
										$("#"+id).val('');
										$("#"+id).focus();
									}
								}
							});
						}
					}
					
					$("#"+id+'-remove-'+lotNo).off().on('click', function() {
						removeSelectedLotNo(this.id);
					});
					
				}
				
				if(!(e.keyCode >=37 && e.keyCode<=40)) {
					$(this).val($(this).val().replace(/[^a-z0-9]/gi,'').toUpperCase());
				}
		
				//focus
				$("#"+id).focus();
				
				//10자리 입력시 자동으로 엔터 입력 효과
				var e = jQuery.Event( "keyup", { keyCode: 13, which: 13 } );
				if ($("#" + this.id).val().length == 10){
					$("#" + this.id).trigger(e);
				}
			});
			
			//문서번호 있으면 수정으로 봄
			$("#js-car-prod-hist-info-reg-pop-carPlant").val(carPlant);
			$("#js-car-prod-hist-info-reg-pop-docNo").val(docNo);
			$("#js-car-prod-hist-info-reg-pop-orgDocNo").val(orgDocNo);
			if(docNo){
				$("#js-car-prod-hist-info-reg-pop-delete-button").css("display", "inline");
				retrieveCarProdIssue.request();
			} else {
				$("#js-car-prod-hist-info-reg-pop-delete-button").css("display", "none");
				//초기 항목 조회(생산 특이 사항 정보 등록 공통코드 조회)
				retrieveCarProdIssueCombo.request();
			}
			if(orgTitle){
				$("#js-car-prod-hist-info-reg-popup-org-title").text(orgTitle);
				$("#js-car-prod-hist-info-reg-popup-org-title-div").css("display", "block");
			}
		}

		// 생산특이사항 삭제
		var delCarCompProdIssue = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
	
					if (message === 'OK') {
						app.message.alert({
							  title             : '<spring:message code="TODO.KEY" text="알림"/>'
							, message           : '<spring:message code="TODO.KEY" text="삭제 완료 되었습니다."/>'
							, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							, callback          : {
								confirm: function() {
									// 생산 특이 사항 정보 리스트 조회
									retrieveCarProdIssueList.request();
									$('#js-car-prod-hist-info-reg-popup-close-button').click();
								}
							}
						});
					}else
					{
						// 서비스 요청 처리 오류 발생 메시지
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
			request: function(docNo) {
				// ------------------------------------
				// ajax request
				// ------------------------------------					
				var params = {
					service: 'car.prodIssue',
					method: 'delCarCompProdIssue',
					docNo: docNo
				};
	
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);				
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		//선택된 lotNo 삭제
		var removeSelectedLotNo = function(id){
			id = id.replace("-remove-", "-");
			
			$("#"+id).remove();
		}
		
		var carProdHistInfoRegPopupCheckSaveValues = function(){
			var param			= "";
			
			var docNo           = "";        //문서번호
			var carPlant        = "";        //공장
			var makerId         = "";        //Paint Maker
			var histType        = "";        //특이사항구분
			var histDate        = "";        //발생일자
			var histEmp         = "";        //담당자
			var histReasonType1 = "";        //사고유형1
			var histReasonType2 = "";        //사고유형2
			var histTitle       = "";        //제목
			var histDescription = "";        //내용
			var orgDocNo        = "";        //원글 문서번호
			
			var procList        = [];        //공정리스트
			var colorList       = [];        //컬러코드리스트
			var modelList       = [];        //차종리스트
			var badList         = [];        //불량유형리스트
			var itemList        = [];        //제품리스트
			var partList        = [];        //부위리스트
			var lotList         = [];        //Lot리스트
			
			var allPartsYn		= "N";		 //발생 부위 checkbox 전체
			
			docNo = $("#js-car-prod-hist-info-reg-pop-docNo").val();
			carPlant = $("#js-car-prod-hist-info-reg-pop-carFactoryList-combo").val();
			makerId = $("#js-car-prod-hist-info-reg-pop-makerList-combo").val();
			histType = $("#js-car-prod-hist-info-reg-pop-issueList-combo").val();
			histDate = $("#js-car-prod-hist-info-reg-pop-histDate").val().replace(/-/gi,"");
			histEmp = $("#js-car-prod-hist-info-reg-pop-emp").val();
			histReasonType1 = $("#js-car-prod-hist-info-reg-pop-carReasonList1-combo").val();
			histReasonType2 = $("#js-car-prod-hist-info-reg-pop-carReasonList2-combo").val();
			histTitle = $("#js-car-prod-hist-info-reg-pop-title").val();
			histDescription = window.carProdHistInfoRegPopEditor.GetBodyValue();
			orgDocNo = $("#js-car-prod-hist-info-reg-pop-orgDocNo").val();
			
			// 공정
			$('li[id*=js-car-prod-hist-info-reg-pop-carProcList-item]').each(function(){
				var $el = $(this).find("button");
				if($el.hasClass("steelblueon")){
					var procId = this.id.substring("js-car-prod-hist-info-reg-pop-carProcList-item".length + 1);
					procList.push({procId: procId});
				}
			});
			
			// 차종
			$('li[id*=js-car-prod-hist-info-reg-pop-carModelList-item]').each(function(){
				var $el = $(this).find("button");
				if($el.hasClass("steelblueon")){
					var modelId = this.id.substring("js-car-prod-hist-info-reg-pop-carModelList-item".length + 1);
					modelList.push({modelId: modelId});
				}
			});
			
			// 칼라코드
			$('li[id*=js-car-prod-hist-info-reg-pop-carColorList-item]').each(function(){
				var $el = $(this).find("button");
				if($el.hasClass("steelblueon")){
					var colorId = this.id.substring("js-car-prod-hist-info-reg-pop-carColorList-item".length + 1);
					colorList.push({colorId: colorId});
				}
			});
			
			$("#js-car-prod-hist-info-reg-pop-badReason-list").find("li").each(function() {
				var badReasonId = this.id.substring("js-car-prod-hist-info-reg-pop-badReason-selected-li".length + 1);
				if(badReasonId){
					badList.push({badReasonId: badReasonId});
				}
			});
			
			$("#js-car-prod-hist-info-reg-pop-carItems-selected-list").find("li").each(function() {
				var items = this.id.substring("js-car-prod-hist-info-reg-pop-carItems-selected-li".length + 1);
				if(items){
					itemList.push({items: items});
				}
			});
			
			$("#js-car-prod-hist-info-reg-pop-partSel-list").find("li").each(function() {
				var partId = this.id.substring("js-car-prod-hist-info-reg-pop-partSel-selected-li".length + 1);
				if(partId){
					partList.push({partId: partId});
				}
			});
			
			// Lot List
			$("#js-car-prod-hist-info-reg-pop-lotNo-list").find("li").each(function() {
				var lotNo         = this.id.substring("js-car-prod-hist-info-reg-pop-lotNo".length + 1);
				
				// 데이터가 모두 있을 경우에만 추가
				if(!app.utils.isEmpty(lotNo)){
					lotList.push({lotNo: lotNo});
				}
			});
			
			//필수값 check
			if(app.utils.isEmpty(carPlant)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="공장 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-car-prod-hist-info-reg-pop-carFactoryList-combo').focus();
						}
					}
				});
				return;
			}
			
			if(app.utils.isEmpty(makerId)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="MAKER 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-car-prod-hist-info-reg-pop-makerList-combo').focus();
						}
					}
				});
				return;
			}
			
			if(app.utils.isEmpty(histType)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="특이사항구분 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-car-prod-hist-info-reg-pop-issueList-combo').focus();
						}
					}
				});
				return;
			}
			
			if(app.utils.isEmpty(histDate)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="발생일자 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-car-prod-hist-info-reg-pop-histDate').focus();
						}
					}
				});
				return;
			}
			
			if(app.utils.isEmpty(histEmp)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="담당자 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				});
				return;
			}
			
			if(procList.length == 0){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="공정 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				});
				return;
			}
			
			if(colorList.length == 0){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="칼라코드는 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				});
				return;
			}
			
			if(modelList.length == 0){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="차종은 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				});
				return;
			}
			
			// 특이사항구분 기타 선택 시 불량유형 필수입력 체크 제외
			if($("#js-car-prod-hist-info-reg-pop-issueList-combo").val() != 'I999')
			{
				if(badList.length == 0){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="불량유형은 필수입력 항목입니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					});
					return;
				}
			}
			
			if(app.utils.isEmpty(app.utils.trim(histTitle))){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="제목은 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				});
				return;
			}
			if(app.utils.isEmpty(app.utils.trim(histDescription.replace(/<p>|<\/p>|<br>|&nbsp;/gi, "")))){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="내용은 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				});
				return;
			}
			
			if(lotList.length == 0){ lotList = ""; } else { lotList = JSON.stringify(lotList); }
			
			
			// 발생 부위 checkbox 전체
			if($("#js-car-prod-hist-info-reg-pop-allPartsYn").is(":checked")){
				allPartsYn = "Y";
			}
			
			
			param = {
				 docNo          : docNo                     //문서번호
				,carPlant       : carPlant                  //공장
				,makerId        : makerId                   //Paint Maker
				,histType       : histType                  //특이사항구분
				,histDate       : histDate                  //발생일자
				,histEmp        : histEmp                   //담당자
				,histReasonType1: histReasonType1           //사고유형1
				,histReasonType2: histReasonType2           //사고유형2
				,histTitle      : histTitle                 //제목
				,histDescription: histDescription           //내용
				,orgDocNo       : orgDocNo                  //원글 문서번호	                 
				,procList       : JSON.stringify(procList ) //공정리스트
				,colorList      : JSON.stringify(colorList) //컬러코드리스트
				,modelList      : JSON.stringify(modelList) //차종리스트
				,badList        : JSON.stringify(badList  ) //불량유형리스트
				,itemList       : JSON.stringify(itemList ) //제품리스트
				,partList       : JSON.stringify(partList ) //부위리스트
				,lotList        : lotList //Lot리스트
				,allPartsYn		: allPartsYn				//발생 부위 checkbox 전체
			}
			
		
			carProdHistInfoRegPopupFileSaveHandler.save(param);
		}
		
		
		//------------------------------------
		//나모 CrossEditor 첨부파일 저장
		//------------------------------------
		//issue : firefox will fire the event even if it is the same file
		//issue : IE 9 does not support file api
		//------------------------------------
		var carProdHistInfoRegPopupFileSaveHandler = {
			attachFileHandler: {
				attachment: {
					$htmlTemplateContainer: null,
					htmlTemplate: null,
					files: {}
				},
				selected: function(e) {
					// ------------------------------------
					// 파일 선택 이벤트 핸들러
					// ------------------------------------
					// Chrome, FireFox, Safari 5.1.7+, IE 10+
					// ------------------------------------
					var files = this.files || null;
					
					if (files != null) {
						// ------------------------------------
						// data.attachment.htmlTemplate	: 첨부파일 HTML 엘리먼트 추가 Handlebars 템플릿
						// data.attachment.files		: 첨부파일 목록
						// ------------------------------------
						var data = e.data || {}, attachment = data.attachment || {}, $el = $(this);
						
						if (typeof attachment.files !== 'undefined') {
							var htmlTemplate = attachment.htmlTemplate || null;
							
							if (htmlTemplate != null) {
								var file = null, isExistFilename = false, itemId = null;
								var items = [];
		
								for (var i = 0, count = files.length; i < count; i++) {
									file = files[i] || null;
									
									if (file != null) {
										// ------------------------------------
										// 파일명 기준으로 첨부 파일 중복 여부 판단 (중복 시 추가 안함)
										// ------------------------------------
										isExistFilename = false;
										
										$.each(attachment.files, function(key, _file) {
											if (_file.name === file.name) {
												// ------------------------------------
												// 파일명 중복 발생
												// ------------------------------------
												isExistFilename = true;
												return false;
											}
										});
										
										if (!isExistFilename) {
											// ------------------------------------
											// 첨부 파일 추가
											// ------------------------------------
											itemId = app.utils.createUniqueIdByTimestamp();
		
											attachment.files[itemId] = file;
											
											items.push({uploadCompleted: 'N', itemId: itemId, name: file.name, type: file.type, size: file.size, displaySize: convFileSize(file.size) });
										}
									}
								}
		
								// ------------------------------------
								// 첨부파일 HTML 엘리먼트 추가
								// ------------------------------------
								var $htmlTemplateContainer = attachment.$htmlTemplateContainer || null;
								
								if (($htmlTemplateContainer != null) && ($htmlTemplateContainer.length)) {
									$htmlTemplateContainer.append(htmlTemplate({items: items}));	
								}else
								{
									console.log('------------------------------------');
									console.log('[error] $htmlTemplateContainer object does not exist');
									console.log('------------------------------------');
								}
							}else
							{
								console.log('------------------------------------');
								console.log('[error] Handlebars precompiled template does not exist');
								console.log('------------------------------------');
							}
						}
		
						// ------------------------------------
						// INPUT 엘리먼트 초기화 수행
						// ------------------------------------
						// 파일 삭제후 동일 파일 선택시 change 이벤트 발생 안함
						// ------------------------------------
						$el.replaceWith($el.clone(true));
					}else
					{
						// ------------------------------------
						// OLD Browser or IE9 Lower 
						// ------------------------------------
						console.log('------------------------------------');
						console.log('You are browser does not support file api');
						console.log('------------------------------------');
					}
				},
				remove: function(e) {
					// ------------------------------------
					// 파일 삭제 클릭
					// ------------------------------------
					var data = e.data || {}, classTarget = data.classTarget || null;
					
					if (classTarget != null) {
						var $el = $(this).closest(classTarget);
		
						if ($el.length) {
							var isUploadCompleted = $el.attr('data-upload-completed') || 'Y', itemId = $el.attr('data-item-id') || null;
		
							if ((isUploadCompleted === 'N') && (itemId != null)) {
								// ------------------------------------
								// 업로드전 첨부 파일 삭제
								// ------------------------------------
								var attachment = data.attachment || {}
								
								if (typeof attachment.files !== 'undefined') {
									delete attachment.files[itemId];
									$el.remove();
								}
							}else
							{
								// ------------------------------------
								// 업로드된 첨부 파일 삭제
								// ------------------------------------
								var seqFile = $el.attr('data-seq-file') || null;
								
								if (seqFile != null) {
									var removeFileHandler = data.removeFileHandler || null;
									
									if (removeFileHandler != null) {
										if (typeof removeFileHandler.request === 'function') {
											// ------------------------------------
											// 첨부파일 삭제 요청
											// ------------------------------------
											removeFileHandler.request($el, seqFile);
										}
									}
								}else
								{
									console.log('------------------------------------');
									console.log('[error] missing data-seq-file attributes');
									console.log('------------------------------------');
								}
							}
						}
					}else
					{
						console.log('------------------------------------');
						console.log('[error] missing classTarget property');
						console.log('------------------------------------');
					}
				},
				click: function(e) {
					// ------------------------------------
					// 파일 추가 버튼 클릭
					// ------------------------------------
					var data = e.data || {}, selectorTarget = data.selectorTarget || null;
		
					if (selectorTarget != null) {
						$(selectorTarget).trigger('click');
					}else
					{
						console.log('------------------------------------');
						console.log('[error] missing selectorTarget property');
						console.log('------------------------------------');
					}
				},
				setItems: function(data) {
					// ------------------------------------
					// 조치내역 HTML 엘리먼트 생성
					// ------------------------------------
					// data					: [{}]
					// data.fileNm			: "국토교통부.PNG"
					// data.filePath		: "D:/TQMS.PROJECT/workspace/TQMS/www/attachment/8d/201703/"
					// data.fileSize		: 637161
					// data.fileType		: "PNG"
					// data.inputDateTime	: "Mar 17, 2017 1:36:03 PM"
					// data.inputEmp		: "20301007"
					// data.inputEmpNm		: "유제명"
					// data.mngNo			: "8D-1703-1"
					// data.seq				: 261
					// data.seqFile			: 474
					// data.stepId			: "D0ACTION"
					// data.sumFileSize		: 637161
					// data.transFile		: "1489725364000000.PNG"
					// data.webOfficeConvYn	: "N"
					// data.webOfficePath	: null
					// ------------------------------------
					data = data || [];
					
					var items = [];
					var sumFileSize = 0;
					
					for (var i = 0, count = data.length; i < count; i++) {
						items.push({
							uploadCompleted: 'Y',
							itemId: app.utils.createUniqueIdByTimestamp(),
							name: data[i].orginFile || '',
							size: data[i].fileSize,
							displaySize: convFileSize(data[i].fileSize),
							seqFile: data[i].seqCarAttachFile,
							docNo: data[i].docNo,
							filePath: data[i].filePath,
							transFilename: data[i].transFile,
							isConvertCompleted: data[i].webOfficeConvYn,
							webOfficePath: data[i].webOfficePath,
							webOfficeName: data[i].webOfficeName
						});
						
						sumFileSize += parseInt(data[i].fileSize);
					}
					
					$('#js-car-prod-hist-info-reg-popup-sum-file-size').html('<spring:message code="TODO.KEY" text="첨부파일크기 : "/>' + convFileSize(sumFileSize));
					
					this.attachment.$htmlTemplateContainer.empty().append(this.attachment.htmlTemplate({items: items}));
					
					if(items.length > 0 && !$("#js-car-prod-hist-info-reg-popup-fold-button").hasClass("on")){
						$("#js-car-prod-hist-info-reg-popup-fold-button").click();
					};
				},
				show: function(e) {
					// ------------------------------------
					// 변환된 HTML 문서 오픈
					// ------------------------------------
					var $el = $(this);
					var isConvertCompleted = $el.attr('data-is-convert-completed') || null;
					
					if (isConvertCompleted != null) {
						if (isConvertCompleted === 'Y') {
							var officeFilepath = $el.attr('data-web-office-path') || null;
							var officeFilename = $el.attr('data-web-office-name') || null;
							
							if ((officeFilepath != null) && (officeFilename != null)) {
								var openUrl = '/viewer/doc.html?fn=' + officeFilename + '&rs=' + officeFilepath;
								
								window.open(openUrl);
							}
						}else
						{
							// ------------------------------------
							// HTML 문서 변환 필요
							// ------------------------------------
							var transFilename = $el.attr('data-trans-file-name') || null;
							var filepath = $el.attr('data-file-path') || null;
							var seqFile = $el.attr('data-seq-file') || null;
							
							if ((transFilename != null) && (filepath != null) && (seqFile != null)) {
								var data = e.data || {};
								var showFileHandler = data.showFileHandler || null;
								var params = {
									transFilename: transFilename,
									filepath: filepath,
									seqFile: seqFile
								};
								
								if (showFileHandler != null) {
									if (typeof showFileHandler.request === 'function') {
										// ------------------------------------
										// HTML 문서 변환 요청
										// ------------------------------------
										showFileHandler.request($el, params);
									}
								}
							}
						}
					}
				}
			},
			showFileHandler: {
				success: function($el) {
					return function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '', rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
		
							if (message === 'OK') {
								if ((typeof $el !== 'undefined') && ($el.length)) {
									var rs = response.rs || '';
									var success = rs.success || 'false';
									
									if (success === 'true') {
										var officeFilepath = rs.url || null;
										var officeFilename = rs.name || null;
										
										if ((officeFilepath != null) && (officeFilename != null)) {
											$el.attr('data-is-convert-completed', 'Y').attr('data-web-office-path', officeFilepath).attr('data-web-office-name', officeFilename);
											
											var openUrl = '/viewer/doc.html?fn=' + officeFilename + '&rs=' + officeFilepath;
											
											window.open(openUrl);
										}
									}
								}
							}else
							{
								// ------------------------------------
								// 서비스 요청 처리 오류 발생 메시지
								// ------------------------------------
								app.message.alert({
									  title             : '<spring:message code="TODO.KEY" text="에러"/>'
									, message           : message
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
								});
		
								// ------------------------------------
								// 서비스 요청 처리 Exception 메시지
								// ------------------------------------
								console.log(response.error || '');
							}
						}
					}
				},
				error: function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
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
				request: function($el, requestParams) {
					// ------------------------------------
					// HTML 문서 변환 요청
					// ------------------------------------
					var params = {
						service: 'ship.common',
						method: 'convertFileToHtml',
						transFilename: requestParams.transFilename,
						filepath: requestParams.filepath,
						seqFile: requestParams.seqFile
					};
		
					app.mask.pageLock();
					
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success($el));
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			},
			downloadHandler: {
				request: function(){
					
					var $el = $(this);
					
					var filePath, originFileName, transFileName;
					
					filePath = $el.attr('data-file-path') || '';
					transFileName = $el.attr('data-trans-file-name') || '';
					originFileName = $el.attr('data-origin-file-name') || '';
					
					var downloadParams = {
							service: 'ship.common',
							method: 'download',
							filePath : filePath,
							transFileName : transFileName,
							originFileName : originFileName
					};
					
					app.file.download('/download.ajax', downloadParams);
		
				}
			},
			removeFileHandler: {
				success: function($el) {
					return function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '', rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
		
							if (message === 'OK') {
								if ((typeof $el !== 'undefined') && ($el.length)) {
									$el.remove();
								}
							}else
							{
								// ------------------------------------
								// 서비스 요청 처리 오류 발생 메시지
								// ------------------------------------
								app.message.alert({
									  title             : '<spring:message code="TODO.KEY" text="에러"/>'
									, message           : message
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
								});
		
								// ------------------------------------
								// 서비스 요청 처리 Exception 메시지
								// ------------------------------------
								console.log(response.error || '');
							}
						}
					}
				},
				error: function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
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
				request: function($el, seqFile) {
					// ------------------------------------
					// 첨부파일 삭제 요청
					// ------------------------------------
					var params = {
						service: 'car.procItem',
						method: 'deleteFileInfo',
						seqFile: seqFile
					};
		
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success($el));
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			},
			saveHandler: {
				success: function(attachment) {
					return function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '', rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
		
							if (message === 'OK') {
								// ------------------------------------
								// 첨부파일 업로드 요청 처리 JSON 응답 구조
								// ------------------------------------
								// attachments.transFilename	: 파일명 (1483926904000002.jpg)
								// attachments.saveFilepath		: 저장 경로 (D:/KCCFC/edps/201701/)
								// attachments.seqFile			: 파일 시퀀스 (263)
								// attachments.originFilename	: 원본 파일명 (01.jpg)
								// attachments.success			: 첨부파일 업로드 성공 여부 (true: 성공, false: 실패)
								// ------------------------------------
								var rs = response.rs || {}, attachments = rs.attachments || [], isPartialError = false;
								
								for (var i = 0, count = attachments.length; i < count; i++) {
									if (attachments[i].success === 'true') {
										// ------------------------------------
										// 첨부파일 업로드 성공
										// ------------------------------------
										$.each(attachment.files, function(key, file) {
											if (file.name === attachments[i].originFilename) {
												// ------------------------------------
												// 파일 업로드 여부 데이터 속성 변경 (data-upload-completed)
												// 업로드 파일 시퀀스 속성 추가 (data-seq-file)
												// ------------------------------------
												attachment.$htmlTemplateContainer.find('[data-item-id="' + key + '"]').attr('data-upload-completed', 'Y').attr('data-seq-file', attachments[i].seqFile || '');
		
												return false;
											}
										});
									}else
									{
										// ------------------------------------
										// 첨부파일 업로드 실패
										// ------------------------------------
										if (!isPartialError) {
											isPartialError = true;	
										}
									}
								}
								
								// ------------------------------------
								// 업로드 요청 첨부파일 초기화
								// ------------------------------------
								$.each(attachment.files, function(key, file) {
									delete attachment.files[key];
								});
								
								// ------------------------------------
								// 첨부파일 업로드 부분 실패 발생 메시지 처리
								// ------------------------------------
								if (isPartialError) {
									console.log(attachments);
								} else {
									app.message.alert({
										  title             : '<spring:message code="TODO.KEY" text="알림"/>'
										, message           : '<spring:message code="TODO.KEY" text="저장 되었습니다."/>'
										, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
										, callback          : {
											confirm: function() {
												// 생산 특이 사항 정보 리스트 재조회
												retrieveCarProdIssueList.request();												
												$("#js-car-prod-hist-info-reg-popup-close-button").click();
											}
										}
									});
								}
							}else
							{
								// ------------------------------------
								// 서비스 요청 처리 오류 발생 메시지
								// ------------------------------------
								app.message.alert({
									  title             : '<spring:message code="TODO.KEY" text="에러"/>'
									, message           : message
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
								});
		
								// ------------------------------------
								// 서비스 요청 처리 Exception 메시지
								// ------------------------------------
								console.log(response.error || '');
							}
						}
					}
				},
				error: function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
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
				request: function(formData, attachment) {
					// ------------------------------------
					// 저장 요청
					// ------------------------------------
					if ((typeof formData !== 'undefined') && (typeof attachment !== 'undefined')) {
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: formData, dataType: 'json', mimeType: 'multipart/form-data', cache: false, contentType: false, processData:false});
						ajax.done(this.success(attachment));
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				}
			},
			save: function(param) {
				
				// ------------------------------------
				// 저장 버튼 클릭 이벤트 핸들러
				// ------------------------------------
				if (typeof window.FormData !== 'undefined') {
					// ------------------------------------
					// Chrome, FireFox, Safari 5.1.7+, IE 10+
					// ------------------------------------
					var formData= new FormData();
					var appUtils = app.utils;
		
					// ------------------------------------
					// 첨부파일(업로드) 추가
					// ------------------------------------
					var attachment = this.attachFileHandler.attachment;
					
					for (var key in attachment.files) {				
						if (attachment.files[key] !== 'undefined') {
							formData.append('attacheFile', attachment.files[key]);
						}
					} 
					// ------------------------------------
					// ajax request
					// ------------------------------------
					// ------------------------------------
					// 파라미터
					// ------------------------------------
					formData.append('service'        , 'car.prodIssue'         );
					formData.append('method'         , 'saveCarProdIssueInfo'  );
					formData.append('docNo'          , param.docNo            );       //문서번호       
					formData.append('carPlant'       , param.carPlant         );       //공장           
					formData.append('makerId'        , param.makerId          );       //Paint Maker    
					formData.append('histType'       , param.histType         );       //특이사항구분       
					formData.append('histDate'       , param.histDate         );       //발생일자       
					formData.append('histEmp'        , param.histEmp          );       //담당자         
					formData.append('histReasonType1', param.histReasonType1  );       //사고유형1      
					formData.append('histReasonType2', param.histReasonType2  );       //사고유형2      
					formData.append('histTitle'      , param.histTitle        );       //제목           
					formData.append('histDescription', param.histDescription  );       //내용           
					formData.append('orgDocNo'       , param.orgDocNo         );       //원글 문서번호	 
					formData.append('procList'       , param.procList         );       //공정리스트     
					formData.append('colorList'      , param.colorList        );       //컬러코드리스트 
					formData.append('modelList'      , param.modelList        );       //차종리스트     
					formData.append('badList'        , param.badList          );       //불량유형리스트 
					formData.append('itemList'       , param.itemList         );       //제품리스트     
					formData.append('partList'       , param.partList         );       //부위리스트     
					formData.append('lotList'        , param.lotList          );       //Lot리스트
					formData.append('allPartsYn'     , param.allPartsYn       );	   //발생 부위 checkbox 전체
								
					// ------------------------------------
					// 저장 요청
					// ------------------------------------
					this.saveHandler.request(formData, this.attachFileHandler.attachment);
					
				}else
				{
					// ------------------------------------
					// OLD Browser or IE9 Lower 
					// ------------------------------------
					console.log('------------------------------------');
					console.log('You are browser does not support FormData');
					console.log('------------------------------------');
				}
			},
			init: function() {
				// ------------------------------------
				// 파일 추가 이벤트 바인딩
				// ------------------------------------
				console.log('---------------------------------------------');
				console.log(this);
				console.log('---------------------------------------------');
				$('#js-car-prod-hist-info-reg-popup-attach-file-target').off().on('change', {attachment: this.attachFileHandler.attachment}, this.attachFileHandler.selected);
				$('#js-car-prod-hist-info-reg-popup-attach-file').off().on('click', {selectorTarget: '#js-car-prod-hist-info-reg-popup-attach-file-target'}, this.attachFileHandler.click);
				
				// ------------------------------------
				// 파일 삭제 이벤트 바인딩
				// ------------------------------------
				$('#js-car-prod-hist-info-reg-popup-attach-file-template-container').off().on('click', '.js-car-prod-hist-info-reg-popup-attach-file-remove', {classTarget: '.js-car-prod-hist-info-reg-popup-attach-file-item', attachment: this.attachFileHandler.attachment, removeFileHandler: this.removeFileHandler}, this.attachFileHandler.remove);
				
				// ------------------------------------
				// 파일 보기 이벤트 바인딩
				// ------------------------------------
				$('#js-car-prod-hist-info-reg-popup-attach-file-template-container').on('click', '.js-car-prod-hist-info-reg-popup-attach-file-show', {showFileHandler: this.showFileHandler}, this.attachFileHandler.show);
				
				// ------------------------------------
				// 파일 보기 이벤트 바인딩
				// ------------------------------------
				$('#js-car-prod-hist-info-reg-popup-attach-file-template-container').on('click', '.js-car-prod-hist-info-reg-popup-attach-file-download', this.downloadHandler.request);
				
				// ------------------------------------
				// Handlebars 템플릿 초기화
				// ------------------------------------
				
				try {
					var $source = $('#js-car-prod-hist-info-reg-popup-attach-file-template');
					
					if ($source.length) {
						this.attachFileHandler.attachment.$htmlTemplateContainer = $('#js-car-prod-hist-info-reg-popup-attach-file-template-container');
						this.attachFileHandler.attachment.htmlTemplate = Handlebars.compile($source.html());
						
					}else
					{
						console.log('------------------------------------');
						console.log('[error] $source object does not exist');
						console.log('------------------------------------');
					}
				}catch (error)
				{
					console.log('------------------------------------');
					console.log(error);
					console.log('------------------------------------');
				}
		
		
			}
		};
		
		//담당자 선택 버튼
		var applyCarProdHistInfoRegPopupEmpData = function(data){
			$("#js-car-prod-hist-info-reg-pop-emp").val(data.emp);
			$("#js-car-prod-hist-info-reg-pop-emp-name").val(data.empNm);
		}
		//불량유형 선택 버튼
		var applyCarProdHistInfoRegPopupBadReason = function(data){
			var badReason = data.rows;
			if(badReason.length > 0){
				for(var i=0 ; i<badReason.length ; i++){
					var checkAdded = false;
					var code = badReason[i].badCause;
					
					//추가된 항목 확인
					$("#js-car-prod-hist-info-reg-pop-badReason-list").find("li").each(function() {
						var badId = this.id.substring("js-car-prod-hist-info-reg-pop-badReason-selected-li".length + 1);
						if(code == badId){
							checkAdded = true;	
						}
					});
					
					if(!checkAdded){
						var html = carProdHistInfoRegPopupBadReasonSelectedTemplate(badReason[i]);
						
						$('#js-car-prod-hist-info-reg-pop-badReason-list').append(html);
						
						$("#js-car-prod-hist-info-reg-pop-badReason-selected-remove-"+code).off().on('click', function() {
							var id = this.id.substring('js-car-prod-hist-info-reg-pop-badReason-selected-remove'.length + 1);
							$("#js-car-prod-hist-info-reg-pop-badReason-selected-li-"+id).remove();		
						});
					}
				}
			}
		}
		//부위선택 선택완료 버튼
		var applyCarProdHistInfoRegPopupPartSel = function(data){
			var partSel = data.rows;
			if(partSel.length > 0){
				for(var i=0 ; i<partSel.length ; i++){
					var checkAdded = false;
					var code = partSel[i].code;
					
					//추가된 항목 확인
					$("#js-car-prod-hist-info-reg-pop-partSel-list").find("li").each(function() {
						var partId = this.id.substring("js-car-prod-hist-info-reg-pop-partSel-selected-li".length + 1);
						if(code == partId){
							checkAdded = true;	
						}
					});
					
					if(!checkAdded){
						var html = carProdHistInfoRegPopupPartSelSelectedTemplate(partSel[i]);
						
						$('#js-car-prod-hist-info-reg-pop-partSel-list').append(html);
						
						$("#js-car-prod-hist-info-reg-pop-partSel-selected-remove-"+code).off().on('click', function() {
							var id = this.id.substring('js-car-prod-hist-info-reg-pop-partSel-selected-remove'.length + 1);
							$("#js-car-prod-hist-info-reg-pop-partSel-selected-li-"+id).remove();		
						});
					}
				}
			}
		}
		
		
		//저장된 항목 조회(생산 특이 사항 정보 상세 조회)- 리스트 선택(수정모드)
		var retrieveCarProdIssue = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
		
						if (message === 'OK') {
							
							//공장 
							var data = response.rs.carFactoryList;
							
							$('#js-car-prod-hist-info-reg-pop-carFactoryList-combo').find('option').remove();
							for(var i=0; i<data.length; i++)
							{
								$('#js-car-prod-hist-info-reg-pop-carFactoryList-combo').append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
							}
							$('#js-car-prod-hist-info-reg-pop-carFactoryList-combo').attr("title", data.length +" <spring:message code='TODO.KEY' text='건'/>");
							
							//메이커					
							data = response.rs.makerList;
							
							$('#js-car-prod-hist-info-reg-pop-makerList-combo').find('option').remove();
							//$('#js-car-prod-hist-info-reg-pop-makerList-combo').append("<option value=''>선택</option>");
							for(var i=0; i<data.length; i++)
							{
								$('#js-car-prod-hist-info-reg-pop-makerList-combo').append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
							}
							$('#js-car-prod-hist-info-reg-pop-makerList-combo').attr("title", data.length +" <spring:message code='TODO.KEY' text='건'/>");
							
							//이슈
							data = response.rs.issueList;
							
							$('#js-car-prod-hist-info-reg-pop-issueList-combo').find('option').remove();
							$('#js-car-prod-hist-info-reg-pop-issueList-combo').append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");
							for(var i=0; i<data.length; i++)
							{
								$('#js-car-prod-hist-info-reg-pop-issueList-combo').append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
							}
							$('#js-car-prod-hist-info-reg-pop-issueList-combo').attr("title", data.length +" <spring:message code='TODO.KEY' text='건'/>");
							
							//사고유형1
							data = response.rs.carReasonList1;
							
							$('#js-car-prod-hist-info-reg-pop-carReasonList1-combo').find('option').remove();
							$('#js-car-prod-hist-info-reg-pop-carReasonList2-combo').find('option').remove();
							$('#js-car-prod-hist-info-reg-pop-carReasonList1-combo').append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");
							for(var i=0; i<data.length; i++)
							{
								$('#js-car-prod-hist-info-reg-pop-carReasonList1-combo').append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
							}
							$('#js-car-prod-hist-info-reg-pop-carReasonList1-combo').attr("title", data.length +" <spring:message code='TODO.KEY' text='건'/>");
							
							//사고유형2
							data = response.rs.carReasonList2;
							
							$('#js-car-prod-hist-info-reg-pop-carReasonList2-combo').find('option').remove();
							$('#js-car-prod-hist-info-reg-pop-carReasonList2-combo').append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");
							for(var i=0; i<data.length; i++)
							{
								$('#js-car-prod-hist-info-reg-pop-carReasonList2-combo').append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
							}
							$('#js-car-prod-hist-info-reg-pop-carReasonList2-combo').attr("title", data.length +" <spring:message code='TODO.KEY' text='건'/>");
							
							//공정
							data = response.rs.carProcList;
							
							$('#js-car-prod-hist-info-reg-pop-carProcList-ul').find('li').remove();
							
							for(var i=0; i < data.length; i++)
							{
								$("#js-car-prod-hist-info-reg-pop-carProcList-ul").append("<li id='js-car-prod-hist-info-reg-pop-carProcList-item-"+ data[i].code + "'><button type=\"button\" class=\"wp-btn small steelblue\">" + data[i].codeNm + "</button></li>");
							}
							
							//제품명
							data = response.rs.carItemList;
							
							$('#js-car-prod-hist-info-reg-pop-carItems-combo').find('option').remove();
							$('#js-car-prod-hist-info-reg-pop-carItems-combo').append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");
							for(var i=0; i<data.length; i++)
							{
								$('#js-car-prod-hist-info-reg-pop-carItems-combo').append("<option value='"+data[i].items+"'>"+data[i].itemsNm+"</option>");
							}
							$('#js-car-prod-hist-info-reg-pop-carItems-combo').attr("title", data.length +" <spring:message code='TODO.KEY' text='건'/>");
							
							//차종
							data = response.rs.carModelList;
							
							$('#js-car-prod-hist-info-reg-pop-carModelList-ul').find('li').remove();
							
							for(var i=0; i<data.length; i++)
							{
								$("#js-car-prod-hist-info-reg-pop-carModelList-ul").append("<li id='js-car-prod-hist-info-reg-pop-carModelList-item-"+ data[i].modelID + "'><button type=\"button\" class=\"wp-btn small steelblue\">"+ data[i].modelNm +"</button></li>");
							}
							
							//컬러코드
							data = response.rs.carColorList;
							
							$('#js-car-prod-hist-info-reg-pop-carColorList-ul').find('li').remove();
							
							for(var i=0; i<data.length; i++)
							{
								$("#js-car-prod-hist-info-reg-pop-carColorList-ul").append("<li id='js-car-prod-hist-info-reg-pop-carColorList-item-"+ data[i].colorId + "'><button type=\"button\" class=\"wp-btn small steelblue\">"+ data[i].colorNm +"</button></li>");
							}
							
							
							//event 처리
							// 전체선택
							
							// 공정
							$('#js-car-prod-hist-info-reg-pop-carProcList-item-check-all').off().on('click', function() {
								if($(this).is(':checked'))
								{
									$("#js-car-prod-hist-info-reg-pop-carProcList-ul").find("li").each(function(){
										$(this).find("button").removeClass("steelblue").addClass("steelblueon");
									});
								}
								else
								{
									$("#js-car-prod-hist-info-reg-pop-carProcList-ul").find("li").each(function(){
										$(this).find("button").removeClass("steelblueon").addClass("steelblue");
									});
								}
							});
							
							// 차종
							$('#js-car-prod-hist-info-reg-pop-carModelList-item-check-all').off().on('click', function() {
								if($(this).is(':checked'))
								{
									$("#js-car-prod-hist-info-reg-pop-carModelList-ul").find("li").each(function(){
										$(this).find("button").removeClass("steelblue").addClass("steelblueon");
									});
								}
								else
								{
									$("#js-car-prod-hist-info-reg-pop-carModelList-ul").find("li").each(function(){
										$(this).find("button").removeClass("steelblueon").addClass("steelblue");
									});
								}
							});
		
							// 칼라코드
							$('#js-car-prod-hist-info-reg-pop-carColorList-item-check-all').off().on('click', function() {
								if($(this).is(':checked'))
								{
									$("#js-car-prod-hist-info-reg-pop-carColorList-ul").find("li").each(function(){
										$(this).find("button").removeClass("steelblue").addClass("steelblueon");
									});
								}
								else
								{
									$("#js-car-prod-hist-info-reg-pop-carColorList-ul").find("li").each(function(){
										$(this).find("button").removeClass("steelblueon").addClass("steelblue");
									});
								}
							});
		
							
							//data setting
							data = response.rs.carCompetProd;
							
							$("#js-car-prod-hist-info-reg-pop-carFactoryList-combo").val(data.carPlant);
							$("#js-car-prod-hist-info-reg-pop-docNo").val(data.docNo);
							$("#js-car-prod-hist-info-reg-pop-histDate").val(data.histDate);
							window.carProdHistInfoRegPopEditor.SetBodyValue(data.histDescription);
							$("#js-car-prod-hist-info-reg-pop-emp").val(data.histEmp);
							$("#js-car-prod-hist-info-reg-pop-emp-name").val(data.histEmpNm);
							$("#js-car-prod-hist-info-reg-pop-carReasonList1-combo").val(data.histReasonType1);
							$("#js-car-prod-hist-info-reg-pop-carReasonList2-combo").val(data.histReasonType2);
							$("#js-car-prod-hist-info-reg-pop-title").val(data.histTitle);
							$("#js-car-prod-hist-info-reg-pop-issueList-combo").val(data.histType);
							//$("#js-car-prod-hist-info-reg-pop-makerList-combo").val(data.makerId);
							$("#js-car-prod-hist-info-reg-pop-orgDocNo").val(data.orgDocNo);
							
							if(data.orgTitle){
								$("#js-car-prod-hist-info-reg-popup-org-title").text(data.orgTitle);
								$("#js-car-prod-hist-info-reg-popup-org-title-div").css("display", "block");
							}
							
							
							// 발생 부위 전체 checkbox setting
							if(data.allPartsYn){
								if(data.allPartsYn == "Y"){
									if(!$("#js-car-prod-hist-info-reg-pop-allPartsYn").is(":checked")){
										$("#js-car-prod-hist-info-reg-pop-allPartsYn").click();
									}
								}
								else
								{
									if($("#js-car-prod-hist-info-reg-pop-allPartsYn").is(":checked")){
										$("#js-car-prod-hist-info-reg-pop-allPartsYn").click();
									}
								}
							}
							
							
							// 공정  data setting
							data = response.rs.carCompetProdProc;

							// 초기화
							if($('#js-car-prod-hist-info-reg-pop-carProcList-item-check-all').is(":checked")){
								$('#js-car-prod-hist-info-reg-pop-carProcList-item-check-all').click();
							}
							
							if(data.length > 0){
								var cntElements = $("#js-car-prod-hist-info-reg-pop-carProcList-ul").find('li').length;
								if(cntElements == data.length){
									$('#js-car-prod-hist-info-reg-pop-carProcList-item-check-all').click();
								} else {
									for(var i=0; i < data.length; i++)
									{
										$('#js-car-prod-hist-info-reg-pop-carProcList-item-'+ data[i].procId).find("button").removeClass("steelblue").addClass("steelblueon");
									}
								}
							}
							
							
							// 차종  data setting
							data = response.rs.carCompetProdModel;
							
							// 초기화
							if($('#js-car-prod-hist-info-reg-pop-carModelList-item-check-all').is(":checked")){
								$('#js-car-prod-hist-info-reg-pop-carModelList-item-check-all').click();
							}
							
							if(data.length > 0){
								var cntElements = $("#js-car-prod-hist-info-reg-pop-carModelList-ul").find('li').length;
								if(cntElements == data.length){
									$('#js-car-prod-hist-info-reg-pop-carModelList-item-check-all').click();
								} else {
									for(var i=0; i < data.length; i++)
									{
										$('#js-car-prod-hist-info-reg-pop-carModelList-item-'+ data[i].modelId).find("button").removeClass("steelblue").addClass("steelblueon");
									}									
								}
							}
							
							
							// 컬러코드  data setting
							data = response.rs.carCompetProdColor;
							
							// 초기화
							if($('#js-car-prod-hist-info-reg-pop-carColorList-item-check-all').is(":checked")){
								$('#js-car-prod-hist-info-reg-pop-carColorList-item-check-all').click();
							}
							
							if(data.length > 0){
								var cntElements = $("#js-car-prod-hist-info-reg-pop-carColorList-ul").find('li').length;
								if(cntElements == data.length){
									$('#js-car-prod-hist-info-reg-pop-carColorList-item-check-all').click();
								} else {
									for(var i=0; i < data.length; i++)
									{
										$('#js-car-prod-hist-info-reg-pop-carColorList-item-'+ data[i].colorId).find("button").removeClass("steelblue").addClass("steelblueon");
									}
								}
							}
							
							
							//불량유형  data setting
							data = response.rs.carCompetProdBad;
							if(data.length > 0){
								var carCompetProdBad = {
									rows: []
								};
								for(var i=0 ; i<data.length ; i++){
									var row = {
										badCause: data[i].code,
										badCauseNm: data[i].codeNm,
										causeType: data[i].groupCode,
										causeTypeNm: data[i].groupCodeNm
									};
									carCompetProdBad.rows.push(row);									
								}
								
								applyCarProdHistInfoRegPopupBadReason(carCompetProdBad);
							}					
							//제품명  data setting
							data = response.rs.carCompetProdItem;
							if(data.length > 0){
								for(var i=0 ; i<data.length ; i++){									
									$('#js-car-prod-hist-info-reg-pop-carItems-combo').val(data[i].items).change();
								}
							}					
							//부위  data setting
							data = response.rs.carCompetProdPart;
							if(data.length > 0){
								var carCompetProdPart = {
									rows: []
								};
								for(var i=0 ; i<data.length ; i++){
									var row = {
										code: data[i].code,
										dth1Code: data[i].dth1Code,
										dth1Nm: data[i].dth1Nm,
										dth2Code: data[i].dth2Code,
										dth2Nm: data[i].dth2Nm,
										dth3Code: data[i].dth3Code,
										dth3Nm: data[i].dth3Nm,
										dth4Code: data[i].dth4Code,
										dth4Nm: data[i].dth4Nm
									};
									carCompetProdPart.rows.push(row);									
								}
								
								applyCarProdHistInfoRegPopupPartSel(carCompetProdPart);
							}
							
							//LotNo
							data = response.rs.carCompetProdLot;
							if(data.length > 0){
								for(var i=0; i<data.length; i++)
								{						
									var id = 'js-car-prod-hist-info-reg-pop-lotNo';
									var lotNo = data[i].lotNo;
									
									var html = '<li id="'+id+'-'+lotNo+'">'+lotNo+'<button type="button" id="'+id+'-remove-'+lotNo+'" class="wp-spr-btn wp-close-sel"><span><spring:message code="TODO.KEY" text="닫기"/></span></button></li>';
									$("#"+id+"-list").append(html);
									

									$("#"+id+'-remove-'+lotNo).off().on('click', function() {
										removeSelectedLotNo(this.id);
									});
								}
							}
							
							// 첨부파일
							var file = response.rs.carCompetProdFile;
							carProdHistInfoRegPopupFileSaveHandler.attachFileHandler.setItems(file || []);
							
						}else
						{
							// 서비스 요청 처리 오류 발생 메시지
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
				request: function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var carPlant = $("#js-car-prod-hist-info-reg-pop-carPlant").val();
					var docNo = $("#js-car-prod-hist-info-reg-pop-docNo").val();
					
					var params = {
						service: 'car.prodIssue',
						method: 'retrieveCarProdIssue',
						carPlant: carPlant,
						docNo: docNo
					};
		
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);				
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
		};
		
		//초기 항목 조회(생산 특이 사항 정보 등록 공통코드 조회)
		var retrieveCarProdIssueCombo = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
		
						if (message === 'OK') {
							//공장 
							var data = response.rs.carFactoryList;
							
							$('#js-car-prod-hist-info-reg-pop-carFactoryList-combo').find('option').remove();
							
							for(var i=0; i<data.length; i++)
							{
								$('#js-car-prod-hist-info-reg-pop-carFactoryList-combo').append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
							}
							
							$('#js-car-prod-hist-info-reg-pop-carFactoryList-combo').attr("title", data.length +" <spring:message code='TODO.KEY' text='건'/>");

							//공장 부모창 데이터와 같이 disabled 추가 
							$("#js-car-prod-hist-info-reg-pop-carFactoryList-combo").val($("#js-car-header-car-plant").val());
							
							//메이커					
							data = response.rs.makerList;
							
							$('#js-car-prod-hist-info-reg-pop-makerList-combo').find('option').remove();
							//$('#js-car-prod-hist-info-reg-pop-makerList-combo').append("<option value=''>선택</option>");
							for(var i=0; i<data.length; i++)
							{
								$('#js-car-prod-hist-info-reg-pop-makerList-combo').append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
							}
							
							$('#js-car-prod-hist-info-reg-pop-makerList-combo').attr("title", data.length +" <spring:message code='TODO.KEY' text='건'/>");
							
							//이슈
							data = response.rs.issueList;
							
							$('#js-car-prod-hist-info-reg-pop-issueList-combo').find('option').remove();
							$('#js-car-prod-hist-info-reg-pop-issueList-combo').append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");
							
							for(var i=0; i<data.length; i++)
							{
								$('#js-car-prod-hist-info-reg-pop-issueList-combo').append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
							}
							
							$('#js-car-prod-hist-info-reg-pop-issueList-combo').attr("title", data.length +" <spring:message code='TODO.KEY' text='건'/>");
							
							//사고유형1
							data = response.rs.carReasonList1;
							
							$('#js-car-prod-hist-info-reg-pop-carReasonList1-combo').find('option').remove();
							$('#js-car-prod-hist-info-reg-pop-carReasonList2-combo').find('option').remove();
							$('#js-car-prod-hist-info-reg-pop-carReasonList1-combo').append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");
							
							for(var i=0; i<data.length; i++)
							{
								$('#js-car-prod-hist-info-reg-pop-carReasonList1-combo').append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
							}
							
							$('#js-car-prod-hist-info-reg-pop-carReasonList1-combo').attr("title", data.length +" <spring:message code='TODO.KEY' text='건'/>");
							
							//공정
							data = response.rs.carProcList;
							
							$('#js-car-prod-hist-info-reg-pop-carProcList-ul').find('li').remove();
							
							for(var i=0; i<data.length; i++)
							{
								$("#js-car-prod-hist-info-reg-pop-carProcList-ul").append("<li id='js-car-prod-hist-info-reg-pop-carProcList-item-"+ data[i].code + "'><button type=\"button\" class=\"wp-btn small steelblue\">" + data[i].codeNm + "</button></li>");
							}
							
							//event 처리
							// 전체선택
							$('#js-car-prod-hist-info-reg-pop-carProcList-item-check-all').off().on('click', function() {
								if($(this).is(':checked'))
								{
									$("#js-car-prod-hist-info-reg-pop-carProcList-ul").find("li").each(function(){
										$(this).find("button").removeClass("steelblue").addClass("steelblueon");
									});
								}
								else
								{
									$("#js-car-prod-hist-info-reg-pop-carProcList-ul").find("li").each(function(){
										$(this).find("button").removeClass("steelblueon").addClass("steelblue");
									});
								}
							});
							
							//컬러코드 조회(생산 특이 사항 정보 등록 공통코드 - 컬러코드)
							retrieveCarColorList.request();
							//차종 조회(생산 특이 사항 정보 등록 공통코드 - 차종)
							retrieveCarModelList.request();
							//제품명 - 메이커 선택시 조회 하던부분, 화면상 메이커 선택 빠짐으로 자동조회 
							retrieveCarItemsList.request();
							
							// 공정 전체 checkbox 초기화
							if($('#js-car-prod-hist-info-reg-pop-carProcList-item-check-all').is(":checked")){
								$('#js-car-prod-hist-info-reg-pop-carProcList-item-check-all').click();
							}
							
							// 차종 전체 checkbox 초기화
							if($('#js-car-prod-hist-info-reg-pop-carModelList-item-check-all').is(":checked")){
								$('#js-car-prod-hist-info-reg-pop-carModelList-item-check-all').click();
							}
							
							// 칼라코드 전체 checkbox 초기화
							if($('#js-car-prod-hist-info-reg-pop-carColorList-item-check-all').is(":checked")){
								$('#js-car-prod-hist-info-reg-pop-carColorList-item-check-all').click();
							}
							
						}else
						{
							// 서비스 요청 처리 오류 발생 메시지
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
				request: function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
								
					var params = {
						service: 'car.prodIssue',
						method: 'retrieveCarProdIssueCombo'
					};
		
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);				
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
		};
		
		//컬러코드 조회(생산 특이 사항 정보 등록 공통코드 - 컬러코드)
		var retrieveCarColorList = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
		
						if (message === 'OK') {
							//컬러코드
							var data = response.rs;
							
							$('#js-car-prod-hist-info-reg-pop-carColorList-ul').find('li').remove();
							
							for(var i=0; i<data.length; i++)
							{
								$("#js-car-prod-hist-info-reg-pop-carColorList-ul").append("<li id='js-car-prod-hist-info-reg-pop-carColorList-item-"+ data[i].colorId + "'><button type=\"button\" class=\"wp-btn small steelblue\">"+ data[i].colorNm +"</button></li>");
							}
		
							// 전체선택
							$('#js-car-prod-hist-info-reg-pop-carColorList-item-check-all').off().on('click', function() {
								if($(this).is(':checked'))
								{
									$("#js-car-prod-hist-info-reg-pop-carColorList-ul").find("li").each(function(){
										$(this).find("button").removeClass("steelblue").addClass("steelblueon");
									});
								}
								else
								{
									$("#js-car-prod-hist-info-reg-pop-carColorList-ul").find("li").each(function(){
										$(this).find("button").removeClass("steelblueon").addClass("steelblue");
									});
								}
							});
							
						}
						else
						{
							// 서비스 요청 처리 오류 발생 메시지
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
				request: function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					
					var carPlant = $('#js-car-prod-hist-info-reg-pop-carFactoryList-combo').val();
					
					var params = {
						service: 'car.prodIssue',
						method: 'retrieveCarColorList',
						carPlant: carPlant
					};
		
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);				
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
		};
		
		//차종 조회(생산 특이 사항 정보 등록 공통코드 - 차종)
		var retrieveCarModelList = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
		
						if (message === 'OK') {
							//차종
							var data = response.rs;
							
							$('#js-car-prod-hist-info-reg-pop-carModelList-ul').find('li').remove();
							
							for(var i=0; i < data.length; i++)
							{
								$("#js-car-prod-hist-info-reg-pop-carModelList-ul").append("<li id='js-car-prod-hist-info-reg-pop-carModelList-item-"+ data[i].modelID + "'><button type=\"button\" class=\"wp-btn small steelblue\">"+ data[i].modelNm +"</button></li>");
							}					
		
							// 전체선택
							$('#js-car-prod-hist-info-reg-pop-carModelList-item-check-all').off().on('click', function() {
								if($(this).is(':checked'))
								{
									$("#js-car-prod-hist-info-reg-pop-carModelList-ul").find("li").each(function(){
										$(this).find("button").removeClass("steelblue").addClass("steelblueon");
									});
								}
								else
								{
									$("#js-car-prod-hist-info-reg-pop-carModelList-ul").find("li").each(function(){
										$(this).find("button").removeClass("steelblueon").addClass("steelblue");
									});
								}
							});
							
						}
						else
						{
							// 서비스 요청 처리 오류 발생 메시지
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
				request: function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					
					var carPlant = $('#js-car-prod-hist-info-reg-pop-carFactoryList-combo').val();
					
					var params = {
						service: 'car.prodIssue',
						method: 'retrieveCarModelList',
						carPlant: carPlant
					};
		
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);				
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
		};
		
		//사고유형2 조회(생산 특이 사항 정보 등록 공통코드  - 사고유형2)
		var retrieveCarAccidentType2 = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
		
						if (message === 'OK') {
							//사고유형2
							var data = response.rs;
							
							$('#js-car-prod-hist-info-reg-pop-carReasonList2-combo').find('option').remove();
							$('#js-car-prod-hist-info-reg-pop-carReasonList2-combo').append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");
							for(var i=0; i<data.length; i++)
							{
								$('#js-car-prod-hist-info-reg-pop-carReasonList2-combo').append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
							}
							$('#js-car-prod-hist-info-reg-pop-carReasonList2-combo').attr("title", data.length +" <spring:message code='TODO.KEY' text='건'/>");
							
						}else
						{
							// 서비스 요청 처리 오류 발생 메시지
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
				request: function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					
					var carPlant = $('#js-car-prod-hist-info-reg-pop-carFactoryList-combo').val();
					var carAccidentType = $('#js-car-prod-hist-info-reg-pop-carReasonList1-combo').val();
					
					if(app.utils.isEmpty(carAccidentType)){
						$('#js-car-prod-hist-info-reg-pop-carReasonList2-combo').find('option').remove();
						return;
					}
					
					var params = {
						service: 'car.prodIssue',
						method: 'retrieveCarAccidentType2',
						carPlant: carPlant,
						carAccidentType: carAccidentType
					};
		
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);				
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
		};
		
		//제품명 조회(생산 특이 사항 정보 등록 공통코드  - 제품명)
		var retrieveCarItemsList = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
		
						if (message === 'OK') {
							var data = response.rs;
							
							$('#js-car-prod-hist-info-reg-pop-carItems-combo').find('option').remove();
							$('#js-car-prod-hist-info-reg-pop-carItems-combo').append("<option value=''><spring:message code='TODO.KEY' text='선택'/></option>");
							for(var i=0; i<data.length; i++)
							{
								$('#js-car-prod-hist-info-reg-pop-carItems-combo').append("<option value='"+data[i].items+"'>"+data[i].itemsNm+"</option>");
							}
							$('#js-car-prod-hist-info-reg-pop-carItems-combo').attr("title", data.length +" <spring:message code='TODO.KEY' text='건'/>");
							
						}else
						{
							// 서비스 요청 처리 오류 발생 메시지
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
				request: function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					
					var carPlant = $('#js-car-prod-hist-info-reg-pop-carFactoryList-combo').val();
					var makerId = $('#js-car-prod-hist-info-reg-pop-makerList-combo').val();
					
					var params = {
						service: 'car.prodIssue',
						method: 'retrieveCarItemsList',
						carPlant: carPlant,
						makerId: makerId
					};
		
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);				
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
		};
		</script>
		
	
	<!-- SFA 활동보고 -->
	<c:import url="/WEB-INF/static/car/popup/stdInfo.popup.car.jsp" charEncoding="utf-8"></c:import>
	
	
	</tiles:putAttribute>
	<!-- 팝업 콘텐츠 E -->
		
</tiles:insertDefinition>
