<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.06.26] 공업 공통 팝업 HTML 엘리먼트" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div class="wp-dim-layer">
    <div class="wp-dimBg"></div>
    <div id="js-indus-prod-std-info-reg-popup" class="wp-pop-layer wp-pop-w940 wp-box-sizing wp-car-popup">
    	<div class="wp-pop-title">
    		<h1>제품 기준정보 등록</h1>
    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-indus-prod-std-reg-close-button"><span>닫기</span></button>
    	</div>
        <div class="wp-pop-conts">
	<!-- scroll Area -->
	<div class="wp-pop-cont-scrollable">
            <!--content //-->
		<!-- 기본 정보 -->
		<h2 class="wp-cont-title">기본 정보</h2>
		<div class="wp-table-st1 wp-issue-apply">
			<table>
				<caption>기본 정보</caption>
				<colgroup>
					<col style="width:20%">
					<col style="width:30%">
					<col style="width:20%">
					<col style="width:30%">
				</colgroup>
				<tbody>
					<tr>
					
						<th class="wp-ar">제품유형</th>
						<td  class="wp-al wp-vm">
							<div class="wp-ui-select wp-wd100p">
								<select title="항목 개수 설정" id="js-indus-prod-std-reg-item-type" name="js-indus-prod-std-reg-item-type" disabled="disabled">
									<option>선택</option>
									<option>선택1</option>
									<option>선택2</option>
									<option>선택3</option>
								</select>
							</div>
						</td>
						<th class="wp-ar">제품명(Q-Code)</th>
						<td class="wp-al">
							<input type="text" name="" title="내용입력" class="wp-wd190" id="js-indus-prod-std-reg-qcode-view" disabled="disabled">
							<button type="button" class="wp-btn-pop wp-btn small gray cr3" id="js-indus-prod-std-reg-qcode-search-button" data-link="js-indus-prod-std-info-reg-qcode-pop">조회</button>
						</td>
					</tr>
					<tr>
						<th class="wp-ar">[분체 外]액형구분</th>
						<td  class="wp-al wp-vm">
							<div class="wp-ui-select wp-wd100p">
								<select title="항목 개수 설정" id="js-indus-prod-std-reg-part-type">
									<option>선택</option>
									<option>선택1</option>
									<option>선택2</option>
									<option>선택3</option>
								</select>
							</div>
						</td>
						<th class="wp-ar">[분체 外]제품명(경화제)</th>
						<td class="wp-al">
							<input type="text" name="" title="내용입력" class="wp-wd190" id="js-indus-prod-std-reg-part-b-view" disabled="disabled" >
							<button type="button" class="wp-btn-pop wp-btn small gray cr3"  id="js-indus-prod-std-reg-part-b-search-button" data-link="js-prod-info-popup">조회</button>
						</td>
					</tr>
					<tr>
						<th class="wp-ar">적용 공정</th>
						<td  class="wp-al wp-vm">
							<div class="wp-ui-select wp-wd100p">
								<select title="항목 개수 설정" id="js-indus-prod-std-reg-proc-type">
									<option>선택</option>
									<option>선택1</option>
									<option>선택2</option>
									<option>선택3</option>
								</select>
							</div>
						</td>
						<th class="wp-ar">제품 구분</th>
						<td  class="wp-al wp-vm">
							<div class="wp-ui-select wp-wd100p">
								<select title="항목 개수 설정" id="js-indus-prod-std-reg-item-id">
									<option>선택</option>
									<option>선택1</option>
									<option>선택2</option>
									<option>선택3</option>
								</select>
							</div>
						</td>
					</tr>
					<tr>
						<th class="wp-ar">수지 타입/도료 타입</th>
						<td  class="wp-al wp-vm">
							<div class="wp-ui-select wp-wd100p">
								<select title="항목 개수 설정" id="js-indus-prod-std-reg-paint-type">
									<option>선택</option>
									<option>선택1</option>
									<option>선택2</option>
									<option>선택3</option>
								</select>
							</div>
						</td>
						<th class="wp-ar">[분체]광택 조건</th>
						<td  class="wp-al wp-vm">
							<div class="wp-ui-select wp-wd100p">
								<select title="항목 개수 설정" id="js-indus-prod-std-reg-gloss-con">
									<option>선택</option>
									<option>선택1</option>
									<option>선택2</option>
									<option>선택3</option>
								</select>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
            </div>
		<!-- //기본 정보 -->
		<!-- TDS 정보 -->
		<h2 class="wp-cont-title">TDS 정보</h2>
		<div class="wp-table-st1 wp-issue-apply">
			<table>
				<caption>TDS 정보</caption>
				<colgroup>
					<col style="width:20%">
					<col style="width:30%">
					<col style="width:20%">
					<col style="width:30%">
				</colgroup>
				<tbody>
					<tr>
						<th class="wp-ar">SVR(%)</th>
						<td class="wp-al wp-vm"><input type="text" name="" title="내용입력" id="js-indus-prod-std-reg-svr">	</td>
						<th class="wp-ar">D.F.T(㎛)</th>
						<td class="wp-al wp-vm"><input type="text" name="" title="내용입력" id="js-indus-prod-std-reg-dft">	</td>
					</tr>
					<tr>
						<th class="wp-ar">Cure Condition Temp.(℃)</th>
						<td class="wp-al wp-vm"><input type="text" name="" title="내용입력" id="js-indus-prod-std-reg-cure-condition-temp">	</td>
						<th class="wp-ar">Cure Condition Time</th>
						<td class="wp-al wp-vm">
							<input type="text" name="" title="내용입력" id="js-indus-prod-std-reg-cure-condition-time" class="wp-wd49p">
							<div class="wp-ui-select wp-wd49p">
								<select title="항목 개수 설정" id="js-indus-prod-std-reg-cure-condition-time-unit">
								</select>
							</div>
						</td>
					</tr>
					<tr>
						<th class="wp-ar">지정 희석제</th>
						<td class="wp-al wp-vm">
							<!-- <input type="text" name="" title="내용입력" id="js-indus-prod-std-reg-dilu">  -->
							<div class="wp-ui-select wp-wd100p">
								<select title="항목 개수 설정" id="js-indus-prod-std-reg-dilu">
								</select>
							</div>
						</td>
						<th class="wp-ar">추천 희석률(%)</th>
						<td class="wp-al wp-vm"><input type="text" name="" title="내용입력" id="js-indus-prod-std-reg-dilu-rate">	</td>
					</tr>
					<tr>
						<th class="wp-ar">[분체 外]추천 점도(Sec.)<br>/ [분체]입도</th>
						<td class="wp-al wp-vm"><input type="text" name="" title="내용입력" id="js-indus-prod-std-reg-recom-visc">	</td>
						<th class="wp-ar">Spray Tip</th>
						<td class="wp-al wp-vm"><input type="text" name="" title="내용입력" id="js-indus-prod-std-reg-spray-tip">	</td>
					</tr>
					<tr>
						<th class="wp-ar">Setting Time</th>
						<td class="wp-al wp-vm"><input type="text" name="" title="내용입력" id="js-indus-prod-std-reg-setting-time">	</td>
						<th class="wp-ar">Air Pressure</th>
						<td class="wp-al wp-vm" colspan="3"><input type="text" name="" title="내용입력" class="wp-wd250" id="js-indus-prod-std-reg-air-pressure"></td>
					</tr>
					<tr>
						<th class="wp-ar">제품 특성 정보</th>
						<td class="wp-al wp-vm" colspan="3">
							<textarea cols="" rows="5" class="wp-wd100p" id="js-indus-prod-std-reg-prod-spec-info"></textarea>
						</td>
					</tr>
				</tbody>
			</table>
            </div>
		<h2 class="wp-cont-title">파일첨부</h2>
		<!-- 파일첨부 -->
		<div class="wp-table-st1 wp-issue-apply">
			<table>
				<caption>파일첨부</caption>
				<colgroup>
					<col style="width:20%">
					<col style="width:80%;">
				</colgroup>
				<tbody>
					<tr>
						<th class="wp-ar">첨부파일</th>
						<td colspan="3">
							<div class="wp-form-writer">
								<div class="wp-upload wp-mt0">
									<div class="wp-upload-top">
												<button type="button" class="wp-spr-btn wp-btn-wl-fold" id="js-indus-prod-std-reg-fold-button"><span><spring:message code="TODO.KEY" text="접기펴기"/></span></button>
												<button type="button" class="wp-btn-wl-text wp-file" id="js-indus-prod-std-reg-attach-file"><spring:message code="TODO.KEY" text="내 PC"/></button>
												<input type="file" id="js-indus-prod-std-reg-attach-file-target" style="display: none;" multiple>
												<!-- <button type="button" class="wp-btn-wl-text">서버파일</button>
												<button type="button" class="wp-spr-btn wp-btn-wl-trash"><span>휴지통</span></button> -->
												<div class="subcont" id="js-indus-prod-std-reg-sum-file-size"></div>
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
											<tbody id="js-indus-prod-std-reg-attach-file-template-container">
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
		<!-- //TDS 정보 -->
	<!-- // scroll Area -->
	</div>

	<div class="wp-btn-area">
		<button type="button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18" id="js-indus-prod-std-reg-save-button">저장</button>
		<input type="hidden" id="js-indus-prod-std-reg-qcode" />
		<input type="hidden" id="js-indus-prod-std-reg-qcode-nm" />
		<input type="hidden" id="js-indus-prod-std-reg-part-b" />
		<input type="hidden" id="js-indus-prod-std-reg-part-b-nm" />
	</div>
	
        </div>
    </div>
