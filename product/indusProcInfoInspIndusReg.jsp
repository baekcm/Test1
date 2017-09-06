<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.06.26] 공업 공통 팝업 HTML 엘리먼트" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="wp-dim-layer">
    <div class="wp-dimBg"></div>
    <div id="js-industry-indus-proc-info-indus-detail-popup" class="wp-pop-layer wp-pop-w940 wp-box-sizing wp-car-popup">
    	<div class="wp-pop-title">
    		<h1><spring:message code="TODO.KEY" text="거래선 공정정보 등록"/></h1>
    		<button type="button" id="js-indus-proc-info-reg-indus-popup-close-button" class="wp-btn-close-layer wp-spr-btn"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
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
										<select id="js-indus-proc-info-reg-indus-pop-item-type-combo" title="항목 개수 설정" disabled="disabled"></select>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="거래선"/></th>
								<td>
									<div class="wp-ui-select wp-wd100p"> 
										<select id="js-indus-proc-info-reg-indus-pop-cust-combo" title=""></select>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도장업체"/></th>
								<td>
									<div class="wp-ui-select wp-wd100p"> 
										<select id="js-indus-proc-info-reg-indus-pop-paintCust-combo" title="" ></select>
									</div>
								</td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="공장"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd100p">
										<select id="js-indus-proc-info-reg-indus-pop-factoryId-combo" title="항목 개수 설정"></select>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="측정일자"/></th>
								<td><input type="text" name="" id="js-indus-proc-info-reg-indus-pop-measure-date" title="내용입력" class="wp-inp-datepicker maxdate wp-wd100p" placeholder="날짜입력" value=""></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="측정자"/></th>
								<td>
									<input type="text"    id="js-indus-proc-info-reg-indus-pop-emp-name" title="내용입력" class="wp-wd108" value="${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}" disabled="disabled">
									<input type="hidden"  id="js-indus-proc-info-reg-indus-pop-emp" value="${sessionScope.LoginUserInfo.empNum}" />
									<input type="hidden"  id="js-indus-proc-info-reg-indus-pop-session-emp"   value="${sessionScope.LoginUserInfo.empNum}">
									<input type="hidden"  id="js-indus-proc-info-reg-indus-pop-session-emp-name"  value="${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}">
									<button type="button" id="js-indus-proc-info-reg-indus-pop-emp-search-button" data-link="js-industry-emp-retrieve-popup" data-depth="2" class="wp-btn small gray cr3 wp-btn-pop">조회</button>
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
										<select title="" id="js-indus-proc-info-reg-indus-pop-line-combo"></select>
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
										<select title="항목 개수 설정" id="js-indus-proc-info-reg-indus-pop-appl-material-combo"></select>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="소지 두께(mm)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-mat-thickness" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="소지 폭(mm)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-mat-width" name="" title="내용입력"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="수요가"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-demand" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="발주처"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-buyer" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="소지용도"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd100p">
										<select title="항목 개수 설정" id="js-indus-proc-info-reg-indus-pop-material-use-combo"></select>
									</div>
								</td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="소재 설치 현장명"/></th>
								<td colspan="5" class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-material-mat-set-site" name="" title="내용입력"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //소지 및 전처리 정보 -->									 
			 	<!-- 적용 공정 정보 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="적용 공정 정보"/></h2>
				<div class="wp-table-st1 wp-issue-apply">
					<table>
						<caption><spring:message code="TODO.KEY" text="적용 공정 정보"/></caption>
						<colgroup>
							<col style="width:13%">
							<col style="width:87%">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="적용 공정"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd160">
										<select title="항목 개수 설정" id="js-indus-proc-info-reg-indus-pop-proc-type-combo"></select>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //적용 공정 정보 -->
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
							<tr id="js-indus-proc-info-reg-indus-pop-lotList-append">
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도료 구분"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd100p">
										<select title="항목 개수 설정" id="js-indus-proc-info-reg-indus-pop-paint-id-combo"></select>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도료 수지 타입"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd100p">
										<select title="항목 개수 설정" id="js-indus-proc-info-reg-indus-pop-paint-resin-id-combo"></select>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="피도물 외관"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-object-state" name="" title="내용입력"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="제품 생산량(㎏)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-prod-output" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="제품 저장 기간<br>(개월)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-prod-storage-term" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="피도물 온도(℃)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-object-temp" name="" title="내용입력"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="평량 수행 여부"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-basis-weight-state" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="퍼티 공정 여부"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-putty-proc-state" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="퍼티 명칭"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-putty-nm" name="" title="내용입력"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="퍼티 두께(mm)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-putty-thickness" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="Sand paprering<br>no."/></th>
								<td colspan="3" class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-sand-paprer-no" name="" title="내용입력"></td>
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
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-coat-press"    name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="토출량(Bar)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-discharge"     name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="패턴폭(cm)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-pattern-width" name="" title="내용입력"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="예열기 설정 온도<br>(℃)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-pre-heater-temp" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="예열기 통과 시간<br>(min)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-pre-heater-time" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="Target Coating Thickness(㎛)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-target-thickness" name="" title="내용입력"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="건조로 통과 시간<br>(min)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-oven-time" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="Pitch time(sec)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-pitch-sec" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="건조로 설정 온도<br>(℃)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-oven-temp" name="" title="내용입력"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //공정 Coating 정보 -->
				<!--  희석 조건 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="희석 조건"/></h2>
				<div class="wp-table-st1 wp-issue-apply">
					<table>
						<caption><spring:message code="TODO.KEY" text="희석 조건"/></caption>
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
								<th class="wp-ar"><spring:message code="TODO.KEY" text="희석제 종류"/></th>
								<td class="wp-al">
									<input type="text" id="js-indus-proc-info-reg-indus-pop-diluent" name="" title="내용입력" />
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="희석비율(%)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-diluent-rate" name="" title="내용입력"/></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="희석후 점도(sec)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-diluent-visc" name="" title="내용입력"/></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="점도 측정시<br>온도(℃)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-visc-temp" name="" title="내용입력"/></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도료 유동 상태<br>(캐치팬內)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-catch-state" name="" title="내용입력"/></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="필터 상태"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-filter-state" name="" title="내용입력"/></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- // 희석 조건 -->
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
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-coat-room-temp" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도장실 습도(%)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-coat-room-hum" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="작업자 환경<br>(피복착용,오염)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-worker-state" name="" title="내용입력"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도장공정 청결<br>상태(집진설비)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-indus-pop-clean-state" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도료 이송 조건<br>5~25℃, 85%↓"/></th>
								<td class="wp-al">
									<input type="text" name="" id="js-indus-proc-info-reg-indus-pop-move-state-temp" title="내용입력" class="wp-wd49p">
									<input type="text" name="" id="js-indus-proc-info-reg-indus-pop-move-state-humidity" title="내용입력" class="wp-wd49p">
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도료 보관 조건<br>5~25℃,85%↓"/></th>
								<td class="wp-al">
									<input type="text" name="" id="js-indus-proc-info-reg-indus-pop-stock-state-temp" title="내용입력" class="wp-wd49p">
									<input type="text" name="" id="js-indus-proc-info-reg-indus-pop-stock-state-humidity" title="내용입력" class="wp-wd49p">
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
						
						<textarea id=js-indus-proc-info-reg-indus-pop-editor name="js-indus-proc-info-reg-indus-pop-editor"></textarea>
						<script type="text/javascript" src="/crosseditor/js/namo_scripteditor.js"></script>
						<script type="text/javascript">
						// ------------------------------------
						// namo web editor
						// ------------------------------------
						var indusProcInfoRegIndusPopEditor = null;
						
						var indusProcInfoRegIndusPopEditorParams = {
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
						
						var initIndusProcInfoRegIndusPopEditor = function() {
							// ------------------------------------
							// 나모 Editor 인스턴스 생성
							// ------------------------------------
						    if (indusProcInfoRegIndusPopEditor == null) {
						    	indusProcInfoRegIndusPopEditor = new NamoSE('js-indus-proc-info-reg-indus-pop-editor');
						    	indusProcInfoRegIndusPopEditor.params = indusProcInfoRegIndusPopEditorParams;
						    	indusProcInfoRegIndusPopEditor.EditorStart();
						    }
						};
						
						initIndusProcInfoRegIndusPopEditor();
						
						</script>
					</div>
				</div>
				<!-- //특이사항 -->
			<!-- // scroll Area -->
			</div>
		
			<div class="wp-btn-area">
				<button type="button" id="js-indus-proc-info-reg-indus-popup-save-button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="저장"/></button>
				<input type="hidden"  id="js-indus-proc-info-reg-indus-pop-docNo"     value="">
				<input type="hidden"  id="js-indus-proc-info-reg-indus-pop-orgDocNo"  value="">
				<input type="hidden"  id="js-indus-proc-info-reg-indus-pop-item-type" value="">				
			</div>
	
    	</div>
	</div>
</div>
<script id="js-template-indus-proc-info-reg-indus-pop-lotList-list" type="text/x-handlebars-template">
	<tr name="js-indus-proc-info-reg-indus-pop-lot-list-tr" dataIndex="{{index}}">
		{{#setLotListHeader}}
		<th class="wp-ar" rowspan="2" id="js-indus-proc-info-reg-indus-pop-lot-list-th"><spring:message code="TODO.KEY" text="제품명/Lot No."/></th>
		{{/setLotListHeader}}
		<td colspan="5" class="wp-al">
			<button type="button" name="js-indus-proc-info-reg-indus-pop-lot-list-prod-button" dataIndex="{{index}}" data-link="js-prod-info-popup" data-depth="2" class="wp-btn gray cr3 wp-mr10 wp-btn-pop"><spring:message code="TODO.KEY" text="제품코드 조회"/></button>
			<input type="text" name="js-indus-proc-info-reg-indus-pop-lot-list-prod-code" dataIndex="{{index}}" value="{{items}}"    class="wp-wd110" disabled="disabled">
			<input type="text" name="js-indus-proc-info-reg-indus-pop-lot-list-prod-name" dataIndex="{{index}}" value="{{itemsNm}}"  class="wp-wd160" disabled="disabled">
			<div class="wp-style-sel wp-wd293 wp-inblock">
				<ul name="js-indus-proc-info-reg-indus-pop-lot-list-lot-no-ul" dataIndex="{{index}}"></ul>
				<input type="text" name="js-indus-proc-info-reg-indus-pop-lot-no" dataIndex="{{index}}" class="wp-nodesign">
			</div>
		</td>
	</tr>
</script>
 
<script type="text/javascript">

	var indusProcInfoRegIndusPopupLotListTemplate;
	var initIndusProcInfoRegIndusPopup = function(docNo, itemType, flag) {
		 
		var source = $('#js-template-indus-proc-info-reg-indus-pop-lotList-list').html();
		indusProcInfoRegIndusPopupLotListTemplate = Handlebars.compile(source);
		 
		Handlebars.registerHelper('setLotListHeader', function(options) { 
			if (this.index == '1'){
				return options.fn(this);
			} else {
				return options.inverse(this);
			}
		});		
	
		$("[name=js-indus-proc-info-reg-indus-pop-lot-list-tr]").remove();

		initDataIndusProcInfoRegIndusPopup();
		
		var today = fn_getTodayDate();
		
		$("#js-indus-proc-info-reg-indus-pop-measure-date").val(today);
		
		// 상세조회(수정)
		$("#js-indus-proc-info-reg-indus-pop-docNo").val(docNo);
		$("#js-indus-proc-info-reg-indus-pop-item-type").val(itemType);
		
		// 상세조회 
		retrieveIndProcIndusDetail.request(docNo, itemType);
		
		onlyDecimal($('js-indus-proc-info-reg-indus-pop-diluent-rate'), 5, 1);
		onlyDecimal($('js-indus-proc-info-reg-indus-pop-diluent-visc'), 5, 1);
		onlyDecimal($('js-indus-proc-info-reg-indus-pop-visc-temp'), 5, 1);
		onlyDecimal($('#js-indus-proc-info-reg-indus-pop-coat-press'), 5, 1);
		onlyDecimal($('#js-indus-proc-info-reg-indus-pop-discharge'), 5, 1);
		onlyDecimal($('#js-indus-proc-info-reg-indus-pop-pattern-width'), 5, 1);
		onlyDecimal($('#js-indus-proc-info-reg-indus-pop-object-temp'), 5, 1);
		onlyDecimal($('#js-indus-proc-info-reg-indus-pop-prod-output'), 5, 1);
		onlyDecimal($('#js-indus-proc-info-reg-indus-pop-prod-storage-term'), 5, 1);
		

		onlyInteger($('#js-indus-proc-info-reg-indus-pop-coat-room-temp'));
		onlyInteger($('#js-indus-proc-info-reg-indus-pop-coat-room-hum'));
		onlyInteger($('#js-indus-proc-info-reg-indus-pop-target-thickness'));
		onlyInteger($('#js-indus-proc-info-reg-indus-pop-pitch-sec'));
		onlyInteger($('#js-indus-proc-info-reg-indus-pop-move-state-temp'));
		onlyInteger($('#js-indus-proc-info-reg-indus-pop-move-state-humidity'));
		onlyInteger($('#js-indus-proc-info-reg-indus-pop-stock-state-temp'));
		onlyInteger($('#js-indus-proc-info-reg-indus-pop-stock-state-humidity'));
		onlyInteger($('#js-indus-proc-info-reg-indus-pop-pre-heater-temp'));
		onlyInteger($('#js-indus-proc-info-reg-indus-pop-pre-heater-time'));
		onlyInteger($('#js-indus-proc-info-reg-indus-pop-oven-time'));
		onlyInteger($('#js-indus-proc-info-reg-indus-pop-oven-temp'));
		
		indusProcInfoSearchIndusListEvent(docNo, itemType);
	};
	
	//-------------------------------------------------
	// 데이터 초기화
	//-------------------------------------------------
	var initDataIndusProcInfoRegIndusPopup = function(){
		$("#js-indus-proc-info-reg-indus-pop-emp").val($("#js-indus-proc-info-reg-indus-pop-session-emp").val());
		$("#js-indus-proc-info-reg-indus-pop-emp-name").val($("#js-indus-proc-info-reg-indus-pop-session-emp-name").val());
		$("#js-indus-proc-info-reg-indus-pop-measure-date").val(fn_getTodayDate()).mask('9999-99-99');
		$("#js-indus-proc-info-reg-indus-pop-docNo").val('');
		$("#js-indus-proc-info-reg-indus-pop-orgDocNo").val('');
		
		window.indusProcInfoRegIndusPopEditor.SetBodyValue('');
		
	};		
	
	// ------------------------------------------------
	// 제품유형 콤보 조회
	// ------------------------------------------------
	var retrieveIndusIndusItemTypeList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					console.log("indus 제품유형 콤보 조회 1 ");
					
					var data = response.rs;
					
					$('#js-indus-proc-info-reg-indus-pop-item-type-combo').find('option').remove();

					for(var i=0; i < data.length; i++) {
						$('#js-indus-proc-info-reg-indus-pop-item-type-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}	   

					$("#js-indus-proc-info-reg-indus-pop-item-type-combo > option[value='"+ jsCommon.itemType.getItem().code +"']").attr("selected", "true");
					var itemType = $('#js-indus-proc-info-reg-indus-pop-item-type-combo').val();
					  
					// 거래선 combo 조회
					//retrieveIndusIndusCustList.request(itemType);
					
					// 제품유형 변경 시 거래선 combo 재조회
					$('#js-indus-proc-info-reg-indus-pop-item-type-combo').off().on("change", function(){
						retrieveIndusIndusCustList.request();
						retrieveIndusIndusPcustList.request();
						retrieveIndusIndusFactoryList.request();
						retrieveIndusIndusLineList.request();
						retrieveIndusIndusProcList.request();
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
	var retrieveIndusIndusCustList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					console.log("indus 거래선 콤보 조회 2 ");
					
					var data = response.rs;
					
					$('#js-indus-proc-info-reg-indus-pop-cust-combo').find('option').remove();
					
					for(var i=0; i < data.length; i++) {
						$('#js-indus-proc-info-reg-indus-pop-cust-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}
					
					// 제품유형
					var itemType = $('#js-indus-proc-info-reg-indus-pop-item-type-combo').val();
					// 거래선
					var cust = $('#js-indus-proc-info-reg-indus-pop-cust-combo').val();						
					
					//retrieveIndusIndusPcustList.request(itemType, cust);
					
					// 거래선 변경 시 도장업체 combo 재조회
					$('#js-indus-proc-info-reg-indus-pop-cust-combo').off().on("change", function(){
						//retrieveIndusIndusPcustList.request(itemType, $(this).val());
						retrieveIndusIndusPcustList.request();
						retrieveIndusIndusFactoryList.request();
						retrieveIndusIndusLineList.request();
						retrieveIndusIndusProcList.request();
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
		request: function(itemType) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			//alert("retrieveCustList itemType : "+ itemType); 
			console.log(" >>>>      " + $("#js-indus-proc-info-reg-indus-pop-item-type-combo").val() );
			var params = {
				service  : 'ind.common',
				method   : 'retrieveCustList',
				itemType : $("#js-indus-proc-info-reg-indus-pop-item-type-combo").val()
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
	var retrieveIndusIndusPcustList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					console.log("indus 도장업체 콤보 조회 3 ");
					
					var data = response.rs;
					 
					$('#js-indus-proc-info-reg-indus-pop-paintCust-combo').find('option').remove();
					
					for(var i=0; i < data.length; i++) {
						$('#js-indus-proc-info-reg-indus-pop-paintCust-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}
					
					// 제품유형
					var itemType = $('#js-indus-proc-info-reg-indus-pop-item-type-combo').val();
					// 거래선
					var cust = $('#js-indus-proc-info-reg-indus-pop-cust-combo').val();
					// 도장업체
					var pcust = $('#js-indus-proc-info-reg-indus-pop-paintCust-combo').val();
					
					
					//retrieveIndusIndusFactoryList.request(itemType, cust, pcust);
					
					// 도장업체 변경 시 공장 combo 재조회
					$('#js-indus-proc-info-reg-indus-pop-paintCust-combo').off().on("change", function(){
						//retrieveIndusIndusFactoryList.request(itemType, cust, $(this).val());
						retrieveIndusIndusFactoryList.request();
						retrieveIndusIndusLineList.request();
						retrieveIndusIndusProcList.request();
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
				service  : 'ind.common',
				method   : 'retrievePcustList',
				itemType : $("#js-indus-proc-info-reg-indus-pop-item-type-combo").val(),
				cust     : $("#js-indus-proc-info-reg-indus-pop-cust-combo").val()
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
	var retrieveIndusIndusFactoryList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					
					console.log("indus 공장 콤보 조회 4 ");
					
					var data = response.rs;
					 
					$('#js-indus-proc-info-reg-indus-pop-factoryId-combo').find('option').remove();
					
					for(var i=0; i < data.length; i++) {
						$('#js-indus-proc-info-reg-indus-pop-factoryId-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}
					
					// 제품유형
					var itemType = $('#js-indus-proc-info-reg-indus-pop-item-type-combo').val();
					// 거래선
					var cust = $('#js-indus-proc-info-reg-indus-pop-cust-combo').val();
					// 도장업체
					var pcust = $('#js-indus-proc-info-reg-indus-pop-paintCust-combo').val();
					// 공장
					var factoryId = $('#js-indus-proc-info-reg-indus-pop-factoryId-combo').val();
					
					//retrieveIndusIndusLineList.request(itemType, cust, pcust, factoryId);
					
					// 공장 변경 시 - 라인 combo 재조회
					$('#js-indus-proc-info-reg-indus-pop-factoryId-combo').off().on("change", function(){
						//retrieveIndusIndusLineList.request(itemType, cust, pcust, $(this).val());
						retrieveIndusIndusLineList.request();
						retrieveIndusIndusProcList.request();
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
				itemType  : $("#js-indus-proc-info-reg-indus-pop-item-type-combo").val(),
				cust      : $("#js-indus-proc-info-reg-indus-pop-cust-combo").val(),
				paintCust : $("#js-indus-proc-info-reg-indus-pop-paintCust-combo").val()
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
	var retrieveIndusIndusLineList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					
					console.log("indus 라인 콤보 조회 5 ");
					
					var data = response.rs;
					 
					$('#js-indus-proc-info-reg-indus-pop-line-combo').find('option').remove();
					
					for(var i=0; i < data.length; i++) {
						$('#js-indus-proc-info-reg-indus-pop-line-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}
					
					// 라인 변경 시 - 공정 combo 재조회
					$('#js-indus-proc-info-reg-indus-pop-line-combo').off().on("change", function(){
						retrieveIndusIndusProcList.request();
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
				itemType  : $("#js-indus-proc-info-reg-indus-pop-item-type-combo").val(),
				cust      : $("#js-indus-proc-info-reg-indus-pop-cust-combo").val(),
				paintCust : $("#js-indus-proc-info-reg-indus-pop-paintCust-combo").val(),
				factoryId : $("#js-indus-proc-info-reg-indus-pop-factoryId-combo").val()
			};
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);				
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	
	// 공정 콤보 조회
	var retrieveIndusIndusProcList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					
					console.log("일반공업 공정 콤보 조회");
					
					var data = response.rs;
					 
					$('#js-indus-proc-info-reg-indus-pop-proc-type-combo').find('option').remove();
					
					for(var i=0; i < data.length; i++) {
						$('#js-indus-proc-info-reg-indus-pop-proc-type-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
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
				cust      	: $('#js-indus-proc-info-reg-indus-pop-cust-combo').val(),
				paintCust 	: $('#js-indus-proc-info-reg-indus-pop-paintCust-combo').val(),
				factoryId 	: $('#js-indus-proc-info-reg-indus-pop-factoryId-combo').val(),
				lineId 		: $('#js-indus-proc-info-reg-indus-pop-line-combo').val()
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
	var retrieveIndProcIndusDetail = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					
					var data = response.rs;
					
					// 기본 정보 셋팅
					// 제품유형
					retrieveIndusIndusItemTypeList.request();
					
					// 적용소지
					$('#js-indus-proc-info-reg-indus-pop-appl-material-combo').find('option').remove();
					
					for(var i=0; i < data.matKindList.length; i++) {
						$('#js-indus-proc-info-reg-indus-pop-appl-material-combo').append("<option value='"+ data.matKindList[i].code +"'>"+ data.matKindList[i].codeNm +"</option>");
					}
					
					// 소지용도
					$('#js-indus-proc-info-reg-indus-pop-material-use-combo').find('option').remove();
					
					for(var i=0; i < data.materialList.length; i++) {
						$('#js-indus-proc-info-reg-indus-pop-material-use-combo').append("<option value='"+ data.materialList[i].code +"'>"+ data.materialList[i].codeNm +"</option>");
					}
					
					// 적용 공정
					$("#js-indus-proc-info-reg-indus-pop-proc-type-combo").find('option').remove();
					$("#js-indus-proc-info-reg-indus-pop-proc-type-combo").append("<option value=''>전체</option>");
					for(var i=0; i<data.procList.length; i++) {
						$("#js-indus-proc-info-reg-indus-pop-proc-type-combo").append("<option value='"+data.procList[i].code+"'>"+ data.procList[i].codeNm +"</option>");
					}						
					
					// 도료구분 
					$("#js-indus-proc-info-reg-indus-pop-paint-id-combo").find('option').remove();
					for(var i=0; i<data.paintList.length; i++) {
						$("#js-indus-proc-info-reg-indus-pop-paint-id-combo").append("<option value='"+data.paintList[i].code+"'>"+ data.paintList[i].codeNm +"</option>");
					}
					
					// 도료 수지 타입
					$("#js-indus-proc-info-reg-indus-pop-paint-resin-id-combo").find('option').remove();
					for(var i=0; i<data.resinList.length; i++) {
						$("#js-indus-proc-info-reg-indus-pop-paint-resin-id-combo").append("<option value='"+data.resinList[i].code+"'>"+ data.resinList[i].codeNm +"</option>");
					}						
					
					// ----------------------------------------
					// 공통코드   - START
					// ----------------------------------------
					
					// 상세정보(수정)
					if (response.rs.standard.length > 0) {					
					
						var standard = response.rs.standard[0];
						
						// 제품 유형						
						$('#js-indus-proc-info-reg-indus-pop-item-type-combo').val(standard.itemType);
						
						retrieveIndusIndusCustList.request();
						retrieveIndusIndusPcustList.request();
						retrieveIndusIndusFactoryList.request();
						retrieveIndusIndusLineList.request();
						 
						 
						$('#js-indus-proc-info-reg-indus-pop-cust-combo').val(standard.cust); 
						retrieveIndusIndusPcustList.request();
						
						// 도장업체
						$('#js-indus-proc-info-reg-indus-pop-paintCust-combo').val(standard.pcust);
						retrieveIndusIndusFactoryList.request();
						
						// 공장
						$('#js-indus-proc-info-reg-indus-pop-factoryId-combo').val(standard.factoryId);
						retrieveIndusIndusLineList.request();
					
						//라인
						if (standard.lineId != null) {
							$('#js-indus-proc-info-reg-indus-pop-line-combo').val(standard.lineId);	
						}
						
						// 측정일자
						$('#js-indus-proc-info-reg-indus-pop-measure-date').val(standard.measureDate);
						// 측정자
						$('#js-indus-proc-info-reg-indus-pop-emp').val(standard.measureEmp);					
						$('#js-indus-proc-info-reg-indus-pop-emp-name').val(standard.measureEmpNm); // 이름만 필요...현재 "IT생산/품질팀 최형규사원"
						
						
						//================== 소지 및 전처리 정보
						// 적용소지
						if(standard.applMaterial != null){
							$('#js-indus-proc-info-reg-indus-pop-appl-material-combo').val(standard.applMaterial);
						}
						// 소지 두께(mm)
						$('#js-indus-proc-info-reg-indus-pop-mat-thickness').val(standard.matThickness);
						
						// 소지 폭(mm)
						$('#js-indus-proc-info-reg-indus-pop-mat-width').val(standard.matWidth);
						
						// 수요가
						$('#js-indus-proc-info-reg-indus-pop-demand').val(standard.demand);
						
						// 발주처
						$('#js-indus-proc-info-reg-indus-pop-buyer').val(standard.buyer);
						
						// 소지용도
						if(standard.materialUse != null){
							$('#js-indus-proc-info-reg-indus-pop-material-use-combo').val(standard.materialUse);
						}					
						// 소재 설치 현장명
						$('#js-indus-proc-info-reg-indus-pop-material-mat-set-site').val(standard.matSetSite);			
						
						//================== 희석 조건
						// 희석제 종류
						 
						$('#js-indus-proc-info-reg-indus-pop-diluent').val(standard.diluentType);	
					 
						
						// 희석비율(%)
						$('#js-indus-proc-info-reg-indus-pop-diluent-rate').val(standard.diluentRate);
						
						// 희석후 점도(sec)
						$('#js-indus-proc-info-reg-indus-pop-diluent-visc').val(standard.diluentVisc);
						
						// 점도 측정시 온도(℃)
						$('#js-indus-proc-info-reg-indus-pop-visc-temp').val(standard.viscTemp);
						
						// 캐치팬內 도료 유동 상태
						$('#js-indus-proc-info-reg-indus-pop-catch-state').val(standard.catchState);
						
						// 필터상태
						$('#js-indus-proc-info-reg-indus-pop-filter-state').val(standard.filterState);	
						
						//================ 환경 조건 
						// 도장실<br>온도(℃)
						$('#js-indus-proc-info-reg-indus-pop-coat-room-temp').val(standard.coatRoomTemp);
						// 도장실<br>습도(%)
						$('#js-indus-proc-info-reg-indus-pop-coat-room-hum').val(standard.coatRoomHum);
						// 작업자환경
						$('#js-indus-proc-info-reg-indus-pop-worker-state').val(standard.workerState);
						// 도장공정 청결
						$('#js-indus-proc-info-reg-indus-pop-clean-state').val(standard.cleanState);
						// 도료이송조건1
						$('#js-indus-proc-info-reg-indus-pop-move-state-temp').val(standard.moveStateTemp);
						// 도료이송조건2
						$('#js-indus-proc-info-reg-indus-pop-move-state-humidity').val(standard.moveStateHumidity);
						// 도료보관조건1
						$('#js-indus-proc-info-reg-indus-pop-stock-state-temp').val(standard.stockStateTemp);
						// 도료보관조건2
						$('#js-indus-proc-info-reg-indus-pop-stock-state-humidity').val(standard.stockStateHumidity);						
						
						// 특이사항
						window.indusProcInfoRegIndusPopEditor.SetBodyValue(standard.remark);		

						if(response.rs.detail.length > 0) {
							
							var detail   = response.rs.detail[0];
							
							//================== 적용 공정 정보
							// 적용 공정
							if (detail.procId != null) {
								$('#js-indus-proc-info-reg-indus-pop-proc-type-combo').val(detail.procId);	 
							}
							
							//================== 공정 Coating 정보
							//도장 압력(Bar)
							$('#js-indus-proc-info-reg-indus-pop-coat-press').val(detail.coatPress);
							// 토출량 
							$('#js-indus-proc-info-reg-indus-pop-discharge').val(detail.discharge);
							// 패턴폭 
							$('#js-indus-proc-info-reg-indus-pop-pattern-width').val(detail.patternWidth);
							// 예열기 설정 온도
							$('#js-indus-proc-info-reg-indus-pop-pre-heater-temp').val(detail.preHeaterTemp);						
							// 예열기 통과 시간
							$('#js-indus-proc-info-reg-indus-pop-pre-heater-time').val(detail.preHeaterTime);						
							// Target Coating Thickness
							$('#js-indus-proc-info-reg-indus-pop-target-thickness').val(detail.targetThickness);
							// 건조로 통과 시간 
							$('#js-indus-proc-info-reg-indus-pop-oven-time').val(detail.ovenTime);						
							// Pitch time(sec)
							$('#js-indus-proc-info-reg-indus-pop-pitch-sec').val(detail.pitchSec);
							// 건조로 설정 온도
							$('#js-indus-proc-info-reg-indus-pop-oven-temp').val(detail.ovenTemp);						
	
							
							//================== 제품 정보
							// 도료 구분
							if (detail.paintId != null) {
								$('#js-indus-proc-info-reg-indus-pop-paint-id-combo').val(detail.paintId);	
							}
							// 도료 수지 타입
							if (detail.paintResinId != null) { 
								$('#js-indus-proc-info-reg-indus-pop-paint-resin-id-combo').val(detail.paintResinId);	
							}					
							// 피도물 외관 (오염여부등)
							$('#js-indus-proc-info-reg-indus-pop-object-state').val(detail.objectState);
							// 제품 생산량
							$('#js-indus-proc-info-reg-indus-pop-prod-output').val(detail.prodOutput);
							// 제품 저장 기간
							$('#js-indus-proc-info-reg-indus-pop-prod-storage-term').val(detail.prodStorageTerm);
							// 피도물 온도
							$('#js-indus-proc-info-reg-indus-pop-object-temp').val(detail.objectTemp);
							
							// 점도 측정시 온도
							$('#js-indus-proc-info-reg-indus-pop-visc-temp').val(detail.viscTemp);
							// 평량수행여부
							$('#js-indus-proc-info-reg-indus-pop-basis-weight-state').val(detail.basisWeightState);
							// 퍼티 공정여부
							$('#js-indus-proc-info-reg-indus-pop-putty-proc-state').val(detail.puttyProcState);
							// 퍼티 명칭
							$('#js-indus-proc-info-reg-indus-pop-putty-nm').val(detail.puttyNm);
							// 퍼티 두께
							$('#js-indus-proc-info-reg-indus-pop-putty-thickness').val(detail.puttyThickness);
							// Sand paprering no.
							$('#js-indus-proc-info-reg-indus-pop-sand-paprer-no').val(detail.sandPaprerNo);
					
						} 
					} else {
							
						// 콤보 박스 조회
						$('#js-indus-proc-info-reg-indus-pop-item-type-combo').val(jsCommon.itemType.getItem().code );
						retrieveIndusIndusCustList.request();
						retrieveIndusIndusPcustList.request();
						retrieveIndusIndusFactoryList.request();
						retrieveIndusIndusLineList.request();
						retrieveIndusIndusProcList.request();
						
						//================== 소지 및 전처리 정보
					 
						// 소지 두께(mm)
						$('#js-indus-proc-info-reg-indus-pop-mat-thickness').val('');
						// 소지 폭(mm)
						$('#js-indus-proc-info-reg-indus-pop-mat-width').val('');
						// 수요가
						$('#js-indus-proc-info-reg-indus-pop-demand').val('');
						// 발주처
						$('#js-indus-proc-info-reg-indus-pop-buyer').val('');
						// 소재 설치 현장명
						$('#js-indus-proc-info-reg-indus-pop-material-mat-set-site').val('');			
						
						//================== 희석 조건
						// 희석제 종류
						$('#js-indus-proc-info-reg-indus-pop-diluent').val('');
						// 희석비율(%)
						$('#js-indus-proc-info-reg-indus-pop-diluent-rate').val('');
						// 희석후 점도(sec)
						$('#js-indus-proc-info-reg-indus-pop-diluent-visc').val('');
						// 점도 측정시 온도(℃)
						$('#js-indus-proc-info-reg-indus-pop-visc-temp').val('');
						// 캐치팬內 도료 유동 상태
						$('#js-indus-proc-info-reg-indus-pop-catch-state').val('');
						// 필터상태
						$('#js-indus-proc-info-reg-indus-pop-filter-state').val('');	
						
						//================ 환경 조건 
						// 도장실<br>온도(℃)
						$('#js-indus-proc-info-reg-indus-pop-coat-room-temp').val('');
						// 도장실<br>습도(%)
						$('#js-indus-proc-info-reg-indus-pop-coat-room-hum').val('');
						// 작업자환경
						$('#js-indus-proc-info-reg-indus-pop-worker-state').val('');
						// 도장공정 청결
						$('#js-indus-proc-info-reg-indus-pop-clean-state').val('');
						// 도료이송조건1
						$('#js-indus-proc-info-reg-indus-pop-move-state-temp').val('');
						// 도료이송조건2
						$('#js-indus-proc-info-reg-indus-pop-move-state-humidity').val('');
						// 도료보관조건1
						$('#js-indus-proc-info-reg-indus-pop-stock-state-temp').val('');
						// 도료보관조건2
						$('#js-indus-proc-info-reg-indus-pop-stock-state-humidity').val('');						
						
						// 특이사항
						window.indusProcInfoRegIndusPopEditor.SetBodyValue('');			
						
						//================== 공정 Coating 정보
						//도장 압력(Bar)
						$('#js-indus-proc-info-reg-indus-pop-coat-press').val('');
						// 토출량 
						$('#js-indus-proc-info-reg-indus-pop-discharge').val('');
						// 패턴폭 
						$('#js-indus-proc-info-reg-indus-pop-pattern-width').val('');
						// 예열기 설정 온도
						$('#js-indus-proc-info-reg-indus-pop-pre-heater-temp').val('');						
						// 예열기 통과 시간
						$('#js-indus-proc-info-reg-indus-pop-pre-heater-time').val('');						
						// Target Coating Thickness
						$('#js-indus-proc-info-reg-indus-pop-target-thickness').val('');
						// 건조로 통과 시간 
						$('#js-indus-proc-info-reg-indus-pop-oven-time').val('');						
						// Pitch time(sec)
						$('#js-indus-proc-info-reg-indus-pop-pitch-sec').val('');
						// 건조로 설정 온도
						$('#js-indus-proc-info-reg-indus-pop-oven-temp').val('');						

						//================== 제품 정보
						// 피도물 외관 (오염여부등)
						$('#js-indus-proc-info-reg-indus-pop-object-state').val('');
						// 제품 생산량
						$('#js-indus-proc-info-reg-indus-pop-prod-output').val('');
						// 제품 저장 기간
						$('#js-indus-proc-info-reg-indus-pop-prod-storage-term').val('');
						// 피도물 온도
						$('#js-indus-proc-info-reg-indus-pop-object-temp').val('');
						
						// 점도 측정시 온도
						$('#js-indus-proc-info-reg-indus-pop-visc-temp').val('');
						// 평량수행여부
						$('#js-indus-proc-info-reg-indus-pop-basis-weight-state').val('');
						// 퍼티 공정여부
						$('#js-indus-proc-info-reg-indus-pop-putty-proc-state').val('');
						// 퍼티 명칭
						$('#js-indus-proc-info-reg-indus-pop-putty-nm').val('');
						// 퍼티 두께
						$('#js-indus-proc-info-reg-indus-pop-putty-thickness').val('');
						// Sand paprering no.
						$('#js-indus-proc-info-reg-indus-pop-sand-paprer-no').val('');						
							
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
							addRowIndusInfoRegIndusPopupLotList(data[i]);
						}
					}	
					
					var trLength = $("[name=js-indus-proc-info-reg-indus-pop-lot-list-tr]").length;
					if(trLength == 0){ 
						var addData = {
							  items   : ""
							, itemsNm : ""
							, index   : 1
							, lotNos  : []
						};
						addRowIndusInfoRegIndusPopupLotList(addData);
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

	var applyIndusProcInfoRegIndusPopupProdData = function(data){  
		
		$("[name=js-indus-proc-info-reg-indus-pop-lot-list-prod-name][dataIndex=" + prodIndusItemsInfoRowIndex + "]").val(data.itemsNm);
		$("[name=js-indus-proc-info-reg-indus-pop-lot-list-prod-code][dataIndex=" + prodIndusItemsInfoRowIndex + "]").val(data.items);
	}			
	
	var prodIndusItemsInfoRowIndex = "";
	    
	
	// 제품명/LotNo Row 추가
	var addRowIndusInfoRegIndusPopupLotList = function(data){ 
	
		// 제품명 
		var html = indusProcInfoRegIndusPopupLotListTemplate(data);
		           
		$('#js-indus-proc-info-reg-indus-pop-lotList-append').before(html);			
		
		var rowspan = $("[name=js-indus-proc-info-reg-indus-pop-lot-list-tr]").length;
		$("#js-indus-proc-info-reg-indus-pop-lot-list-th").attr("rowspan", rowspan);	
		
		var lotList = data.lotNos;
		for(var i=0 ; i < lotList.length ; i++){
			var lotStr = '<li lotNo="'+ lotList[i].lotNo +'">'+ lotList[i].lotNo +'<button type="button" name="js-indus-proc-info-reg-indus-pop-lotList-lot-delete-button" lotNo="'+ lotList[i].lotNo +'" class="wp-spr-btn wp-close-sel"><span><spring:message code="TODO.KEY" text="닫기"/></span></button></li>';
			$("[name=js-indus-proc-info-reg-indus-pop-lot-list-lot-no-ul][dataIndex=" + data.index + "]").append(lotStr);
		}
		
		// 제품코드 조회 버튼 클릭
		$("[name=js-indus-proc-info-reg-indus-pop-lot-list-prod-button]").off().on("click", function(){
			prodIndusItemsInfoRowIndex = $(this).attr("dataIndex");
			initRetrieveProdItemsInfoList("js-indus-proc-info-reg-indus-popup");
		});
		
		$('[name=js-indus-proc-info-reg-indus-pop-lot-no]').off().on('keyup', function(e) {
			var $this = $(this);
			var lotNo = "";  
			if(e.which == 13 || this.value.length == 10){
				var dataIndex = $(this).attr("dataIndex");
				var name = this.name;
				
				lotNo = $(this).val();
				
				if (lotNo) {
					var listCheck = true;
					
					$('[name=js-indus-proc-info-reg-indus-pop-lot-list-lot-no-ul][dataIndex=' + dataIndex + "]").find("li").each(function() {
						var code = $(this).attr("lotNo");
						
						if(lotNo == code){
							listCheck = false;
						}
					});	
					
					if(listCheck){
						var lotStr = '<li lotNo="'+lotNo+'">'+lotNo+'<button type="button" name="js-indus-proc-info-reg-indus-pop-lotList-lot-delete-button" lotNo="'+lotNo+'" class="wp-spr-btn wp-close-sel"><span><spring:message code="TODO.KEY" text="닫기"/></span></button></li>';
						$("[name=js-indus-proc-info-reg-indus-pop-lot-list-lot-no-ul][dataIndex=" + dataIndex + "]").append(lotStr);
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
				$("[name=js-indus-proc-info-reg-indus-pop-lotList-lot-delete-button]").off().on("click", function(){
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
		$("[name=js-indus-proc-info-reg-indus-pop-lotList-lot-delete-button]").off().on("click", function(){
			var lotNo = $(this).attr("lotNo");
			$("li[lotNo=" + lotNo + "]").remove();
		});			
	};		
	
	// ++++++++++++++++++++++++++++++++++++++++++++++++
	// 측정자 팝업 선택값 바인딩
	// ++++++++++++++++++++++++++++++++++++++++++++++++
	var applyIndusProcInfoRegIndusPopupEmpData = function(data){
		$("#js-indus-proc-info-reg-indus-pop-emp").val(data.emp);
		$("#js-indus-proc-info-reg-indus-pop-emp-name").val(data.empNm);
	}
	
	var indusProcInfoSearchIndusListEvent = function(docNo, itemType) {
		
		// 측정자 조회 버튼 클릭
		$('#js-indus-proc-info-reg-indus-pop-emp-search-button').off().on('click', function(){
			initIndustryEmpRetrievePopup('js-indus-proc-info-reg-indus-popup');
		});
		
		// 저장 버튼 클릭
		$("#js-indus-proc-info-reg-indus-popup-save-button").off().on('click', function() {
			// Validation Check
			if(!validationCheckIndusProcInfoRegIndusPopup()){
				return;
			}
			
			var docNo				= $('#js-indus-proc-info-reg-indus-pop-docNo').val();		 		// 문서번호
			var orgDocNo        	= $('#js-indus-proc-info-reg-indus-pop-orgDocNo').val();    		// 원글 문서번호
			
			// 기본정보
			var itemType        	= $('#js-indus-proc-info-reg-indus-pop-item-type-combo').val();    	// 제품유형
			var cust            	= $('#js-indus-proc-info-reg-indus-pop-cust-combo').val();        	// 거래선
			var pcust      		 	= $('#js-indus-proc-info-reg-indus-pop-paintCust-combo').val();    	// 도장업체
			var factoryId       	= $('#js-indus-proc-info-reg-indus-pop-factoryId-combo').val();    	// 공장
			var measureDate        	= $('#js-indus-proc-info-reg-indus-pop-measure-date').val();		// 측정일자
			var measureEmp         	= $("#js-indus-proc-info-reg-indus-pop-emp").val();        			// 측정자
			
			// 적용 라인
			var lineId       		= $('#js-indus-proc-info-reg-indus-pop-line-combo').val();        	// 적용 라인
			
			// 소지 및 전처리 정보
			var applMaterial		= $('#js-indus-proc-info-reg-indus-pop-appl-material-combo').val();		// 적용소지
			var matThickness		= $('#js-indus-proc-info-reg-indus-pop-mat-thickness').val();		 	// 소지 두께(mm)
			var matWidth			= $('#js-indus-proc-info-reg-indus-pop-mat-width').val();		 		// 소지 폭(mm)
			var demand				= $('#js-indus-proc-info-reg-indus-pop-demand').val();		 			// 수요가
			var buyer				= $('#js-indus-proc-info-reg-indus-pop-buyer').val();		 			// 발주처
			var materialUse			= $('#js-indus-proc-info-reg-indus-pop-material-use-combo').val();		// 소지용도
			var matSetSite			= $('#js-indus-proc-info-reg-indus-pop-material-mat-set-site').val();	// 소재 설치 현장명
			
			// 공정정보 
			var procId				= $('#js-indus-proc-info-reg-indus-pop-proc-type-combo').val();		 	// 적용 공정
			
			// 공정 Coating 정보
			var coatPress			= $('#js-indus-proc-info-reg-indus-pop-coat-press').val();		 		// 도장 압력(Bar)
			var discharge			= $('#js-indus-proc-info-reg-indus-pop-discharge').val();		 		// 토출량(Bar)
			var patternWidth		= $('#js-indus-proc-info-reg-indus-pop-pattern-width').val();			// 패턴폭(cm)
			var preHeaterTemp		= $('#js-indus-proc-info-reg-indus-pop-pre-heater-temp').val();			// 예열기 설정 온도(℃)
			var preHeaterTime		= $('#js-indus-proc-info-reg-indus-pop-pre-heater-time').val();			// 예열기 통과 시간
			var targetThickness 	= $('#js-indus-proc-info-reg-indus-pop-target-thickness').val();		// Target Coating Thickness  
			var ovenTime			= $('#js-indus-proc-info-reg-indus-pop-oven-time').val();		 		// 건조로 통과 시간
			var pitchSec 			= $('#js-indus-proc-info-reg-indus-pop-pitch-sec').val();		 		// Pitch time(sec)
			var ovenTemp			= $('#js-indus-proc-info-reg-indus-pop-oven-temp').val();		 		// 건조로 설정 온도			
				
			// 제품 정보
			var itemList        	= [];        // 제품리스트
			var lotList         	= [];        // Lot리스트		
			var paintId 			= $("#js-indus-proc-info-reg-indus-pop-paint-id-combo").val(); 			// 도료 구분   				 
	        var paintResinId 		= $("#js-indus-proc-info-reg-indus-pop-paint-resin-id-combo").val(); 	// 도료 수지 타입	 		 
	        var objectState 		= $("#js-indus-proc-info-reg-indus-pop-object-state").val(); 			// 피도물 외관(오염여부등)	 	
	        var prodOutput 			= $("#js-indus-proc-info-reg-indus-pop-prod-output").val(); 			// 제품 생산량    			
	        var prodStorageTerm	 	= $("#js-indus-proc-info-reg-indus-pop-prod-storage-term").val(); 		// 제품 저장 기간    		
	        var objectTemp 			= $("#js-indus-proc-info-reg-indus-pop-object-temp").val(); 			// 피도물 온도    	
	        
	        var viscTemp 			= $("#js-indus-proc-info-reg-indus-pop-visc-temp").val(); 				// 점도 측정시 온도   			
	        var basisWeightState	= $("#js-indus-proc-info-reg-indus-pop-basis-weight-state").val(); 		// 평량수행여부	
	        var puttyProcState		= $("#js-indus-proc-info-reg-indus-pop-putty-proc-state").val(); 		// 퍼티 공정여부
	        
	        var puttyNm 			= $("#js-indus-proc-info-reg-indus-pop-putty-nm").val(); 				// 퍼티 명칭    			
	        var puttyThickness		= $("#js-indus-proc-info-reg-indus-pop-putty-thickness").val(); 		// 퍼티 두께  			
	        var sandPaprerNo		= $("#js-indus-proc-info-reg-indus-pop-sand-paprer-no").val(); 			// Sand paprering no.  			
			
	        // 희석 조건 
			var	diluentType			= $("#js-indus-proc-info-reg-indus-pop-diluent").val();			// 희석제 종류	
			var	diluentRate			= $("#js-indus-proc-info-reg-indus-pop-diluent-rate").val();			// 희석비율(%)	
			var	diluentVisc			= $("#js-indus-proc-info-reg-indus-pop-diluent-visc").val();			// 희석후 점도(sec)	
			var	viscTemp			= $("#js-indus-proc-info-reg-indus-pop-visc-temp").val();				// 점도 측정시온도(℃)
			var	catchState			= $("#js-indus-proc-info-reg-indus-pop-catch-state").val();				// 도료 유동 상태 (캐치팬內)
			var	filterState			= $("#js-indus-proc-info-reg-indus-pop-filter-state").val();	      	// 필터상태
	        
	    	// 환경 조건 
			var coatRoomTemp		= $("#js-indus-proc-info-reg-indus-pop-coat-room-temp").val();		 	// 도장실<br>온도(℃)
			var coatRoomHum 		= $("#js-indus-proc-info-reg-indus-pop-coat-room-hum").val();		 	// 도장실<br>습도(%)
			var workerState			= $("#js-indus-proc-info-reg-indus-pop-worker-state").val();		 	// 작업자환경
			var cleanState  		= $("#js-indus-proc-info-reg-indus-pop-clean-state").val();		 		// 도장공정 청결
			var moveStateTemp		= $("#js-indus-proc-info-reg-indus-pop-move-state-temp").val();			// 도료이송조건
			var moveStateHumidity	= $("#js-indus-proc-info-reg-indus-pop-move-state-humidity").val();		// 도료이송조건
			var stockStateTemp		= $("#js-indus-proc-info-reg-indus-pop-stock-state-temp").val();		// 도료보관조건
			var stockStateHumidity	= $("#js-indus-proc-info-reg-indus-pop-stock-state-humidity").val();	// 도료보관조건
			var remark 				= window.indusProcInfoRegIndusPopEditor.GetBodyValue();       			// 특이사항
			
			// 제품리스트, Lot리스트 정보
			$('[name=js-indus-proc-info-reg-indus-pop-lot-list-prod-code]').each(function(){
				var dataIndex = $(this).attr("dataIndex");
				var items     = $(this).val();
				if(!app.utils.isEmpty(items)){
					itemList.push({items: items});
					
					$('[name=js-indus-proc-info-reg-indus-pop-lot-list-lot-no-ul][dataIndex=' + dataIndex + ']').find("li").each(function(){
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
							$('#js-indus-proc-info-reg-indus-pop-item-type-combo').focus();
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
							$('#js-indus-proc-info-reg-indus-pop-cust-combo').focus();
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
							$('#js-indus-proc-info-reg-indus-pop-paintCust-combo').focus();
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
							$('#js-indus-proc-info-reg-indus-pop-factoryId-combo').focus();
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
							$('#js-indus-proc-info-reg-indus-pop-line-combo').focus();
						}
					}
				});
				return;
			}
			
			
			var param = {
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
					, preHeaterTemp         : preHeaterTemp
					, preHeaterTime         : preHeaterTime
					, ovenTime          	: ovenTime
					, ovenTemp           	: ovenTemp
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
					, viscTemp 		        : viscTemp 		
					, basisWeightState      : basisWeightState
					, puttyProcState	    : puttyProcState	  
					, puttyNm 		        : puttyNm 		
					, puttyThickness        : puttyThickness
					, sandPaprerNo	        : sandPaprerNo	

					, diluentType		    : diluentType		
					, diluentRate		    : diluentRate	
					, diluentVisc		    : diluentVisc	
					, viscTemp		        : viscTemp	
					, catchState		    : catchState	
					, filterState		    : filterState	
					
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
						indusProcInfoRegIndusPopupSaveHandler.request(param);
					}
				}
			});
		});
	};	
	
	//-------------------------------------------------
	// 저장 전 Validation Check
	//-------------------------------------------------
	var validationCheckIndusProcInfoRegIndusPopup = function(){
		
		var itemType        	= "";        // 제품유형
		var cust            	= "";        // 거래선
		var pcust		       	= "";        // 도장업체
		var factoryId       	= "";        // 공장
		var lineId    			= "";        // 라인
		var itemList        	= [];        // 제품리스트
		var lotList         	= [];        // Lot리스트
		
		var histDescription 	= "";        // 내용
		
		itemType            	= $('#js-indus-proc-info-reg-indus-pop-item-type-combo').val();
		cust               		= $('#js-indus-proc-info-reg-indus-pop-cust-combo').val();
		pcust                	= $('#js-indus-proc-info-reg-indus-pop-paintCust-combo').val();
		factoryId           	= $('#js-indus-proc-info-reg-indus-pop-factoryId-combo').val();
		lineId         			= $('#js-indus-proc-info-reg-indus-pop-line-combo').val();
		                                 
		histDescription 		= window.indusProcInfoRegPowderPopEditor.GetBodyValue();
		
		// 제품리스트, Lot리스트 정보
		$('[name=js-indus-proc-info-reg-indus-pop-lot-list-prod-code]').each(function(){
			var dataIndex = $(this).attr("dataIndex");
			var items     = $(this).val();
			
			if(!app.utils.isEmpty(items)){
				itemList.push({items: items});
				$('[name=js-indus-proc-info-reg-indus-pop-lot-list-lot-no-ul][dataIndex=' + dataIndex + ']').find("li").each(function(){
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
						$('#js-indus-proc-info-reg-indus-pop-item-type-combo').focus();
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
						$('#js-indus-proc-info-reg-indus-pop-cust-combo').focus();
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
						$('#js-indus-proc-info-reg-indus-pop-paintCust-combo').focus();
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
						$('#js-indus-proc-info-reg-indus-pop-factoryId-combo').focus();
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
						$('#js-indus-proc-info-reg-indus-pop-line-combo').focus();
					}
				}
			});
			return;
		}
		
		return true;
		
	};	
	
	//------------------------------------
	// 거래선 공정정보 등록 저장
	//------------------------------------
	var indusProcInfoRegIndusPopupSaveHandler = {
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
					$("#js-indus-proc-info-reg-indus-popup-close-button").click();
					
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
				, docNo            		: param.docNo                       // 문서번호          
				, orgDocNo         		: param.orgDocNo                    // 원글 문서번호          
				, itemType         		: param.itemType                    // 제품유형          
				, cust             		: param.cust                        // 거래선           
				, pcust        			: param.pcust                    	// 도장업체          
				, factoryId        		: param.factoryId                   // 공장            
				, lineId        		: param.lineId 		            	// 라인코드            
				, measureDate       	: param.measureDate.replace(/-/gi,"")  // 측정일자  
				, measureEmp        	: param.measureEmp                  // 담당자
				, procId		        : param.procId		          		// 적용공정
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
				, preHeaterTemp         : param.preHeaterTemp
				, preHeaterTime         : param.preHeaterTime
				, ovenTime          	: param.ovenTime
				, ovenTemp           	: param.ovenTemp
				, targetThickness       : param.targetThickness					
				, pitchSec         		: param.pitchSec					
                                         
				, itemList         		: param.itemList                
				, lotList          		: param.lotList 			
				, paintId         		: param.paintId        			
				, paintResinId         	: param.paintResinId   			
				, objectState         	: param.objectState    			
				, prodOutput         	: param.prodOutput     			
				, prodStorageTerm       : param.prodStorageTerm			
				, objectTemp         	: param.objectTemp     		
				, viscTemp 		        : param.viscTemp 		
				, basisWeightState      : param.basisWeightState
				, puttyProcState	    : param.puttyProcState	  
				, puttyNm 		        : param.puttyNm 		
				, puttyThickness        : param.puttyThickness
				, sandPaprerNo	        : param.sandPaprerNo	
                                          
				, diluentType		    : param.diluentType		
				, diluentRate		    : param.diluentRate	
				, diluentVisc		    : param.diluentVisc	
				, viscTemp		        : param.viscTemp	
				, catchState		    : param.catchState	
				, filterState		    : param.filterState	
				                         
				, coatRoomTemp         	: param.coatRoomTemp       			
				, coatRoomHum         	: param.coatRoomHum        			
				, workerState         	: param.workerState        			
				, cleanState         	: param.cleanState         			
				, moveStateTemp         : param.moveStateTemp      			
				, moveStateHumidity     : param.moveStateHumidity  			
				, stockStateTemp        : param.stockStateTemp     			
				, stockStateHumidity    : param.stockStateHumidity
				
				, remark    			: param.remark 
			};
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
		
	};		
		
</script>