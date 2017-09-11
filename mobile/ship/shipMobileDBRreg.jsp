<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2016.12.26] 8D 메인" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.mobile">
	<!-- [s] 모바일 콘텐츠 -->
	<tiles:putAttribute name="page-content">
	<div class="wp-wrap" id="js-ship-mobile-dbr-reg">
		<!-- header -->
		<header class="wp-header">
			<button type="button" id="js-ship-mobile-dbr-reg-prev-move-button" class="wp-btn wp-left wp-prev-white"><spring:message code="TODO.KEY" text="이전"/></button>
			<h1><spring:message code="TODO.KEY" text="D.B.R. 등록"/></h1>
			<button type="button" id="js-ship-mobile-dbr-reg-save-button" class="wp-btn wp-right wp-white-line"><spring:message code="TODO.KEY" text="완료"/></button>
		</header>
		<!-- //header -->
		<!-- wp-container -->
		<section class="wp-container wp-pb50 wp-bg-f">
			<div class="wp-cont-area">
				<h1 class="wp-section-title wp-border-none"><spring:message code="TODO.KEY" text="기본 정보"/></h1>
				<div class="wp-table h-center wp-reg wp-noline">
				<table>
				<caption><spring:message code="TODO.KEY" text="기본 정보"/></caption>
				<colgroup>
					<col style="width:100%" />
				</colgroup>
				<tbody>
				<tr>
					<td>						
						<select id="js-ship-mobile-dbr-reg-yardname" disabled="" />
						</select>
					</td>
				</tr>
				<tr>
					<td>
						<div class="wp-ui-select wp-wd100p">
						<input type="date" id="js-ship-mobile-dbr-reg-date" title='<spring:message code="TODO.KEY" text="등록일자"/>' placeholder='<spring:message code="TODO.KEY" text="등록일자"/>' />
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="wp-ui-select wp-wd100p">
							<select id="js-ship-mobile-dbr-reg-hullno-combo">
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="wp-input-btn">
							<input type="text" id="js-ship-mobile-dbr-reg-emp-name" readonly="readonly" title='<spring:message code="TODO.KEY" text="담당자 입력"/>' placeholder='<spring:message code="TODO.KEY" text="담당자"/>' />
							<input type="hidden" id="js-ship-mobile-dbr-reg-emp"   >
							<button type="button" id="js-ship-mobile-dbr-reg-emp-retrieve-button" class="wp-btn wp-search wp-search-layerpop-btn"><spring:message code="TODO.KEY" text="검색"/></button>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<textarea id="js-ship-mobile-dbr-reg-remark" cols="" rows="5" class="wp-wd100p" placeholder='<spring:message code="TODO.KEY" text="비고"/>'></textarea>
					</td>
				</tr>
				<tr>
					<td><span class="wp-mt5 wp-inblock"><spring:message code="TODO.KEY" text="첨부파일"/></span>
						<button type="button" id="js-ship-mobile-dbr-reg-find-file-button" class="wp-btn-gray wp-image-layerpop-btn"><span><spring:message code="TODO.KEY" text="파일찾기"/></span></button>
					</td>
				</tr>
				</tbody>
				</table>
				</div>
				<div class="wp-consult-picture wp-picture">
				<ul id="js-ship-mobile-dbr-reg-image-list">
				</ul>
				</div>
			</div>
		</section>
		<!-- //wp-container -->
		<input type="hidden" id="js-ship-mobile-dbr-reg-yardcode" value="${param.yardCode}">
		<input type="hidden" id="js-ship-mobile-dbr-reg-seq-mast" value="${param.seqMast}">
	</div>
	
	
	<!-- 파일첨부 - 레이어 팝업 -->
	<div class="wp-wrap wp-image-layerpop" style="display: none;">
		<!-- header -->
		<header class="wp-header">
			<button type="button" id="js-ship-mobile-dbr-reg-file-layer-popup-close-button" class="wp-btn wp-left wp-close wp-image-layerpop-btn-close"><spring:message code="TODO.KEY" text="닫기"/></button>
			<h1><spring:message code="TODO.KEY" text="이미지 등록"/></h1>
			<button type="button" id="js-ship-mobile-dbr-reg-file-layer-popup-save-button" class="wp-btn wp-right wp-white-line wp-image-layerpop-btn-close" disabled=""><spring:message code="TODO.KEY" text="저장"/></button>
		</header>
		<!-- //header -->
		<!-- wp-container -->
		<section class="wp-container">
		<div class="wp-picture">
			<img id="js-ship-mobile-dbr-reg-file-layer-popup-image" style="width: 100%; height: 240px;">
		</div>
			<div class="wp-table-st1 wp-pb15 h-center">
				<table>
					<caption><spring:message code="TODO.KEY" text="이미지 등록"/></caption>
					<colgroup>
						<col style="width:25%">
						<col style="width:75%">
					</colgroup>
					<tbody>
						<tr>
							<th><spring:message code="TODO.KEY" text="경로"/></th>
							<td class="wp-al">
								<span id="js-ship-mobile-dbr-reg-file-layer-popup-image-name"></span>
								<button type="button" id="js-ship-mobile-dbr-reg-file-layer-popup-find-button" class="wp-btn-gray wp-layerpop-btn wp-mr10"><span><spring:message code="TODO.KEY" text="파일선택"/></span></button>
								<input type="file" id="js-ship-mobile-dbr-reg-file-layer-popup-target" style="display: none;">
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
		<!-- //wp-container -->
		<input type="hidden" id="js-ship-mobile-dbr-reg-file-layer-popup-image-index">
	</div>	
	</tiles:putAttribute>
	<!-- [e] 모바일 콘텐츠 -->
	<!-- [s] 페이지 레벨 스크립트 -->
	<tiles:putAttribute name="page-level-js">
	
	<!-- 이미지 리스트 스트립트 -->
	<script id="js-template-ship-mobile-dbr-reg-image-list" type="text/x-handlebars-template">
	{{#rows}}
		<li dataIndex="{{dataIndex}}">
			<img name="js-ship-mobile-dbr-reg-image" src="{{dbrImage}}" seqFile="{{seqShipDbrFile}}" dataIndex="{{dataIndex}}">
			<div class="wp-btn-area">
				<button type="button" name="js-ship-mobile-dbr-reg-image-modify-button" dataIndex="{{dataIndex}}" class="wp-btn wp-image-layerpop-btn"><span class="mody"><spring:message code="TODO.KEY" text="수정"/></span></button>
				<button type="button" name="js-ship-mobile-dbr-reg-image-delete-button" dataIndex="{{dataIndex}}" seqFile="{{seqShipDbrFile}}" class="wp-btn"><span class="trash-gray"><spring:message code="TODO.KEY" text="삭제"/></span></button>
			</div>
		</li>
	{{/rows}}
	</script>
	
	<script type="text/javascript">
	
	var shipMobileDbrRegImageListTemplate;

	$(document).ready(function(){
		
		// Handlebar 초기화
		initHandlebarsTemplate();
		
		// 이미지 핸들러 초기화
		imageUploadPopupHandler.init();
		
		// 호선 콤보 조회
		retrieveHullNo.request();
		
		//조선소 콤보 조회		
		retrieveShipCust.request();
		
		//$("#js-ship-mobile-dbr-reg-yardname").val(getQuerystring('yardCodeNm'));
		
		var todayDate = fn_getTodayDate();
		$("#js-ship-mobile-dbr-reg-date").val(todayDate);
		
		//if($("#js-ship-mobile-dbr-reg-seq-mast").val() != ""){

			// DBR 상세 조회
			retrieveDbrInfoDetail.request();
		//}
		
		// 이전 버튼 클릭
		$("#js-ship-mobile-dbr-reg-prev-move-button").on("click", function(){
			window.location.href = '/mobile/ship/shipMobileDBR.do?yardCode=' + $("#js-ship-mobile-dbr-reg-yardcode").val();
		});
		
		// 담당자 검색 버튼 클릭
		$("#js-ship-mobile-dbr-reg-emp-retrieve-button").on("click", function(){
			var param = {
					searchText : $("#js-ship-mobile-dbr-reg-emp-name").val().split(" ")[0]
				  , callback   : setEmpInfo
				
			}
			initShipMobileProcInfoRegStepSearch(param);
		});
		
		// 파일찾기 버튼 클릭
		$("#js-ship-mobile-dbr-reg-find-file-button").on("click", function(){
			uploadImageInit();
		});
		
		// 이미지 수정 버튼 클릭
		$("#js-ship-mobile-dbr-reg-image-list").on("click", "[name=js-ship-mobile-dbr-reg-image-modify-button]", function(){
			var dataIndex = $(this).attr("dataIndex");
			var src       = $("img[dataIndex=" + dataIndex + "]").attr("src");
			
			var param = {
					dataIndex : dataIndex
				  , src       : src
			};
			uploadImageInit(param);
			$('.wp-image-layerpop').show();
		});
		
		// 이미지 삭제 버튼 클릭
		$("#js-ship-mobile-dbr-reg-image-list").on("click", "[name=js-ship-mobile-dbr-reg-image-delete-button]", function(){
			var dataIndex = $(this).attr("dataIndex");
			var seqFile   = $(this).attr("seqFile");
			
			if(!confirm("선택한 이미지를 삭제하시겠습니까?")){
				return;
			}
			$("li[dataIndex=" + dataIndex + "]").remove();
			
			if(seqFile != null && seqFile != ""){
				deleteDbrImage.request(seqFile);
			}
		});
		
		// DBR 저장 버튼 클릭
		$("#js-ship-mobile-dbr-reg-save-button").on("click", function(){
			if(!confirm("저장하시겠습니까?")){
				return;
			}
			saveDbrInfo.request();
		});
		
		// 이미지 등록 - 저장 버튼 클릭
		$("#js-ship-mobile-dbr-reg-file-layer-popup-save-button").on("click", function(){
			var src       = $("#js-ship-mobile-dbr-reg-file-layer-popup-image").attr("src");
			var dataIndex = $("#js-ship-mobile-dbr-reg-file-layer-popup-image-index").val();
			if(dataIndex == ""){
				
				var newIndex = 0;
				$("img[name=js-ship-mobile-dbr-reg-image]").each(function(){
					if(newIndex < $(this).attr("dataIndex")){
						newIndex = $(this).attr("dataIndex");
					}
				});
				newIndex = Number(newIndex) + 1;
				var image = [{
					  dbrImage : src
					, seqShipDbrFile : ""
					, dataIndex : newIndex
				}];
				
				var result = shipMobileDbrRegImageListTemplate({rows : image});
				$("#js-ship-mobile-dbr-reg-image-list").append(result);
			} else {
				
				$("img[name=js-ship-mobile-dbr-reg-image][dataIndex=" + dataIndex + "]").attr("src", src);
			}
			
			$("#js-ship-mobile-dbr-reg").show();
		});
		
		// 이미지 등록 - 닫기 버튼 클릭
		$("#js-ship-mobile-dbr-reg-file-layer-popup-close-button").on("click", function(){
			$("#js-ship-mobile-dbr-reg").show();
		});
	});
	
	//------------------------------------------------
	// 이미지 등록 초기화
	//------------------------------------------------
	var uploadImageInit = function(param){
		// 부모창 숨기기
		$("#js-ship-mobile-dbr-reg").hide();
		
		$("#js-ship-mobile-dbr-reg-file-layer-popup-image").attr("src", "");
		$("#js-ship-mobile-dbr-reg-file-layer-popup-image-name").text("");
		$("#js-ship-mobile-dbr-reg-file-layer-popup-save-button").attr("disabled", true);
		$("#js-ship-mobile-dbr-reg-file-layer-popup-image-index").val("");
		
		if(param == undefined){
			return;
		}
		$("#js-ship-mobile-dbr-reg-file-layer-popup-image").attr("src", param.src);
		$("#js-ship-mobile-dbr-reg-file-layer-popup-image-index").val(param.dataIndex);
		$("#js-ship-mobile-dbr-reg-file-layer-popup-save-button").attr("disabled", false);
	};
	
	//------------------------------------------------
	// 이미지 파일 등록 
	//------------------------------------------------
	var imageUploadPopupHandler = {
		selected: function(e) {
			// ------------------------------------
			// 파일 선택 이벤트 핸들러
			// ------------------------------------
			// Chrome, FireFox, Safari 5.1.7+, IE 10+
			// ------------------------------------
			var files = this.files || null;

			if (files != null) {
				var file = files[0] || null;
				var $el = $(this);
				
				if (file != null) {
					// ------------------------------------
					// 이미지 파일을 Base64 형식으로 변경
					// ------------------------------------
					var callbackHandler = function(image) {
						// ------------------------------------
						// image.isOK		: 성공 (true)
						// image.name		: 파일명
						// image.size		: 파일크기 (바이트)
						// image.type		: 파일형식 (image/png)
						// image.src		: 이미지소드 (Base64 인코딩)
						// ------------------------------------
						if((image.isOK === false) && (image.isInvalidImageType === true)){
							alert("파일 형식(이미지) 위반입니다.\njp(e)g, gif, png, bmp, svg 형식만 가능합니다.");
							return;
						}
						if (image.isOK) {
							$('#js-ship-mobile-dbr-reg-file-layer-popup-image-name').text(image.name);
							$('#js-ship-mobile-dbr-reg-file-layer-popup-image').attr('src', image.src);
							$("#js-ship-mobile-dbr-reg-file-layer-popup-save-button").attr("disabled", false);
						}
					};
					app.file.convertImage2Base64(file, callbackHandler,'N');
				}
				// ------------------------------------
				// INPUT 엘리먼트 초기화 수행
				// ------------------------------------
				$el.replaceWith($el.clone(true));
			}else
			{
				console.log('[debug] you are browser does not support file api');
			}
		},
		click: function(e) {
			// ------------------------------------
			// 파일 추가 이벤트 핸들러
			// ------------------------------------
			var data = e.data || {}, selectorTarget = data.selectorTarget || null;

			if (selectorTarget != null) {
				$(selectorTarget).trigger('click');
			}else
			{
				console.log('[debug] missing selectorTarget property');
			}
		},
		init: function() {
			// ------------------------------------
			// 파일 추가 이벤트 바인딩
			// ------------------------------------
			$('#js-ship-mobile-dbr-reg-file-layer-popup-target').off().on('change',this.selected);
			$('#js-ship-mobile-dbr-reg-file-layer-popup-find-button').off().on('click', {selectorTarget: '#js-ship-mobile-dbr-reg-file-layer-popup-target'}, this.click);
		}
	};	
	
	
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
						
						$('#js-ship-mobile-dbr-reg-yardname').find('option').remove();
						for(var i=0; i<response.rs.length; i++)
						{
							$('#js-ship-mobile-dbr-reg-yardname').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
						}
						$('#js-ship-mobile-dbr-reg-yardname').attr("title", response.rs.length+" <spring:message code='TODO.KEY' text='건'/>");
						
						
						
						// 사용자가 속한 조선소로 설정(없으면 첫번째 조선소 설정)
						var sessionLoginUserTsdCustSite = $("#js-ship-session-login-user-tsd-cust-site").val();
						if(sessionLoginUserTsdCustSite){
							$('#js-ship-mobile-main-yard-code').val(sessionLoginUserTsdCustSite);
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
	// 담당자 set
	// ------------------------------------------------
	var setEmpInfo = function(data){
		$("#js-ship-mobile-dbr-reg-emp").val(data.emp);
		$("#js-ship-mobile-dbr-reg-emp-name").val(data.empNm);
	};	
	
	// ------------------------------------------------
	// Handlebar 초기화
	// ------------------------------------------------
	var initHandlebarsTemplate = function() {
		
		// 이미지 리스트
		var source = $('#js-template-ship-mobile-dbr-reg-image-list').html();
		shipMobileDbrRegImageListTemplate = Handlebars.compile(source);
	}

	// ------------------------------------------------
	// DBR 상세 조회
	// ------------------------------------------------
	var retrieveDbrInfoDetail = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					
					var stdInfo = response.rs.stdInfo;
					var image = response.rs.image;					
					if(stdInfo.length > 0){
						console.log('1111111');
						$("#js-ship-mobile-dbr-reg-yardname").val(stdInfo[0].yardCode);
						
						if(stdInfo[0].regDate.length == 8){
							var date = stdInfo[0].regDate.substring(0, 4) + "-" + stdInfo[0].regDate.substring(4, 6) + "-" + stdInfo[0].regDate.substring(6); 
							$("#js-ship-mobile-dbr-reg-date").val(date);
						}
						$("#js-ship-mobile-dbr-reg-hullno-combo").val(stdInfo[0].hullNo);
						$("#js-ship-mobile-dbr-reg-emp-name").val(stdInfo[0].empNm);
						$("#js-ship-mobile-dbr-reg-emp").val(stdInfo[0].inspEmp);
						$("#js-ship-mobile-dbr-reg-remark").val(stdInfo[0].remark);
					}else{
						console.log('22222222222222');
						retrieveShipCust.request();
					}
					
					// dataIndex 세팅 (key로 사용)
					for(var i=0 ; i<image.length ; i++){
						image[i].dataIndex = i;
					}
					
					var result = shipMobileDbrRegImageListTemplate({rows : image});
					$("#js-ship-mobile-dbr-reg-image-list").empty().append(result);
					
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
				  service         : 'ship.dbr'
				, method          : 'retrieveDbrInfoDetail'
				, seqShipDbrMast  : $("#js-ship-mobile-dbr-reg-seq-mast").val()
			};
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	// ------------------------------------------------
	// 호선 콤보 조회
	// ------------------------------------------------
	var retrieveHullNo = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					
					$('#js-ship-mobile-dbr-reg-hullno-combo').find('option').remove();
					for(var i=0; i<response.rs.length; i++)
					{
						$('#js-ship-mobile-dbr-reg-hullno-combo').append("<option value='"+response.rs[i].hullNo+"'>"+response.rs[i].hullNo+"</option>");
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
				  service   : 'ship.common'
				, method    : 'retrieveHullNo'
				, yardCode  : $("#js-ship-mobile-dbr-reg-yardcode").val()
			};
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async:false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	// ------------------------------------------------
	// DBR 저장 처리
	// ------------------------------------------------
	var saveDbrInfo = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					
					$("#js-ship-mobile-dbr-reg-seq-mast").val(response.rs.seq);
					
					alert("정상적으로 저장되었습니다.");
					retrieveDbrInfoDetail.request();
					
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
			var yardCode = $("#js-ship-mobile-dbr-reg-yardcode").val();
			var hullNo   = $("#js-ship-mobile-dbr-reg-hullno-combo").val();
			var remark   = $("#js-ship-mobile-dbr-reg-remark").val();
			var inspEmp  = $("#js-ship-mobile-dbr-reg-emp").val();
			var regDate  = $("#js-ship-mobile-dbr-reg-date").val().replace(/-/gi, "");
			var seqMast  = $("#js-ship-mobile-dbr-reg-seq-mast").val();
			
			if(app.utils.isEmpty(yardCode)){
				alert("조선소코드가 없습니다.");
				return;
			}
			if(app.utils.isEmpty(hullNo)){
				alert("호선번호가 없습니다.");
				return;
			}
			if(app.utils.isEmpty(inspEmp)){
				alert("담당자가 없습니다.");
				return;
			}
			if(app.utils.isEmpty(regDate)){
				alert("등록일자가 없습니다.");
				return;
			}
			
			var dbrImage = [];
			$("img[name=js-ship-mobile-dbr-reg-image]").each(function(){
				var src     = $(this).attr("src");
				var seqFile = $(this).attr("seqFile");
				dbrImage.push({
					  seqShipDbrFile : seqFile
					, dbrImage : src
				});
			});
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var params = {
				  service        : 'ship.dbr'
				, method         : 'saveDbrInfo'
				, yardCode       : yardCode
				, hullNo         : hullNo  
				, remark         : remark  
				, inspEmp        : inspEmp 
				, regDate        : regDate 
				, seqShipDbrMast : seqMast 
				, dbrImage       : dbrImage.length == 0 ? "" : JSON.stringify(dbrImage)
			};
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	// ------------------------------------------------
	// DBR 이미지 삭제
	// ------------------------------------------------
	var deleteDbrImage = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					
					
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
		request: function(seqShipDbrFile) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var params = {
				  service        : 'ship.dbr'
				, method         : 'deleteDbrImage'
				, seqShipDbrFile : seqShipDbrFile
			};
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	</script>
	<c:import url="/WEB-INF/static/ship/popup/mobile/employee.jsp" charEncoding="utf-8"></c:import>
	</tiles:putAttribute>
	<!-- [e] 페이지 레벨 스크립트 -->
</tiles:insertDefinition>