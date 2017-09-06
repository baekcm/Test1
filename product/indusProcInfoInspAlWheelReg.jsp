<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.06.26] 공업 공통 팝업 HTML 엘리먼트" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="wp-dim-layer">
    <div class="wp-dimBg"></div>
    <div id="js-industry-indus-proc-info-alwheel-detail-popup" class="wp-pop-layer wp-pop-w940 wp-box-sizing wp-car-popup">
    	<div class="wp-pop-title">
    		<h1><spring:message code="TODO.KEY" text="거래선 공정정보 등록"/></h1>
    		<button type="button" id="js-indus-proc-info-reg-wheel-popup-close-button" class="wp-btn-close-layer wp-spr-btn"><span>닫기</span></button>
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
										<select id="js-indus-proc-info-reg-wheel-pop-item-type-combo" title="항목 개수 설정" disabled="disabled"></select>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="거래선"/></th>
								<td>
									<div class="wp-ui-select wp-wd100p"> 
										<select id="js-indus-proc-info-reg-wheel-pop-cust-combo" title=""></select>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도장업체"/></th>
								<td>
									<div class="wp-ui-select wp-wd100p"> 
										<select id="js-indus-proc-info-reg-wheel-pop-paintCust-combo" title="" ></select>
									</div>
								</td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="공장"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd100p">
										<select id="js-indus-proc-info-reg-wheel-pop-factoryId-combo" title="항목 개수 설정"></select>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="측정일자"/></th>
								<td><input type="text" name="" id="js-indus-proc-info-reg-wheel-pop-measure-date" title="내용입력" class="wp-inp-datepicker maxdate wp-wd100p" placeholder="날짜입력" value=""></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="측정자"/></th>
								<td>
									<input type="text"    id="js-indus-proc-info-reg-wheel-pop-emp-name" title="내용입력" class="wp-wd108" value="${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}" disabled="disabled">
									<input type="hidden"  id="js-indus-proc-info-reg-wheel-pop-emp" value="${sessionScope.LoginUserInfo.empNum}" />
									<input type="hidden"  id="js-indus-proc-info-reg-wheel-pop-session-emp"   value="${sessionScope.LoginUserInfo.empNum}">
									<input type="hidden"  id="js-indus-proc-info-reg-wheel-pop-session-emp-name"  value="${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}">
									<button type="button" id="js-indus-proc-info-reg-wheel-pop-emp-search-button" data-link="js-industry-emp-retrieve-popup" data-depth="2" class="wp-btn small gray cr3 wp-btn-pop">조회</button>
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
										<select title="" id="js-indus-proc-info-reg-wheel-pop-line-combo"></select>
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
										<select title="항목 개수 설정" id="js-indus-proc-info-reg-wheel-pop-appl-material-combo"></select>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="수요가"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-pop-demand" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="발주처"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-pop-buyer" name="" title="내용입력"></td>
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
										<select title="항목 개수 설정" id="js-indus-proc-info-reg-wheel-pop-proc-type-combo"></select>
										<input type="hidden" id="js-indus-proc-info-reg-wheel-pop-proc-type-combo_value" />
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //적용 공정 정보 -->
				<!-- 공정 Coating 정보 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="공정 Coating 정보"/></h2>
				<div id="wheel-coating-powder" class="wp-table-st1 wp-issue-apply">
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
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도장 전압(KV)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-pop-coat-voltage" name="" title="내용입력">
									<input type="hidden" id="js-indus-proc-info-reg-wheel-pop-coat-voltage-hidden" name="" title="내용입력">
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="토출량(Bar)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-pop-discharge"     name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="Target Coating Thickness(㎛)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-pop-target-thickness" name="" title="내용입력"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="건조로 통과 시간<br>(min)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-pop-oven-time" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="건조로 설정 온도<br>(℃)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-pop-oven-temp" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="Pitch time(sec)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-pop-pitch-sec" name="" title="내용입력"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div id="wheel-coating-liquid" class="wp-table-st1 wp-issue-apply">
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
								<th class="wp-ar"><spring:message code="TODO.KEY" text="토출량(Bar)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-liquid-pop-discharge" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="Target Coating Thickness(㎛)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-liquid-pop-target-thickness"     name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="Pitch time(sec)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-liquid-pop-pitch-sec" name="" title="내용입력"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="건조로 통과 시간<br>(min)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-liquid-pop-oven-time" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="건조로 설정 온도<br>(℃)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-liquid-pop-oven-temp" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="셋팅룸 온도/습도"/></th>
								<td class="wp-al">
									<input type="text"   name="" id="js-indus-proc-info-reg-wheel-liquid-pop-set-room-temp"            title="내용입력" class="wp-wd49p">
									<input type="text"   name="" id="js-indus-proc-info-reg-wheel-liquid-pop-set-room-humidity" 	   title="내용입력" class="wp-wd49p">	
									<input type="hidden" name="" id="js-indus-proc-info-reg-wheel-liquid-pop-set-room-temp-hidden"     title="내용입력" class="wp-wd49p">
									<input type="hidden" name="" id="js-indus-proc-info-reg-wheel-liquid-pop-set-room-humidity-hidden" title="내용입력" class="wp-wd49p">																
								</td>
							</tr>
						</tbody>
					</table>
				</div>				
				
				<!-- //공정 Coating 정보 -->				
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
							 
							<tr id="js-indus-proc-info-reg-wheel-pop-lotList-append">
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도료 구분"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd100p">
										<select title="항목 개수 설정" id="js-indus-proc-info-reg-wheel-pop-paint-id-combo"></select>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도료 수지 타입"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd100p">
										<select title="항목 개수 설정" id="js-indus-proc-info-reg-wheel-pop-paint-resin-id-combo"></select>
									</div>
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="피도물 외관"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-pop-object-state" name="" title="내용입력"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="제품 생산량(㎏)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-pop-prod-output" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="제품 저장 기간<br>(개월)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-pop-prod-storage-term" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="피도물 온도(℃)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-pop-object-temp" name="" title="내용입력"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //제품 정보 -->
				<!-- 희석 조건 -->			
				<div id="wheel-liquid">
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
										<div class="wp-ui-select wp-wd100p">
											 <input type="text" id="js-indus-proc-info-reg-wheel-pop-diluent" title="내용입력">
											<input type="hidden" id="js-indus-proc-info-reg-wheel-pop-diluent-hidden" name="" title="내용입력">
										</div>
									</td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="희석비율(%)"/></th>
									<td class="wp-al">
										<input type="text" name="" id="js-indus-proc-info-reg-wheel-pop-diluent-rate" title="내용입력">
										<input type="hidden" name="" id="js-indus-proc-info-reg-wheel-pop-diluent-rate-hidden" title="내용입력">
									</td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="희석후 점도(sec)"/></th>
									<td class="wp-al">
										<input type="text" name="" id="js-indus-proc-info-reg-wheel-pop-diluent-visc" title="내용입력">
										<input type="hidden" name="" id="js-indus-proc-info-reg-wheel-pop-diluent-visc-hidden" title="내용입력">
									</td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="점도 측정시<br>온도(℃)"/></th>
									<td class="wp-al">
										<input type="text" name="" id="js-indus-proc-info-reg-wheel-pop-visc-temp" title="내용입력">
										<input type="hidden" name="" id="js-indus-proc-info-reg-wheel-pop-visc-temp-hidden" title="내용입력">
									</td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="캐치팬內 도료<br>유동 상태"/></th>
									<td class="wp-al">
										<input type="text" name="" id="js-indus-proc-info-reg-wheel-pop-catch-state" title="내용입력">
										<input type="hidden" name="" id="js-indus-proc-info-reg-wheel-pop-catch-state-hidden" title="내용입력">
									</td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="필터상태"/></th>
									<td class="wp-al">
										<input type="text" name="" id="js-indus-proc-info-reg-wheel-pop-filter-state" title="내용입력">
										<input type="hidden" name="" id="js-indus-proc-info-reg-wheel-pop-filter-state-hidden" title="내용입력">
									</td>
								</tr>
							</tbody>
						</table>
					</div>
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
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-pop-coat-room-temp" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도장실 습도(%)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-pop-coat-room-hum" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="작업자 환경<br>(피복착용,오염)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-pop-worker-state" name="" title="내용입력"></td>
							</tr>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도장공정 청결<br>상태(집진설비)"/></th>
								<td class="wp-al"><input type="text" id="js-indus-proc-info-reg-wheel-pop-clean-state" name="" title="내용입력"></td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도료 이송 조건<br>5~25℃, 85%↓"/></th>
								<td class="wp-al">
									<input type="text" name="" id="js-indus-proc-info-reg-wheel-pop-move-state-temp" title="내용입력" class="wp-wd49p">
									<input type="text" name="" id="js-indus-proc-info-reg-wheel-pop-move-state-humidity" title="내용입력" class="wp-wd49p">
								</td>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="도료 보관 조건<br>5~25℃,85%↓"/></th>
								<td class="wp-al">
									<input type="text" name="" id="js-indus-proc-info-reg-wheel-pop-stock-state-temp" title="내용입력" class="wp-wd49p">
									<input type="text" name="" id="js-indus-proc-info-reg-wheel-pop-stock-state-humidity" title="내용입력" class="wp-wd49p">
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
						
						<textarea id=js-indus-proc-info-reg-wheel-pop-editor name="js-indus-proc-info-reg-wheel-pop-editor"></textarea>
						<script type="text/javascript" src="/crosseditor/js/namo_scripteditor.js"></script>
						<script type="text/javascript">
						// ------------------------------------
						// namo web editor
						// ------------------------------------
						var indusProcInfoRegWheelPopEditor = null;
						
						var indusProcInfoRegWheelPopEditorParams = {
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
						
						var initIndusProcInfoRegWheelPopEditor = function() {
							// ------------------------------------
							// 나모 Editor 인스턴스 생성
							// ------------------------------------
						    if (indusProcInfoRegWheelPopEditor == null) {
						    	indusProcInfoRegWheelPopEditor = new NamoSE('js-indus-proc-info-reg-wheel-pop-editor');
						    	indusProcInfoRegWheelPopEditor.params = indusProcInfoRegWheelPopEditorParams;
						    	indusProcInfoRegWheelPopEditor.EditorStart();
						    }
						};
						
						initIndusProcInfoRegWheelPopEditor();
						
						</script>
					</div>
				</div>
				<!-- //특이사항 -->
			<!-- // scroll Area -->
			</div>
		
			<div class="wp-btn-area">     
				<button type="button" id="js-indus-proc-info-reg-wheel-popup-save-button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="저장"/></button>
				<input type="hidden"  id="js-indus-proc-info-reg-wheel-pop-docNo"     value="">
				<input type="hidden"  id="js-indus-proc-info-reg-wheel-pop-orgDocNo"  value="">
				<input type="hidden"  id="js-indus-proc-info-reg-wheel-pop-item-type" value="">				
			</div>
		</div>
	</div>
</div>
<script id="js-template-indus-proc-info-reg-wheel-pop-lotList-list" type="text/x-handlebars-template">
	<tr name="js-indus-proc-info-reg-wheel-pop-lot-list-tr" dataIndex="{{index}}">
		{{#setLotListHeader}}
		<th class="wp-ar" rowspan="2" id="js-indus-proc-info-reg-wheel-pop-lot-list-th"><spring:message code="TODO.KEY" text="제품명/Lot No."/></th>
		{{/setLotListHeader}}
		<td colspan="5" class="wp-al">
			<button type="button" name="js-indus-proc-info-reg-wheel-pop-lot-list-prod-button" dataIndex="{{index}}" data-link="js-prod-info-popup" data-depth="2" class="wp-btn gray cr3 wp-mr10 wp-btn-pop"><spring:message code="TODO.KEY" text="제품코드 조회"/></button>
			<input type="text" name="js-indus-proc-info-reg-wheel-pop-lot-list-prod-code" dataIndex="{{index}}" value="{{items}}"    class="wp-wd110" disabled="disabled">
			<input type="text" name="js-indus-proc-info-reg-wheel-pop-lot-list-prod-name" dataIndex="{{index}}" value="{{itemsNm}}"  class="wp-wd160" disabled="disabled">
			<div class="wp-style-sel wp-wd293 wp-inblock">
				<ul name="js-indus-proc-info-reg-wheel-pop-lot-list-lot-no-ul" dataIndex="{{index}}"></ul>
				<input type="text" name="js-indus-proc-info-reg-wheel-pop-lot-no" dataIndex="{{index}}" class="wp-nodesign">
			</div>
		</td>
	</tr>
</script>

<script type="text/javascript">

	
	var indusProcInfoRegWheelPopupLotListTemplate;
	var procItemList = []; 
	     
	var initIndusProcInfoRegWheelPopup = function(docNo, itemType) { 
		 
		var source = $('#js-template-indus-proc-info-reg-wheel-pop-lotList-list').html();
		indusProcInfoRegWheelPopupLotListTemplate = Handlebars.compile(source);
		
		Handlebars.registerHelper('setLotListHeader', function(options) { 
			if (this.index == '1'){
				return options.fn(this);
			} else {
				return options.inverse(this);
			}
		});		
	
		$("[name=js-indus-proc-info-reg-wheel-pop-lot-list-tr]").remove();

		initDataIndusProcInfoRegWheelPopup();
		
		var today = fn_getTodayDate();
		
		$("#js-indus-proc-info-reg-wheel-pop-measure-date").val(today);
		
		// 상세조회(수정)
		$("#js-indus-proc-info-reg-wheel-pop-docNo").val(docNo);
		$("#js-indus-proc-info-reg-wheel-pop-item-type").val(itemType);
		
		// 상세조회 
		retrieveIndProcWheelDetail.request(docNo, itemType);
		
		onlyDecimal($('#js-indus-proc-info-reg-wheel-pop-discharge'), 5, 1);
		onlyDecimal($('#js-indus-proc-info-reg-wheel-pop-coat-voltage'), 5, 1);
		onlyDecimal($('#js-indus-proc-info-reg-wheel-pop-object-temp'), 5, 1);
		onlyDecimal($('#js-indus-proc-info-reg-wheel-pop-prod-output'), 5, 1);
		onlyDecimal($('#js-indus-proc-info-reg-wheel-pop-prod-storage-term'), 5, 1);
		
		onlyInteger($('#js-indus-proc-info-reg-wheel-pop-coat-room-temp'));
		onlyInteger($('#js-indus-proc-info-reg-wheel-pop-coat-room-hum'));
		onlyInteger($('#js-indus-proc-info-reg-wheel-pop-target-thickness'));
		onlyInteger($('#js-indus-proc-info-reg-wheel-pop-pitch-sec'));
		onlyInteger($('#js-indus-proc-info-reg-wheel-pop-move-state-temp'));
		onlyInteger($('#js-indus-proc-info-reg-wheel-pop-move-state-humidity'));
		onlyInteger($('#js-indus-proc-info-reg-wheel-pop-stock-state-temp'));
		onlyInteger($('#js-indus-proc-info-reg-wheel-pop-stock-state-humidity'));		
		
		onlyInteger($('#js-indus-proc-info-reg-wheel-pop-oven-time'));
		onlyInteger($('#js-indus-proc-info-reg-wheel-pop-oven-temp'));
		
		
		
		onlyInteger($('#js-indus-proc-info-reg-wheel-liquid-pop-target-thickness'));
		onlyInteger($('#js-indus-proc-info-reg-wheel-liquid-pop-pitch-sec'));
		onlyInteger($('#js-indus-proc-info-reg-wheel-liquid-pop-oven-temp'));
		onlyInteger($('#js-indus-proc-info-reg-wheel-liquid-pop-oven-humidity'));
		onlyInteger($('#js-indus-proc-info-reg-wheel-liquid-pop-set-room-temp'));
		onlyInteger($('#js-indus-proc-info-reg-wheel-liquid-pop-set-room-humidity'));
		
		indusProcInfoSearchWheelListEvent(docNo, itemType); 
		 
	};
	
 
	//-------------------------------------------------
	// 데이터 초기화
	//-------------------------------------------------
	var initDataIndusProcInfoRegWheelPopup = function() {
		$("#js-indus-proc-info-reg-wheel-pop-emp").val($("#js-indus-proc-info-reg-wheel-pop-session-emp").val());
		$("#js-indus-proc-info-reg-wheel-pop-emp-name").val($("#js-indus-proc-info-reg-wheel-pop-session-emp-name").val());
		$("#js-indus-proc-info-reg-wheel-pop-measure-date").val(fn_getTodayDate()).mask('9999-99-99');
		$("#js-indus-proc-info-reg-wheel-pop-docNo").val('');
		$("#js-indus-proc-info-reg-wheel-pop-orgDocNo").val('');
		
		window.indusProcInfoRegIndusPopEditor.SetBodyValue('');
		
	};		
	
	// ------------------------------------------------
	// 제품유형 콤보 조회
	// ------------------------------------------------
	var retrieveWheelItemTypeList = {  
		success: function(response, status, jqueryXHR) {
			
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					console.log("wheel 제품유형 콤보 조회 1 ");
					
					var data = response.rs;
					
					$('#js-indus-proc-info-reg-wheel-pop-item-type-combo').find('option').remove();

					for(var i=0; i < data.length; i++) {
						$('#js-indus-proc-info-reg-wheel-pop-item-type-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}	   
					
					$("#js-indus-proc-info-reg-wheel-pop-item-type-combo > option[value='"+ jsCommon.itemType.getItem().code +"']").attr("selected", "true");
					var itemType = $('#js-indus-proc-info-reg-wheel-pop-item-type-combo').val();
					
					// 제품유형 변경 시 거래선 combo 재조회
					$('#js-indus-proc-info-reg-wheel-pop-item-type-combo').off().on("change", function(){
						retrieveWheelCustList.request();
						retrieveWheelPcustList.request();
						retrieveWheelFactoryList.request();
						retrieveWheelLineList.request();
						retrieveWheelProcList.request();
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
	var retrieveWheelCustList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					var data = response.rs;
					
					console.log("wheel 거래선 콤보 조회 2 " + data.length);
					
					$('#js-indus-proc-info-reg-wheel-pop-cust-combo').find('option').remove();
					
					for(var i=0; i < data.length; i++) {
						$('#js-indus-proc-info-reg-wheel-pop-cust-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}
					
					// 거래선 변경 시 도장업체 combo 재조회
					$('#js-indus-proc-info-reg-wheel-pop-cust-combo').off().on("change", function(){
						retrieveWheelPcustList.request();
						retrieveWheelFactoryList.request();
						retrieveWheelLineList.request();
						retrieveWheelProcList.request();
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
			
			var params = {
				service: 'ind.common',
				method: 'retrieveCustList',
				itemType : $('#js-indus-proc-info-reg-wheel-pop-item-type-combo').val()
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
	var retrieveWheelPcustList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					console.log("wheel 도장업체 콤보 조회 3 ");
					
					var data = response.rs;
					
					$('#js-indus-proc-info-reg-wheel-pop-paintCust-combo').find('option').remove();
					
					for(var i=0; i < data.length; i++) {
						$('#js-indus-proc-info-reg-wheel-pop-paintCust-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}
					
					// 도장업체 변경 시 공장 combo 재조회
					$('#js-indus-proc-info-reg-wheel-pop-paintCust-combo').off().on("change", function(){
						retrieveWheelFactoryList.request();
						retrieveWheelLineList.request();
						retrieveWheelProcList.request();
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
				service: 'ind.common',
				method: 'retrievePcustList',
				itemType  : $('#js-indus-proc-info-reg-wheel-pop-item-type-combo').val(),
				cust      : $('#js-indus-proc-info-reg-wheel-pop-cust-combo').val()
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
	var retrieveWheelFactoryList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					
					console.log("wheel 공장 콤보 조회 4 ");
					
					var data = response.rs;
					 
					$('#js-indus-proc-info-reg-wheel-pop-factoryId-combo').find('option').remove();
					
					for(var i=0; i < data.length; i++) {
						$('#js-indus-proc-info-reg-wheel-pop-factoryId-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}
					
					// 공장 변경 시 - 라인 combo 재조회
					$('#js-indus-proc-info-reg-wheel-pop-factoryId-combo').off().on("change", function(){
						retrieveWheelLineList.request();
						retrieveWheelProcList.request();
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
				itemType  : $('#js-indus-proc-info-reg-wheel-pop-item-type-combo').val(),
				cust      : $('#js-indus-proc-info-reg-wheel-pop-cust-combo').val(),
				paintCust : $('#js-indus-proc-info-reg-wheel-pop-paintCust-combo').val()
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
	var retrieveWheelLineList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					
					console.log("wheel 라인 콤보 조회 5 ");
					
					var data = response.rs;
					 
					$('#js-indus-proc-info-reg-wheel-pop-line-combo').find('option').remove();
					
					for(var i=0; i < data.length; i++) {
						$('#js-indus-proc-info-reg-wheel-pop-line-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}
					
					// 라인 변경 시 - 공정 combo 재조회
					$('#js-indus-proc-info-reg-wheel-pop-line-combo').off().on("change", function(){
						retrieveWheelProcList.request();
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
				itemType  : $('#js-indus-proc-info-reg-wheel-pop-item-type-combo').val(),
				cust      : $('#js-indus-proc-info-reg-wheel-pop-cust-combo').val(),
				paintCust : $('#js-indus-proc-info-reg-wheel-pop-paintCust-combo').val(),
				factoryId : $('#js-indus-proc-info-reg-wheel-pop-factoryId-combo').val()
			};
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);				
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	
	// 공정 콤보 조회
	var retrieveWheelProcList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					
					console.log("WHEEL 공정 콤보 조회");
					
					var data = response.rs;
					 
					$('#js-indus-proc-info-reg-wheel-pop-proc-type-combo').find('option').remove();
					
					for(var i=0; i < data.length; i++) {
						$('#js-indus-proc-info-reg-wheel-pop-proc-type-combo').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
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
				cust      	: $('#js-indus-proc-info-reg-wheel-pop-cust-combo').val(),
				paintCust 	: $('#js-indus-proc-info-reg-wheel-pop-paintCust-combo').val(),
				factoryId 	: $('#js-indus-proc-info-reg-wheel-pop-factoryId-combo').val(),
				lineId 		: $('#js-indus-proc-info-reg-wheel-pop-line-combo').val()
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
	var retrieveIndProcWheelDetail = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
						
					var data = response.rs;
					// 제품유형
					 
					retrieveWheelItemTypeList.request();
 
					// 적용소지
					$('#js-indus-proc-info-reg-wheel-pop-appl-material-combo').find('option').remove();
					
					for(var i=0; i < data.matKindList.length; i++) {
						$('#js-indus-proc-info-reg-wheel-pop-appl-material-combo').append("<option value='"+ data.matKindList[i].code +"'>"+ data.matKindList[i].codeNm +"</option>");
					}
					
					// 적용 공정
					 
					$("#js-indus-proc-info-reg-wheel-pop-proc-type-combo").find('option').remove();
					for(var i=0; i<data.procList.length; i++) {
						$("#js-indus-proc-info-reg-wheel-pop-proc-type-combo").append("<option value='"+data.procList[i].code+"'>"+ data.procList[i].codeNm +"</option>");
						
						$('#js-indus-proc-info-reg-wheel-pop-proc-type-combo_value').val(data.procList[0].remark2);
						procItemList.push({
					        code    : data.procList[i].code
					      , remark2 : data.procList[i].remark2
						});						
					}			
					
					$('#js-indus-proc-info-reg-wheel-pop-proc-type-combo').off().on("change", function() {
						
					 	for ( var i=0; i<procItemList.length; i++) {
					 		 
					 		if (procItemList[i].code == $('#js-indus-proc-info-reg-wheel-pop-proc-type-combo').val()) {
					 			if (procItemList[i].remark2 == "POWDER") {
									$('#wheel-coating-powder').show();
									$('#wheel-coating-liquid').hide();
									$('#wheel-liquid').hide();
									$('#js-indus-proc-info-reg-wheel-pop-proc-type-combo_value').val(procItemList[i].remark2);
					 			} else if (procItemList[i].remark2 == "LIQUID") {
									$('#wheel-coating-liquid').show();
									$('#wheel-liquid').show();
									$('#wheel-coating-powder').hide();	
									$('#js-indus-proc-info-reg-wheel-pop-proc-type-combo_value').val(procItemList[i].remark2);
					 			}
					 		}
					 	}
					});
					
					// 도료구분 
					$("#js-indus-proc-info-reg-wheel-pop-paint-id-combo").find('option').remove();
					for(var i=0; i<data.paintList.length; i++) {
						$("#js-indus-proc-info-reg-wheel-pop-paint-id-combo").append("<option value='"+data.paintList[i].code+"'>"+ data.paintList[i].codeNm +"</option>");
					}
					
					// 도료 수지 타입
					$("#js-indus-proc-info-reg-wheel-pop-paint-resin-id-combo").find('option').remove();
					for(var i=0; i<data.resinList.length; i++) {
						$("#js-indus-proc-info-reg-wheel-pop-paint-resin-id-combo").append("<option value='"+data.resinList[i].code+"'>"+ data.resinList[i].codeNm +"</option>");
					}				
					
					// ----------------------------------------
					// 공통코드   - START
					// ----------------------------------------
											 
					// 상세정보(수정)
					if (response.rs.standard.length > 0) {
						
						standard = response.rs.standard[0];
						
						// 마스터 부분
						
						// 제품 유형						
						$('#js-indus-proc-info-reg-wheel-pop-item-type-combo').val(standard.itemType);
						retrieveWheelCustList.request();
						retrieveWheelPcustList.request();
						retrieveWheelFactoryList.request();
						retrieveWheelLineList.request();
						 
						$('#js-indus-proc-info-reg-wheel-pop-cust-combo').val(standard.cust); 
						retrieveWheelPcustList.request();
						
						// 도장업체
						$('#js-indus-proc-info-reg-wheel-pop-paintCust-combo').val(standard.pcust);
						retrieveWheelFactoryList.request();
						
						// 공장
						$('#js-indus-proc-info-reg-wheel-pop-factoryId-combo').val(standard.factoryId);
						retrieveWheelLineList.request();
					
						//라인
						$('#js-indus-proc-info-reg-wheel-pop-line-combo').val(standard.lineId);
						
						// 측정일자
						$('#js-indus-proc-info-reg-wheel-pop-measure-date').val(standard.measureDate);
						
						// 측정자
						$('#js-indus-proc-info-reg-wheel-pop-emp').val(standard.measureEmp);
						$('#js-indus-proc-info-reg-wheel-pop-emp-name').val(standard.measureEmpNm); // 이름만 필요...현재 "IT생산/품질팀 최형규사원"
						

						//================== 소지 및 전처리 정보
						// 적용소지
						if(standard.applMaterial != null){
							$('#js-indus-proc-info-reg-wheel-pop-appl-material-combo').val(standard.applMaterial);
						}
						// 수요가
						$('#js-indus-proc-info-reg-wheel-pop-demand').val(standard.demand);
						// 발주처
						$('#js-indus-proc-info-reg-wheel-pop-buyer').val(standard.buyer);
						
						//================ 환경 조건 
						// 도장실<br>온도(℃)
						$('#js-indus-proc-info-reg-wheel-pop-coat-room-temp').val(standard.coatRoomTemp);
						// 도장실<br>습도(%)
						$('#js-indus-proc-info-reg-wheel-pop-coat-room-hum').val(standard.coatRoomHum);
						// 작업자환경
						$('#js-indus-proc-info-reg-wheel-pop-worker-state').val(standard.workerState);
						// 도장공정 청결
						$('#js-indus-proc-info-reg-wheel-pop-clean-state').val(standard.cleanState);
						// 도료이송조건1
						$('#js-indus-proc-info-reg-wheel-pop-move-state-temp').val(standard.moveStateTemp);
						// 도료이송조건2
						$('#js-indus-proc-info-reg-wheel-pop-move-state-humidity').val(standard.moveStateHumidity);
						// 도료보관조건1
						$('#js-indus-proc-info-reg-wheel-pop-stock-state-temp').val(standard.stockStateTemp);
						// 도료보관조건2
						$('#js-indus-proc-info-reg-wheel-pop-stock-state-humidity').val(standard.stockStateHumidity);		
						
						// 희석제 종류
						$('#js-indus-proc-info-reg-wheel-pop-diluent').val(standard.diluentType);	
						$('#js-indus-proc-info-reg-wheel-pop-diluent-hidden').val(standard.diluentType);
						
						// 희석비율(%)
						$('#js-indus-proc-info-reg-wheel-pop-diluent-rate').val(standard.diluentRate);
						$('#js-indus-proc-info-reg-wheel-pop-diluent-rate-hidden').val(standard.diluentRate);
						// 희석후 점도(sec)
						$('#js-indus-proc-info-reg-wheel-pop-diluent-visc').val(standard.diluentVisc);
						$('#js-indus-proc-info-reg-wheel-pop-diluent-visc-hidden').val(standard.diluentVisc);
						// 점도 측정시 온도(℃)
						$('#js-indus-proc-info-reg-wheel-pop-visc-temp').val(standard.viscTemp);
						$('#js-indus-proc-info-reg-wheel-pop-visc-temp-hidden').val(standard.viscTemp);
						// 캐치팬內 도료 유동 상태
						$('#js-indus-proc-info-reg-wheel-pop-catch-state').val(standard.catchState);
						$('#js-indus-proc-info-reg-wheel-pop-catch-state-hidden').val(standard.catchState);
						// 필터상태
						$('#js-indus-proc-info-reg-wheel-pop-filter-state').val(standard.filterState);	
						$('#js-indus-proc-info-reg-wheel-pop-filter-state-hidden').val(standard.filterState);	
						
						
						//====================
						
						window.indusProcInfoRegWheelPopEditor.SetBodyValue(standard.remark);
						
	         			// 디테일 부분 : 공정 정보, 공정 Coating Roll 정보, 제품 정보 아래 부분
	         			if(response.rs.detail.length > 0) {
	         				
	         				var detail = response.rs.detail[0];
	         				
							//================== 적용 공정 정보
							// 적용 공정
							if (detail.procId != null) {
								$('#js-indus-proc-info-reg-wheel-pop-proc-type-combo').val(detail.procId);	 

								for ( var i=0; i<procItemList.length; i++) {
							 		if (procItemList[i].code == detail.procId) {
							 			if (procItemList[i].remark2 == "POWDER") {
											$('#js-indus-proc-info-reg-wheel-pop-proc-type-combo_value').val(procItemList[i].remark2);
							 			} else if (procItemList[i].remark2 == "LIQUID") {
											$('#js-indus-proc-info-reg-wheel-pop-proc-type-combo_value').val(procItemList[i].remark2);
							 			}
							 		}
							 	}
							}
							
							//================== 공정 Coating 정보
							// 본체 경우
							// 도장 전압(kv)
							$('#js-indus-proc-info-reg-wheel-pop-coat-voltage').val(detail.coatVoltage);
							$('#js-indus-proc-info-reg-wheel-pop-coat-voltage-hidden').val(detail.coatVoltage);
							// 토출량 
							$('#js-indus-proc-info-reg-wheel-pop-discharge').val(detail.discharge);
							// Target Coating Thickness
							$('#js-indus-proc-info-reg-wheel-pop-target-thickness').val(detail.targetThickness);
							// 건조로 통과 시간 
							$('#js-indus-proc-info-reg-wheel-pop-oven-time').val(detail.ovenTime);										
							// 건조로 설정 온도
							$('#js-indus-proc-info-reg-wheel-pop-oven-temp').val(detail.ovenTemp);			
							// Pitch time(sec)
							$('#js-indus-proc-info-reg-wheel-pop-pitch-sec').val(detail.pitchSec);			
							
							// 공업 경우
							// 토출량 
							$('#js-indus-proc-info-reg-wheel-liquid-pop-discharge').val(detail.discharge);
							// Target Coating Thickness
							$('#js-indus-proc-info-reg-wheel-liquid-pop-target-thickness').val(detail.targetThickness);
							// 건조로 통과 시간 
							$('#js-indus-proc-info-reg-wheel-liquid-pop-oven-time').val(detail.ovenTime);										
							// 건조로 설정 온도
							$('#js-indus-proc-info-reg-wheel-liquid-pop-oven-temp').val(detail.ovenTemp);			
							// Pitch time(sec)
							$('#js-indus-proc-info-reg-wheel-liquid-pop-pitch-sec').val(detail.pitchSec);		
							//셋팅룸 온도
							$('#js-indus-proc-info-reg-wheel-liquid-pop-set-room-temp').val(detail.setRoomTemp);
							$('#js-indus-proc-info-reg-wheel-liquid-pop-set-room-temp-hidden').val(detail.setRoomTemp);
							//셋팅룸 온도
							$('#js-indus-proc-info-reg-wheel-liquid-pop-set-room-humidity').val(detail.setRoomHumidity);
							$('#js-indus-proc-info-reg-wheel-liquid-pop-set-room-humidity-hidden').val(detail.setRoomHumidity);

							//================== 제품 정보
							// 도료 구분
							if (detail.paintId != null) {
								$('#js-indus-proc-info-reg-wheel-pop-paint-id-combo').val(detail.paintId);	
							}
							// 도료 수지 타입
							if (detail.paintResinId != null) { 
								$('#js-indus-proc-info-reg-wheel-pop-paint-resin-id-combo').val(detail.paintResinId);	
							}					
							// 피도물 외관 (오염여부등)
							$('#js-indus-proc-info-reg-wheel-pop-object-state').val(detail.objectState);
							// 제품 생산량
							$('#js-indus-proc-info-reg-wheel-pop-prod-output').val(detail.prodOutput);
							// 제품 저장 기간
							$('#js-indus-proc-info-reg-wheel-pop-prod-storage-term').val(detail.prodStorageTerm);
							// 피도물 온도
							$('#js-indus-proc-info-reg-wheel-pop-object-temp').val(detail.objectTemp);
							 
	         			}
					} else {
						
						$('#js-indus-proc-info-reg-wheel-pop-item-type-combo').val(jsCommon.itemType.getItem().code );
						retrieveWheelCustList.request();
						retrieveWheelPcustList.request();
						retrieveWheelFactoryList.request();
						retrieveWheelLineList.request();
						retrieveWheelProcList.request();
						 
						//================== 소지 및 전처리 정보
						// 적용소지
						// 수요가
						$('#js-indus-proc-info-reg-wheel-pop-demand').val('');
						// 발주처
						$('#js-indus-proc-info-reg-wheel-pop-buyer').val('');
						
						//================ 환경 조건 
						// 도장실<br>온도(℃)
						$('#js-indus-proc-info-reg-wheel-pop-coat-room-temp').val('');
						// 도장실<br>습도(%)
						$('#js-indus-proc-info-reg-wheel-pop-coat-room-hum').val('');
						// 작업자환경
						$('#js-indus-proc-info-reg-wheel-pop-worker-state').val('');
						// 도장공정 청결
						$('#js-indus-proc-info-reg-wheel-pop-clean-state').val('');
						// 도료이송조건1
						$('#js-indus-proc-info-reg-wheel-pop-move-state-temp').val('');
						// 도료이송조건2
						$('#js-indus-proc-info-reg-wheel-pop-move-state-humidity').val('');
						// 도료보관조건1
						$('#js-indus-proc-info-reg-wheel-pop-stock-state-temp').val('');
						// 도료보관조건2
						$('#js-indus-proc-info-reg-wheel-pop-stock-state-humidity').val('');		
						
					 	//희석제 종류
					 	$('#js-indus-proc-info-reg-wheel-pop-diluent').val('');
						$('#js-indus-proc-info-reg-wheel-pop-diluent-hidden').val('');
						// 희석비율(%)
						$('#js-indus-proc-info-reg-wheel-pop-diluent-rate').val('');
						$('#js-indus-proc-info-reg-wheel-pop-diluent-rate-hidden').val('');
						// 희석후 점도(sec)
						$('#js-indus-proc-info-reg-wheel-pop-diluent-visc').val('');
						$('#js-indus-proc-info-reg-wheel-pop-diluent-visc-hidden').val('');
						// 점도 측정시 온도(℃)
						$('#js-indus-proc-info-reg-wheel-pop-visc-temp').val('');
						$('#js-indus-proc-info-reg-wheel-pop-visc-temp-hidden').val('');
						// 캐치팬內 도료 유동 상태
						$('#js-indus-proc-info-reg-wheel-pop-catch-state').val('');
						$('#js-indus-proc-info-reg-wheel-pop-catch-state-hidden').val('');
						// 필터상태
						$('#js-indus-proc-info-reg-wheel-pop-filter-state').val('');							
						$('#js-indus-proc-info-reg-wheel-pop-filter-state-hidden').val('');							
						
						window.indusProcInfoRegWheelPopEditor.SetBodyValue(''); 		
						
						//================== 적용 공정 정보
						// 적용 공정
						
						//================== 공정 Coating 정보
						// 본체일 경우
						//도장 압력(Bar)
						$('#js-indus-proc-info-reg-wheel-pop-coat-voltage').val('');
						$('#js-indus-proc-info-reg-wheel-pop-coat-voltage-hidden').val('');
						// 토출량 
						$('#js-indus-proc-info-reg-wheel-pop-discharge').val('');
						// Target Coating Thickness
						$('#js-indus-proc-info-reg-wheel-pop-target-thickness').val('');
						// 건조로 통과 시간 
						$('#js-indus-proc-info-reg-wheel-pop-oven-time').val('');										
						// 건조로 설정 온도
						$('#js-indus-proc-info-reg-wheel-pop-oven-temp').val('');			
						// Pitch time(sec)
						$('#js-indus-proc-info-reg-wheel-pop-pitch-sec').val('');		
						
						// 공업일 경우
						// 토출량 
						$('#js-indus-proc-info-reg-wheel-liquid-pop-discharge').val('');
						// Target Coating Thickness
						$('#js-indus-proc-info-reg-wheel-liquid-pop-target-thickness').val('');
						// 건조로 통과 시간 
						$('#js-indus-proc-info-reg-wheel-liquid-pop-oven-time').val('');										
						// 건조로 설정 온도
						$('#js-indus-proc-info-reg-wheel-liquid-pop-oven-temp').val('');			
						// Pitch time(sec)
						$('#js-indus-proc-info-reg-wheel-liquid-pop-pitch-sec').val('');		
						//셋팅룸 온도
						$('#js-indus-proc-info-reg-wheel-liquid-pop-set-room-temp').val('');
						$('#js-indus-proc-info-reg-wheel-liquid-pop-set-room-temp-hidden').val('');
						//셋팅룸 온도
						$('#js-indus-proc-info-reg-wheel-liquid-pop-set-room-humidity').val('');
						$('#js-indus-proc-info-reg-wheel-liquid-pop-set-room-humidity-hidden').val('');
						
						//================== 제품 정보
						// 도료 구분
						// 도료 수지 타입
						// 피도물 외관 (오염여부등)
						$('#js-indus-proc-info-reg-wheel-pop-object-state').val('');
						// 제품 생산량
						$('#js-indus-proc-info-reg-wheel-pop-prod-output').val('');
						// 제품 저장 기간
						$('#js-indus-proc-info-reg-wheel-pop-prod-storage-term').val('');
						// 피도물 온도
						$('#js-indus-proc-info-reg-wheel-pop-object-temp').val('');						
						
					}

					// 제품명/LotNo
					data = response.rs.itemLot;
					if(data != undefined){
						for(var i=0 ; i<data.length ; i++){  
							addRowIndusInfoRegWheelPopupLotList(data[i]);
						}
					}	
					
					var trLength = $("[name=js-indus-proc-info-reg-wheel-pop-lot-list-tr]").length;
					if(trLength == 0){ 
						var addData = {
							  items   : ""
							, itemsNm : ""
							, index   : 1
							, lotNos  : []
						};
						addRowIndusInfoRegWheelPopupLotList(addData);
					}
					
					
					console.log(" >>> "+  $('#js-indus-proc-info-reg-wheel-pop-proc-type-combo_value').val());
					// 화면 초기화
					if ( $('#js-indus-proc-info-reg-wheel-pop-proc-type-combo_value').val() == "POWDER") {
						// 분체
						$('#wheel-coating-powder').show();
						
						$('#wheel-coating-liquid').hide();
						$('#wheel-liquid').hide();
					} else {
						// 공업
						$('#wheel-coating-liquid').show();
						$('#wheel-liquid').show();
						
						$('#wheel-coating-powder').hide();
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
	var applyWheelProcInfoRegIndusPopupProdData = function(data){  
		$("[name=js-indus-proc-info-reg-wheel-pop-lot-list-prod-name][dataIndex=" + prodWheelItemsInfoRowIndex + "]").val(data.itemsNm);
		$("[name=js-indus-proc-info-reg-wheel-pop-lot-list-prod-code][dataIndex=" + prodWheelItemsInfoRowIndex + "]").val(data.items);
	}			
	
	var prodWheelItemsInfoRowIndex = "";
	
	// 제품명/LotNo Row 추가
	var addRowIndusInfoRegWheelPopupLotList = function(data){ 
	
		// 제품명 
		var html = indusProcInfoRegWheelPopupLotListTemplate(data);
		           
		$('#js-indus-proc-info-reg-wheel-pop-lotList-append').before(html);			
		
		var rowspan = $("[name=js-indus-proc-info-reg-wheel-pop-lot-list-tr]").length; 
		$("#js-indus-proc-info-reg-wheel-pop-lot-list-th").attr("rowspan", rowspan);	
		
		var lotList = data.lotNos;
		for(var i=0 ; i < lotList.length ; i++){
			var lotStr = '<li lotNo="'+ lotList[i].lotNo +'">'+ lotList[i].lotNo +'<button type="button" name="js-indus-proc-info-reg-wheel-pop-lotList-lot-delete-button" lotNo="'+ lotList[i].lotNo +'" class="wp-spr-btn wp-close-sel"><span><spring:message code="TODO.KEY" text="닫기"/></span></button></li>';
			$("[name=js-indus-proc-info-reg-wheel-pop-lot-list-lot-no-ul][dataIndex=" + data.index + "]").append(lotStr);
		}
		
		// 제품코드 조회 버튼 클릭
		$("[name=js-indus-proc-info-reg-wheel-pop-lot-list-prod-button]").off().on("click", function(){
			prodWheelItemsInfoRowIndex = $(this).attr("dataIndex");
			initRetrieveProdItemsInfoList("js-indus-proc-info-reg-wheel-popup");
		});
		
		$('[name=js-indus-proc-info-reg-wheel-pop-lot-no]').off().on('keyup', function(e) {
			var $this = $(this);
			var lotNo = "";  
			if(e.which == 13 || this.value.length == 10){
				var dataIndex = $(this).attr("dataIndex");
				var name = this.name;
				
				lotNo = $(this).val();
				
				if (lotNo) {
					var listCheck = true;
					
					$('[name=js-indus-proc-info-reg-wheel-pop-lot-list-lot-no-ul][dataIndex=' + dataIndex + "]").find("li").each(function() {
						var code = $(this).attr("lotNo");
						
						if(lotNo == code){
							listCheck = false;
						}
					});	
					
					if(listCheck){
						var lotStr = '<li lotNo="'+lotNo+'">'+lotNo+'<button type="button" name="js-indus-proc-info-reg-wheel-pop-lotList-lot-delete-button" lotNo="'+lotNo+'" class="wp-spr-btn wp-close-sel"><span><spring:message code="TODO.KEY" text="닫기"/></span></button></li>';
						$("[name=js-indus-proc-info-reg-wheel-pop-lot-list-lot-no-ul][dataIndex=" + dataIndex + "]").append(lotStr);
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
				$("[name=js-indus-proc-info-reg-wheel-pop-lotList-lot-delete-button]").off().on("click", function(){
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
		$("[name=js-indus-proc-info-reg-wheel-pop-lotList-lot-delete-button]").off().on("click", function(){
			var lotNo = $(this).attr("lotNo");
			$("li[lotNo=" + lotNo + "]").remove();
		});			
	};			
	
	// ++++++++++++++++++++++++++++++++++++++++++++++++
	// 측정자 팝업 선택값 바인딩
	// ++++++++++++++++++++++++++++++++++++++++++++++++
	var applyIndusProcInfoRegWheelPopupEmpData = function(data){
		$("#js-indus-proc-info-reg-wheel-pop-emp").val(data.emp);
		$("#js-indus-proc-info-reg-wheel-pop-emp-name").val(data.empNm);
	}
	
	var indusProcInfoSearchWheelListEvent = function(docNo, itemType) {
		
		// 측정자 조회 버튼 클릭
		$('#js-indus-proc-info-reg-wheel-pop-emp-search-button').off().on('click', function(){
			initIndustryEmpRetrievePopup('js-indus-proc-info-reg-wheel-popup');
		});
		
		// 저장 버튼 클릭
		$("#js-indus-proc-info-reg-wheel-popup-save-button").off().on('click', function() {
			// Validation Check
			if(!validationCheckIndusProcInfoRegWheelPopup()){
				return;
			}
			
			var docNo				= $('#js-indus-proc-info-reg-wheel-pop-docNo').val();		 		// 문서번호
			var orgDocNo        	= $('#js-indus-proc-info-reg-wheel-pop-orgDocNo').val();    		// 원글 문서번호
			
			// 기본정보                   
			var itemType        	= $('#js-indus-proc-info-reg-wheel-pop-item-type-combo').val();    	// 제품유형
			var cust            	= $('#js-indus-proc-info-reg-wheel-pop-cust-combo').val();        	// 거래선
			var pcust      		 	= $('#js-indus-proc-info-reg-wheel-pop-paintCust-combo').val();    	// 도장업체
			var factoryId       	= $('#js-indus-proc-info-reg-wheel-pop-factoryId-combo').val();    	// 공장
			
			var measureDate        	= $('#js-indus-proc-info-reg-wheel-pop-measure-date').val();		// 측정일자
			var measureEmp         	= $("#js-indus-proc-info-reg-wheel-pop-emp").val();        			// 측정자
			
			// 적용 라인
			var lineId       		= $('#js-indus-proc-info-reg-wheel-pop-line-combo').val();        	// 적용 라인
			
			// 소지 및 전처리 정보
			var applMaterial		= $('#js-indus-proc-info-reg-wheel-pop-appl-material-combo').val();		// 적용소지
			var demand				= $('#js-indus-proc-info-reg-wheel-pop-demand').val();		 			// 수요가
			var buyer				= $('#js-indus-proc-info-reg-wheel-pop-buyer').val();		 			// 발주처
			
			// 공정정보 
			var procId				= $('#js-indus-proc-info-reg-wheel-pop-proc-type-combo').val();		 	// 적용 공정
			
			// 공정 Coating 정보

			var coatVoltage;
			var discharge;
			var targetThickness;
			var ovenTime;
			var ovenTemp;
			var pitchSec;
			var setRoomTemp;
			var setRoomHumidity;
			
			if ( $('#js-indus-proc-info-reg-wheel-pop-proc-type-combo_value').val() == "POWDER") {
				// 공정 Coating 정보 본체
				coatVoltage			= $('#js-indus-proc-info-reg-wheel-pop-coat-voltage').val();		 				// 도장 전압(kv)
				discharge			= $('#js-indus-proc-info-reg-wheel-pop-discharge').val();		 				// 토출량(Bar)
				targetThickness 	= $('#js-indus-proc-info-reg-wheel-pop-target-thickness').val();				// Target Coating Thickness
				ovenTime			= $('#js-indus-proc-info-reg-wheel-pop-oven-time').val();		 				// 건조로 통과 시간
				ovenTemp			= $('#js-indus-proc-info-reg-wheel-pop-oven-temp').val();		 				// 건조로 설정 온도
				pitchSec 			= $('#js-indus-proc-info-reg-wheel-pop-pitch-sec').val();		 				// Pitch time(sec)
				setRoomTemp			= $('#js-indus-proc-info-reg-wheel-liquid-pop-set-room-temp-hidden').val();		//셋팅룸 온도
				setRoomHumidity		= $('#js-indus-proc-info-reg-wheel-liquid-pop-set-room-humidity-hidden').val();	//셋팅룸 습도				
			} else {
				// 공정 Coating 정보 공업
				coatVoltage		= $('#js-indus-proc-info-reg-wheel-pop-coat-voltage-hidden').val();		 	// 도장 전압(kv)
				discharge 		= $('#js-indus-proc-info-reg-wheel-liquid-pop-discharge').val();		 	//토출량(Bar)
				targetThickness = $('#js-indus-proc-info-reg-wheel-liquid-pop-target-thickness').val();		//Target Coating Thickness(㎛)
				pitchSec 		= $('#js-indus-proc-info-reg-wheel-liquid-pop-pitch-sec').val();		 	//Pitch time(sec)
				ovenTime        = $('#js-indus-proc-info-reg-wheel-liquid-pop-oven-time').val();		 	//건조로 통과 시간
				ovenTemp		= $('#js-indus-proc-info-reg-wheel-liquid-pop-oven-temp').val();		 	//건조로 설정 온도
				setRoomTemp		= $('#js-indus-proc-info-reg-wheel-liquid-pop-set-room-temp').val();		//셋팅룸 온도
				setRoomHumidity	= $('#js-indus-proc-info-reg-wheel-liquid-pop-set-room-humidity').val();	//셋팅룸 습도
			}
			
			// 제품 정보
			var itemList        	= [];        // 제품리스트
			var lotList         	= [];        // Lot리스트		
			var paintId 			= $("#js-indus-proc-info-reg-wheel-pop-paint-id-combo").val(); 			// 도료 구분   				 
	        var paintResinId 		= $("#js-indus-proc-info-reg-wheel-pop-paint-resin-id-combo").val(); 	// 도료 수지 타입	 		 
	        var objectState 		= $("#js-indus-proc-info-reg-wheel-pop-object-state").val(); 			// 피도물 외관(오염여부등)	 	
	        var prodOutput 			= $("#js-indus-proc-info-reg-wheel-pop-prod-output").val(); 			// 제품 생산량    			
	        var prodStorageTerm	 	= $("#js-indus-proc-info-reg-wheel-pop-prod-storage-term").val(); 		// 제품 저장 기간    		
	        var objectTemp 			= $("#js-indus-proc-info-reg-wheel-pop-object-temp").val(); 			// 피도물 온도    	
	        
	        // 환경 조건 
			var coatRoomTemp		= $("#js-indus-proc-info-reg-wheel-pop-coat-room-temp").val();		 	// 도장실<br>온도(℃)
			var coatRoomHum 		= $("#js-indus-proc-info-reg-wheel-pop-coat-room-hum").val();		 	// 도장실<br>습도(%)
			var workerState			= $("#js-indus-proc-info-reg-wheel-pop-worker-state").val();		 	// 작업자환경
			var cleanState  		= $("#js-indus-proc-info-reg-wheel-pop-clean-state").val();		 		// 도장공정 청결
			var moveStateTemp		= $("#js-indus-proc-info-reg-wheel-pop-move-state-temp").val();			// 도료이송조건
			var moveStateHumidity	= $("#js-indus-proc-info-reg-wheel-pop-move-state-humidity").val();		// 도료이송조건
			var stockStateTemp		= $("#js-indus-proc-info-reg-wheel-pop-stock-state-temp").val();		// 도료보관조건
			var stockStateHumidity	= $("#js-indus-proc-info-reg-wheel-pop-stock-state-humidity").val();	// 도료보관조건

			
			var	diluentType	= "";
			var	diluentRate	= "";
			var	diluentVisc	= "";
			var	viscTemp	= "";
			var	catchState	= "";
			var	filterState	= "";
			
			if ( $('#js-indus-proc-info-reg-wheel-pop-proc-type-combo_value').val() == "POWDER") {
				diluentType			= $("#js-indus-proc-info-reg-wheel-pop-diluent-hidden").val();		// 희석제 종류	
				diluentRate			= $("#js-indus-proc-info-reg-wheel-pop-diluent-rate-hidden").val();			// 희석비율(%)	
				diluentVisc			= $("#js-indus-proc-info-reg-wheel-pop-diluent-visc-hidden").val();			// 희석후 점도(sec)	
				viscTemp			= $("#js-indus-proc-info-reg-wheel-pop-visc-temp-hidden").val();			// 점도 측정시온도(℃)
				catchState			= $("#js-indus-proc-info-reg-wheel-pop-catch-state-hidden").val();			// 도료 유동 상태 (캐치팬內)
				filterState			= $("#js-indus-proc-info-reg-wheel-pop-filter-state-hidden").val();	      	// 필터상태
			} else {
				diluentType			= $("#js-indus-proc-info-reg-wheel-pop-diluent").val();			// 희석제 종류	
				diluentRate			= $("#js-indus-proc-info-reg-wheel-pop-diluent-rate").val();			// 희석비율(%)	
				diluentVisc			= $("#js-indus-proc-info-reg-wheel-pop-diluent-visc").val();			// 희석후 점도(sec)	
				viscTemp			= $("#js-indus-proc-info-reg-wheel-pop-visc-temp").val();				// 점도 측정시온도(℃)
				catchState			= $("#js-indus-proc-info-reg-wheel-pop-catch-state").val();				// 도료 유동 상태 (캐치팬內)
				filterState			= $("#js-indus-proc-info-reg-wheel-pop-filter-state").val();	      	// 필터상태				
			}
			var remark 				=  window.indusProcInfoRegWheelPopEditor.GetBodyValue();        			// 특이사항

			
			// 제품리스트, Lot리스트 정보
			$('[name=js-indus-proc-info-reg-wheel-pop-lot-list-prod-code]').each(function(){
				var dataIndex = $(this).attr("dataIndex");
				var items     = $(this).val();
				if(!app.utils.isEmpty(items)){
					itemList.push({items: items});
					
					$('[name=js-indus-proc-info-reg-wheel-pop-lot-list-lot-no-ul][dataIndex=' + dataIndex + ']').find("li").each(function(){
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
							$('#js-indus-proc-info-reg-wheel-pop-item-type-combo').focus();
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
							$('#js-indus-proc-info-reg-wheel-pop-cust-combo').focus();
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
							$('#js-indus-proc-info-reg-wheel-pop-paintCust-combo').focus();
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
							$('#js-indus-proc-info-reg-wheel-pop-factoryId-combo').focus();
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
							$('#js-indus-proc-info-reg-wheel-pop-line-combo').focus();
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
					, demand 	          	: demand 	          	
					, buyer 	          	: buyer 	          	
					 
					, discharge             : discharge
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

					, coatRoomTemp         	: coatRoomTemp       			
					, coatRoomHum         	: coatRoomHum        			 
					, workerState         	: workerState        			
					, cleanState         	: cleanState         			
					, moveStateTemp         : moveStateTemp      			
					, moveStateHumidity     : moveStateHumidity  			
					, stockStateTemp        : stockStateTemp     			
					, stockStateHumidity    : stockStateHumidity
					, remark				: remark
					
					, coatVoltage 			: coatVoltage
					, setRoomTemp 			: setRoomTemp
					, setRoomHumidity 		: setRoomHumidity
					, diluentType       	: diluentType               	
					, diluentRate			: diluentRate
					, diluentVisc			: diluentVisc
					, viscTemp				: viscTemp
					, catchState			: catchState
					, filterState			: filterState					
					
			};		
			

			
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림" />'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?" />'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인" />'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소" />'
				, callback          : {
					confirm: function() {
						indusProcInfoRegWheelPopupSaveHandler.request(param);
					}
				}
			});
		});
	};		
	
	//-------------------------------------------------
	// 저장 전 Validation Check
	//-------------------------------------------------
	var validationCheckIndusProcInfoRegWheelPopup = function(){
		
		var itemType        	= "";        // 제품유형
		var cust            	= "";        // 거래선
		var pcust		       	= "";        // 도장업체
		var factoryId       	= "";        // 공장
		var lineId    			= "";        // 라인
		var itemList        	= [];        // 제품리스트
		var lotList         	= [];        // Lot리스트
		
		var histDescription 	= "";        // 내용
		
		itemType            	= $('#js-indus-proc-info-reg-wheel-pop-item-type-combo').val();
		cust               		= $('#js-indus-proc-info-reg-wheel-pop-cust-combo').val();
		pcust                	= $('#js-indus-proc-info-reg-wheel-pop-paintCust-combo').val();
		factoryId           	= $('#js-indus-proc-info-reg-wheel-pop-factoryId-combo').val();
		lineId         			= $('#js-indus-proc-info-reg-wheel-pop-line-combo').val();
		                                 
		histDescription 		= window.indusProcInfoRegWheelPopEditor.GetBodyValue();
		
		// 제품리스트, Lot리스트 정보
		$('[name=js-indus-proc-info-reg-wheel-pop-lot-list-prod-code]').each(function(){
			var dataIndex = $(this).attr("dataIndex");
			var items     = $(this).val();
			
			if(!app.utils.isEmpty(items)){
				itemList.push({items: items});
				$('[name=js-indus-proc-info-reg-wheel-pop-lot-list-lot-no-ul][dataIndex=' + dataIndex + ']').find("li").each(function(){
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
						$('#js-indus-proc-info-reg-wheel-pop-item-type-combo').focus();
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
						$('#js-indus-proc-info-reg-wheel-pop-cust-combo').focus();
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
						$('#js-indus-proc-info-reg-wheel-pop-paintCust-combo').focus();
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
						$('#js-indus-proc-info-reg-wheel-pop-factoryId-combo').focus();
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
	var indusProcInfoRegWheelPopupSaveHandler = {
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
					$("#js-indus-proc-info-reg-wheel-popup-close-button").click();
					
				} else {
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
				, factoryId        		: param.factoryId                   // 공장            
				, lineId        		: param.lineId 		            	// 라인코드            
				, measureDate       	: param.measureDate.replace(/-/gi,"")  // 측정일자  
				, measureEmp        	: param.measureEmp                  // 담당자
				, procId		        : param.procId		          		// 적용공정
				, applMaterial          : param.applMaterial           		// 적용소지
				, demand 	          	: param.demand 	          	
				, buyer 	          	: param.buyer 	          	
				
				, discharge             : param.discharge
				, ovenTime          	: param.ovenTime
				, ovenTemp           	: param.ovenTemp
				, targetThickness       : param.targetThickness					
				, pitchSec         		: param.pitchSec					

				, itemList         		: param.itemList     	// 제품리스트                     
				, lotList          		: param.lotList     	// Lot리스트     			
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

				, remark    			: param.remark 

				// 분체 경우
				, coatVoltage 			: param.coatVoltage
				
				// 공업 경우
				, setRoomTemp 			: param.setRoomTemp
				, setRoomHumidity 		: param.setRoomHumidity
				
				, diluentType       	: param.diluentType               	
				, diluentRate			: param.diluentRate
				, diluentVisc			: param.diluentVisc
				, viscTemp				: param.viscTemp
				, catchState			: param.catchState
				, filterState			: param.filterState		
				 
				// 마스터 값 
				, matThickness			: ""
				, matWidth  			: ""
				, materialUse  			: ""
				, matSetSite  			: ""
 
			};
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
		
	};			
</script>