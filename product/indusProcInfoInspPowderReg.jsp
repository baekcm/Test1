<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.06.26] 공업 공통 팝업 HTML 엘리먼트" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="wp-dim-layer">
    <div class="wp-dimBg"></div>
    <div id="js-industry-indus-proc-info-powder-detail-popup" class="wp-pop-layer wp-pop-w940 wp-box-sizing wp-car-popup">
    	<div class="wp-pop-title">
    		<h1><spring:message code="TODO.KEY" text="거래선 공정정보 등록"/></h1>
    		<button type="button" id="js-indus-proc-info-reg-powder-popup-close-button" class="wp-btn-close-layer wp-spr-btn"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
    	</div>
        <div class="wp-pop-conts">
			<!-- scroll Area -->
			<div class="wp-pop-cont-scrollable">
		 		<!--content //-->
				<!-- 기본 정보 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="기본 정보"/></h2>
				<div class="wp-table-st1 wp-issue-apply">
					<table>
						<caption><spring:message code="TODO.KEY" text="기본 정보"/></caption>
						<colgroup>
							<col style="width:13%">
							<col style="width:20%">
							<col style="width:13%">
							<col style="width:20%">
							<col style="width:14%">
							<col style="width:20%">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="제품유형"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd100p"> 
										<select id="js-indus-proc-info-reg-powder-pop-item-type-combo" title="항목 개수 설정" disabled="disabled"></select>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="거래선"/></th>
								<td>
									<div class="wp-ui-select wp-wd100p">
										<select id="js-indus-proc-info-reg-powder-pop-cust-combo" title=""></select>
									</div>	
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도장업체"/></th>
								<td>
									<div class="wp-ui-select wp-wd100p">
										<select id="js-indus-proc-info-reg-powder-pop-paintCust-combo" title="" ></select>
									</div>			
								</td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="공장"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd100p">
										<select id="js-indus-proc-info-reg-powder-pop-factoryId-combo" title="항목 개수 설정"></select>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="측정일자"/></th>
								<td><input type="text" name="" id="js-indus-proc-info-reg-powder-pop-measure-date" title="내용입력" class="wp-inp-datepicker maxdate wp-wd100p" placeholder="날짜입력" value=""></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="측정자"/></th>
								<td>
									<input type="text"    id="js-indus-proc-info-reg-powder-pop-emp-name" title="내용입력" class="wp-wd108" value="${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}" disabled="disabled">
									<input type="hidden"  id="js-indus-proc-info-reg-powder-pop-emp" value="${sessionScope.LoginUserInfo.empNum}" />
									<input type="hidden"  id="js-indus-proc-info-reg-powder-pop-session-emp"   value="${sessionScope.LoginUserInfo.empNum}">
									<input type="hidden"  id="js-indus-proc-info-reg-powder-pop-session-emp-name"  value="${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}">
									<button type="button" id="js-indus-proc-info-reg-powder-pop-emp-search-button" data-link="js-industry-emp-retrieve-popup" data-depth="2" class="wp-btn small gray cr3 wp-btn-pop">조회</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //기본 정보 -->
				<!-- 라인 정보 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="라인 정보"/></h2>
				<div class="wp-table-st1 wp-issue-apply">
					<table>
						<caption><spring:message code="TODO.KEY" text="라인 정보"/></caption>
						<colgroup>
							<col style="width:13%">
							<col style="width:87%">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="적용 라인"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd160">
										<select title="" id="js-indus-proc-info-reg-powder-pop-line-combo"></select>
									</div>								
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //라인 정보 -->
				<!-- 소지 및 전처리 정보 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="소지 및 전처리 정보"/></h2>
				<div class="wp-table-st1 wp-issue-apply">
					<table>
						<caption><spring:message code="TODO.KEY" text="소지 및 전처리 정보"/></caption>
						<colgroup>
							<col style="width:13%">
							<col style="width:20%">
							<col style="width:13%">
							<col style="width:20%">
							<col style="width:14%">
							<col style="width:20%">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="적용 소지"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd100p">
										<div class="wp-ui-select wp-wd100p">
											<select title="항목 개수 설정" id="js-indus-proc-info-reg-powder-pop-appl-material-combo">
											</select>
										</div>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="소지 두께(mm)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-mat-thickness" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="소지 폭(mm)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-mat-width" name="" title="내용입력"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="수요가"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-demand" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="발주처"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-buyer" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="소지용도"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd100p">
										<select title="항목 개수 설정" id="js-indus-proc-info-reg-powder-pop-material-use-combo"></select>
									</div>
								</td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="소재 설치 현장명"/></th>
								<td colspan="5" class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-material-mat-set-site" name="" title="내용입력"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //소지 및 전처리 정보 -->
				<!-- 공정 정보 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="공정 정보"/></h2>
				<div class="wp-table-st1 wp-issue-apply">
					<table>
						<caption><spring:message code="TODO.KEY" text="공정 정보"/></caption>
						<colgroup>
							<col style="width:13%">
							<col style="width:87%">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="적용 공정"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd160">
										<select title="항목 개수 설정" id="js-indus-proc-info-reg-powder-pop-proc-type-combo"></select>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //공정 정보 -->
				<!-- 제품 정보 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="제품 정보"/></h2>
				<div class="wp-table-st1 wp-issue-apply">
					<table>
						<caption><spring:message code="TODO.KEY" text="제품 정보"/></caption>
						<colgroup>
							<col style="width:13%">
							<col style="width:20%">
							<col style="width:13%">
							<col style="width:20%">
							<col style="width:14%">
							<col style="width:20%">
						</colgroup>
						<tbody>
							<tr id="js-indus-proc-info-reg-powder-pop-lotList-append">
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도료 구분"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd100p">
										<select title="항목 개수 설정" id="js-indus-proc-info-reg-powder-pop-paint-id-combo"></select>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도료 수지 타입"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd100p">
										<select title="항목 개수 설정" id="js-indus-proc-info-reg-powder-pop-paint-resin-id-combo"></select>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="피도물 외관<br>(오염여부등)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-object-state" name="" title="내용입력"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="제품 생산량(㎏)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-prod-output" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="제품 저장 기간<br>(개월)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-prod-storage-term" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="피도물 온도(℃)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-object-temp" name="" title="내용입력"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //제품 정보 -->
				<!-- 공정 Coating 정보 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="공정 Coating 정보"/></h2>
				<div class="wp-table-st1 wp-issue-apply">
					<table>
						<caption><spring:message code="TODO.KEY" text="공정 Coating 정보"/></caption>
						<colgroup>
							<col style="width:13%">
							<col style="width:20%">
							<col style="width:13%">
							<col style="width:20%">
							<col style="width:14%">
							<col style="width:20%">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도장 압력(Bar)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-coat-press"    name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="토출량(Bar)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-discharge"     name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="패턴폭(cm)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-pattern-width" name="" title="내용입력"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도장 전압(KV)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-coat-voltage" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="예열기 설정 온도<br>(℃)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-pre-heater-temp" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="예열기 통과 시간<br>(min)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-pre-heater-time" name="" title="내용입력"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="건조로 통과 시간<br>(min)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-oven-time" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="건조로 설정 온도<br>(센서값 ℃)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-oven-temp" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="분위기 온도<br>(센서값 ℃)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-atmos-temp" name="" title="내용입력"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="Target Coating Thickness(㎛)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-target-thickness" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="Pitch time(sec)"/></th>
								<td class="wp-al" colspan="3"><input type="text" id="js-indus-proc-info-reg-powder-pop-pitch-sec" name="" title="내용입력" class="wp-wd160"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //공정 Coating 정보 -->
				<!-- 환경 조건 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="환경 조건"/></h2>
				<div class="wp-table-st1 wp-issue-apply">
					<table>
						<caption><spring:message code="TODO.KEY" text="환경 조건"/></caption>
						<colgroup>
							<col style="width:13%">
							<col style="width:20%">
							<col style="width:13%">
							<col style="width:20%">
							<col style="width:14%">
							<col style="width:20%">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도장실 온도(℃)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-coat-room-temp" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도장실 습도(%)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-coat-room-hum" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="작업자 환경<br>(피복착용,오염)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-worker-state" name="" title="내용입력"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도장공정 청결<br>상태(집진설비)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-powder-pop-clean-state" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도료 이송 조건<br>5~25℃, 85%↓"/></th>
								<td class="wp-al">
									<input type="text" name="" id="js-indus-proc-info-reg-powder-pop-move-state-temp" title="내용입력" class="wp-wd49p">
									<input type="text" name="" id="js-indus-proc-info-reg-powder-pop-move-state-humidity" title="내용입력" class="wp-wd49p">
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도료 보관 조건<br>5~25℃,85%↓"/></th>
								<td class="wp-al">
									<input type="text" name="" id="js-indus-proc-info-reg-powder-pop-stock-state-temp" title="내용입력" class="wp-wd49p">
									<input type="text" name="" id="js-indus-proc-info-reg-powder-pop-stock-state-humidity" title="내용입력" class="wp-wd49p">
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //환경 조건 -->
				<!-- 특이사항 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="특이사항"/></h2>
				<div class="wp-form-writer">
					<div class="wp-area-editor intable">
						<!-- 나모 Editor -->
						
						<textarea id=js-indus-proc-info-reg-powder-pop-editor name="js-indus-proc-info-reg-powder-pop-editor"></textarea>
						<script type="text/javascript" src="/crosseditor/js/namo_scripteditor.js"></script>
						<script type="text/javascript">
						// ------------------------------------
						// namo web editor
						// ------------------------------------
						var indusProcInfoRegPowderPopEditor = null;
						
						var indusProcInfoRegPowderPopEditorParams = {
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
						
						var initIndusProcInfoRegPowderPopEditor = function() {
							// ------------------------------------
							// 나모 Editor 인스턴스 생성
							// ------------------------------------
						    if (indusProcInfoRegPowderPopEditor == null) {
						    	indusProcInfoRegPowderPopEditor = new NamoSE('js-indus-proc-info-reg-powder-pop-editor');
						    	indusProcInfoRegPowderPopEditor.params = indusProcInfoRegPowderPopEditorParams;
						    	indusProcInfoRegPowderPopEditor.EditorStart();
						    }
						};
						
						initIndusProcInfoRegPowderPopEditor();
						
						</script>
					</div>
				</div>
				<!-- //특이사항 -->
			<!-- // scroll Area -->
			</div>
		
			<div class="wp-btn-area">
				<button type="button" id="js-indus-proc-info-reg-powder-popup-save-button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="저장"/></button>
				<input type="hidden"  id="js-indus-proc-info-reg-powder-pop-docNo"     value="">
				<input type="hidden"  id="js-indus-proc-info-reg-powder-pop-orgDocNo"  value="">
				<input type="hidden"  id="js-indus-proc-info-reg-powder-pop-item-type" value="">
			</div>
       	</div>
   	</div>
</div>
<!-- 제품명/Lot No. -->
<script id="js-template-indus-proc-info-reg-powder-pop-lotList-list" type="text/x-handlebars-template">
	<tr name="js-indus-proc-info-reg-powder-pop-lot-list-tr" dataIndex="{{index}}">
		{{#setLotListHeader}}
		<th class="wp-ar" rowspan="2" id="js-indus-proc-info-reg-powder-pop-lot-list-th"><spring:message code="TODO.KEY" text="제품명/Lot No."/></th>
		{{/setLotListHeader}}
		<td colspan="5" class="wp-al">
			<button type="button" name="js-indus-proc-info-reg-powder-pop-lot-list-prod-button" dataIndex="{{index}}" data-link="js-prod-info-popup" data-depth="2" class="wp-btn gray cr3 wp-mr10 wp-btn-pop"><spring:message code="TODO.KEY" text="제품코드 조회"/></button>
			<input type="text" name="js-indus-proc-info-reg-powder-pop-lot-list-prod-code" dataIndex="{{index}}" value="{{items}}"    class="wp-wd110" disabled="disabled">
			<input type="text" name="js-indus-proc-info-reg-powder-pop-lot-list-prod-name" dataIndex="{{index}}" value="{{itemsNm}}"  class="wp-wd160" disabled="disabled">
			<div class="wp-style-sel wp-wd293 wp-inblock">
				<ul name="js-indus-proc-info-reg-powder-pop-lot-list-lot-no-ul" dataIndex="{{index}}"></ul>
				<input type="text" name="js-indus-proc-info-reg-powder-pop-lot-no" dataIndex="{{index}}" class="wp-nodesign">
			</div>
		</td>
	</tr>
</script>

<script type="text/javascript">

	var indusProcInfoRegPowderPopupLotListTemplate;
	var initIndusProcInfoRegPowderPopup = function(docNo, itemType) {
		 
		var source = $('#js-template-indus-proc-info-reg-powder-pop-lotList-list').html();
		indusProcInfoRegPowderPopupLotListTemplate = Handlebars.compile(source);
		 
		Handlebars.registerHelper('setLotListHeader', function(options) { 
			if (this.index == '1'){
				return options.fn(this);
			} else {
				return options.inverse(this);
			}
		});		
	
		$("[name=js-indus-proc-info-reg-powder-pop-lot-list-tr]").remove();

		initDataIndusProcInfoRegPowderPopup();
		
		var today = fn_getTodayDate();
		
		$("#js-indus-proc-info-reg-pop-measure-date").val(today);
		
		// 상세조회(수정)
		$("#js-indus-proc-info-reg-powder-pop-docNo").val(docNo);
		$("#js-indus-proc-info-reg-powder-pop-item-type").val(itemType);
		
		// 상세조회 
		retrieveIndProcPowderDetail.request(docNo, itemType);
		
		onlyDecimal($('#js-indus-proc-info-reg-powder-pop-coat-press'), 5, 1);
		onlyDecimal($('#js-indus-proc-info-reg-powder-pop-discharge'), 5, 1);
		onlyDecimal($('#js-indus-proc-info-reg-powder-pop-pattern-width'), 5, 1);
		onlyDecimal($('#js-indus-proc-info-reg-powder-pop-atmos-temp'), 5, 1);
		onlyDecimal($('#js-indus-proc-info-reg-powder-pop-object-temp'), 5, 1);
		onlyDecimal($('#js-indus-proc-info-reg-powder-pop-prod-storage-term'), 5, 1);

		
		onlyInteger($('#js-indus-proc-info-reg-powder-pop-coat-room-temp'));
		onlyInteger($('#js-indus-proc-info-reg-powder-pop-coat-room-hum'));
		onlyInteger($('#js-indus-proc-info-reg-powder-pop-target-thickness'));
		onlyInteger($('#js-indus-proc-info-reg-powder-pop-pitch-sec'));
		onlyInteger($('#js-indus-proc-info-reg-powder-pop-move-state-temp'));
		onlyInteger($('#js-indus-proc-info-reg-powder-pop-move-state-humidity'));
		onlyInteger($('#js-indus-proc-info-reg-powder-pop-stock-state-temp'));
		onlyInteger($('#js-indus-proc-info-reg-powder-pop-stock-state-humidity'));
		onlyInteger($('#js-indus-proc-info-reg-powder-pop-pre-heater-temp'));
		onlyInteger($('#js-indus-proc-info-reg-powder-pop-pre-heater-time'));
		onlyInteger($('#js-indus-proc-info-reg-powder-pop-oven-time'));
		onlyInteger($('#js-indus-proc-info-reg-powder-pop-oven-temp'));
		
		indusProcInfoSearchPowderListEvent(docNo, itemType);
	};
 
	
	//-------------------------------------------------
	// 데이터 초기화
	//-------------------------------------------------
	var initDataIndusProcInfoRegPowderPopup = function(){ console.log($("#js-indus-proc-info-reg-powder-pop-session-emp-name").val());
		$("#js-indus-proc-info-reg-powder-pop-emp").val($("#js-indus-proc-info-reg-powder-pop-session-emp").val());
		$("#js-indus-proc-info-reg-powder-pop-emp-name").val($("#js-indus-proc-info-reg-powder-pop-session-emp-name").val());
		$("#js-indus-proc-info-reg-powder-pop-measure-date").val(fn_getTodayDate()).mask('9999-99-99');
		$("#js-indus-proc-info-reg-powder-pop-docNo").val('');
		$("#js-indus-proc-info-reg-powder-pop-orgDocNo").val('');
		
		window.indusProcInfoRegPowderPopEditor.SetBodyValue('');
		
	};	
	
	
	//-------------------------------------------------
	// 저장 전 Validation Check
	//-------------------------------------------------
	var validationCheckIndusProcInfoRegPowderPopup = function(){
		
		var itemType        	= "";        // 제품유형
		var cust            	= "";        // 거래선
		var pcust		       	= "";        // 도장업체
		var factoryId       	= "";        // 공장
		var lineId    			= "";        // 라인
		var itemList        	= [];        // 제품리스트
		var lotList         	= [];        // Lot리스트
		
		var histDescription 	= "";        // 내용
		
		itemType            	= $('#js-indus-proc-info-reg-powder-pop-item-type-combo').val();
		cust               		= $('#js-indus-proc-info-reg-powder-pop-cust-combo').val();
		pcust                	= $('#js-indus-proc-info-reg-powder-pop-paintCust-combo').val();
		factoryId           	= $('#js-indus-proc-info-reg-powder-pop-factoryId-combo').val();
		lineId         			= $('#js-indus-proc-info-reg-powder-pop-line-combo').val();
		                                 
		histDescription 		= window.indusProcInfoRegPowderPopEditor.GetBodyValue();
		
		// 제품리스트, Lot리스트 정보
		$('[name=js-indus-proc-info-reg-powder-pop-lot-list-prod-code]').each(function(){
			var dataIndex = $(this).attr("dataIndex");
			var items     = $(this).val();
			
			if(!app.utils.isEmpty(items)){
				itemList.push({items: items});
				$('[name=js-indus-proc-info-reg-powder-pop-lot-list-lot-no-ul][dataIndex=' + dataIndex + ']').find("li").each(function(){
					var lotNo = $(this).attr("lotNo");
					if(!app.utils.isEmpty(lotNo)){
						lotList.push({
								items: items
							  , lotNo: lotNo
						});
					}
				});
			}
		});			
		
		// 필수값 입력 여부 체크
		if(app.utils.isEmpty(itemType)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림" />'
				, message           : '<spring:message code="TODO.KEY" text="제품유형 필수입력 항목입니다." />'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인" />'
				, callback          : {
					confirm: function() {
						$('#js-indus-proc-info-reg-powder-pop-item-type-combo').focus();
					}
				}
			});
			return false;
		}
		
		if(app.utils.isEmpty(cust)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="거래선 필수입력 항목입니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$('#js-indus-proc-info-reg-powder-pop-cust-combo').focus();
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(pcust)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="도장업체 필수입력 항목입니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$('#js-indus-proc-info-reg-powder-pop-paintCust-combo').focus();
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(factoryId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공장 필수입력 항목입니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$('#js-indus-proc-info-reg-powder-pop-factoryId-combo').focus();
					}
				}
			});
			return;
		}
		
		if(app.utils.isEmpty(lineId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="라인 필수입력 항목입니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$('#js-indus-proc-info-reg-powder-pop-line-combo').focus();
					}
				}
			});
			return;
		}
		
		return true;
		
	};
	
	// ++++++++++++++++++++++++++++++++++++++++++++++++
	// 측정자 팝업 선택값 바인딩
	// ++++++++++++++++++++++++++++++++++++++++++++++++
	var applyIndusProcInfoRegPowderPopupEmpData = function(data){
		$("#js-indus-proc-info-reg-powder-pop-emp").val(data.emp);
		$("#js-indus-proc-info-reg-powder-pop-emp-name").val(data.empNm);
	}
	
	var indusProcInfoSearchPowderListEvent = function(docNo, itemType) {
		
		// 측정자 조회 버튼 클릭
		$('#js-indus-proc-info-reg-powder-pop-emp-search-button').off().on('click', function(){
			initIndustryEmpRetrievePopup('js-indus-proc-info-reg-powder-popup');
		});
		
		// 저장 버튼 클릭
		$("#js-indus-proc-info-reg-powder-popup-save-button").off().on('click', function() {
			// Validation Check
			if(!validationCheckIndusProcInfoRegPowderPopup()){
				return;
			}
			
			var docNo				= $('#js-indus-proc-info-reg-powder-pop-docNo').val();		 // 문서번호
			var orgDocNo        	= $('#js-indus-proc-info-reg-powder-pop-orgDocNo').val();    // 원글 문서번호
			
			// 기본정보
			var itemType        	= $('#js-indus-proc-info-reg-powder-pop-item-type-combo').val();    // 제품유형
			var cust            	= $('#js-indus-proc-info-reg-powder-pop-cust-combo').val();        	// 거래선
			var pcust      		 	= $('#js-indus-proc-info-reg-powder-pop-paintCust-combo').val();    // 도장업체
			var factoryId       	= $('#js-indus-proc-info-reg-powder-pop-factoryId-combo').val();    // 공장
			var measureDate        	= $('#js-indus-proc-info-reg-powder-pop-measure-date').val();		// 측정일자
			var measureEmp         	= $("#js-indus-proc-info-reg-powder-pop-emp").val();        		// 측정자
			
			// 라인정보
			var lineId       		= $('#js-indus-proc-info-reg-powder-pop-line-combo').val();        	// 라인코드
			
			// 소지 및 전처리 정보
			var applMaterial		= $('#js-indus-proc-info-reg-powder-pop-appl-material-combo').val();	// 적용소지
			var matThickness		= $('#js-indus-proc-info-reg-powder-pop-mat-thickness').val();		 	// 소지 두께(mm)
			var matWidth			= $('#js-indus-proc-info-reg-powder-pop-mat-width').val();		 		// 소지 폭(mm)
			var demand				= $('#js-indus-proc-info-reg-powder-pop-demand').val();		 			// 수요가
			var buyer				= $('#js-indus-proc-info-reg-powder-pop-buyer').val();		 			// 발주처
			var materialUse			= $('#js-indus-proc-info-reg-powder-pop-material-use-combo').val();		// 소지용도
			var matSetSite			= $('#js-indus-proc-info-reg-powder-pop-material-mat-set-site').val();	// 소재 설치 현장명
			
			// 공정정보 
			var procId				= $('#js-indus-proc-info-reg-powder-pop-proc-type-combo').val();		 // 적용 공정
			
			// 공정 Coating 정보
			var coatPress			= $('#js-indus-proc-info-reg-powder-pop-coat-press').val();		 	// 도장 압력(Bar)
			var discharge			= $('#js-indus-proc-info-reg-powder-pop-discharge').val();		 	// 토출량(Bar)
			var patternWidth		= $('#js-indus-proc-info-reg-powder-pop-pattern-width').val();		// 패턴폭(cm)
			var coatVoltage			= $('#js-indus-proc-info-reg-powder-pop-coat-voltage').val();		// 도장 전압(KV)
			var preHeaterTemp		= $('#js-indus-proc-info-reg-powder-pop-pre-heater-temp').val();	// 예열기 설정 온도(℃)
			var preHeaterTime		= $('#js-indus-proc-info-reg-powder-pop-pre-heater-time').val();	// 예열기 통과 시간
			var ovenTime			= $('#js-indus-proc-info-reg-powder-pop-oven-time').val();		 	// 건조로 통과 시간
			var ovenTemp			= $('#js-indus-proc-info-reg-powder-pop-oven-temp').val();		 	// 건조로 설정 온도
			var atmosTemp			= $('#js-indus-proc-info-reg-powder-pop-atmos-temp').val();		 	// 분위기 온도
			var targetThickness 	= $('#js-indus-proc-info-reg-powder-pop-target-thickness').val();	// Target Coating Thickness  
			var pitchSec 			= $('#js-indus-proc-info-reg-powder-pop-pitch-sec').val();		 	// Pitch time(sec)

			// 제품 정보
			var itemList        	= [];        // 제품리스트
			var lotList         	= [];        // Lot리스트		
			var paintId 			= $("#js-indus-proc-info-reg-powder-pop-paint-id-combo").val(); 		// 도료 구분   				 
	        var paintResinId 		= $("#js-indus-proc-info-reg-powder-pop-paint-resin-id-combo").val(); 	// 도료 수지 타입	 		 
	        var objectState 		= $("#js-indus-proc-info-reg-powder-pop-object-state").val(); 			// 피도물 외관(오염여부등)	 	
	        var prodOutput 			= $("#js-indus-proc-info-reg-powder-pop-prod-output").val(); 			// 제품 생산량    			
	        var prodStorageTerm	 	= $("#js-indus-proc-info-reg-powder-pop-prod-storage-term").val(); 		// 제품 저장 기간    		
	        var objectTemp 			= $("#js-indus-proc-info-reg-powder-pop-object-temp").val(); 			// 피도물 온도    			
			
	    	// 환경 조건 
			var coatRoomTemp		= $("#js-indus-proc-info-reg-powder-pop-coat-room-temp").val();		 	// 도장실<br>온도(℃)
			var coatRoomHum 		= $("#js-indus-proc-info-reg-powder-pop-coat-room-hum").val();		 	// 도장실<br>습도(%)
			var workerState			= $("#js-indus-proc-info-reg-powder-pop-worker-state").val();		 	// 작업자환경
			var cleanState  		= $("#js-indus-proc-info-reg-powder-pop-clean-state").val();		 	// 도장공정 청결
			var moveStateTemp		= $("#js-indus-proc-info-reg-powder-pop-move-state-temp").val();		// 도료이송조건
			var moveStateHumidity	= $("#js-indus-proc-info-reg-powder-pop-move-state-humidity").val();	// 도료이송조건
			var stockStateTemp		= $("#js-indus-proc-info-reg-powder-pop-stock-state-temp").val();		// 도료보관조건
			var stockStateHumidity	= $("#js-indus-proc-info-reg-powder-pop-stock-state-humidity").val();	// 도료보관조건
			var remark 				= window.indusProcInfoRegPowderPopEditor.GetBodyValue();       			// 특이사항
			
			
			// 제품리스트, Lot리스트 정보
			$('[name=js-indus-proc-info-reg-powder-pop-lot-list-prod-code]').each(function(){
				var dataIndex = $(this).attr("dataIndex");
				var items     = $(this).val();
				if(!app.utils.isEmpty(items)){
					itemList.push({items: items});
					
					$('[name=js-indus-proc-info-reg-powder-pop-lot-list-lot-no-ul][dataIndex=' + dataIndex + ']').find("li").each(function(){
						var lotNo = $(this).attr("lotNo");
						if(!app.utils.isEmpty(lotNo)){
							lotList.push({
									items: items
								  , lotNo: lotNo
							});
						}
					});
				}
			});
			
			// 필수값 입력 여부 체크
			if(app.utils.isEmpty(itemType)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림" />'
					, message           : '<spring:message code="TODO.KEY" text="제품유형 필수입력 항목입니다." />'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인" />'
					, callback          : {
						confirm: function() {
							$('#js-indus-proc-info-reg-powder-pop-item-type-combo').focus();
						}
					}
				});
				return false;
			}
			
			if(app.utils.isEmpty(cust)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="거래선 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-indus-proc-info-reg-powder-pop-cust-combo').focus();
						}
					}
				});
				return;
			}
			
			if(app.utils.isEmpty(pcust)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="도장업체 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-indus-proc-info-reg-powder-pop-paintCust-combo').focus();
						}
					}
				});
				return;
			}
			
			if(app.utils.isEmpty(factoryId)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="공장 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-indus-proc-info-reg-powder-pop-factoryId-combo').focus();
						}
					}
				});
				return;
			}
			
			if(app.utils.isEmpty(lineId)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="라인 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$('#js-indus-proc-info-reg-powder-pop-line-combo').focus();
						}
					}
				});
				return;
			}
			
			
			
			var params = {
					  docNo            		: docNo                        	// 문서번호          
					, orgDocNo         		: orgDocNo                     	// 원글 문서번호          
					, itemType         		: itemType                     	// 제품유형          
					, cust             		: cust                         	// 거래선           
					, pcust        			: pcust                    		// 도장업체          
					, factoryId        		: factoryId                    	// 공장            
					, lineId        		: lineId 		            	// 라인코드            
					, measureDate       	: measureDate                  	// 측정일자          
					, measureEmp        	: measureEmp                    // 담당자
					, procId		        : procId		          		// 적용공정
					, applMaterial          : applMaterial           		// 적용소지
					, matThickness          : matThickness          
					, matWidth 	          	: matWidth 	            
					, demand 	          	: demand 	          	
					, buyer 	          	: buyer 	          	
					, materialUse 	        : materialUse 	        
					, matSetSite 	        : matSetSite 
					, coatPress				: coatPress
					, discharge             : discharge
					, patternWidth          : patternWidth
					, coatVoltage           : coatVoltage
					, preHeaterTemp         : preHeaterTemp
					, preHeaterTime         : preHeaterTime
					, ovenTime          	: ovenTime
					, ovenTemp           	: ovenTemp
					, atmosTemp         	: atmosTemp
					, targetThickness       : targetThickness					
					, pitchSec         		: pitchSec					

					, itemList         		: JSON.stringify(itemList)     	// 제품리스트                     
					, lotList          		: JSON.stringify(lotList )     	// Lot리스트     			
					, paintId         		: paintId        			
					, paintResinId         	: paintResinId   			
					, objectState         	: objectState    			
					, prodOutput         	: prodOutput     			
					, prodStorageTerm       : prodStorageTerm			
					, objectTemp         	: objectTemp     			

					, coatRoomTemp         	: coatRoomTemp       			
					, coatRoomHum         	: coatRoomHum        			
					, workerState         	: workerState        			
					, cleanState         	: cleanState         			
					, moveStateTemp         : moveStateTemp      			
					, moveStateHumidity     : moveStateHumidity  			
					, stockStateTemp        : stockStateTemp     			
					, stockStateHumidity    : stockStateHumidity 
					
					, remark    : remark 
			};			
			
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림" />'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?" />'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인" />'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소" />'
				, callback          : {
					confirm: function() {
						indusProcInfoRegPowderPopupSaveHandler.request(params);
					}
				}
			});
		});
	};
	
	// ------------------------------------------------
	// 제품유형 콤보 조회
	// ------------------------------------------------
	var retrieveIndusPowderItemTypeList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					console.log(" Powder 제품유형 콤보 조회 1 ");
					
					var data = response.rs;
					
					// 분체 팝업 화면 제어
					$('#js-indus-proc-info-reg-powder-pop-item-type-combo').find('option').remove();

					for(var i=0; i < data.length; i++) {
						$('#js-indus-proc-info-reg-powder-pop-item-type-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}	   
					
					$("#js-indus-proc-info-reg-powder-pop-item-type-combo > option[value='"+ jsCommon.itemType.getItem().code +"']").attr("selected", "true");
					var itemType = $('#js-indus-proc-info-reg-powder-pop-item-type-combo').val();
					 
					// 분체 팝업 화면 제어 END
					
					// 제품유형 변경 시 거래선 combo 재조회
					$('#js-indus-proc-info-reg-pop-item-type-combo').off().on("change", function(){
						retrievePowderCustList.request();
						retrievePowderPcustList.request();
						retrievePowderFactoryList.request();
						retrievePowderLineList.request();
						retrievePowderProcList.request();
					});
				} else {
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
				service: 'ind.common',
				method: 'retrieveItemTypeList'
			};

			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};	
	
	// ------------------------------------------------
	// 거래선 콤보 조회
	// ------------------------------------------------
	var retrievePowderCustList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					console.log("powder 거래선 콤보 조회 2 ");
					
					var data = response.rs;
					
					$('#js-indus-proc-info-reg-powder-pop-cust-combo').find('option').remove();
					
					for(var i=0; i < data.length; i++) {
						$('#js-indus-proc-info-reg-powder-pop-cust-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}
				 
					// 거래선 변경 시 도장업체 combo 재조회
					$('#js-indus-proc-info-reg-powder-pop-cust-combo').off().on("change", function(){
						retrievePowderPcustList.request();
						retrievePowderFactoryList.request();
						retrievePowderLineList.request();
						retrievePowderProcList.request();
					});
				} else {
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
		request: function(itemType) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			//alert("retrieveCustList itemType : "+ itemType);
			
			var params = {
				service: 'ind.common',
				method: 'retrieveCustList',
				itemType : $('#js-indus-proc-info-reg-powder-pop-item-type-combo').val()
			};

			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};	
	
	// ------------------------------------------------
	// 도장업체 콤보 조회
	// ------------------------------------------------
	var retrievePowderPcustList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					console.log("retrievePcustList 도장업체 콤보 조회 3 ");
					
					var data = response.rs;
					
					// 본체 팝업 도장업체 제어 
					$('#js-indus-proc-info-reg-powder-pop-paintCust-combo').find('option').remove();
					
					for(var i=0; i < data.length; i++) {
						$('#js-indus-proc-info-reg-powder-pop-paintCust-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}
					
					// 본체 팝업 제어 도장업체 END
					
					// 도장업체 변경 시 공장 combo 재조회
					$('#js-indus-proc-info-reg-powder-pop-paintCust-combo').off().on("change", function(){
						retrievePowderFactoryList.request();
						retrievePowderLineList.request();
						retrievePowderProcList.request();
					});
					
				}
				else
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
		request: function(itemType, cust) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var params = {
				service	 : 'ind.common',
				method	 : 'retrievePcustList',
				itemType : $('#js-indus-proc-info-reg-powder-pop-item-type-combo').val(),
				cust     : $('#js-indus-proc-info-reg-powder-pop-cust-combo').val()
			};

			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};	
	
	// ------------------------------------------------
	// 공장 콤보 조회
	// ------------------------------------------------	
	var retrievePowderFactoryList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					
					console.log("retrieveFactoryList 공장 콤보 조회 4 ");
					
					var data = response.rs;
					 
					$('#js-indus-proc-info-reg-powder-pop-factoryId-combo').find('option').remove();
					
					for(var i=0; i < data.length; i++) {
						$('#js-indus-proc-info-reg-powder-pop-factoryId-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}
					
					// 공장 변경 시 - 라인 combo 재조회
					$('#js-indus-proc-info-reg-powder-pop-factoryId-combo').off().on("change", function(){
						retrievePowderLineList.request();
						retrievePowderProcList.request();
					});
					
				} else {
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
		request: function(itemType, cust, pcust) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var params = {
				service   : 'ind.common',
				method    : 'retrieveFactoryList',
				itemType : $('#js-indus-proc-info-reg-powder-pop-item-type-combo').val(),
				cust     : $('#js-indus-proc-info-reg-powder-pop-cust-combo').val(),
				paintCust : $('#js-indus-proc-info-reg-powder-pop-paintCust-combo').val()
			};
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);				
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	
	// ------------------------------------------------
	// 라인 콤보 조회
	// ------------------------------------------------		
	var retrievePowderLineList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					
					console.log("retrievePowderLineList 라인 콤보 조회 5 ");
					
					var data = response.rs;
					 
					$('#js-indus-proc-info-reg-powder-pop-line-combo').find('option').remove();
					
					for(var i=0; i < data.length; i++) {
						$('#js-indus-proc-info-reg-powder-pop-line-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}
					
					// 라인 변경 시 - 공정 combo 재조회
					$('#js-indus-proc-info-reg-powder-pop-line-combo').off().on("change", function(){
						retrievePowderProcList.request();
					});
					 
				} else {
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
		request: function(itemType, cust, pcust, factoryId) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var params = {
				service   : 'ind.common',
				method    : 'retrieveLineList',
				itemType  : $('#js-indus-proc-info-reg-powder-pop-item-type-combo').val(),
				cust      : $('#js-indus-proc-info-reg-powder-pop-cust-combo').val(),
				paintCust : $('#js-indus-proc-info-reg-powder-pop-paintCust-combo').val(),
				factoryId : $('#js-indus-proc-info-reg-powder-pop-factoryId-combo').val()
			};
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);				
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	
	// 공정 콤보 조회
	var retrievePowderProcList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					
					console.log("POWDER 공정 콤보 조회");
					
					var data = response.rs;
					 
					$('#js-indus-proc-info-reg-powder-pop-proc-type-combo').find('option').remove();
					
					for(var i=0; i < data.length; i++) {
						$('#js-indus-proc-info-reg-powder-pop-proc-type-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}
					
				} else {
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
				service   	: 'ind.common',
				method    	: 'retrieveProcList',
				itemType  	: jsCommon.itemType.getItem().code,
				cust      	: $('#js-indus-proc-info-reg-powder-pop-cust-combo').val(),
				paintCust 	: $('#js-indus-proc-info-reg-powder-pop-paintCust-combo').val(),
				factoryId 	: $('#js-indus-proc-info-reg-powder-pop-factoryId-combo').val(),
				lineId 		: $('#js-indus-proc-info-reg-powder-pop-line-combo').val()
			};
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);				
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	
	// ------------------------------------------------
	// 저장된 항목 조회(거래선 공정정보 상세 조회)
	// ------------------------------------------------
	var retrieveIndProcPowderDetail = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					
					var data = response.rs;
					
					// 제품유형
					retrieveIndusPowderItemTypeList.request();
					
					// 적용소지
					$('#js-indus-proc-info-reg-powder-pop-appl-material-combo').find('option').remove();
					
					for(var i=0; i < data.matKindList.length; i++) {
						$('#js-indus-proc-info-reg-powder-pop-appl-material-combo').append("<option value='"+ data.matKindList[i].code +"'>"+ data.matKindList[i].codeNm +"</option>");
					}
					
					// 소지용도
					$('#js-indus-proc-info-reg-powder-pop-material-use-combo').find('option').remove();
					
					for(var i=0; i < data.materialList.length; i++) {
						$('#js-indus-proc-info-reg-powder-pop-material-use-combo').append("<option value='"+ data.materialList[i].code +"'>"+ data.materialList[i].codeNm +"</option>");
					}
					
					// 적용 공정
					$("#js-indus-proc-info-reg-powder-pop-proc-type-combo").find('option').remove();
					$("#js-indus-proc-info-reg-powder-pop-proc-type-combo").append("<option value=''>전체</option>");
					for(var i=0; i<data.procList.length; i++) {
						$("#js-indus-proc-info-reg-powder-pop-proc-type-combo").append("<option value='"+data.procList[i].code+"'>"+ data.procList[i].codeNm +"</option>");
					}						
					
					// 도료구분 
					$("#js-indus-proc-info-reg-powder-pop-paint-id-combo").find('option').remove();
					for(var i=0; i<data.paintList.length; i++) {
						$("#js-indus-proc-info-reg-powder-pop-paint-id-combo").append("<option value='"+data.paintList[i].code+"'>"+ data.paintList[i].codeNm +"</option>");
					}
					
					// 도료 수지 타입
					$("#js-indus-proc-info-reg-powder-pop-paint-resin-id-combo").find('option').remove();
					for(var i=0; i<data.resinList.length; i++) {
						$("#js-indus-proc-info-reg-powder-pop-paint-resin-id-combo").append("<option value='"+data.resinList[i].code+"'>"+ data.resinList[i].codeNm +"</option>");
					}						
					
					// ----------------------------------------
					// 공통코드   - START
					// ----------------------------------------
 
					if(response.rs.standard.length > 0) {
						
						var standard = response.rs.standard[0];
						
						// 제품 유형
						$('#js-indus-proc-info-reg-powder-pop-item-type-combo').val(standard.itemType);			
						
						retrievePowderCustList.request();
						retrievePowderPcustList.request();
						retrievePowderFactoryList.request();
						retrievePowderLineList.request();
						retrievePowderProcList.request();
						
						// 거래선
						$('#js-indus-proc-info-reg-powder-pop-cust-combo').val(standard.cust);
						retrievePowderPcustList.request();
						
						// 도장업체
						$('#js-indus-proc-info-reg-powder-pop-paintCust-combo').val(standard.pcust);						
						retrievePowderFactoryList.request();
						
						// 공장
						$('#js-indus-proc-info-reg-powder-pop-factoryId-combo').val(standard.factoryId);						
						retrievePowderLineList.request();
						
						// 라인
						if(standard.lineId != null){
							$('#js-indus-proc-info-reg-powder-pop-line-combo').val(standard.lineId);					
						}					


						// 측정일자
						$('#js-indus-proc-info-reg-powder-pop-measure-date').val(standard.measureDate);
						// 측정자
						$('#js-indus-proc-info-reg-powder-pop-emp').val(standard.measureEmp);					
						$('#js-indus-proc-info-reg-powder-pop-emp-name').val(standard.measureEmpNm); // 이름만 필요...현재 "IT생산/품질팀 최형규사원"
						
						// 적용소지
						if(standard.applMaterial != null){
							$('#js-indus-proc-info-reg-powder-pop-appl-material-combo').val(standard.applMaterial);
						}
						// 소지 두께(mm)
						$('#js-indus-proc-info-reg-powder-pop-mat-thickness').val(standard.matThickness);
						
						// 소지 폭(mm)
						$('#js-indus-proc-info-reg-powder-pop-mat-width').val(standard.matWidth);
						
						// 수요가
						$('#js-indus-proc-info-reg-powder-pop-demand').val(standard.demand);
						
						// 발주처
						$('#js-indus-proc-info-reg-powder-pop-buyer').val(standard.buyer);
						
						// 소지용도
						if(standard.materialUse != null){
							$('#js-indus-proc-info-reg-powder-pop-material-use-combo').val(standard.materialUse);
						}					
						// 소재 설치 현장명
						$('#js-indus-proc-info-reg-powder-pop-material-mat-set-site').val(standard.matSetSite);					
						
						
						//================ 환경 조건 
						// 도장실<br>온도(℃)
						$('#js-indus-proc-info-reg-powder-pop-coat-room-temp').val(standard.coatRoomTemp);
						// 도장실<br>습도(%)
						$('#js-indus-proc-info-reg-powder-pop-coat-room-hum').val(standard.coatRoomHum);
						// 작업자환경
						$('#js-indus-proc-info-reg-powder-pop-worker-state').val(standard.workerState);
						// 도장공정 청결
						$('#js-indus-proc-info-reg-powder-pop-clean-state').val(standard.cleanState);
						// 도료이송조건1
						$('#js-indus-proc-info-reg-powder-pop-move-state-temp').val(standard.moveStateTemp);
						// 도료이송조건2
						$('#js-indus-proc-info-reg-powder-pop-move-state-humidity').val(standard.moveStateHumidity);
						// 도료보관조건1
						$('#js-indus-proc-info-reg-powder-pop-stock-state-temp').val(standard.stockStateTemp);
						// 도료보관조건2
						$('#js-indus-proc-info-reg-powder-pop-stock-state-humidity').val(standard.stockStateHumidity);
						// 특이사항
						window.indusProcInfoRegPowderPopEditor.SetBodyValue(standard.remark);		
						
						if(response.rs.detail.length > 0) {
							var detail   = response.rs.detail[0];
							
							// 공정정보
							if(detail.procId != null) {
								$('#js-indus-proc-info-reg-powder-pop-proc-type-combo').val(detail.procId);
							}
							
							//============== 공정 Coating 정보
							// 도장 압력 
							$('#js-indus-proc-info-reg-powder-pop-coat-press').val(detail.coatPress);
							// 토출량 
							$('#js-indus-proc-info-reg-powder-pop-discharge').val(detail.discharge);
							// 패턴폭 
							$('#js-indus-proc-info-reg-powder-pop-pattern-width').val(detail.patternWidth);
							// 도장 전압
							$('#js-indus-proc-info-reg-powder-pop-coat-voltage').val(detail.coatVoltage);
							// 예열기 설정 온도
							$('#js-indus-proc-info-reg-powder-pop-pre-heater-temp').val(detail.preHeaterTemp);
							// 예열기 통과 시간
							$('#js-indus-proc-info-reg-powder-pop-pre-heater-time').val(detail.preHeaterTime);
							// 건조로 통과 시간 
							$('#js-indus-proc-info-reg-powder-pop-oven-time').val(detail.ovenTime);
							// 건조로 설정 온도
							$('#js-indus-proc-info-reg-powder-pop-oven-temp').val(detail.ovenTemp);
							// 분위기 온도
							$('#js-indus-proc-info-reg-powder-pop-atmos-temp').val(detail.atmosTemp);
							// Target Coating Thickness
							$('#js-indus-proc-info-reg-powder-pop-target-thickness').val(detail.targetThickness);
							// Pitch time(sec)
							$('#js-indus-proc-info-reg-powder-pop-pitch-sec').val(detail.pitchSec);
							
							//================ 제품 정보
							// 도료 구분
							if (detail.paintId != null) {
								$('#js-indus-proc-info-reg-powder-pop-paint-id-combo').val(detail.paintId);	
							}
							// 도료 수지 타입
							if (detail.paintResinId != null) { 
								$('#js-indus-proc-info-reg-powder-pop-paint-resin-id-combo').val(detail.paintResinId);	
							}					
							// 피도물 외관 (오염여부등)
							$('#js-indus-proc-info-reg-powder-pop-object-state').val(detail.objectState);
							// 제품 생산량
							$('#js-indus-proc-info-reg-powder-pop-prod-output').val(detail.prodOutput);
							// 제품 저장 기간
							$('#js-indus-proc-info-reg-powder-pop-prod-storage-term').val(detail.prodStorageTerm);
							// 피도물 온도
							$('#js-indus-proc-info-reg-powder-pop-object-temp').val(detail.objectTemp);
							
						}						
						
					} else { 
						 
						// 제품 유형 셋팅
						$('#js-indus-proc-info-reg-indus-pop-item-type-combo').val(jsCommon.itemType.getItem().code );
						
						console.log( " >>>  "+   $('#js-indus-proc-info-reg-powder-pop-item-type-combo').val());
						
						retrievePowderCustList.request();
						retrievePowderPcustList.request();
						retrievePowderFactoryList.request();
						retrievePowderLineList.request();
						retrievePowderProcList.request();
						
						// 적용소지
						// 소지 두께(mm)
						$('#js-indus-proc-info-reg-powder-pop-mat-thickness').val('');
						
						// 소지 폭(mm)
						$('#js-indus-proc-info-reg-powder-pop-mat-width').val('');
						
						// 수요가
						$('#js-indus-proc-info-reg-powder-pop-demand').val('');
						
						// 발주처
						$('#js-indus-proc-info-reg-powder-pop-buyer').val('');
						
						// 소지용도
						// 소재 설치 현장명
						$('#js-indus-proc-info-reg-powder-pop-material-mat-set-site').val('');					
						
						// 공정정보
						
						//================ 환경 조건 
						// 도장실<br>온도(℃)
						$('#js-indus-proc-info-reg-powder-pop-coat-room-temp').val('');
						// 도장실<br>습도(%)
						$('#js-indus-proc-info-reg-powder-pop-coat-room-hum').val('');
						// 작업자환경
						$('#js-indus-proc-info-reg-powder-pop-worker-state').val('');
						// 도장공정 청결
						$('#js-indus-proc-info-reg-powder-pop-clean-state').val('');
						// 도료이송조건1
						$('#js-indus-proc-info-reg-powder-pop-move-state-temp').val('');
						// 도료이송조건2
						$('#js-indus-proc-info-reg-powder-pop-move-state-humidity').val('');
						// 도료보관조건1
						$('#js-indus-proc-info-reg-powder-pop-stock-state-temp').val('');
						// 도료보관조건2
						$('#js-indus-proc-info-reg-powder-pop-stock-state-humidity').val('');
						// 특이사항
						window.indusProcInfoRegPowderPopEditor.SetBodyValue('');		
						
						$('#js-indus-proc-info-reg-powder-pop-coat-press').val('');
						// 토출량 
						$('#js-indus-proc-info-reg-powder-pop-discharge').val('');
						// 패턴폭 
						$('#js-indus-proc-info-reg-powder-pop-pattern-width').val('');
						// 도장 전압
						$('#js-indus-proc-info-reg-powder-pop-coat-voltage').val('');
						// 예열기 설정 온도
						$('#js-indus-proc-info-reg-powder-pop-pre-heater-temp').val('');
						// 예열기 통과 시간
						$('#js-indus-proc-info-reg-powder-pop-pre-heater-time').val('');
						// 건조로 통과 시간 
						$('#js-indus-proc-info-reg-powder-pop-oven-time').val('');
						// 건조로 설정 온도
						$('#js-indus-proc-info-reg-powder-pop-oven-temp').val('');
						// 분위기 온도
						$('#js-indus-proc-info-reg-powder-pop-atmos-temp').val('');
						// Target Coating Thickness
						$('#js-indus-proc-info-reg-powder-pop-target-thickness').val('');
						// Pitch time(sec)
						$('#js-indus-proc-info-reg-powder-pop-pitch-sec').val('');
						
						//================ 제품 정보
						// 도료 구분
						// 도료 수지 타입
						// 피도물 외관 (오염여부등)
						$('#js-indus-proc-info-reg-powder-pop-object-state').val('');
						// 제품 생산량
						$('#js-indus-proc-info-reg-powder-pop-prod-output').val('');
						// 제품 저장 기간
						$('#js-indus-proc-info-reg-powder-pop-prod-storage-term').val('');
						// 피도물 온도
						$('#js-indus-proc-info-reg-powder-pop-object-temp').val('');						
						
					}
					
					data = response.rs.line;
					if(data != undefined){
						$('input:checkbox[id*=js-indus-cust-hist-info-reg-pop-line-item]').each(function(){
							var lineId = $(this).val();
							for(var i=0 ; i<data.length ; i++){
								if(data[i].lineId == lineId){
									$(this).click();
								}
							}
						});
					}
					
					// 제품명/LotNo
					data = response.rs.itemLot;
					if(data != undefined){
						for(var i=0 ; i<data.length ; i++){  
							addRowIndusInfoRegPowderPopupLotList(data[i]);
						}
					}	
					
					var trLength = $("[name=js-indus-proc-info-reg-powder-pop-lot-list-tr]").length;
					if(trLength == 0){ 
						var addData = {
							  items   : ""
							, itemsNm : ""
							, index   : 1
							, lotNos  : []
						};
						addRowIndusInfoRegPowderPopupLotList(addData);
					}
					
				} else {
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
		request: function(docNo, itemType) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var params = {
				service: 'ind.procInfo',
				method: 'retrieveIndProcDetail',
				docNo: docNo == null ? "" : docNo,
				itemType: itemType
			};
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);				
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	//제품코드 선택
	var applyIndusProcInfoRegPowderPopupProdData = function(data){  
		$("[name=js-indus-proc-info-reg-powder-pop-lot-list-prod-name][dataIndex=" + prodPowderItemsInfoRowIndex + "]").val(data.itemsNm);
		$("[name=js-indus-proc-info-reg-powder-pop-lot-list-prod-code][dataIndex=" + prodPowderItemsInfoRowIndex + "]").val(data.items);
	}			
	
	var prodPowderItemsInfoRowIndex = "";
	
	// 제품명/LotNo Row 추가
	var addRowIndusInfoRegPowderPopupLotList = function(data){ 
	
		// 제품명 
		var html = indusProcInfoRegPowderPopupLotListTemplate(data);
		           
		$('#js-indus-proc-info-reg-powder-pop-lotList-append').before(html);			
		
		var rowspan = $("[name=js-indus-proc-info-reg-powder-pop-lot-list-tr]").length;
		$("#js-indus-proc-info-reg-powder-pop-lot-list-th").attr("rowspan", rowspan);	
		
		var lotList = data.lotNos;
		for(var i=0 ; i < lotList.length ; i++){
			var lotStr = '<li lotNo="'+ lotList[i].lotNo +'">'+ lotList[i].lotNo +'<button type="button" name="js-indus-proc-info-reg-powder-pop-lotList-lot-delete-button" lotNo="'+ lotList[i].lotNo +'" class="wp-spr-btn wp-close-sel"><span><spring:message code="TODO.KEY" text="닫기"/></span></button></li>';
			$("[name=js-indus-proc-info-reg-powder-pop-lot-list-lot-no-ul][dataIndex=" + data.index + "]").append(lotStr);
		}
		
		// 제품코드 조회 버튼 클릭
		$("[name=js-indus-proc-info-reg-powder-pop-lot-list-prod-button]").off().on("click", function(){
			prodPowderItemsInfoRowIndex = $(this).attr("dataIndex");
			initRetrieveProdItemsInfoList("js-indus-proc-info-reg-powder-popup");
		});
		
		$('[name=js-indus-proc-info-reg-powder-pop-lot-no]').off().on('keyup', function(e) {
			var $this = $(this);
			var lotNo = "";  
			if(e.which == 13 || this.value.length == 10){
				var dataIndex = $(this).attr("dataIndex");
				var name = this.name;
				
				lotNo = $(this).val();
				
				if (lotNo) {
					var listCheck = true;
					
					$('[name=js-indus-proc-info-reg-powder-pop-lot-list-lot-no-ul][dataIndex=' + dataIndex + "]").find("li").each(function() {
						var code = $(this).attr("lotNo");
						
						if(lotNo == code){
							listCheck = false;
						}
					});	
					
					if(listCheck){
						var lotStr = '<li lotNo="'+lotNo+'">'+lotNo+'<button type="button" name="js-indus-proc-info-reg-powder-pop-lotList-lot-delete-button" lotNo="'+lotNo+'" class="wp-spr-btn wp-close-sel"><span><spring:message code="TODO.KEY" text="닫기"/></span></button></li>';
						$("[name=js-indus-proc-info-reg-powder-pop-lot-list-lot-no-ul][dataIndex=" + dataIndex + "]").append(lotStr);
						$(this).val("");
					} else {
						//이미 추가됨
						app.message.alert({
							  title             : '<spring:message code="TODO.KEY" text="알림"/>'
							, message           : '<spring:message code="TODO.KEY" text="이미 추가된 Lot No. 입니다."/>'
							, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							, callback          : {
								confirm: function() {
								}
							}
						});
					}
				}
				
				// Lot 삭제 버튼 클릭
				$("[name=js-indus-proc-info-reg-powder-pop-lotList-lot-delete-button]").off().on("click", function(){
					var delLotNo = $(this).attr("lotNo");
					$("li[lotNo=" + delLotNo + "]").remove();
				});
			}
			
			if(!(e.keyCode >=37 && e.keyCode<=40)) {
				$(this).val($(this).val().replace(/[^a-z0-9]/gi,'').toUpperCase());
			}
	
			//focus
			$(this).focus();
			
			//10자리 입력시 자동으로 엔터 입력 효과
			var e = jQuery.Event( "keyup", { keyCode: 13, which: 13 } );
			if (lotNo.length == 10){
				$this.trigger(e);
			}				
		});
	 
		// Lot 삭제 버튼 클릭
		$("[name=js-indus-proc-info-reg-powder-pop-lotList-lot-delete-button]").off().on("click", function(){
			var lotNo = $(this).attr("lotNo");
			$("li[lotNo=" + lotNo + "]").remove();
		});			
	};	
	
	//------------------------------------
	// 거래선 공정정보 등록 저장
	//------------------------------------
	var indusProcInfoRegPowderPopupSaveHandler = {
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
					
					// ---------------------------------------
					// 메인화면 재조회998888
					// ---------------------------------------

			 		retrieveIndProcInfo.request(jsCommon.itemType.getItem().code);
					$("#js-indus-proc-info-reg-powder-popup-close-button").click();
					
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
		request: function(param) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			// 파라미터 Set
			 
			var params = {
				  service      			: 'ind.procInfo'
				, method        		: 'saveIndProcInfo'
				, docNo            		: param.docNo                        	// 문서번호          
				, orgDocNo         		: param.orgDocNo                     	// 원글 문서번호          
				, itemType         		: param.itemType                     	// 제품유형          
				, cust             		: param.cust                         	// 거래선           
				, pcust        			: param.pcust                    		// 도장업체          
				, factoryId        		: param.factoryId                    	// 공장            
				, lineId        		: param.lineId 		            	// 라인코드            
				, measureDate       	: param.measureDate.replace(/-/gi,"")  // 측정일자     
				, measureEmp        	: param.measureEmp                    	// 담당자
				, procId		        : param.procId		          			// 적용공정
				, applMaterial          : param.applMaterial           		// 적용소지
				, matThickness          : param.matThickness          
				, matWidth 	          	: param.matWidth 	            
				, demand 	          	: param.demand 	          	
				, buyer 	          	: param.buyer 	          	
				, materialUse 	        : param.materialUse 	        
				, matSetSite 	        : param.matSetSite 
				, coatPress				: param.coatPress
				, discharge             : param.discharge
				, patternWidth          : param.patternWidth
				, coatVoltage           : param.coatVoltage
				, preHeaterTemp         : param.preHeaterTemp
				, preHeaterTime         : param.preHeaterTime
				, ovenTime          	: param.ovenTime
				, ovenTemp           	: param.ovenTemp
				, atmosTemp         	: param.atmosTemp
				, targetThickness       : param.targetThickness					
				, pitchSec         		: param.pitchSec					

				, itemList 				: param.itemList
				, lotList 				: param.lotList		
				
				, paintId         		: param.paintId        			
				, paintResinId         	: param.paintResinId   			
				, objectState         	: param.objectState    			
				, prodOutput         	: param.prodOutput     			
				, prodStorageTerm       : param.prodStorageTerm			
				, objectTemp         	: param.objectTemp     			
                                          
				, coatRoomTemp         	: param.coatRoomTemp       			
				, coatRoomHum         	: param.coatRoomHum        			
				, workerState         	: param.workerState        			
				, cleanState         	: param.cleanState         			
				, moveStateTemp         : param.moveStateTemp      			
				, moveStateHumidity     : param.moveStateHumidity  			
				, stockStateTemp        : param.stockStateTemp     			
				, stockStateHumidity    : param.stockStateHumidity 		
				, remark 				: param.remark
				
				// 마스터 값 
				, diluentType    		: ""		
				, diluentRate    		: ""		
				, diluentVisc    		: ""		
				, viscTemp    			: ""		
				, catchState			: ""
				, filterState			: ""
			};
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
		
	};	
	
</script>	
		
 
