<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.06.26] 공업 공통 팝업 HTML 엘리먼트" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="wp-dim-layer">
    <div class="wp-dimBg"></div>
    <div id="js-indus-prod-std-info-reg-qcode-pop" class="wp-pop-layer wp-pop-w800 wp-box-sizing wp-car-popup">
    	<div class="wp-pop-title">
    		Q-Code 선택
    		<button type="button" id="js-indus-prod-std-info-reg-qcode-pop-close-button" class="wp-btn-close-layer wp-spr-btn"><span>닫기</span></button>
    	</div>
        <div class="wp-pop-conts">
	<!-- scroll Area -->
	<div class="wp-pop-cont-scrollable">
	<!--content //-->
		<div class="wp-area-sele">
			<div class="wp-pop-floor wp-clearfix">
				<div class="wp-ui-select wp-wd130">
					<select title="항목 개수 설정" id="js-indus-prod-std-info-reg-qcode-pop-keyword-id">
						<!-- <option value=''>선택</option> -->
						<option value='Q'>Q-Code</option>
						<option value='N'>명칭</option>
					</select>
				</div>

				<div class="wp-input-search wp-wd450">
					<input type="text" placeholder="검색어를 입력해 주세요." id="js-indus-prod-std-info-reg-qcode-pop-keyword">
					<button type="button" data-link="popLayer" class="wp-btn-search" id="js-indus-prod-std-info-reg-qcode-pop-search-button"><span>검색</span></button>
				</div>
			</div>

			<div class="wp-pop-floor wp-clearfix wp-mb0">
				<div class="wp-pop-sel-title wp-wd130">자산</div>
				<div class="wp-ui-select wp-wd150">
					<select title="항목 개수 설정" id="js-indus-prod-std-info-reg-qcode-pop-asset-id" disabled="disabled">
						<option value='P'>제품</option>
					</select>
				</div>
				<div class="wp-pop-sel-title wp-wd130">영업유형 검색옵션</div>
				<div class="wp-ui-select wp-wd150">
					<select title="항목 개수 설정" id="js-indus-prod-std-info-reg-qcode-pop-sales-type">
						<option>선택</option>
						<option>선택1</option>
						<option>선택2</option>
						<option>선택3</option>
					</select>
				</div>
				
			</div>
		</div>
		<div class="wp-table-st2 wp-sel-radio">
			<div class="wp-table-resp-header"></div>
			<div class="wp-table-resp-body">
			<table>
				<caption>제품 선택</caption>
				<colgroup>
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:20%">
					<col style="width:20%">
					<col style="width:25%">
					<col style="width:5%">
				</colgroup>
				<thead>
					<tr>
						<th style="width: 10%; white-space: nowrap;"><div class="wp-table-resp-headcont">자산구분</div></th>
						<th style="width: 10%; white-space: nowrap;"><div class="wp-table-resp-headcont">Q코드</div></th>
						<th style="width: 10%; white-space: nowrap;"><div class="wp-table-resp-headcont">Q코드명</div></th>
						<th style="width: 20%; white-space: nowrap;"><div class="wp-table-resp-headcont">Q코드한글명</div></th>
						<th style="width: 20%; white-space: nowrap;"><div class="wp-table-resp-headcont">Q코드영문명</div></th>
						<th style="width: 25%; white-space: nowrap;"><div class="wp-table-resp-headcont">영업유형</div></th>
						<th style="width: 5%; white-space: nowrap;"><div class="wp-table-resp-headcont">선택</div></th>
					</tr>
				</thead>
				<tbody id="js-indus-prod-std-info-reg-qcode-pop-list">
				</tbody>
			</table>
			</div>
		</div>
	<!--// content-->
            
	<!-- // scroll Area -->
	</div>
            <div class="wp-btn-area">
            	<button type="button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18" id="js-indus-prod-std-info-reg-qcode-pop-complet-button">선택완료</button>
            </div>
        </div>
    </div>
</div>

