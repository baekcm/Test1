<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.05.10] car 도장공정 > 거래선 공정정보 > 공정 개선 정보 조회(tab)" %>
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
				<h1><spring:message code="TODO.KEY" text="거래선 공정정보"/></h1>
				<div class="wp-location"><span><spring:message code="TODO.KEY" text="도장공정"/></span><span class="wp-fc-54"><spring:message code="TODO.KEY" text="거래선 공정정보"/></span></div>
			</header>
			<div class="wp-table-width">
				<!-- tab -->
				<ul class="wp-prod-tab wp-two">
					<li><a href="/car/inspection/carProcInfoMain.do"><spring:message code="TODO.KEY" text="공정정보"/></a></li>
					<li><a href="/car/inspection/carProcUpgradeInfo.do" class="active"><spring:message code="TODO.KEY" text="공정 개선 정보"/></a></li>
				</ul>
				<!-- //tab -->
				<!-- title area -->
				<div class="wp-title-section">
					<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="공정 개선 이력 목록"/></h2>
					<div class="wp-btn-area">
						<button type="button" id="js-car-proc-upgrade-info-mast-reg-popup-button" data-link="js-car-proc-upgrade-info-mast-reg-popup" class="wp-btn-pop wp-btn small skyblue cr3 upload-white"><spring:message code="TODO.KEY" text="공정 개선 MASTER 등록"/></button>
					</div>
				</div>
				<!-- //title area -->
				<!-- rootcause-list -->
				<div class="wp-rootcause-list wp-car-list">
					<div class="wp-rc-box">
						<div id="js-car-proc-upgrade-info-list" class="wp-rc-box-in">
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
		
		<!-- 공정 개선 정보 조회 리스트 - 스크립트-->
		<script id="js-template-car-proc-upgrade-info-list" type="text/x-handlebars-template">
			<div id="js-car-proc-upgrade-info-list-top-{{docNo}}" class="wp-rc-cont wp-rc-cont-color0{{lvl}}">
				<div class="wp-rc-cont-top">
					<div class="wp-rp-right">
						<div id="js-car-proc-upgrade-info-list-title-{{docNo}}" class="wp-rp-r-title">{{title}}</div>
						<div class="wp-rp-r-desc">
							{{#isRelatedPostsYn}}
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="공장"/>&nbsp;:&nbsp;</em>{{carPlant}}</span><span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="적용일자"/>&nbsp;:&nbsp;</em>{{upgradeDate}}</span><span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="구분"/>&nbsp;:&nbsp;</em>{{upgradeTypeNm}}</span><span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="공정"/>&nbsp;:&nbsp;</em>{{procIdNm}}</span><span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="첨부"/>&nbsp;:&nbsp;</em>{{fileCnt}}</span><span class="wp-rp-r-info"><em>종료처리여부&nbsp;:&nbsp;</em>{{closingYn}}</span>
							{{else}}
							<span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="공장"/>&nbsp;:&nbsp;</em>{{carPlant}}</span><span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="적용일자"/>&nbsp;:&nbsp;</em>{{upgradeDate}}</span><span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="부스"/>&nbsp;:&nbsp;</em>{{boothIdNm}}</span><span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="공정"/>&nbsp;:&nbsp;</em>{{procIdNm}}</span><span class="wp-rp-r-info"><em><spring:message code="TODO.KEY" text="첨부"/>&nbsp;:&nbsp;</em>{{fileCnt}}</span>							
							{{/isRelatedPostsYn}}
						</div>
					</div>
					<div class="wp-last-date"><spring:message code="TODO.KEY" text="마지막 수정일"/>: {{updateDate}} </div>
					<div class="wp-rp-bttn">
						{{#isRelatedPostsYn}}	
						<button type="button" id="js-car-proc-upgrade-info-list-create-related-posts-{{docNo}}" data-link="js-car-proc-upgrade-info-mast-reg-popup" class="wp-btn-pop wp-btn small white bgray write"><span><spring:message code="TODO.KEY" text="글쓰기"/></span></button>
						{{/isRelatedPostsYn}}
						<button type="button" id="js-car-proc-upgrade-info-list-show-detail-{{docNo}}"  data-link="js-car-proc-upgrade-info-mast-reg-popup" class="wp-btn-pop wp-btn small white bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
						<button type="button" id="js-car-proc-upgrade-info-list-show-delete-{{docNo}}" class="wp-btn small white bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
						<input type="hidden" id="js-car-proc-upgrade-info-list-car-plant-{{docNo}}" value="{{carPlant}}">
						<input type="hidden" id="js-car-proc-upgrade-info-list-doc-no-{{docNo}}" value="{{docNo}}">
						<input type="hidden" id="js-car-proc-upgrade-info-list-org-doc-no-{{docNo}}" value="{{orgDocNo}}">
						<input type="hidden" id="js-car-proc-upgrade-info-list-org-title-{{docNo}}" value="{{title}}">
					</div>
				</div>				
				<div class="wp-rc-cont-detail">
					<ol class="wp-box-cont" style='margin-bottom:10px'>
						<li>{{{description}}}</li>
					</ol>
					<div class="wp-reply-form">
						<div class="wp-reply-limit"><span id="js-car-proc-upgrade-info-list-comment-text-cnt-{{docNo}}">0</span>/500 <spring:message code="TODO.KEY" text="글자"/></div>
						<textarea id="js-car-proc-upgrade-info-list-comment-write-{{docNo}}"></textarea>
						<button type="button" id="js-car-proc-upgrade-info-list-comment-create-{{docNo}}" class="wp-btn-wl-plus"><spring:message code="TODO.KEY" text="등록"/></button>
					</div>
					<div class="wp-reply">
						<h2 class="wp-reply-tit"><spring:message code="TODO.KEY" text="댓글내용"/><em id="js-car-proc-upgrade-info-list-comment-count-{{docNo}}" class="wp-reply-cnt">(-)</em></h2>
						<div class="wp-reply-list">
							<ul id="js-car-proc-upgrade-info-list-comment-list-{{docNo}}">
							</ul>
						</div>
					</div>
				</div>
			</div>
		</script>
		
		<!-- 댓글 리스트 - 스크립트-->
		<script id="js-template-car-proc-upgrade-info-list-comment-list" type="text/x-handlebars-template">		
			{{#rows}}
				<li>
					<span class="wp-reply-title">{{empNm}}</span>
					<span class="wp-reply-date">{{inputDate}}</span>
					<span class="wp-reply-desc">{{replyDescription}}</span>
					<div class="wp-reply-btn">
						<button type="button" id="js-car-proc-upgrade-info-list-comment-delete-{{seqCarProcUpgReply}}" class="wp-btn small white bgray trash"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
						<input type="hidden" id="js-car-proc-upgrade-info-list-comment-doc-no-{{seqCarProcUpgReply}}" value="{{docNo}}">
					</div>
				</li>
			{{/rows}}
		</script>

		<script type="text/javascript">		
			var carProcUpgradeInfoListTemplate;
			var carProcUpgradeInfoListCommentListTemplate;
			
			$(document).ready(function() {
				// Handlebar 초기화
				initCarProcUpgradeInfoListHandlebarsTemplate();
				
				// 공정 개선 master 등록 버튼 클릭
				$("#js-car-proc-upgrade-info-mast-reg-popup-button").off().on('click', function(){
					initCarProcUpgradeInfoMastRegPopup('', '');
				});
				
			});
			

			// ------------------------------------------------
			// Handlebar 초기화
			// ------------------------------------------------
			var initCarProcUpgradeInfoListHandlebarsTemplate = function() {
				// 공정 개선 정보 조회 리스트		
				var source = $('#js-template-car-proc-upgrade-info-list').html();
				carProcUpgradeInfoListTemplate = Handlebars.compile(source);
				
				// 연관글 작성
				Handlebars.registerHelper('isRelatedPostsYn', function(options) {
					if (this.lvl == '1'){
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});		

				// 댓글 리스트
				var source = $('#js-template-car-proc-upgrade-info-list-comment-list').html();
				carProcUpgradeInfoListCommentListTemplate = Handlebars.compile(source);
			};
			
			//-------------------------------------------------
			// 공정 개선 정보 조회 - 자동차 공장 콤보 조회 완료 후
			//-------------------------------------------------
			var retrieveCarProcUpgradeInfoAll = function(){
				// 공정 개선 정보 조회 리스트 조회
				retrieveCarProcUpgList.request();
			};
			
			//-------------------------------------------------
			// 공정 개선 정보 조회 tab 리스트 조회
			//-------------------------------------------------
			var retrieveCarProcUpgList = {
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
										var html = carProcUpgradeInfoListTemplate(data.rows[i]);
										$("#js-car-proc-upgrade-info-list").append(html);
										
										if(data.rows[i].replyList.length > 0){
											var dataPeplyList = {
												rows : 	data.rows[i].replyList
											};
											var htmlReplyList = carProcUpgradeInfoListCommentListTemplate(dataPeplyList);
											$("#js-car-proc-upgrade-info-list-comment-list-"+data.rows[i].docNo).empty().append(htmlReplyList);
											
										}
										//댓글 갯수 셋팅
										$("#js-car-proc-upgrade-info-list-comment-count-"+data.rows[i].docNo).text('('+data.rows[i].replyList.length+')');
										
										// event setting
										// 리스트 제목 부분 클릭시 접기/펴기
										$('#js-car-proc-upgrade-info-list-title-'+data.rows[i].docNo).off().on('click', function(e){
											
											var code = this.id.substring("js-car-proc-upgrade-info-list-title".length + 1);
											
											var target = 'js-car-proc-upgrade-info-list-top-' + code;
											
											if($("#"+target).hasClass('open')){
												$("#"+target).removeClass('open');
											} else {
												$("#"+target).addClass('open');
											}									
									    });
	
										// 연관글 작성 버튼 클릭
										if(data.rows[i].lvl == '1'){//depth 1 일때만..
											$("#js-car-proc-upgrade-info-list-create-related-posts-"+data.rows[i].docNo).off().on('click', function(e){
												var docNo = this.id.substring("js-car-proc-upgrade-info-list-create-related-posts".length + 1);
												
												initCarProcUpgradeInfoMastRegPopup('', docNo);
											});
										}
										// 자세히 보기 버튼 클릭
										$("#js-car-proc-upgrade-info-list-show-detail-"+data.rows[i].docNo).off().on('click', function(e){
											var docNo = this.id.substring("js-car-proc-upgrade-info-list-show-detail".length + 1);
											var orgDocNo = $("#js-car-proc-upgrade-info-list-org-doc-no-"+docNo).val();
											
											initCarProcUpgradeInfoMastRegPopup(docNo, orgDocNo);
										});
										// 삭제 버튼 클릭
										$("#js-car-proc-upgrade-info-list-show-delete-"+data.rows[i].docNo).off().on('click', function(e){
											var docNo = this.id.substring("js-car-proc-upgrade-info-list-show-delete".length + 1);
											var orgDocNo = $("#js-car-proc-upgrade-info-list-org-doc-no-"+docNo).val();
											var carPlant = $("#js-car-proc-upgrade-info-list-car-plant-"+docNo).val();
											
											app.message.confirm({
												  title             : '<spring:message code="TODO.KEY" text="삭제"/>'
												, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
												, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
												, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
												, callback          : {
													confirm: function() {
														deleteCarProcUpg.request(docNo);
													}
												}
											});
										});
										// 댓글 등록 버튼 클릭
										$("#js-car-proc-upgrade-info-list-comment-create-"+data.rows[i].docNo).off().on('click', function(e){
											var docNo = this.id.substring("js-car-proc-upgrade-info-list-comment-create".length + 1);
											var comment = $("#js-car-proc-upgrade-info-list-comment-write-"+docNo).val();
											if(comment){
												saveCarProcUpgReply.request(docNo, comment);
											}
										});									
										// 댓글 삭제 버튼 클릭
										if(data.rows[i].replyList.length > 0){//댓글 있을때만
											for(var j=0 ; j<data.rows[i].replyList.length ; j++){
												$("#js-car-proc-upgrade-info-list-comment-delete-"+data.rows[i].replyList[j].seqCarProcUpgReply).off().on('click', function(e){
													var seqCarProcUpgReply = this.id.substring("js-car-proc-upgrade-info-list-comment-delete".length + 1);
													var docNo = $("#js-car-proc-upgrade-info-list-comment-doc-no-"+seqCarProcUpgReply).val();
													
													app.message.confirm({
														  title             : '<spring:message code="TODO.KEY" text="삭제"/>'
														, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
														, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
														, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
														, callback          : {
															confirm: function() {
																deleteCarProcUpgReply.request(docNo, seqCarProcUpgReply);
															}
														}
													});
												});											
											}
										}
										// 댓글 입력 textarea 글자수 체크
										$("#js-car-proc-upgrade-info-list-comment-write-"+data.rows[i].docNo).off().on('keyup', function(){
											var docNo = this.id.substring("js-car-proc-upgrade-info-list-comment-write".length + 1);
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
												$("#js-car-proc-upgrade-info-list-comment-text-cnt-"+docNo).html( byte($(this).val()) );
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
					$("#js-car-proc-upgrade-info-list").empty();
					
					var carPlant = $("#js-car-header-car-plant").val();;
					var params = {
						  service : 'car.procItem'
						, method  : 'retrieveCarProcUpgList'
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
			var carProcUpgradeInfoReplyAppend = function(data){
				var docNo = data.docNo;
				$("#js-car-proc-upgrade-info-list-comment-write-"+docNo).val('');
				$("#js-car-proc-upgrade-info-list-comment-write-"+docNo).keyup();
				if(data.replyList.length > 0){
					var dataPeplyList = {
						rows : 	data.replyList
					};
					var htmlReplyList = carProcUpgradeInfoListCommentListTemplate(dataPeplyList);
					$("#js-car-proc-upgrade-info-list-comment-list-"+docNo).empty().append(htmlReplyList);
					
					for(var i=0 ; i<dataPeplyList.rows.length ; i++){
						$("#js-car-proc-upgrade-info-list-comment-delete-"+dataPeplyList.rows[i].seqCarProcUpgReply).off().on('click', function(e){
							var seqCarProcUpgReply = this.id.substring("js-car-proc-upgrade-info-list-comment-delete".length + 1);
							var docNo = $("#js-car-proc-upgrade-info-list-comment-doc-no-"+seqCarProcUpgReply).val();
							app.message.confirm({
								  title             : '<spring:message code="TODO.KEY" text="삭제"/>'
								, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
								, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
								, callback          : {
									confirm: function() {
										deleteCarProcUpgReply.request(docNo, seqCarProcUpgReply);
									}
								}
							});
						});											
					}
				} else {
					$("#js-car-proc-upgrade-info-list-comment-list-"+docNo).empty();
				}
				//댓글 갯수 셋팅
				$("#js-car-proc-upgrade-info-list-comment-count-"+docNo).text('('+data.replyList.length+')');
			}
			
			//-------------------------------------------------
			// 댓글 저장
			//-------------------------------------------------
			var saveCarProcUpgReply = {
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
										carProcUpgradeInfoReplyAppend(response.rs.prodList[0]);
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
						  service : 'car.procItem'
						, method  : 'saveCarProcUpgReply'
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
			var deleteCarProcUpgReply = {
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
										carProcUpgradeInfoReplyAppend(response.rs.prodList[0]);
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
				request: function(docNo, seqCarProcUpgReply) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service : 'car.procItem'
						, method  : 'deleteCarProcUpgReply'
						, docNo   : docNo
						, seqCarProcUpgReply: seqCarProcUpgReply
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//-------------------------------------------------
			// 리스트 삭제
			//-------------------------------------------------
			var deleteCarProcUpg = {
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
										// 공정 개선 정보 조회 리스트 조회
										retrieveCarProcUpgList.request();
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
				request: function(docNo) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service : 'car.procItem'
						, method  : 'deleteCarProcUpg'
						, docNo   : docNo
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
		    <div id="js-car-proc-upgrade-info-mast-reg-popup" class="wp-pop-layer wp-pop-w940 wp-box-sizing wp-car-popup">
		    	<div class="wp-pop-title">
		    		<h1 id="js-car-proc-upgrade-info-mast-reg-popup-header-title"><spring:message code="TODO.KEY" text="공정 개선 MASTER 등록"/></h1>
		    		<button type="button" id="js-car-proc-upgrade-info-mast-reg-popup-close-button" class="wp-btn-close-layer wp-spr-btn"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
		    	</div>
		        <div class="wp-pop-conts">
			<!-- scroll Area -->
			<div class="wp-pop-cont-scrollable">
		            <!--content //-->
				<!-- 기본 정보 -->
				<div id="js-car-proc-upgrade-info-mast-reg-pop-update-date" class="wp-blue-comment wp-ar"></div>
				<div id="js-car-proc-upgrade-info-mast-reg-pop-basic-info" class="wp-table-st1 wp-issue-apply">
					<table>
						<caption><spring:message code="TODO.KEY" text="기본 정보등록"/></caption>
						<colgroup>
							<col style="width:10%">
							<col style="width:15%;">
							<col style="width:10%">
							<col style="width:15%;">
							<col style="width:10%">
							<col style="width:15%;">
							<col style="width:10%">
							<col style="width:15%;">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="적용일자"/></th>
								<td class="wp-al"><input type="text" id="js-car-proc-upgrade-info-mast-reg-pop-upgrade-date" title="내용입력" class="wp-inp-datepicker maxdate" placeholder="날짜입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="구분"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd100p">
										<select id="js-car-proc-upgrade-info-mast-reg-pop-upgrade-type" title="">
										</select>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="공정"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd100p">
										<select id="js-car-proc-upgrade-info-mast-reg-pop-proc-id" title="">
										</select>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="종료처리"/></th>
								<td class="wp-al">
									<span class="wp-ui-checkbox"><input type="checkbox" id="js-car-proc-upgrade-info-mast-reg-pop-closing-yn" class="wp-inp-checkbox"></span> <spring:message code="TODO.KEY" text="종료"/>
								</td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="제목"/></th>
								<td colspan="7" class="wp-al wp-vm">
									<input type="text" id="js-car-proc-upgrade-info-mast-reg-pop-title" title="내용입력" class="wp-wd100p">
								</td>
							</tr>
						</tbody>
					</table>
		        </div>
		        <div id="js-car-proc-upgrade-info-detail-reg-pop-basic-info" class="wp-table-st1 wp-issue-apply">
					<table>
						<caption><spring:message code="TODO.KEY" text="기본 정보등록"/></caption>
						<colgroup>
							<col style="width:12%">
							<col style="width:15%;">
							<col style="width:10%">
							<col style="width:15%;">
							<col style="width:9%">
							<col style="width:15%;">
							<col style="width:9%">
							<col style="width:15%;">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="MASTER No."/></th>
								<td class="wp-al"><input type="text" id="js-car-proc-upgrade-info-detail-reg-pop-org-doc-no" placeholder="" disabled="disabled"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="적용일자"/></th>
								<td class="wp-al"><input type="text" id="js-car-proc-upgrade-info-detail-reg-pop-upgrade-date" title="내용입력" class="wp-inp-datepicker maxdate" placeholder="날짜입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="공정"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd100p">
										<select id="js-car-proc-upgrade-info-detail-reg-pop-proc-id-group" title="">
										</select>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="부스"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd100p">
										<select id="js-car-proc-upgrade-info-detail-reg-pop-booth" title="">
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="변경항목"/></th>
								<td colspan="7" class="wp-add-btn">
									<div class="wp-style-sel">
										<ul id="js-car-proc-upgrade-info-detail-reg-pop-proc-item-list">
										</ul>
									</div>
									<button type="button" id="js-car-proc-upgrade-info-detail-reg-popup-call-proc-info-insp-sel-popup-button"  data-link="js-car-proc-id-sel-popup" data-depth="1" class="wp-btn gray cr3"><spring:message code="TODO.KEY" text="등록"/></button>
								</td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="제목"/></th>
								<td colspan="7" class="wp-al wp-vm">
									<input type="text" id="js-car-proc-upgrade-info-detail-reg-pop-title" title="내용입력" class="wp-wd100p">
								</td>
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
												<button type="button" class="wp-spr-btn wp-btn-wl-fold" id="js-car-proc-upgrade-info-mast-reg-pop-fold-button"><span><spring:message code="TODO.KEY" text="접기펴기"/></span></button>
												<button type="button" class="wp-btn-wl-text wp-file" id="js-car-proc-upgrade-info-mast-reg-pop-attach-file"><spring:message code="TODO.KEY" text="내 PC"/></button>
												<input type="file" id="js-car-proc-upgrade-info-mast-reg-pop-attach-file-target" style="display: none;" multiple>
												<div class="subcont" id="js-car-proc-upgrade-info-mast-reg-pop-sum-file-size"></div>
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
													<tbody id="js-car-proc-upgrade-info-mast-reg-pop-attach-file-template-container">
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
						<textarea id=js-car-proc-upgrade-info-mast-reg-pop-editor name="js-car-proc-upgrade-info-mast-reg-pop-editor"></textarea>
						<script type="text/javascript" src="/crosseditor/js/namo_scripteditor.js"></script>
						<script type="text/javascript">
						// ------------------------------------
						// namo web editor
						// ------------------------------------
						var carProcUpgradeInfoMastRegPopEditor = null;
						
						var carProcUpgradeInfoMastRegPopEditorParams = {
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
						
						var initCarProcUpgradeInfoMastRegPopEditor = function() {
							// ------------------------------------
							// 나모 Editor 인스턴스 생성
							// ------------------------------------
						    if (carProcUpgradeInfoMastRegPopEditor == null) {
						        carProcUpgradeInfoMastRegPopEditor = new NamoSE('js-car-proc-upgrade-info-mast-reg-pop-editor');
						        carProcUpgradeInfoMastRegPopEditor.params = carProcUpgradeInfoMastRegPopEditorParams;
						        carProcUpgradeInfoMastRegPopEditor.EditorStart();
						    }
						};
						
						initCarProcUpgradeInfoMastRegPopEditor();
						</script>
					</div>
				</div>
			<!-- // scroll Area -->
			</div>
		
			<div class="wp-btn-area">
				<button type="button" id="js-car-proc-upgrade-info-detail-reg-popup-call-proc-info-insp-reg-popup-button" class="wp-btn big gray cr3" data-link="js-car-proc-upgrade-info-item-velue-management-reg-popup" data-depth="1"><spring:message code="TODO.KEY" text="변경항목 값 등록"/></button>
				<button type="button" id="js-car-proc-upgrade-info-mast-reg-popup-save-button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="저장"/></button>
				<div class="wp-add-right-btn">
					<button type="button" id="js-car-proc-upgrade-info-sfa-active-button"  class="wp-btn skyblue cr3">SFA 활동보고</button>
					<button type="button" id="js-car-proc-upgrade-info-sfa-related-button" data-depth="2" data-link="js-ship-std-info-popup" onclick="initCarStdInfoPopup('carProcUpg');" class="wp-btn skyblue cr3 wp-btn-pop">SFA 연관글</button>
				</div>
			</div>
			
		        </div>
		    </div>
		</div>
		
		<script type="text/x-handlebars-template" id="js-car-proc-upgrade-info-mast-reg-pop-attach-file-template">
		{{#if items.length}}
			{{#each items}}
				<tr class="js-car-proc-upgrade-info-mast-reg-pop-attach-file-item" data-item-id="{{itemId}}" data-upload-completed="{{uploadCompleted}}" data-seq-file="{{seqFile}}" >
					<!-- <td>
						<span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" id="chk_{{itemId}}" ></span>
					</td> -->
					<td class="wp-al">{{name}}</td>
					<td>{{displaySize}}</td>
					<td><button type="button" class="wp-btn small darkgray cr3 js-car-proc-upgrade-info-mast-reg-pop-attach-file-remove">삭제</button></td>
					<td><button type="button" class="wp-btn small white bdarkgray cr3 js-car-proc-upgrade-info-mast-reg-pop-attach-file-show" data-seq-file="{{seqFile}}" data-file-path="{{filePath}}" data-trans-file-name="{{transFilename}}" data-is-convert-completed="{{isConvertCompleted}}" data-web-office-path="{{webOfficePath}}" data-web-office-name="{{webOfficeName}}"><spring:message code="TODO.KEY" text="보기"/></button></td>
					<td><button type="button" class="wp-btn small white bdarkgray cr3 js-car-proc-upgrade-info-mast-reg-pop-attach-file-download" data-file-path="{{filePath}}" data-trans-file-name="{{transFilename}}" data-origin-file-name="{{name}}"><spring:message code="TODO.KEY" text="다운로드"/></button></td>
				</tr>
			{{/each}}
		{{/if}}
		</script>
		<script type="text/javascript">
		var gvDocNo = '';
		var gvOrgDocNo = '';
		var gvCarPlant = '';
		
		var initCarProcUpgradeInfoMastRegPopup = function(docNo, orgDocNo){
			//원글에도 orgDocNo가 넘어옴;;
			if(docNo == orgDocNo){
				orgDocNo = '';
			}
			gvDocNo = docNo;
			gvOrgDocNo = orgDocNo;
			gvCarPlant = $("#js-car-header-car-plant").val();
			$("#js-car-proc-upgrade-info-mast-reg-pop-upgrade-date").val(fn_getTodayDate());
			$("#js-car-proc-upgrade-info-mast-reg-pop-upgrade-date").mask('9999-99-99');
			$("#js-car-proc-upgrade-info-mast-reg-pop-closing-yn").is(":checked") ? $("#js-car-proc-upgrade-info-mast-reg-pop-closing-yn").click() : '';
			$("#js-car-proc-upgrade-info-mast-reg-pop-title").val('');
			$("#js-car-proc-upgrade-info-mast-reg-pop-attach-file-template-container").empty();
			$("#js-car-proc-upgrade-info-mast-reg-pop-fold-button").hasClass('on') ? $("#js-car-proc-upgrade-info-mast-reg-pop-fold-button").click() : '';
			window.carProcUpgradeInfoMastRegPopEditor.SetBodyValue("");
			
			$("#js-car-proc-upgrade-info-detail-reg-pop-upgrade-date").val(fn_getTodayDate());
			$("#js-car-proc-upgrade-info-detail-reg-pop-upgrade-date").mask('9999-99-99');
			$("#js-car-proc-upgrade-info-detail-reg-pop-title").val('');
			$("#js-car-proc-upgrade-info-detail-reg-pop-org-doc-no").val(gvOrgDocNo);
			$("#js-car-proc-upgrade-info-detail-reg-pop-proc-item-list").empty();
			
			//변경항목 값 등록 버튼
			$("#js-car-proc-upgrade-info-detail-reg-popup-call-proc-info-insp-reg-popup-button").css("display", "none");
			
			// 저장 버튼 클릭
			$("#js-car-proc-upgrade-info-mast-reg-popup-save-button").off().on('click', function(e){
				carProcUpgradeInfoMastRegPopupSave();
			});
			
			//SFA 활동보고 버튼 - 거래선 정보
			$("#js-car-proc-upgrade-info-sfa-active-button").off().on("click", function() {
				carProcUpgradeInfoActReport();
			});
			
			var carProcUpgradeInfoActReport = function(){				
				
				var type = 'BCA'
				
				var loginId = '${sessionScope.LoginUserInfo.userID}';
				var docNo = gvDocNo;
				console.log(gvDocNo);				
				window.open( 'http://sfa.kccworld.info/mobile/kaissfa/views/login/S0208SFACreateSession_E.jsp?sloId='+loginId +"&redirectUrl=http%3A%2F%2Fsfa.kccworld.info%2Fmobile%2Fkaissfa%2Fviews%2FactReport%2FS0208SFAactReportCombine_E.jsp%3F%26dispatch%3DCAR_PROC_UPG%26seqCarProdType%3D" +type +"%26docNo%3D"+docNo+"%26sysType%3DTSDCARINFO");
				type = '';
				
			}
			
			// 변경항목 값 등록 버튼 클릭
			$("#js-car-proc-upgrade-info-detail-reg-popup-call-proc-info-insp-reg-popup-button").off().on('click', function(){
				var procId = $("#js-car-proc-upgrade-info-detail-reg-pop-proc-id-group").val();
				var boothId = $("#js-car-proc-upgrade-info-detail-reg-pop-booth").val();
				
				if(app.utils.isEmpty(procId)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="공정을 먼저 선택하세요."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$('#js-car-proc-upgrade-info-detail-reg-pop-proc-id-group').focus();
							}
						}
					});
					return;
				}
				
				if(app.utils.isEmpty(boothId)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="부스를 먼저 선택하세요."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$('#js-car-proc-upgrade-info-detail-reg-pop-booth').focus();
							}
						}
					});
					return;
				}
				
				var param = {
						procId  : procId
					  , boothId : boothId
				};
				
				fn_openPop($(this));
				initCarProcInfoInspRegPopup(param);
			});			
			
			// 변경 항목 팝업
			$("#js-car-proc-upgrade-info-detail-reg-popup-call-proc-info-insp-sel-popup-button").off().on('click', function(){
				var procId = $("#js-car-proc-upgrade-info-detail-reg-pop-proc-id-group").val();
				var boothId = $("#js-car-proc-upgrade-info-detail-reg-pop-booth").val();
				
				if(app.utils.isEmpty(procId)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="공정을 먼저 선택하세요."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$('#js-car-proc-upgrade-info-detail-reg-pop-proc-id-group').focus();
							}
						}
					});
					return;
				}
				
				if(app.utils.isEmpty(boothId)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="부스를 먼저 선택하세요."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$('#js-car-proc-upgrade-info-detail-reg-pop-booth').focus();
							}
						}
					});
					return;
				}
				
				var procItems = [];
				// procItems list 생성 
				$("#js-car-proc-upgrade-info-detail-reg-pop-proc-item-list button").each(function(){
			
					var procItemId = $(this).attr("procItemId");
					var procItemNm = $(this).attr("procItemNm");
					
					procItems.push({
						  procItemId : procItemId
						, procItemNm : procItemNm
					});
					
				});
				
				var param = {
						carPlant  : $('#js-car-header-car-plant').val()
					  , procId    : procId
					  , boothId   : boothId
					  , programId : "carProcUpgradeInfo"
					  , procItems : procItems 
				};
				
				initCarProcIdSelPopup(param);					
				
				fn_openPop($(this));
			});
			
			carProcUpgradeInfoMastRegPopupFileSaveHandler.init();
			
			// orgDocNo - 연관글 임을 판단
			if(gvOrgDocNo){
				// 공정 콤보
				retrieveCarProcIdGroup.request();
				$("#js-car-proc-upgrade-info-mast-reg-popup-header-title").text("공정 개선 입력 사항");
				$("#js-car-proc-upgrade-info-detail-reg-pop-basic-info").css("display", "block");
				$("#js-car-proc-upgrade-info-mast-reg-pop-basic-info").css("display", "none");
				if(gvDocNo){
					$("#js-car-proc-upgrade-info-detail-reg-popup-call-proc-info-insp-reg-popup-button").css("display", "inline");
					retrieveCarProcUpgDt.request(gvDocNo, gvOrgDocNo);
				}
			} else {
				retrieveCarUpgradeType.request();
				retrieveCarProcIdAll.request();
				$("#js-car-proc-upgrade-info-mast-reg-popup-header-title").text("공정 개선 MASTER 등록");
				$("#js-car-proc-upgrade-info-mast-reg-pop-basic-info").css("display", "block");
				$("#js-car-proc-upgrade-info-detail-reg-pop-basic-info").css("display", "none");
				//공정개선 master 수정모드
				if(gvDocNo){
					$("#js-car-proc-upgrade-info-mast-reg-popup-header-title").text("공정 개선 MASTER 수정");
					retrieveCarProcUpgMast.request(gvDocNo, gvCarPlant);
				}
			}
			
		};
		
		// 공정개선 detail 수정모드 - 조회
		var retrieveCarProcUpgDt = {
			success : function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {							
						var data = response.rs.list[0];
						
						if(data){
							$("#js-car-proc-upgrade-info-detail-reg-pop-upgrade-date").val(data.upgradeDate);
							$("#js-car-proc-upgrade-info-detail-reg-pop-upgrade-date").mask('9999-99-99');
							$("#js-car-proc-upgrade-info-detail-reg-pop-proc-id-group").val(data.procId);
							$("#js-car-proc-upgrade-info-detail-reg-pop-proc-id-group").change();
							$("#js-car-proc-upgrade-info-detail-reg-pop-title").val(data.title);
							window.carProcUpgradeInfoMastRegPopEditor.SetBodyValue(data.description);
							setTimeout(function(){
								$("#js-car-proc-upgrade-info-detail-reg-pop-booth").val(data.boothId);
							}, 300);
						}
						var fileArr = response.rs.file;			// 첨부파일
						carProcUpgradeInfoMastRegPopupFileSaveHandler.attachFileHandler.setItems(fileArr || []);
						
						var item = response.rs.item;
						// items setting
						if(item.length > 0){
							for(var i=0; i<item.length; i++)
							{
								var html = "<li>"+ item[i].procItemNm +"<button type='button' procItemId='"+ item[i].procItemId +"' procItemNm='"+ item[i].procItemNm +"' class='wp-spr-btn wp-close-sel'><span><spring:message code='TODO.KEY' text='닫기'/></span></button></li>";
								$("#js-car-proc-upgrade-info-detail-reg-pop-proc-item-list").append(html);
							}
							
							// 변경항목 (X)버튼 event
							$("#js-car-proc-upgrade-info-detail-reg-pop-proc-item-list button").off().on('click', function(){
								$(this).parent().remove();
							});
						}
						
						
					} else {
						// 서비스 요청 처리 오류 발생 메시지
						
						app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="' + message + '"/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error : function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				});
			},
			complete : function(jqueryXHR, status) {
				// ------------------------------------
				// http response complete
				// ------------------------------------
				app.mask.pageUnlock();
			},
			request : function(docNo, orgDocNo) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				
				var params = {
						service : 'car.procItem',
						method : 'retrieveCarProcUpgDt',
						docNo : docNo,
						orgDocNo : orgDocNo
				};

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		var carProcUpgradeInfoSetReturn = function(returnParam){
			$("#js-car-proc-upgrade-info-detail-reg-pop-proc-item-list").empty();
			if(returnParam.length > 0){
				for(var i=0; i<returnParam.length; i++)
				{
					var html = '<li>'+ returnParam[i].procItemNm +'<button type="button" procItemId="'+ returnParam[i].procItemId +'" procItemNm="'+ returnParam[i].procItemNm +'" class="wp-spr-btn wp-close-sel"><span><spring:message code="TODO.KEY" text="닫기"/></span></button></li>';
					$("#js-car-proc-upgrade-info-detail-reg-pop-proc-item-list").append(html);
				}
				
				// 변경항목 (X)버튼 event
				$("#js-car-proc-upgrade-info-detail-reg-pop-proc-item-list button").off().on('click', function(){
					$(this).parent().remove();
				});
			}
		}
		// 공정개선 master 수정모드 - 조회
		var retrieveCarProcUpgMast = {
			success : function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {							
						var data = response.rs.mast[0];
						
						if(data){
							$("#js-car-proc-upgrade-info-mast-reg-pop-upgrade-date").val(data.upgradeDate);
							$("#js-car-proc-upgrade-info-mast-reg-pop-upgrade-date").mask('9999-99-99');
							$("#js-car-proc-upgrade-info-mast-reg-pop-upgrade-type").val(data.upgradeType);
							$("#js-car-proc-upgrade-info-mast-reg-pop-proc-id").val(data.procId);
							data.closingYn == 'Y' ? $("#js-car-proc-upgrade-info-mast-reg-pop-closing-yn").click() : '';
							$("#js-car-proc-upgrade-info-mast-reg-pop-title").val(data.title);
							window.carProcUpgradeInfoMastRegPopEditor.SetBodyValue(data.description);
						}
						var fileArr = response.rs.file;			// 첨부파일
						carProcUpgradeInfoMastRegPopupFileSaveHandler.attachFileHandler.setItems(fileArr || []);
					} else {
						// 서비스 요청 처리 오류 발생 메시지
						
						app.message.alert({
							  title             : '<spring:message code="TODO.KEY" text="알림"/>'
							, message           : '<spring:message code="TODO.KEY" text="' + message + '"/>'
							, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						});
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error : function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				});
			},
			complete : function(jqueryXHR, status) {
				// ------------------------------------
				// http response complete
				// ------------------------------------
				app.mask.pageUnlock();
			},
			request : function(docNo, carPlant) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				
				var params = {
						service : 'car.procItem',
						method : 'retrieveCarProcUpgMast',
						docNo : docNo,
						carPlant : carPlant
				};

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		var carProcUpgradeInfoMastRegPopupSave = function(){
			//popup 저장 할 내역 param에 담기
			if(gvOrgDocNo){ // 연관글 저장
				var docNo       = gvDocNo;
				var orgDocNo    = gvOrgDocNo;
				var carPlant    = gvCarPlant;
				var upgradeDate = $("#js-car-proc-upgrade-info-detail-reg-pop-upgrade-date").val();
				var procId      = $("#js-car-proc-upgrade-info-detail-reg-pop-proc-id-group").val();
				var boothId     = $("#js-car-proc-upgrade-info-detail-reg-pop-booth").val();
				var title       = $("#js-car-proc-upgrade-info-detail-reg-pop-title").val();
				var description = window.carProcUpgradeInfoMastRegPopEditor.GetBodyValue();
				
				if(app.utils.isEmpty(upgradeDate)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="적용일자는 필수입력 항목입니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$('#js-car-proc-upgrade-info-detail-reg-pop-upgrade-date').focus();
							}
						}
					});
					return;
				}
				if(app.utils.isEmpty(procId)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="공정은 필수입력 항목입니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$('#js-car-proc-upgrade-info-detail-reg-pop-proc-id-group').focus();
							}
						}
					});
					return;
				}
				if(app.utils.isEmpty(boothId)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="부스는 필수입력 항목입니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$('#js-car-proc-upgrade-info-detail-reg-pop-booth').focus();
							}
						}
					});
					return;
				}
				if(app.utils.isEmpty(title)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="title은 필수입력 항목입니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$('#js-car-proc-upgrade-info-detail-reg-pop-title').focus();
							}
						}
					});
					return;
				}
				if(app.utils.isEmpty(window.carProcUpgradeInfoMastRegPopEditor.GetTextValue())){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="description은 필수입력 항목입니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								window.carProcUpgradeInfoMastRegPopEditor.SetFocusEditor();
							}
						}
					});
					return;
				}
				
				var itemInfo = '';
				var itemInfoList = [];
				// itemInfo list 생성 
				$("#js-car-proc-upgrade-info-detail-reg-pop-proc-item-list button").each(function(){
			
					var procItemId = $(this).attr("procItemId");
					
					itemInfoList.push({
						procItemId : procItemId
					});
					
				});
				
				if(itemInfoList.length > 0){
					itemInfo = JSON.stringify(itemInfoList);					
				}
				
				var param = {
					 docNo       : docNo
					,orgDocNo    : orgDocNo
					,carPlant	 : carPlant
					,upgradeDate : upgradeDate
					,procId	     : procId
					,boothId	 : boothId
					,title	     : title
					,description : description
					,itemInfo    : itemInfo
				}
				
				app.message.confirm({
					  title             : '<spring:message code="TODO.KEY" text="저장"/>'
					, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
					, callback          : {
						confirm: function() {
							carProcUpgradeInfoMastRegPopupFileSaveHandler.save(param);						
						}
					}
				});
			} else { // master 저장
				var docNo       = gvDocNo;
				var carPlant    = gvCarPlant;
				var upgradeDate = $("#js-car-proc-upgrade-info-mast-reg-pop-upgrade-date").val();
				var upgradeType = $("#js-car-proc-upgrade-info-mast-reg-pop-upgrade-type").val();
				var procId      = $("#js-car-proc-upgrade-info-mast-reg-pop-proc-id").val();
				var title       = $("#js-car-proc-upgrade-info-mast-reg-pop-title").val();
				var closingYn   = $("#js-car-proc-upgrade-info-mast-reg-pop-closing-yn").is(":checked") ? "Y" : "N";
				var description = window.carProcUpgradeInfoMastRegPopEditor.GetBodyValue();
				
				if(app.utils.isEmpty(upgradeDate)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="적용일자는 필수입력 항목입니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$('#js-car-proc-upgrade-info-mast-reg-pop-upgrade-date').focus();
							}
						}
					});
					return;
				}
				if(app.utils.isEmpty(upgradeType)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="구분은 필수입력 항목입니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$('#js-car-proc-upgrade-info-mast-reg-pop-upgrade-type').focus();
							}
						}
					});
					return;
				}
				if(app.utils.isEmpty(procId)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="공정은 필수입력 항목입니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$('#js-car-proc-upgrade-info-mast-reg-pop-proc-id').focus();
							}
						}
					});
					return;
				}
				if(app.utils.isEmpty(title)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="title은 필수입력 항목입니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$('#js-car-proc-upgrade-info-mast-reg-pop-title').focus();
							}
						}
					});
					return;
				}
				if(app.utils.isEmpty(window.carProcUpgradeInfoMastRegPopEditor.GetTextValue())){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="description은 필수입력 항목입니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								window.carProcUpgradeInfoMastRegPopEditor.SetFocusEditor();
							}
						}
					});
					return;
				}
				var param = {
					 docNo       : docNo
					,carPlant	 : carPlant
					,upgradeDate : upgradeDate
					,upgradeType : upgradeType
					,procId	     : procId
					,title	     : title
					,closingYn	 : closingYn
					,description : description
				}
				
				app.message.confirm({
					  title             : '<spring:message code="TODO.KEY" text="저장"/>'
					, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
					, callback          : {
						confirm: function() {
							carProcUpgradeInfoMastRegPopupFileSaveHandler.save(param);						
						}
					}
				});				
			}
		};
		
		//------------------------------------
		//나모 CrossEditor 첨부파일 저장
		//------------------------------------
		//issue : firefox will fire the event even if it is the same file
		//issue : IE 9 does not support file api
		//------------------------------------
		var carProcUpgradeInfoMastRegPopupFileSaveHandler = {
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
					var files = this.files || null, $el = $(this);
					
					if (files != null) {
						// ------------------------------------
						// data.attachment.htmlTemplate	: 첨부파일 HTML 엘리먼트 추가 Handlebars 템플릿
						// data.attachment.files		: 첨부파일 목록
						// ------------------------------------
						var data = e.data || {}, attachment = data.attachment || {};
						
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
									if(!$("#js-car-proc-upgrade-info-mast-reg-pop-fold-button").hasClass("on")){
										$("#js-car-proc-upgrade-info-mast-reg-pop-fold-button").click();
									};
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
		
					}else
					{
						// ------------------------------------
						// OLD Browser or IE9 Lower 
						// ------------------------------------
						console.log('------------------------------------');
						console.log('You are browser does not support file api');
						console.log('------------------------------------');
					}
					// ------------------------------------
					// INPUT 엘리먼트 초기화 수행
					// ------------------------------------
					// 파일 삭제후 동일 파일 선택시 change 이벤트 발생 안함
					// ------------------------------------
					$el.val('');
					$el.replaceWith($el.clone(true));
					
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
							seqFile: data[i].seqCarProcUpgFile,
							docNo: data[i].docNo,
							filePath: data[i].filePath,
							transFilename: data[i].transFile,
							isConvertCompleted: data[i].webOfficeConvYn,
							webOfficePath: data[i].webOfficePath,
							webOfficeName: data[i].webOfficeName
						});
						
						sumFileSize += parseInt(data[i].fileSize);
					}
					
					$('#js-car-proc-upgrade-info-mast-reg-pop-sum-file-size').html('<spring:message code="TODO.KEY" text="첨부파일크기 : "/>' + convFileSize(sumFileSize));
					
					this.attachment.$htmlTemplateContainer.empty().append(this.attachment.htmlTemplate({items: items}));
					
					if(items.length > 0 && !$("#js-car-proc-upgrade-info-mast-reg-pop-fold-button").hasClass("on")){
						$("#js-car-proc-upgrade-info-mast-reg-pop-fold-button").click();
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
												// 공정 개선 이력 MASTER LIST 재조회
												retrieveCarProcUpgList.request();												
												$("#js-car-proc-upgrade-info-mast-reg-popup-close-button").click();
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
					
					if(gvOrgDocNo){
						formData.append('service'        , 'car.procItem'         );
						formData.append('method'         , 'saveCarProcUpgDt'     );
						formData.append('docNo'          , param.docNo            );       //문서번호       
						formData.append('orgDocNo'       , param.orgDocNo         );       //원글문서번호       
						formData.append('carPlant'       , param.carPlant         );       //공장           
						formData.append('upgradeDate'    , param.upgradeDate      );       //적용일자       
						formData.append('procId'         , param.procId           );       //공정
						formData.append('boothId'        , param.boothId          );       //부스
						formData.append('title'          , param.title            );       //제목
						formData.append('description'    , param.description      );       //내용
						formData.append('itemInfo'       , param.itemInfo         );       //변경항목리스트
					} else {
						formData.append('service'        , 'car.procItem'         );
						formData.append('method'         , 'saveCarProcUpgMast'   );
						formData.append('docNo'          , param.docNo            );       //문서번호       
						formData.append('carPlant'       , param.carPlant         );       //공장           
						formData.append('upgradeDate'    , param.upgradeDate      );       //적용일자    
						formData.append('upgradeType'    , param.upgradeType      );       //구분       
						formData.append('procId'         , param.procId           );       //공정
						formData.append('title'          , param.title            );       //제목
						formData.append('closingYn'      , param.closingYn        );       //종료처리
						formData.append('description'    , param.description      );       //내용
					}
					
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
				
				// files 초기화
				this.attachFileHandler.attachment.files={};
				
				$('#js-car-proc-upgrade-info-mast-reg-pop-attach-file-target').off().on('change', {attachment: this.attachFileHandler.attachment}, this.attachFileHandler.selected);
				$('#js-car-proc-upgrade-info-mast-reg-pop-attach-file').off().on('click', {selectorTarget: '#js-car-proc-upgrade-info-mast-reg-pop-attach-file-target'}, this.attachFileHandler.click);
				
				// ------------------------------------
				// 파일 삭제 이벤트 바인딩
				// ------------------------------------
				$('#js-car-proc-upgrade-info-mast-reg-pop-attach-file-template-container').off().on('click', '.js-car-proc-upgrade-info-mast-reg-pop-attach-file-remove', {classTarget: '.js-car-proc-upgrade-info-mast-reg-pop-attach-file-item', attachment: this.attachFileHandler.attachment, removeFileHandler: this.removeFileHandler}, this.attachFileHandler.remove);
				
				// ------------------------------------
				// 파일 보기 이벤트 바인딩
				// ------------------------------------
				$('#js-car-proc-upgrade-info-mast-reg-pop-attach-file-template-container').on('click', '.js-car-proc-upgrade-info-mast-reg-pop-attach-file-show', {showFileHandler: this.showFileHandler}, this.attachFileHandler.show);
				
				// ------------------------------------
				// 파일 보기 이벤트 바인딩
				// ------------------------------------
				$('#js-car-proc-upgrade-info-mast-reg-pop-attach-file-template-container').on('click', '.js-car-proc-upgrade-info-mast-reg-pop-attach-file-download', this.downloadHandler.request);
				
				// ------------------------------------
				// Handlebars 템플릿 초기화
				// ------------------------------------
				
				try {
					var $source = $('#js-car-proc-upgrade-info-mast-reg-pop-attach-file-template');
					
					if ($source.length) {
						this.attachFileHandler.attachment.$htmlTemplateContainer = $('#js-car-proc-upgrade-info-mast-reg-pop-attach-file-template-container');
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
		
		//구분 콤보
		var retrieveCarUpgradeType = {
			success : function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {							
						var data = response.rs;
						$("#js-car-proc-upgrade-info-mast-reg-pop-upgrade-type").find('option').remove();
						$("#js-car-proc-upgrade-info-mast-reg-pop-upgrade-type").append("<option value=''>선택</option>");
						for(var i=0; i<data.length; i++)
						{
							$("#js-car-proc-upgrade-info-mast-reg-pop-upgrade-type").append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
						}
						$("#js-car-proc-upgrade-info-mast-reg-pop-upgrade-type").attr("title", data.length+" <spring:message code='TODO.KEY' text='건'/>");
						
					} else {
						// 서비스 요청 처리 오류 발생 메시지
						
						app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="' + message + '"/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error : function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
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
				
				var params = {
						service : 'car.common',
						method : 'retrieveCarUpgradeType'					
				};

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		//공정 콤보
		var retrieveCarProcIdAll = {
			success : function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {							
						var data = response.rs;
						$("#js-car-proc-upgrade-info-mast-reg-pop-proc-id").find('option').remove();
						$("#js-car-proc-upgrade-info-mast-reg-pop-proc-id").append("<option value=''>선택</option>");
						for(var i=0; i<data.length; i++)
						{
							$("#js-car-proc-upgrade-info-mast-reg-pop-proc-id").append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
						}
						$("#js-car-proc-upgrade-info-mast-reg-pop-proc-id").attr("title", data.length+" <spring:message code='TODO.KEY' text='건'/>");
						
					} else {
						// 서비스 요청 처리 오류 발생 메시지
						
						app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="' + message + '"/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error : function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
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
				
				var params = {
						service : 'car.common',
						method : 'retrieveCarProcIdAll'					
				};

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		// 공정 콤보 - 연관글
		var retrieveCarProcIdGroup = {
			success : function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {							
						var data = response.rs;
						$("#js-car-proc-upgrade-info-detail-reg-pop-proc-id-group").find('option').remove();
						$("#js-car-proc-upgrade-info-detail-reg-pop-proc-id-group").append("<option value=''>선택</option>");
						for(var i=0; i<data.length; i++)
						{
							$("#js-car-proc-upgrade-info-detail-reg-pop-proc-id-group").append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
						}
						$("#js-car-proc-upgrade-info-detail-reg-pop-proc-id-group").attr("title", data.length+" <spring:message code='TODO.KEY' text='건'/>");
						
						// 공정콤보 변경에 따라 부스 정보 변경
						$('#js-car-proc-upgrade-info-detail-reg-pop-proc-id-group').off().on('change', function(){
							if(this.value){
								// 부스 콤보
								retrieveCarLineBooth.request();								
							} else {
								$("#js-car-proc-upgrade-info-detail-reg-pop-booth").find('option').remove();
							}
						});
					} else {
						// 서비스 요청 처리 오류 발생 메시지
						
						app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="' + message + '"/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error : function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
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
				
				var params = {
						service : 'car.common',
						method : 'retrieveCarProcIdGroup'					
				};

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			},
			carProcInfoInspRegPopup : {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							gvCarProcInfoInspRegProcIdGroupRs = response.rs;
							
						} else 	{
							// 서비스 요청 처리 오류 발생 메시지
							
							messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
							messageParam.message = message;
							app.message.alert(messageParam);
							// 서비스 요청 처리 Exception 메시지
							console.log(response.error || '');
						}
					}
				},
				error: function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
					
					messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
					messageParam.message = errorText;
					app.message.alert(messageParam);
				},
				complete: function(jqueryXHR, status) {
					// ------------------------------------
					// http response complete
					// ------------------------------------
					//app.mask.pageUnlock();
				},
				request: function() {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service : 'car.common'
						, method  : 'retrieveCarProcIdGroup'
					};
					//app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			}
		};
		// 부스 콤보 - 연관글
		var retrieveCarLineBooth = {
			success : function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {							
						var data = response.rs;
						$("#js-car-proc-upgrade-info-detail-reg-pop-booth").find('option').remove();
						$("#js-car-proc-upgrade-info-detail-reg-pop-booth").append("<option value=''>선택</option>");
						for(var i=0; i<data.length; i++)
						{
							$("#js-car-proc-upgrade-info-detail-reg-pop-booth").append("<option value='"+data[i].code+"'>"+data[i].codeNm+"</option>");
						}
						$("#js-car-proc-upgrade-info-detail-reg-pop-booth").attr("title", data.length+" <spring:message code='TODO.KEY' text='건'/>");
						
					} else {
						// 서비스 요청 처리 오류 발생 메시지
						
						app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="' + message + '"/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error : function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
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
				var procId = $("#js-car-proc-upgrade-info-detail-reg-pop-proc-id-group").val();
				
				var params = {
						service : 'car.common',
						method : 'retrieveCarLineBooth',
						carPlant : gvCarPlant,
						procId : procId 
				};

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			},
			carProcInfoInspRegPopup : {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							gvCarProcInfoInspRegBoothRs = response.rs;
							
						} else 	{
							// 서비스 요청 처리 오류 발생 메시지
							
							messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
							messageParam.message = message;
							app.message.alert(messageParam);
							// 서비스 요청 처리 Exception 메시지
							console.log(response.error || '');
						}
					}
				},
				error: function(jqueryXHR, status, errorText) {
					// ------------------------------------
					// http response error
					// ------------------------------------
					
					messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
					messageParam.message = errorText;
					app.message.alert(messageParam);
				},
				complete: function(jqueryXHR, status) {
					// ------------------------------------
					// http response complete
					// ------------------------------------
					//app.mask.pageUnlock();
				},
				request: function(procId) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service  : 'car.common'
						, method   : 'retrieveCarLineBooth'
						, carPlant : $('#js-car-header-car-plant').val()
						, procId   : procId
					};
					//app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			}
		};
		
		</script>
	
		
		
		<!-- 공정 정보 항목별 값 관리 팝업  [START] -->
		<div class="wp-dim-layer">
		    <div class="wp-dimBg"></div>
		    <div id="js-car-proc-upgrade-info-item-velue-management-reg-popup" class="wp-pop-layer wp-pop-w940 wp-box-sizing wp-car-popup">
		    	<div class="wp-pop-title">
		    		<h1><spring:message code="TODO.KEY" text="공정 정보 항목별 값 관리"/></h1>
		    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-proc-upgrade-info-item-velue-management-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
		    	</div>
		        <div class="wp-pop-conts">
				<!-- scroll Area -->
				<div class="wp-pop-cont-scrollable">
		            <!--content //-->
				<!-- 기본 정보 -->
				<div class="wp-table-st1 wp-issue-apply">
					<table>
						<caption><spring:message code="TODO.KEY" text="공정 정보 항목별 값 관리"/></caption>
						<colgroup>
							<col style="width:14%">
							<col style="width:86%;">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="수정일자"/></th>
								<td class="wp-al"><input type="text" id="js-car-proc-upgrade-info-item-velue-management-reg-popup-date" title="내용입력" class="wp-inp-datepicker" placeholder="<spring:message code='TODO.KEY' text='날짜입력'/>"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="등록자"/></th>
								<td  class="wp-al wp-vm">
									<input type="text" id="js-car-proc-upgrade-info-item-velue-management-reg-popup-emp-name" title="내용입력" class="wp-wd108" disabled="disabled">
									<input type="hidden" id="js-car-proc-upgrade-info-item-velue-management-reg-popup-emp">
									<button type="button" class="wp-btn small gray cr3" id="js-car-proc-upgrade-info-item-velue-management-reg-popup-emp-retrieve-button" data-link="js-car-emp-popup" data-depth="2"><spring:message code="TODO.KEY" text="조회"/></button>
								</td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="공정 개선 정보"/></th>
								<td  class="wp-al wp-vm">
									<div class="wp-ui-select wp-wd100p">
										<select title="항목 개수 설정" id="js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-imprv-info-combo">
										</select>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="wp-clearfix"><button type="button" class="wp-btn small white bgray plus wp-mb5 wp-fr" id="js-car-proc-upgrade-info-item-velue-management-reg-popup-add-button"><spring:message code="TODO.KEY" text="추가"/></button></div>
				<!-- 기본 정보 -->
				<div class="wp-table-st1">
					<table>
						<caption></caption>
						<colgroup>
							<col style="width:15%">
							<col style="width:10%">
							<col style="width:15%">
							<col style="width:15%">
							<col style="width:15%">
							<col style="width:15%">
							<col style="width:15%">
						</colgroup>
						<thead>
							<tr>
								<th><spring:message code="TODO.KEY" text="공정"/></th>
								<th><spring:message code="TODO.KEY" text="부스"/></th>
								<th><spring:message code="TODO.KEY" text="분류(대)"/></th>
								<th><spring:message code="TODO.KEY" text="분류(소)"/></th>
								<th><spring:message code="TODO.KEY" text="항목"/></th>
								<th><spring:message code="TODO.KEY" text="변경 전"/></th>
								<th><spring:message code="TODO.KEY" text="변경 후"/></th>
							</tr>
						</thead>
						<tbody id="js-car-proc-upgrade-info-item-velue-management-reg-popup-list">
						</tbody>
					</table>
				</div>
			<!-- // scroll Area -->
			</div>
			<input type="hidden" id="js-car-proc-upgrade-info-item-velue-management-reg-popup-procid" >
			<input type="hidden" id="js-car-proc-upgrade-info-item-velue-management-reg-popup-boothid">
			<div class="wp-btn-area">
				<button type="button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18" id="js-car-proc-upgrade-info-item-velue-management-reg-popup-save-button"><spring:message code="TODO.KEY" text="저장"/></button>
			</div>
			</div>
			</div>
		</div>
		<!-- 공정 항목 수정 팝업  [END] -->
		<!-- 항목 리스트 - 스크립트-->
		<script id="js-template-car-proc-upgrade-info-item-velue-management-reg-popup-list" type="text/x-handlebars-template">		
			{{#rows}}
				<tr>
					<td>
						<div class="wp-ui-select wp-wd100p">
							<select title="항목 개수 설정" name="js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-group-combo" data-index="{{index}}">
							</select>
						</div>
					</td>
					<td>
						<div class="wp-ui-select wp-wd100p">
							<select title="항목 개수 설정" name="js-car-proc-upgrade-info-item-velue-management-reg-popup-booth-combo" data-index="{{index}}">
							</select>
						</div>
					</td>
					<td>
						<div class="wp-ui-select wp-wd100p">
							<select title="항목 개수 설정" name="js-car-proc-upgrade-info-item-velue-management-reg-popup-type-large-combo" data-index="{{index}}">
							</select>
						</div>
					</td>
					<td>
						<div class="wp-ui-select wp-wd100p">
							<select title="항목 개수 설정" name="js-car-proc-upgrade-info-item-velue-management-reg-popup-type-small-combo" data-index="{{index}}">
							</select>
						</div>
					</td>
					<td>
						<div class="wp-ui-select wp-wd100p">
							<select title="항목 개수 설정" name="js-car-proc-upgrade-info-item-velue-management-reg-popup-item-combo" data-index="{{index}}">
							</select>
						</div>
					</td>
					<td><input type="text" name="js-car-proc-upgrade-info-item-velue-management-reg-popup-modify-before" title="내용입력" class="wp-wd100p" data-index="{{index}}" procItemNm="" procItemUnit="" procItemValueType="" disabled="disabled"></td>
					<td><input type="text" name="js-car-proc-upgrade-info-item-velue-management-reg-popup-modify-after"  title="내용입력" class="wp-wd100p" data-index="{{index}}"></td>
				</tr>
			{{/rows}}
		</script>
			
		<!-- Combo Option 리스트 - 스크립트-->
		<script id="js-template-car-proc-upgrade-info-item-velue-management-reg-popup-list-option-list" type="text/x-handlebars-template">		
			{{#rows}}	
				<option value="{{code}}">{{codeNm}}</option>
			{{/rows}}
		</script>
	
			
		<!-- 공정 항목 수정 팝업 - 스크립트 [START] -->
		<script type="text/javascript">
		
		//메시지 파라미터 정의함수
		var messageParam = {
			title: '<spring:message code="TODO.KEY" text="에러"/>',
			message: '',
			confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>'				
		};
		
		var carProcInfoInspRegDataListTemplate;
		var carProcInfoInspRegOptionListTemplate;
		
		var gvCarProcInfoInspRegProcIdGroupRs;	// 공정 코드 rs
		var gvCarProcInfoInspRegBoothRs;		// 부스 코드 rs
		var gvCarProcInfoInspRegTypeLargeRs;	// 분류(대) 코드 rs
		var gvCarProcInfoInspRegTypeSmallRs;	// 분류(소) 코드 rs
		var gvCarProcInfoInspRegItemRs;			// 항목 코드 rs
		
		//------------------------------------------------
		// 초기화
		// ------------------------------------------------
		var initCarProcInfoInspRegPopup = function(param) {
			
			// 입력값 초기화
			var date = app.utils.formatDate(new Date(), "YYYYMMDD");
			$("#js-car-proc-upgrade-info-item-velue-management-reg-popup-date").val(date);
			$("#js-car-proc-upgrade-info-item-velue-management-reg-popup-date").mask('9999-99-99');
			$("#js-car-proc-upgrade-info-item-velue-management-reg-popup-emp-name").val("${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}");
			$("#js-car-proc-upgrade-info-item-velue-management-reg-popup-emp").val("${sessionScope.LoginUserInfo.empNum}");
			$("#js-car-proc-upgrade-info-item-velue-management-reg-popup-list").empty();
			gvCarProcInfoInspRegProcIdGroupRs = null;
			gvCarProcInfoInspRegBoothRs       = null;
			gvCarProcInfoInspRegTypeLargeRs   = null;
			gvCarProcInfoInspRegTypeSmallRs   = null;
			gvCarProcInfoInspRegItemRs        = null;
			
			// Handlebar 초기화
			initCarProcInfoInspRegPopupHandlebarsTemplate();
			
			// 공정 개선 정보 조회(콤보)
			retrieveCarProcTitle.request();
			
			// 공정 콤보 조회
			retrieveCarProcIdGroup.carProcInfoInspRegPopup.request();
			
			// Parameter Set
			$("#js-car-proc-upgrade-info-item-velue-management-reg-popup-procid").val("");
			$("#js-car-proc-upgrade-info-item-velue-management-reg-popup-boothid").val("");
			if(param != undefined){
				if(param.procId != undefined && param.boothId != undefined){
					$("#js-car-proc-upgrade-info-item-velue-management-reg-popup-procid").val(param.procId);
					$("#js-car-proc-upgrade-info-item-velue-management-reg-popup-boothid").val(param.boothId);
				}
			}
			
			// 공정 항목 관리 조회
			retrieveCarProcItem.request();
			
			// [추가] 버튼 클릭
			$("#js-car-proc-upgrade-info-item-velue-management-reg-popup-add-button").off().on('click', function(){
				carProcInfoInspRegPopupAddRow();
			});
			
			// 등록자 조회 버튼 클릭
			$('#js-car-proc-upgrade-info-item-velue-management-reg-popup-emp-retrieve-button').off().on('click', function(){
				fn_openPop($(this));
				initCarEmpPopup("js-car-proc-upgrade-info-item-velue-management-reg-popup");
			});
			
			// 저장 버튼 클릭
			$('#js-car-proc-upgrade-info-item-velue-management-reg-popup-save-button').off().on('click', function(){
				saveCarProcInfoInspRegPopup();
			});
			
			uiDesign.layer_popup( 'js-car-proc-upgrade-info-item-velue-management-reg-popup' ,  '42' );
		};
		
		// ------------------------------------------------
		// 담당자 Data 적용
		// ------------------------------------------------
		var applyCarProcInfoInspRegPopupEmpData = function(data) {
			$("#js-car-proc-upgrade-info-item-velue-management-reg-popup-emp-name").val(data.empNm);
			$("#js-car-proc-upgrade-info-item-velue-management-reg-popup-emp").val(data.emp);
		};
		
		// ------------------------------------------------
		// 저장 처리
		// ------------------------------------------------
		var saveCarProcInfoInspRegPopup = function() {
			
			var carPlant = $('#js-car-header-car-plant').val();
			var date     = $("#js-car-proc-upgrade-info-item-velue-management-reg-popup-date").val();
			var emp      = $('#js-car-proc-upgrade-info-item-velue-management-reg-popup-emp').val();
			
			if(app.utils.isEmpty(carPlant)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="공장코드가 없습니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
						}
					}
				});
				return;
			}
			if(app.utils.isEmpty(date)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="수정일자는 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-car-proc-upgrade-info-item-velue-management-reg-popup-date').focus();
						}
					}
				});
				return;
			}
			if(app.utils.isEmpty(emp)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="등록자는 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-car-proc-upgrade-info-item-velue-management-reg-popup-emp').focus();
						}
					}
				});
				return;
			}
			var objLength = $("#js-car-proc-upgrade-info-item-velue-management-reg-popup-list").find("tr").length;
			for(var i=0 ; i<objLength ; i++){
				procId            = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-group-combo][data-index=" + i + "]").val();
				boothId           = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-booth-combo][data-index=" + i + "]").val();
				procTypeId1       = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-large-combo][data-index=" + i + "]").val();
				procTypeId2       = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-small-combo][data-index=" + i + "]").val();
				procItemId        = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-item-combo][data-index=" + i + "]").val();
				procItemNm        = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-modify-before][data-index=" + i + "]").attr("procItemNm");
				procItemUnit      = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-modify-before][data-index=" + i + "]").attr("procItemUnit");
				procItemValueType = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-modify-before][data-index=" + i + "]").attr("procItemValueType");
				procItemValue     = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-modify-after][data-index=" + i + "]").val();
				
				if(app.utils.isEmpty(procId)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="공정코드가 없습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-group-combo][data-index=" + i + "]").focus();
							}
						}
					});
					return;
				}
				if(app.utils.isEmpty(boothId)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="부스코드가 없습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-booth-combo][data-index=" + i + "]").focus();
							}
						}
					});
					return;
				}
				if(app.utils.isEmpty(procTypeId1)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="분류(대) 코드가 없습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-large-combo][data-index=" + i + "]").focus();
							}
						}
					});
					return;
				}
				if(app.utils.isEmpty(procTypeId2)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="분류(소) 코드가 없습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-small-combo][data-index=" + i + "]").focus();
							}
						}
					});
					return;
				}
				if(app.utils.isEmpty(procItemId)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="항목 코드가 없습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-item-combo][data-index=" + i + "]").focus();
							}
						}
					});
					return;
				}
				if(app.utils.isEmpty(procItemNm)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="변경전 항목명이 없습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
							}
						}
					});
					return;
				}
				if(app.utils.isEmpty(procItemUnit)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="변경전 항목단위가 없습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
							}
						}
					});
					return;
				}
				if(app.utils.isEmpty(procItemValueType)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="변경전 항목타입이 없습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
							}
						}
					});
					return;
				}
				if(app.utils.isEmpty(procItemValue)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="입력된 변경 후 값이 없습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-modify-after][data-index=" + i + "]").focus();
							}
						}
					});
					return;
				}
				
			}
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						// 저장
						saveCarProc.request();
					}
				}
			});
		};
		
		// ------------------------------------------------
		// 항목 Row 추가
		// ------------------------------------------------
		var carProcInfoInspRegPopupAddRow = function() {
			
			var index = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-group-combo]:last").attr("data-index");
			
			index = index != undefined ? Number(index)+1 : 0;
			
			// Row 추가
			var param = [{
					index : index 
			}];
			var result = carProcInfoInspRegDataListTemplate({rows : param});
			$("#js-car-proc-upgrade-info-item-velue-management-reg-popup-list").append(result);
			
			// 공정 콤보 Set
			carProcInfoInspRegPopupProcComboSet();
			
			// 부스 콤보 set
			carProcInfoInspRegPopupBoothComboSet();
			
			// 분류(대) 콤보 set
			carProcInfoInspRegPopupTypeLargeComboSet();
			
			// 분류(소) 콤보 set
			carProcInfoInspRegPopupTypeSmallComboSet();
			
			// 항목 콤보 set
			carProcInfoInspRegPopupItemComboSet();
			
			// 변경 전 데이터 조회
			retrieveCarProcBefValue.request();
			
			uiDesign.layer_popup( 'js-car-proc-upgrade-info-item-velue-management-reg-popup' ,  '42' );
		};
		
		// ------------------------------------------------
		// 공정 콤보 Set
		// ------------------------------------------------
		var carProcInfoInspRegPopupProcComboSet = function() {
	
			// 공정콤보 set
			var result = carProcInfoInspRegOptionListTemplate({rows : gvCarProcInfoInspRegProcIdGroupRs});
			$("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-group-combo]:last").empty().append(result);
			
			// 공정콤보 change 이벤트
			$("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-group-combo]").off().on('change', function(){
				var index = $(this).attr("data-index");
				
				// 부스 콤보 set
				carProcInfoInspRegPopupBoothComboSet(index);
				
				// 분류(대) 콤보 set
				carProcInfoInspRegPopupTypeLargeComboSet(index);
				
				// 분류(소) 콤보 set
				carProcInfoInspRegPopupTypeSmallComboSet(index);
				
				// 항목 콤보 set
				carProcInfoInspRegPopupItemComboSet(index);
				
				// 변경 전 데이터 조회
				retrieveCarProcBefValue.request(index);
			});
		};
	
		// ------------------------------------------------
		// 부스 콤보 Set
		// ------------------------------------------------
		var carProcInfoInspRegPopupBoothComboSet = function(index) {
			var groupComboLast = null;
			var $boothCombo    = null;
			
			if(typeof index == "undefined"){
				groupComboLast = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-group-combo]:last").val();
				$boothCombo = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-booth-combo]:last");
			} else {
				groupComboLast = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-group-combo][data-index=" + index + "]").val();
				$boothCombo = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-booth-combo][data-index=" + index + "]");
			}
			retrieveCarLineBooth.carProcInfoInspRegPopup.request(groupComboLast);
			var result = carProcInfoInspRegOptionListTemplate({rows : gvCarProcInfoInspRegBoothRs});
			$boothCombo.empty().append(result);
			
			// 부스 콤보 change 이벤트
			$("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-booth-combo]").off().on('change', function(){
				var index = $(this).attr("data-index");
				
				// 항목 콤보 set
				carProcInfoInspRegPopupItemComboSet(index);
				
				// 변경 전 데이터 조회
				retrieveCarProcBefValue.request(index);
			});
		};
		
		// ------------------------------------------------
		// 분류(대) 콤보 Set
		// ------------------------------------------------
		var carProcInfoInspRegPopupTypeLargeComboSet = function(index) {
			var groupComboLast  = null;
			var $typeLargeCombo = null;
			
			if(typeof index == "undefined"){
				groupComboLast = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-group-combo]:last").val();
				$typeLargeCombo = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-large-combo]:last");
			} else {
				groupComboLast = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-group-combo][data-index=" + index + "]").val();
				$typeLargeCombo = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-large-combo][data-index=" + index + "]");
			}
			retrieveCarProcInfoType1.request(groupComboLast);
			var result = carProcInfoInspRegOptionListTemplate({rows : gvCarProcInfoInspRegTypeLargeRs});
			$typeLargeCombo.empty().append(result);
			
			// 분류(대)콤보 change 이벤트
			$("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-large-combo]").off().on('change', function(){
				var index = $(this).attr("data-index");
				
				// 분류(소) 콤보 set
				carProcInfoInspRegPopupTypeSmallComboSet(index);
				
				// 항목 콤보 set
				carProcInfoInspRegPopupItemComboSet(index);
				
				// 변경 전 데이터 조회
				retrieveCarProcBefValue.request(index);
			});
		};
	
		// ------------------------------------------------
		// 분류(소) 콤보 Set
		// ------------------------------------------------
		var carProcInfoInspRegPopupTypeSmallComboSet = function(index) {
			var groupComboLast     = null;
			var typeLargeComboLast = null;
			var $typeSmallCombo    = null;
			
			if(typeof index == "undefined"){
				groupComboLast = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-group-combo]:last").val();
				typeLargeComboLast = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-large-combo]:last").val();
				$typeSmallCombo = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-small-combo]:last");
			} else {
				groupComboLast = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-group-combo][data-index=" + index + "]").val();
				typeLargeComboLast = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-large-combo][data-index=" + index + "]").val();
				$typeSmallCombo = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-small-combo][data-index=" + index + "]");
			}
			retrieveCarProcInfoType2.request(groupComboLast, typeLargeComboLast);
			var result = carProcInfoInspRegOptionListTemplate({rows : gvCarProcInfoInspRegTypeSmallRs});
			$typeSmallCombo.empty().append(result);
			
			// 분류(소)콤보 change 이벤트
			$("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-small-combo]").off().on('change', function(){
				var index = $(this).attr("data-index");
				
				// 항목 콤보 set
				carProcInfoInspRegPopupItemComboSet(index);
				
				// 변경 전 데이터 조회
				retrieveCarProcBefValue.request(index);
			});
		};
		
		// ------------------------------------------------
		// 항목 콤보 Set
		// ------------------------------------------------
		var carProcInfoInspRegPopupItemComboSet = function(index) {
			var groupComboLast     = null;
			var boothComboLast     = null;
			var typeLargeComboLast = null;
			var typeSmallComboLast = null;
			var $itemCombo         = null;
			
			if(typeof index == "undefined"){
				groupComboLast     = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-group-combo]:last").val();
				boothComboLast     = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-booth-combo]:last").val();
				typeLargeComboLast = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-large-combo]:last").val();
				typeSmallComboLast = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-small-combo]:last").val();
				$itemCombo         = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-item-combo]:last");
			} else {
				groupComboLast     = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-group-combo][data-index=" + index + "]").val();
				boothComboLast     = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-booth-combo][data-index=" + index + "]").val();
				typeLargeComboLast = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-large-combo][data-index=" + index + "]").val();
				typeSmallComboLast = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-small-combo][data-index=" + index + "]").val();
				$itemCombo         = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-item-combo][data-index=" + index + "]");
			}
			retrieveCarProcItemId.request(groupComboLast, boothComboLast, typeLargeComboLast, typeSmallComboLast);
			var result = carProcInfoInspRegOptionListTemplate({rows : gvCarProcInfoInspRegItemRs});
			$itemCombo.empty().append(result);
			
			// 항목 콤보 change 이벤트
			$("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-item-combo]").off().on('change', function(){
				var index = $(this).attr("data-index");
				
				// 변경 전 데이터 조회
				retrieveCarProcBefValue.request(index);
			});
		};
		
		// ------------------------------------------------
		// Handlebar 초기화
		// ------------------------------------------------
		var initCarProcInfoInspRegPopupHandlebarsTemplate = function() {
			
			// 데이터 리스트
			var source = $('#js-template-car-proc-upgrade-info-item-velue-management-reg-popup-list').html();
			carProcInfoInspRegDataListTemplate = Handlebars.compile(source);
			
			// 콤보 option 리스트
			var source = $('#js-template-car-proc-upgrade-info-item-velue-management-reg-popup-list-option-list').html();
			carProcInfoInspRegOptionListTemplate = Handlebars.compile(source);
		};
		
		//-------------------------------------------------
		// 공정 항목 관리 조회
		//-------------------------------------------------
		var retrieveCarProcItem = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					if (message === 'OK') {							
						
						for(var i=0 ; i<response.rs.length ; i++){
							carProcInfoInspRegPopupAddRow();
							$("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-group-combo]:last").val(response.rs[i].procId);
							$("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-booth-combo]:last").val(response.rs[i].boothId);
							$("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-large-combo]:last").val(response.rs[i].procTypeId1);
							$("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-small-combo]:last").val(response.rs[i].procTypeId2);
							$("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-item-combo]:last").val(response.rs[i].procItemId);
							$("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-modify-before]:last").val(response.rs[i].prevValue);
							$("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-modify-after]:last").val(response.rs[i].currentValue);
						}
						
					} else 	{
						// 서비스 요청 처리 오류 발생 메시지
						
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
						messageParam.message = message;
						app.message.alert(messageParam);
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error: function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				
				messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
				messageParam.message = errorText;
				app.message.alert(messageParam);
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
				$("#js-car-proc-upgrade-info-item-velue-management-reg-popup-list").empty();
				
				var procId   = $("#js-car-proc-upgrade-info-item-velue-management-reg-popup-procid").val();
				var boothId  = $("#js-car-proc-upgrade-info-item-velue-management-reg-popup-boothid").val();
				var docNo    = $("#js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-imprv-info-combo").val();
				
				if(app.utils.isEmpty(procId)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="공정코드가 없습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					});
					return;
				}
				if(app.utils.isEmpty(boothId)){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="부스코드가 없습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					});
					return;
				}
				var params = {
					  service  : 'car.procItem'
					, method   : 'retrieveCarProcItem'
					, carPlant : $('#js-car-header-car-plant').val()
					, procId   : procId
					, boothId  : boothId
					, docNo    : docNo
				};
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: true});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		//-------------------------------------------------
		// 분류(대) 조회
		//-------------------------------------------------
		var retrieveCarProcInfoType1 = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					if (message === 'OK') {							
						gvCarProcInfoInspRegTypeLargeRs = response.rs;
					} else 	{
						// 서비스 요청 처리 오류 발생 메시지
						
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
						messageParam.message = message;
						app.message.alert(messageParam);
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error: function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				
				messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
				messageParam.message = errorText;
				app.message.alert(messageParam);
			},
			complete: function(jqueryXHR, status) {
				// ------------------------------------
				// http response complete
				// ------------------------------------
				//app.mask.pageUnlock();
			},
			request: function(procId) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					  service  : 'car.common'
					, method   : 'retrieveCarProcInfoType1'
					, carPlant : $('#js-car-header-car-plant').val()
					, procId   : procId
				};
				//app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
	
		//-------------------------------------------------
		// 분류(소) 조회
		//-------------------------------------------------
		var retrieveCarProcInfoType2 = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					if (message === 'OK') {							
						gvCarProcInfoInspRegTypeSmallRs = response.rs;
					} else 	{
						// 서비스 요청 처리 오류 발생 메시지
						
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
						messageParam.message = message;
						app.message.alert(messageParam);
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error: function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				
				messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
				messageParam.message = errorText;
				app.message.alert(messageParam);
			},
			complete: function(jqueryXHR, status) {
				// ------------------------------------
				// http response complete
				// ------------------------------------
				//app.mask.pageUnlock();
			},
			request: function(procId, type1) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					  service  : 'car.common'
					, method   : 'retrieveCarProcInfoType2'
					, carPlant : $('#js-car-header-car-plant').val()
					, procId   : procId
					, type1    : type1
				};
				//app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
	
		//-------------------------------------------------
		// 항목 콤보 조회
		//-------------------------------------------------
		var retrieveCarProcItemId = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					if (message === 'OK') {							
						var resultRs = [];
						$.each(response.rs, function(index, item){
							resultRs.push({
								  code   : item.procItemId
								, codeNm : item.procItemNm
							});
						});
						gvCarProcInfoInspRegItemRs = resultRs;
					} else 	{
						// 서비스 요청 처리 오류 발생 메시지
						
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
						messageParam.message = message;
						app.message.alert(messageParam);
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error: function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				
				messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
				messageParam.message = errorText;
				app.message.alert(messageParam);
			},
			complete: function(jqueryXHR, status) {
				// ------------------------------------
				// http response complete
				// ------------------------------------
				//app.mask.pageUnlock();
			},
			request: function(procId, boothId, type1, type2) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					  service  : 'car.procItem'
					, method   : 'retrieveCarProcItemId'
					, carPlant : $('#js-car-header-car-plant').val()
					, procId   : procId
					, boothId  : boothId
					, type1    : type1
					, type2    : type2
				};
				//app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
	
		//-------------------------------------------------
		// 변경 전 데이터 조회
		//-------------------------------------------------
		var retrieveCarProcBefValue = {
			index : 0,
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					if (message === 'OK') {							
						
						$("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-modify-after][data-index=" + retrieveCarProcBefValue.index + "]").val("");
						var $beforeObj = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-modify-before][data-index=" + retrieveCarProcBefValue.index + "]");
						$beforeObj.attr("procItemNm",        "");
						$beforeObj.attr("procItemUnit",      "");
						$beforeObj.attr("procItemValueType", "");
						$beforeObj.val("");
						
						if(response.rs.length > 0){
							$beforeObj.attr("procItemNm",        response.rs[0].procItemNm);
							$beforeObj.attr("procItemUnit",      response.rs[0].procItemUnit);
							$beforeObj.attr("procItemValueType", response.rs[0].procItemValueType);
							$beforeObj.val(response.rs[0].procItemValue);
						}
					} else 	{
						// 서비스 요청 처리 오류 발생 메시지
						
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
						messageParam.message = message;
						app.message.alert(messageParam);
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error: function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				
				messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
				messageParam.message = errorText;
				app.message.alert(messageParam);
			},
			complete: function(jqueryXHR, status) {
				// ------------------------------------
				// http response complete
				// ------------------------------------
				//app.mask.pageUnlock();
			},
			request: function(index) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var procId  = "";
				var boothId = "";
				var type1   = "";
				var type2   = "";
				var itemId  = "";
				if(typeof index == "undefined"){
					procId  = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-group-combo]:last").val();
					boothId = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-booth-combo]:last").val();
					type1   = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-large-combo]:last").val();
					type2   = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-small-combo]:last").val();
					itemId  = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-item-combo]:last").val();
					retrieveCarProcBefValue.index = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-item-combo]:last").attr("data-index");
				} else {
					procId  = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-group-combo][data-index=" + index + "]").val();
					boothId = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-booth-combo][data-index=" + index + "]").val();
					type1   = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-large-combo][data-index=" + index + "]").val();
					type2   = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-small-combo][data-index=" + index + "]").val();
					itemId  = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-item-combo][data-index=" + index + "]").val();
					retrieveCarProcBefValue.index = index;
				}
				var params = {
					  service  : 'car.procItem'
					, method   : 'retrieveCarProcBefValue'
					, carPlant : $('#js-car-header-car-plant').val()
					, procId   : procId
					, boothId  : boothId
					, type1    : type1
					, type2    : type2
					, itemId   : itemId
				};
				//app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async:false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		//-------------------------------------------------
		// 공정 개선 정보 콤보 조회
		//-------------------------------------------------
		var retrieveCarProcTitle = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					if (message === 'OK') {							
						var resultRs = [];
						$.each(response.rs, function(index, item){
							resultRs.push({
								  code   : item.docNo
								, codeNm : item.title
							});
						});
						$("#js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-imprv-info-combo").empty();
						var result = carProcInfoInspRegOptionListTemplate({rows : resultRs});
						$("#js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-imprv-info-combo").empty().append(result);

						$("#js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-imprv-info-combo").off().on('change', function(){
							// 공정 항목 관리 조회
							retrieveCarProcItem.request();
						});
					} else 	{
						// 서비스 요청 처리 오류 발생 메시지
						
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
						messageParam.message = message;
						app.message.alert(messageParam);
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error: function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				
				messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
				messageParam.message = errorText;
				app.message.alert(messageParam);
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
					  service  : 'car.procItem'
					, method   : 'retrieveCarProcTitle'
					, carPlant : $('#js-car-header-car-plant').val()
					, docNo    : gvDocNo
				};
				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async:false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		//-------------------------------------------------
		// 공정 항목 관리 저장
		//-------------------------------------------------
		var saveCarProc = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					if (message === 'OK') {							
						
						app.message.alert({
							  title             : '<spring:message code="TODO.KEY" text="알림"/>'
							, message           : '<spring:message code="TODO.KEY" text="정상적으로 저장되었습니다."/>'
							, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						});
						
						// 저장 후 재조회
						retrieveCarProcItem.request();
						
					} else 	{
						// 서비스 요청 처리 오류 발생 메시지
						
						messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
						messageParam.message = message;
						app.message.alert(messageParam);
						// 서비스 요청 처리 Exception 메시지
						console.log(response.error || '');
					}
				}
			},
			error: function(jqueryXHR, status, errorText) {
				// ------------------------------------
				// http response error
				// ------------------------------------
				
				messageParam.title = '<spring:message code="TODO.KEY" text="에러"/>';
				messageParam.message = errorText;
				app.message.alert(messageParam);
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
				
				var procInfo = [];
				var carPlant  = $('#js-car-header-car-plant').val();
				var objLength = $("#js-car-proc-upgrade-info-item-velue-management-reg-popup-list").find("tr").length;
				for(var i=0 ; i<objLength ; i++){
					procId            = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-group-combo][data-index=" + i + "]").val();
					boothId           = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-booth-combo][data-index=" + i + "]").val();
					procTypeId1       = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-large-combo][data-index=" + i + "]").val();
					procTypeId2       = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-type-small-combo][data-index=" + i + "]").val();
					procItemId        = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-item-combo][data-index=" + i + "]").val();
					procItemNm        = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-modify-before][data-index=" + i + "]").attr("procItemNm");
					procItemUnit      = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-modify-before][data-index=" + i + "]").attr("procItemUnit");
					procItemValueType = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-modify-before][data-index=" + i + "]").attr("procItemValueType");
					procItemValue     = $("[name=js-car-proc-upgrade-info-item-velue-management-reg-popup-modify-after][data-index=" + i + "]").val();
					
					procInfo.push({
						  carPlant          : carPlant
						, procId            : procId      
						, boothId           : boothId    
						, procTypeId1       : procTypeId1
						, procTypeId2       : procTypeId2
						, procItemId        : procItemId
						, procItemNm        : procItemNm       
						, procItemUnit      : procItemUnit     
						, procItemValueType : procItemValueType
						, procItemValue     : procItemValue        
					});
				}
				var params = {
					  service  : 'car.procItem'
					, method   : 'saveCarProc'
					, date     : $("#js-car-proc-upgrade-info-item-velue-management-reg-popup-date").val().replace(/-/gi, "")
					, emp      : $('#js-car-proc-upgrade-info-item-velue-management-reg-popup-emp').val()
					, docNo    : $("#js-car-proc-upgrade-info-item-velue-management-reg-popup-proc-imprv-info-combo").val()
					, procInfo : JSON.stringify(procInfo)
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