</div>

<script id="js-indus-prod-std-reg-attach-file-template" type="text/x-handlebars-template">		
	{{#if items.length}}
		{{#each items}}
			<tr class="js-indus-prod-std-reg-attach-file-item" data-item-id="{{itemId}}" data-upload-completed="{{uploadCompleted}}" data-seq-file="{{seqFile}}" >
				<!--<td>
					<span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" id="chk_{{itemId}}" /></span>
				</td>-->
				<td class="wp-al">{{name}}</td>
				<td>{{displaySize}}</td>
				<td><button type="button" class="wp-btn small darkgray cr3 js-indus-prod-std-reg-attach-file-remove">삭제</button></td>
				<td><button type="button" class="wp-btn small white bdarkgray cr3 js-indus-prod-std-reg-attach-file-show" data-seq-file="{{seqFile}}" data-file-path="{{filePath}}" data-trans-file-name="{{transFilename}}" data-is-convert-completed="{{isConvertCompleted}}" data-web-office-path="{{webOfficePath}}" data-web-office-name="{{webOfficeName}}"><spring:message code="TODO.KEY" text="보기"/></button></td>
				<td><button type="button" class="wp-btn small white bdarkgray cr3 js-indus-prod-std-reg-attach-file-download" data-file-path="{{filePath}}" data-trans-file-name="{{transFilename}}" data-origin-file-name="{{name}}"><spring:message code="TODO.KEY" text="다운로드"/></button></td>
			</tr>
		{{/each}}
	{{/if}}
</script>

<script type="text/javascript">
	
	
	var initIndusProdStdInfoRegPopup = function(qcode){
		
		//초기화
		$('#js-indus-prod-std-reg-item-type').val(jsCommon.itemType.getItem().code);
		$('#js-indus-prod-std-reg-qcode').val('');
		$('#js-indus-prod-std-reg-qcode-nm').val('');
		$('#js-indus-prod-std-reg-qcode-view').val('');
		$('#js-indus-prod-std-reg-part-type').val('');
		$('#js-indus-prod-std-reg-part-b').val('');
		$('#js-indus-prod-std-reg-part-b-nm').val('');
		$('#js-indus-prod-std-reg-part-b-view').val('');
		$('#js-indus-prod-std-reg-proc-type').val('');
		$('#js-indus-prod-std-reg-item-id').val('');
		$('#js-indus-prod-std-reg-paint-type').val('');
		$('#js-indus-prod-std-reg-gloss-con').val('');
		
		$('#js-indus-prod-std-reg-svr').val('');
		$('#js-indus-prod-std-reg-dft').val('');
		$('#js-indus-prod-std-reg-setting-time').val('');
		$('#js-indus-prod-std-reg-cure-condition-temp').val('');
		$('#js-indus-prod-std-reg-cure-condition-time').val('');
		$('#js-indus-prod-std-reg-cure-condition-time-unit').val('');
		$('#js-indus-prod-std-reg-dilu').val('');
		$('#js-indus-prod-std-reg-dilu-rate').val('');	
		$('#js-indus-prod-std-reg-recom-visc').val('');
		$('#js-indus-prod-std-reg-spray-tip').val('');
		$('#js-indus-prod-std-reg-air-pressure').val('');
		$('#js-indus-prod-std-reg-prod-spec-info').val('');
		
	
		//첨부파일
		$("#js-indus-prod-std-reg-attach-file-template-container").empty();

		indusProdStdInfoRegPopupFileSaveHandler.init();
		
		
		if(qcode){
			$('#js-indus-prod-std-reg-qcode-search-button').css('display', 'none');				
		}else{
			$('#js-indus-prod-std-reg-qcode-search-button').css('display', 'inline');
		}
		
		if(jsCommon.itemType.getItem().code == "POWDER"){
			$('#js-indus-prod-std-reg-part-type').attr("disabled", true);
			$('#js-indus-prod-std-reg-gloss-con').attr("disabled", false);
			$('#js-indus-prod-std-reg-part-b-search-button').css('display', 'none');			
		}else{
			$('#js-indus-prod-std-reg-part-type').attr("disabled", false);
			$('#js-indus-prod-std-reg-gloss-con').attr("disabled", true);
			$('#js-indus-prod-std-reg-part-b-search-button').css('display', 'inline');
		}
		
		
		$('#js-indus-prod-std-reg-qcode-search-button').off().on('click', function(e){
			initIndusProdStdInfoQcodePopup("js-indus-prod-std-info-reg-popup");
		});
		
		$('#js-indus-prod-std-reg-part-b-search-button').off().on('click', function(){
			initRetrieveProdItemsInfoList("js-indus-prod-std-info-reg-popup");
		});
		
		
		
		//저장버튼
		$('#js-indus-prod-std-reg-save-button').off().on('click', function(){
			/* if(!validationCheckIndusProdStdInfoReg()){
				return;
			} */
			saveIndusProdStdInfo();
					
		});
		
		
		
		/* 
		$('select[name=js-indus-prod-std-reg-item-type]').off().on('change', function() {
			var itemTypeCombo = $(this).val();
			if(app.utils.isEmpty(itemTypeCombo)){
				//$('#js-car-color-insp-detail-lab-step1-model-'+requirementIndex).find('option').remove();
				$('#js-indus-prod-std-reg-gloss-con').find('option').remove();
				return;
			}
			retrieveIndusProdStdInfoCombo.regist.request();
		});
		
		 //콤보박스 변환
		$('#js-indus-prod-std-reg-item-type').off().on('change', function(){
			retrieveIndusProdStdInfoCombo.regist.request();
		}); */
		
		
		//조회
		if(qcode){
			retrieveIndusProdStdInfo.regist.request(qcode);
		}
		else{
			retrieveIndusProdStdInfoCombo.regist.request();
		}
	}
	
	var applyIndusProdStdInfoRegPopupProdData = function(data){
		$('#js-indus-prod-std-reg-part-b-view').val('['+data.items+']'+data.itemsNm);
		$('#js-indus-prod-std-reg-part-b-nm').val(data.itemsNm);
		$('#js-indus-prod-std-reg-part-b').val(data.items);
	}
	
	var applyIndusProdStdInfoRegPopupQcode = function(data){
		$('#js-indus-prod-std-reg-qcode-view').val('['+data.qcode+']'+data.qcodeNm);
		$('#js-indus-prod-std-reg-qcode-nm').val(data.qcodeNm);
		$('#js-indus-prod-std-reg-qcode').val(data.qcode);
	}
	
	/* var validationCheckCarProdTestEdDtReg = function() {
		
		if(app.utils.isEmpty($('#js-indus-prod-std-reg-dt-title').val())){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="차수의 제목은 필수입력 항목입니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		
		if(app.utils.isEmpty($('#js-indus-prod-std-reg-insp-emp').val()))
		{
			app.message.alert({
					title			: '<spring:message code="TODO.KEY" text="알림"/>'
				, message			: '<spring:message code="TODO.KEY" text="검사자는 필수입력 항목입니다."/>'
				, confirmButtonText	: '<spring:message code="TODO.KEY" text="확인"/>',
				callback: {
					confirm: function() {
						$('#js-indus-prod-std-reg-insp-emp').focus();
					}
				}
			});
			return false;
		}
		
		if(app.utils.isEmpty($('#js-indus-prod-std-reg-insp-date').val()))
		{
			app.message.alert({
					title			: '<spring:message code="TODO.KEY" text="알림"/>'
				, message			: '<spring:message code="TODO.KEY" text="검사일자는 필수입력 항목입니다."/>'
				, confirmButtonText	: '<spring:message code="TODO.KEY" text="확인"/>',
				callback: {
					confirm: function() {
						$('#js-indus-prod-std-reg-insp-date').focus();
					}
				}
			});
			return false;
		}
		
		if(app.utils.isEmpty($('#js-indus-prod-std-reg-replace-rate').val())){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="치환율(%)은 필수입력 항목입니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		
		if(app.utils.isEmpty($('#js-indus-prod-std-reg-a-lot-no').val())){
			if(!app.utils.isEmpty($('#js-indus-prod-std-reg-b-lot-no').val())){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="경화제 입력시 주제는 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-indus-prod-std-reg-a-lot-no').focus();
						}
					}
				});
				return false;
			}
		}
		return true;
	} */
			
	
	var saveIndusProdStdInfo = function() {
		
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var itemType = $('#js-indus-prod-std-reg-item-type').val();
				var qcode = $('#js-indus-prod-std-reg-qcode').val();
				var qcodeNm = $('#js-indus-prod-std-reg-qcode-nm').val();
				var partType = $('#js-indus-prod-std-reg-part-type').val();
				var partb = $('#js-indus-prod-std-reg-part-b').val();
				var partbNm = $('#js-indus-prod-std-reg-part-b-nm').val();
				var procType = $('#js-indus-prod-std-reg-proc-type').val();
				var itemId = $('#js-indus-prod-std-reg-item-id').val();
				var paintType = $('#js-indus-prod-std-reg-paint-type').val();
				var glossCon = $('#js-indus-prod-std-reg-gloss-con').val();
				var svr = $('#js-indus-prod-std-reg-svr').val();
				var dft = $('#js-indus-prod-std-reg-dft').val();
				var settingTime = $('#js-indus-prod-std-reg-setting-time').val();
				var cureCondTemp = $('#js-indus-prod-std-reg-cure-condition-temp').val();
				var cureCondTime = $('#js-indus-prod-std-reg-cure-condition-time').val();
				var cureCondTimeUnit = $('#js-indus-prod-std-reg-cure-condition-time-unit').val();
				var dilu = $('#js-indus-prod-std-reg-dilu').val();
				var diluRate = $('#js-indus-prod-std-reg-dilu-rate').val();
				var recomVisc = $('#js-indus-prod-std-reg-recom-visc').val();
				var sprayTip = $('#js-indus-prod-std-reg-spray-tip').val();
				var airPressure = $('#js-indus-prod-std-reg-air-pressure').val();
				var prodSpecInfo = $('#js-indus-prod-std-reg-prod-spec-info').val().trim();
	
				
				var params = {
						itemType        : itemType
						,qcode          : qcode
						,qcodeNm        : qcodeNm
						,partType	    : partType
						,partb     		: partb
						,partbNm     	: partbNm
						,procType       : procType
						,itemId         : itemId
						,paintType      : paintType
						,glossCon       : glossCon
						,svr  			: svr
						,dft			: dft
						,settingTime	: settingTime
						,cureCondTemp	: cureCondTemp
						,cureCondTime	: cureCondTime
						,cureCondTimeUnit	: cureCondTimeUnit
						,dilu			: dilu
						,diluRate		: diluRate
						,recomVisc 		: recomVisc
						,sprayTip 		: sprayTip
						,airPressure 	: airPressure
						,prodSpecInfo 	: prodSpecInfo
				};
				
				app.message.confirm({
					  title             : '<spring:message code="TODO.KEY" text="저장"/>'
					, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
					, callback          : {
						confirm: function() {
							indusProdStdInfoRegPopupFileSaveHandler.save(params);						
						}
					}
				});	
		};
		
	var retrieveIndusProdStdInfoCombo = {
			regist : {
				success : function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							
							if(response.rs != null){
								
								//제품구분 콤보 리스트		
								var itemId = response.rs.itemId;
								$("#js-indus-prod-std-reg-item-id").find('option').remove();
								$("#js-indus-prod-std-reg-item-id").append("<option value=''>선택</option>");
								for(var i=0; i<itemId.length; i++)
								{
									$("#js-indus-prod-std-reg-item-id").append("<option value='"+itemId[i].code+"'>"+itemId[i].codeNm+"</option>");
								}
								//액형 콤보 리스트	
								var mixList = response.rs.mixList;
								$("#js-indus-prod-std-reg-part-type").find('option').remove();
								$("#js-indus-prod-std-reg-part-type").append("<option value=''>선택</option>");
								for(var i=0; i<mixList.length; i++)
								{
									$("#js-indus-prod-std-reg-part-type").append("<option value='"+mixList[i].code+"'>"+mixList[i].codeNm+"</option>");
								}
								//제품유형 콤보 리스트	
								var itemList = response.rs.itemList;
								$("#js-indus-prod-std-reg-item-type").find('option').remove();
								$("#js-indus-prod-std-reg-item-type").append("<option value=''>선택</option>");
								for(var i=0; i<itemList.length; i++)
								{
									$("#js-indus-prod-std-reg-item-type").append("<option value='"+itemList[i].code+"'>"+itemList[i].codeNm+"</option>");
								}
								
								//수지 콤보 리스트	
								var resinList = response.rs.resinList;
								$("#js-indus-prod-std-reg-paint-type").find('option').remove();
								$("#js-indus-prod-std-reg-paint-type").append("<option value=''>선택</option>");
								for(var i=0; i<resinList.length; i++)
								{
									$("#js-indus-prod-std-reg-paint-type").append("<option value='"+resinList[i].code+"'>"+resinList[i].codeNm+"</option>");
								}
								//광택 콤보 리스트	
								var glossList = response.rs.glossList;
								$("#js-indus-prod-std-reg-gloss-con").find('option').remove();
								$("#js-indus-prod-std-reg-gloss-con").append("<option value=''>선택</option>");
								for(var i=0; i<glossList.length; i++)
								{
									$("#js-indus-prod-std-reg-gloss-con").append("<option value='"+glossList[i].code+"'>"+glossList[i].codeNm+"</option>");
								}
								
								//공정 콤보 리스트	
								var procList = response.rs.procList;
								$("#js-indus-prod-std-reg-proc-type").find('option').remove();
								$("#js-indus-prod-std-reg-proc-type").append("<option value=''>선택</option>");
								for(var i=0; i<procList.length; i++)
								{
									$("#js-indus-prod-std-reg-proc-type").append("<option value='"+procList[i].code+"'>"+procList[i].codeNm+"</option>");
								}
								
								//시간 단위 리스트	
								var cureCondTimeUnit = response.rs.cureCondTimeUnit;
								$("#js-indus-prod-std-reg-cure-condition-time-unit").find('option').remove();
								$("#js-indus-prod-std-reg-cure-condition-time-unit").append("<option value=''>선택</option>");
								for(var i=0; i<cureCondTimeUnit.length; i++)
								{
									$("#js-indus-prod-std-reg-cure-condition-time-unit").append("<option value='"+cureCondTimeUnit[i].code+"'>"+cureCondTimeUnit[i].codeNm+"</option>");
								}
								
								//희석제 콤보 리스트	
								var diluList = response.rs.diluList;
								$("#js-indus-prod-std-reg-dilu").find('option').remove();
								$("#js-indus-prod-std-reg-dilu").append("<option value=''>선택</option>");
								for(var i=0; i<diluList.length; i++)
								{
									$("#js-indus-prod-std-reg-dilu").append("<option value='"+diluList[i].code+"'>"+diluList[i].codeNm+"</option>");
								}
						
								onlyDecimal($('#js-indus-prod-std-reg-dft'), 4, 0);
								onlyDecimal($('#js-indus-prod-std-reg-dilu-rate'), 3, 0);
								
								$('#js-indus-prod-std-reg-item-type').val(jsCommon.itemType.getItem().code);
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
							service : 'ind.prodInfo',
							method : 'retrieveIndProdDetail',
							itemType : jsCommon.itemType.getItem().code
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			}
		};
	
	
	
	
	
	var retrieveIndusProdStdInfo = {
			regist : {
				success : function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							
							if(response.rs != null){
								
								//제품구분 콤보 리스트		
								var itemId = response.rs.itemId;
								$("#js-indus-prod-std-reg-item-id").find('option').remove();
								$("#js-indus-prod-std-reg-item-id").append("<option value=''>선택</option>");
								for(var i=0; i<itemId.length; i++)
								{
									$("#js-indus-prod-std-reg-item-id").append("<option value='"+itemId[i].code+"'>"+itemId[i].codeNm+"</option>");
								}
								//액형 콤보 리스트	
								var mixList = response.rs.mixList;
								$("#js-indus-prod-std-reg-part-type").find('option').remove();
								$("#js-indus-prod-std-reg-part-type").append("<option value=''>선택</option>");
								for(var i=0; i<mixList.length; i++)
								{
									$("#js-indus-prod-std-reg-part-type").append("<option value='"+mixList[i].code+"'>"+mixList[i].codeNm+"</option>");
								}
								//제품유형 콤보 리스트	
								var itemList = response.rs.itemList;
								$("#js-indus-prod-std-reg-item-type").find('option').remove();
								$("#js-indus-prod-std-reg-item-type").append("<option value=''>선택</option>");
								for(var i=0; i<itemList.length; i++)
								{
									$("#js-indus-prod-std-reg-item-type").append("<option value='"+itemList[i].code+"'>"+itemList[i].codeNm+"</option>");
								}
								
								//수지 콤보 리스트	
								var resinList = response.rs.resinList;
								$("#js-indus-prod-std-reg-paint-type").find('option').remove();
								$("#js-indus-prod-std-reg-paint-type").append("<option value=''>선택</option>");
								for(var i=0; i<resinList.length; i++)
								{
									$("#js-indus-prod-std-reg-paint-type").append("<option value='"+resinList[i].code+"'>"+resinList[i].codeNm+"</option>");
								}
								//광택 콤보 리스트	
								var glossList = response.rs.glossList;
								$("#js-indus-prod-std-reg-gloss-con").find('option').remove();
								$("#js-indus-prod-std-reg-gloss-con").append("<option value=''>선택</option>");
								for(var i=0; i<glossList.length; i++)
								{
									$("#js-indus-prod-std-reg-gloss-con").append("<option value='"+glossList[i].code+"'>"+glossList[i].codeNm+"</option>");
								}
								
								//공정 콤보 리스트	
								var procList = response.rs.procList;
								$("#js-indus-prod-std-reg-proc-type").find('option').remove();
								$("#js-indus-prod-std-reg-proc-type").append("<option value=''>선택</option>");
								for(var i=0; i<procList.length; i++)
								{
									$("#js-indus-prod-std-reg-proc-type").append("<option value='"+procList[i].code+"'>"+procList[i].codeNm+"</option>");
								}
								
								//시간 단위 리스트	
								var cureCondTimeUnit = response.rs.cureCondTimeUnit;
								$("#js-indus-prod-std-reg-cure-condition-time-unit").find('option').remove();
								$("#js-indus-prod-std-reg-cure-condition-time-unit").append("<option value=''>선택</option>");
								for(var i=0; i<cureCondTimeUnit.length; i++)
								{
									$("#js-indus-prod-std-reg-cure-condition-time-unit").append("<option value='"+cureCondTimeUnit[i].code+"'>"+cureCondTimeUnit[i].codeNm+"</option>");
								}
								
								//희석제 콤보 리스트	
								var diluList = response.rs.diluList;
								$("#js-indus-prod-std-reg-dilu").find('option').remove();
								$("#js-indus-prod-std-reg-dilu").append("<option value=''>선택</option>");
								for(var i=0; i<diluList.length; i++)
								{
									$("#js-indus-prod-std-reg-dilu").append("<option value='"+diluList[i].code+"'>"+diluList[i].codeNm+"</option>");
								}
								
								var stdInfo = response.rs.stdInfo;
								var specInfo = response.rs.specInfo;;
								var fileArr = response.rs.file;
								indusProdStdInfoRegPopupFileSaveHandler.attachFileHandler.setItems(fileArr || []);
								

								
								if(stdInfo != null){
									$('#js-indus-prod-std-reg-item-type').val(stdInfo[0].itemType);
									$('#js-indus-prod-std-reg-qcode').val(stdInfo[0].qcode);
									$('#js-indus-prod-std-reg-qcode-nm').val(stdInfo[0].qcodeNm);
									$('#js-indus-prod-std-reg-qcode-view').val(stdInfo[0].qcodeView);
									$('#js-indus-prod-std-reg-part-type').val(stdInfo[0].mixId);
									$('#js-indus-prod-std-reg-part-b').val(stdInfo[0].hdItems);
									$('#js-indus-prod-std-reg-part-b-nm').val(stdInfo[0].hdItemsNm);
									$('#js-indus-prod-std-reg-part-b-view').val(stdInfo[0].hdCodeView);
									$('#js-indus-prod-std-reg-proc-type').val(stdInfo[0].procType);
									$('#js-indus-prod-std-reg-item-id').val(stdInfo[0].itemId);
									$('#js-indus-prod-std-reg-paint-type').val(stdInfo[0].paintType);
									$('#js-indus-prod-std-reg-gloss-con').val(stdInfo[0].glCond);
								}
								
								if(specInfo != null && specInfo.length>0){
										$('#js-indus-prod-std-reg-svr').val(specInfo[0].svr);
										$('#js-indus-prod-std-reg-dft').val(specInfo[0].dft);
										$('#js-indus-prod-std-reg-setting-time').val(specInfo[0].setTime);
										$('#js-indus-prod-std-reg-cure-condition-temp').val(specInfo[0].cureCondTemp);
										$('#js-indus-prod-std-reg-cure-condition-time').val(specInfo[0].cureCondTime);
										$('#js-indus-prod-std-reg-cure-condition-time-unit').val(specInfo[0].cureCondTimeUnit);	
										$('#js-indus-prod-std-reg-dilu').val(specInfo[0].diluent);
										$('#js-indus-prod-std-reg-dilu-rate').val(specInfo[0].diluentRate);
										$('#js-indus-prod-std-reg-recom-visc').val(specInfo[0].viscGran);
										$('#js-indus-prod-std-reg-spray-tip').val(specInfo[0].sprayTip);
										$('#js-indus-prod-std-reg-air-pressure').val(specInfo[0].airPressure);	
										$('#js-indus-prod-std-reg-prod-spec-info').val(specInfo[0].remark);
								}
	
								onlyDecimal($('#js-indus-prod-std-reg-dft'), 4, 0);
								onlyDecimal($('#js-indus-prod-std-reg-dilu-rate'), 3, 0);
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
				request : function(qcode) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					
					var params = {
							service : 'ind.prodInfo',
							method : 'retrieveIndProdDetail',
							itemType : jsCommon.itemType.getItem().code,
							qcode : qcode
					};
					
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			}
		};
	
		var indusProdStdInfoRegPopupFileSaveHandler = {
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
									if(!$("#js-indus-prod-std-reg-fold-button").hasClass("on")){
										$("#js-indus-prod-std-reg-fold-button").click();
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
						console.log('Your browser does not support file api');
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
	
											app.message.confirm({
												  title             : '<spring:message code="TODO.KEY" text="첨부파일 삭제"/>'
												, message           : '<spring:message code="TODO.KEY" text="삭제 하시겠습니까?"/>'
												, confirmButtonText : '<spring:message code="TODO.KEY" text="삭제"/>'
												, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
												, callback          : {
													confirm: function() {
														removeFileHandler.request($el, seqFile);
													}
												}
											});
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
							seqFile: data[i].seqIndStdItemsFile,
							docNo: data[i].docNo,
							filePath: data[i].filePath,
							transFilename: data[i].transFile,
							isConvertCompleted: data[i].webOfficeConvYn,
							webOfficePath: data[i].webOfficePath,
							webOfficeName: data[i].webOfficeName
						});
						
						sumFileSize += parseInt(data[i].fileSize);
					}
					
					$('#js-indus-prod-std-reg-sum-file-size').html('<spring:message code="TODO.KEY" text="첨부파일크기 : "/>' + convFileSize(sumFileSize));
					
					this.attachment.$htmlTemplateContainer.empty().append(this.attachment.htmlTemplate({items: items}));
					
					if(items.length > 0 && !$("#js-indus-prod-std-reg-fold-button").hasClass("on")){
						$("#js-indus-prod-std-reg-fold-button").click();
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
						service: 'ind.common',
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
						service: 'ind.prodInfo',
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
												// MASTER LIST 재조회							
												$("#js-indus-prod-std-reg-close-button").click();
												if(typeof retrieveIndusStdProdInfo !== 'undefined'){
													retrieveIndusStdProdInfo.request();					
												}
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
					
					
					formData.append('service'        		, 'ind.prodInfo');
					formData.append('method'        		, 'saveIndProdInfo');
					formData.append('itemType'      		, param.itemType);               
					formData.append('qcode'          		, param.qcode);                
					formData.append('qcodeNm'          		, param.qcodeNm);       
					formData.append('mixId'        			, param.partType);    
					formData.append('procType'        		, param.procType);  
					formData.append('hdItems'       		, param.partb);     
					formData.append('hdItemsNm'       		, param.partbNm);      
					formData.append('itemId'       			, param.itemId);      
					formData.append('paintType'       		, param.paintType);       
					formData.append('glCond'       			, param.glossCon);       
					formData.append('svr'      				, param.svr);      
					formData.append('dft'        			, param.dft);       
					formData.append('setTime'    			, param.settingTime);       
					formData.append('cureCondTemp'       	, param.cureCondTemp);     
					formData.append('cureCondTime'       	, param.cureCondTime);     
					formData.append('cureCondTimeUnit'      , param.cureCondTimeUnit);       
					formData.append('diluent'     			, param.dilu);       
					formData.append('diluentRate'       	, param.diluRate);       
					formData.append('viscGran'     			, param.recomVisc);       
					formData.append('sprayTip'       		, param.sprayTip);       
					formData.append('airPressure'       	, param.airPressure);       
					formData.append('remark'       			, param.prodSpecInfo); 
					
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
				
				$('#js-indus-prod-std-reg-attach-file-target').off().on('change', {attachment: this.attachFileHandler.attachment}, this.attachFileHandler.selected);
				$('#js-indus-prod-std-reg-attach-file').off().on('click', {selectorTarget: '#js-indus-prod-std-reg-attach-file-target'}, this.attachFileHandler.click);
				
				// ------------------------------------
				// 파일 삭제 이벤트 바인딩
				// ------------------------------------
				$('#js-indus-prod-std-reg-attach-file-template-container').off().on('click', '.js-indus-prod-std-reg-attach-file-remove', {
					classTarget: '.js-indus-prod-std-reg-attach-file-item'
						, attachment: this.attachFileHandler.attachment
						, removeFileHandler: this.removeFileHandler
					}
					, this.attachFileHandler.remove
				);
				
				// ------------------------------------
				// 파일 보기 이벤트 바인딩
				// ------------------------------------
				$('#js-indus-prod-std-reg-attach-file-template-container').on('click', '.js-indus-prod-std-reg-attach-file-show', {showFileHandler: this.showFileHandler}, this.attachFileHandler.show);
				
				// ------------------------------------
				// 파일 보기 이벤트 바인딩
				// ------------------------------------
				$('#js-indus-prod-std-reg-attach-file-template-container').on('click', '.js-indus-prod-std-reg-attach-file-download', this.downloadHandler.request);
				
				// ------------------------------------
				// Handlebars 템플릿 초기화
				// ------------------------------------
				
				try {
					var $source = $('#js-indus-prod-std-reg-attach-file-template');
					
					if ($source.length) {
						this.attachFileHandler.attachment.$htmlTemplateContainer = $('#js-indus-prod-std-reg-attach-file-template-container');
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
</script>