<script id="js-template-indus-prod-std-info-reg-qcode-pop-list" type="text/x-handlebars-template">
	{{#rows}}
		<tr>
			<td style="white-space: nowrap;">{{assetIdNm}}</td>
			<td style="white-space: nowrap;">{{qcode}}</td>
			<td class="wp-bubble" style="white-space: nowrap;" id="js-qcode-popup-qcode-nm-{{qcode}}">{{qcodeNm}}</td>
			<td class="wp-bubble" style="white-space: nowrap;">{{qcodeKorNm}}</td>
			<td class="wp-bubble wp-al" style="white-space: nowrap;">{{qcodeEngNm}}</td>
			<td class="wp-bubble" style="white-space: nowrap;">{{saleTypeNm}}</td>
			<td><span class="wp-ui-radio"><input type="radio" class="wp-inp-radio" name="js-qcode-popup-check" value="{{qcode}}"></span></td>
		</tr>
	{{/rows}}
</script>

		
<script type="text/javascript">

	var initIndusProdStdInfoQcodeListTemplate;

	
	//메시지 파라미터 정의함수
	var messageParam = {
		title: '에러',
		message: '',
		confirmButtonText: '확인'				
	};
	

	var initIndusProdStdInfoQcodePopup = function(){
		
		// Handlebar 초기화
		initQcodeHandlebarsTemplate();
		
		//검색 버튼
		$('#js-indus-prod-std-info-reg-qcode-pop-search-button').off().on('click', function() {
			if($('#js-indus-prod-std-info-reg-qcode-pop-keyword').val().length < 2)
			{
				fn_alertInfo('A', "<spring:message code='TODO.KEY' text='검색어를 2자 이상 입력해 주세요.'/>", function(){$('#js-indus-prod-std-info-reg-qcode-pop-keyword').focus();});
				return false;
			}
			
			retrieveQcodeList.request();
		});
		
		
		$('#js-indus-prod-std-info-reg-qcode-pop-complet-button').off().on('click', function() {
			confirmQcodeChoice();
		});
		
		$('#js-indus-prod-std-info-reg-qcode-pop-keyword').off().on('keyup', function(e) {
			$(this).val($(this).val().replace(/[^a-z0-9]/gi,'').toUpperCase());
			
			if(e.keyCode == 13) {
				if($('#js-indus-prod-std-info-reg-qcode-pop-keyword').val().length < 2)
				{
					fn_alertInfo('A', "<spring:message code='TODO.KEY' text='검색어를 2자 이상 입력해 주세요.'/>", function(){$('#js-indus-prod-std-info-reg-qcode-pop-keyword').focus();});
					return false;
				}
				
				retrieveQcodeList.request();
			}
		});
		
		retrieveBigSalesTypeByPlant.request();
		
		//retrieveQcodeList.request();
	};
	
	var initQcodeHandlebarsTemplate = function() {
		//list 영역 템플릿 컴파일
		var source = $('#js-template-indus-prod-std-info-reg-qcode-pop-list').html();
		initIndusProdStdInfoQcodeListTemplate = Handlebars.compile(source);
	};
	

	
	var retrieveBigSalesTypeByPlant= {
			success : function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {							
						var data = response.rs;
						$("#js-indus-prod-std-info-reg-qcode-pop-sales-type").find('option').remove();
						$("#js-indus-prod-std-info-reg-qcode-pop-sales-type").append("<option value=''>선택</option>");
						for(var i=0; i<data.length; i++)
						{
							$("#js-indus-prod-std-info-reg-qcode-pop-sales-type").append("<option value='"+data[i].bigSalesType+"'>"+data[i].bigSalesTypeNm+"</option>");
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
			request : function() {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				
				var params = {
						  service : 'common'
						, method  : 'retrieveBigSalesTypeByPlant'
				};

				app.mask.pageLock();
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
	
	
	// ------------------------------------------------
	// Q-Code 조회
	// ------------------------------------------------
	var retrieveQcodeList = {
		success : function(response, status, jqueryXHR) {
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
					
					var html = initIndusProdStdInfoQcodeListTemplate(data);							
					$('#js-indus-prod-std-info-reg-qcode-pop-list').empty().append(html);
					
					/* // 버튼 이벤트
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
					} */
					
					
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
			
								
			var assetId		= $('#js-indus-prod-std-info-reg-qcode-pop-asset-id').val();		
			var keyword 	= $('#js-indus-prod-std-info-reg-qcode-pop-keyword').val();					
			var keywordId 	= $('#js-indus-prod-std-info-reg-qcode-pop-keyword-id').val();			
			var salesType 	= $('#js-indus-prod-std-info-reg-qcode-pop-sales-type').val();
			
			
			//필수 파라미터 체크
			
			
		/* 	if(itemType == '')
			{						
				app.message.alert({
					title: '알림', message: '<spring:message code="TODO.KEY" text="제품구분은 필수입력 항목입니다."/>', confirmButtonText: '확인',
					callback: {
						confirm: function() {
							$('#js-items-lot-info-search-date-type').focus();
						}
					}
				});
				return;
			}
			if(keyword == '')
			{						
				app.message.alert({
					title: '알림', message: '<spring:message code="TODO.KEY" text="Q코드는 필수입력 항목입니다."/>', confirmButtonText: '확인',
					callback: {
						confirm: function() {
							jsCommon.itemType.focus();
						}
					}
				});												
				return;
			} */
			 
			
			var params = {
					service : 'common',
					method 	: 'retrieveQcodeList',						
					assetId 	: assetId,		//자산구분
					keyword  	: keyword,		//검색어
					keywordId   : keywordId,	//검색어 구분
					salesType 	: salesType		//영업유형
			};
			
			app.mask.pageLock();					
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	var confirmQcodeChoice = function() {
		 var items    = $('input:radio[name="js-qcode-popup-check"]:checked').val();
		var qcodeNm  = $('#js-qcode-popup-qcode-nm-'+items).text();
				
		var data = {
				qcode: items,
				qcodeNm: qcodeNm,
		};

		applyIndusProdStdInfoRegPopupQcode(data);
		
		$('#js-indus-prod-std-info-reg-qcode-pop-close-button').click();
	};
	
</script>