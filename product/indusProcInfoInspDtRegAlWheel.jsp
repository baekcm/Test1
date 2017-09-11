<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.09.05] industry AlWheel 공정별 공정 정보 팝업 HTML 엘리먼트" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="wp-dim-layer">
    <div class="wp-dimBg"></div>
    <div id="js-indus-proc-info-insp-dt-reg-alwheel-popup" class="wp-pop-layer wp-pop-w940 wp-box-sizing wp-car-popup">
    	<div class="wp-pop-title">
    		<h1><spring:message code="TODO.KEY" text="공정별 공정정보 등록-AlWheel"/></h1>
    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-indus-proc-info-insp-dt-reg-alwheel-close"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
    	</div>
        <div class="wp-pop-conts">
			<!-- scroll Area -->
			<div class="wp-pop-cont-scrollable"  id="js-indus-proc-info-insp-dt-reg-alwheel-proc-type-info">
			<input type="hidden" data-field="setFlag" value="" />
		 		<!--content //-->
				<!-- 라인 정보 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="적용 공정"/></h2>
				<div class="wp-table-st1 wp-issue-apply">
					<table>
						<caption><spring:message code="TODO.KEY" text="라인 정보"/></caption>
						<colgroup>
							<col style="width:15%">
							<col style="width:85%">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><spring:message code="TODO.KEY" text="적용 공정"/></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd160">
										<select title="항목 개수 설정" data-field="procType">
										</select>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //라인 정보 -->
				<!-- 적용 제품/LOT No.정보 -->
				<div class="wp-clearfix">
					<h2 class="wp-cont-title wp-fl"><spring:message code="TODO.KEY" text="적용 제품/LOT No.정보"/></h2>
					<button type="button" id="js-indus-proc-info-insp-dt-reg-alwheel-prod-lot-info-input-button" class="wp-btn small white bgray plus wp-mb5 wp-fr"><spring:message code="TODO.KEY" text="추가"/></button>
				</div>
				<div class="wp-table-st1" id="js-indus-proc-info-insp-dt-reg-alwheel-prod-lot-info">
					<table>
						<caption></caption>
						<colgroup>
							<col style="width:auto">
							<col style="width:29%">
							<col style="width:18%">
							<col style="width:18%">
							<col style="width:6%">
						</colgroup>
						<thead>
							<tr>
								<th><spring:message code="TODO.KEY" text="제품명"/></th>
								<th><spring:message code="TODO.KEY" text="LOT No."/></th>
								<th><spring:message code="TODO.KEY" text="제조일자"/></th>
								<th><spring:message code="TODO.KEY" text="저장기간"/></th>
								<th><spring:message code="TODO.KEY" text="삭제"/></th>
							</tr>
						</thead>
						<tbody data-field="prodLotList">
						</tbody>
					</table>
		            	</div>
				<!-- //적용 제품/LOT No.정보 -->
				<!-- 제품 정보 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="제품 정보"/></h2>
				<div class="wp-table-st1 wp-issue-apply" id="js-indus-proc-info-insp-dt-reg-alwheel-prod-info">
					<table>
						<caption><spring:message code="TODO.KEY" text="제품 정보"/></caption>
						<colgroup>
							<col style="width:15%">
							<col style="width:18%">
							<col style="width:15%">
							<col style="width:18%">
							<col style="width:16%">
							<col style="width:18%">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="objectTemp" ><spring:message code="TODO.KEY" text="피도물 온도(℃)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="objectTemp" name="" title="<spring:message code='TODO.KEY' text=''/>"></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="paintId" ><spring:message code="TODO.KEY" text="도료 구분"/></span></div></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd100p">
										<select title="항목 개수 설정" data-field="paintId">
										</select>
									</div>
								</td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="paintResinId" ><spring:message code="TODO.KEY" text="도료 수지 타입"/></span></div></th>
								<td class="wp-al">
									<div class="wp-ui-select wp-wd100p">
										<select title="항목 개수 설정" data-field="paintResinId">
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="objectState" ><spring:message code="TODO.KEY" text="피도물 외관"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="objectState" name="" title="<spring:message code='TODO.KEY' text=''/>"></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="prodOutput" ><spring:message code="TODO.KEY" text="제품 생산량(kg)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="prodOutput" name="" title="<spring:message code='TODO.KEY' text=''/>"></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="prodStorageTerm" ><spring:message code="TODO.KEY" text="제품 저장 기간(개월)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="prodStorageTerm" name="" title="<spring:message code='TODO.KEY' text=''/>"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //제품 정보 -->
				<!-- 공정 Coating 정보 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="공정 Coating 정보"/></h2>
				<div class="wp-table-st1 wp-issue-apply" id="js-indus-proc-info-insp-dt-reg-alwheel-coating-roll-info">
				<div id="reg-alwheel-coating-roll-info-liquid" style="display: ;">
					<table>
						<caption><spring:message code="TODO.KEY" text="공정 Coating 정보"/></caption>
						<colgroup>
							<col style="width:15%">
							<col style="width:18%">
							<col style="width:14%">
							<col style="width:20%">
							<col style="width:15%">
							<col style="width:18%">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="dischargeLiquid" ><spring:message code="TODO.KEY" text="토출량(Bar)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="dischargeLiquid" name="" title=""></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="ovenTempLiquid" ><spring:message code="TODO.KEY" text="건조로 설정"/><br><spring:message code="TODO.KEY" text="온도(℃)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="ovenTempLiquid" name="" title=""></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="settingTimeLiquid" ><spring:message code="TODO.KEY" text="Setting Time"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="settingTimeLiquid" name="" title=""></td>
							</tr>
							<tr>	
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="bellRpmLiquid" ><spring:message code="TODO.KEY" text="Bell RPM"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="bellRpmLiquid" name="" title=""></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="targetThicknessLiquid" ><spring:message code="TODO.KEY" text="Target Coating"/><br><spring:message code="TODO.KEY" text="Thickness(㎛)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="targetThicknessLiquid" name="" title=""></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="pitchSecLiquid" ><spring:message code="TODO.KEY" text="Pitch Time(sec)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="pitchSecLiquid" name="" title=""></td>
							</tr>
							<tr>	
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="ovenTimeLiquid" ><spring:message code="TODO.KEY" text="건조로 통과"/><br><spring:message code="TODO.KEY" text="시간(min)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="ovenTimeLiquid" name="" title=""></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="patternWidthLiquid" ><spring:message code="TODO.KEY" text="셋팅룸 온도/습도"/></span></div></th>
								<td class="wp-al">
									<input type="text" data-field="settingRoomTempLiquid" name="" title="" class="wp-wd49p">
									<input type="text" data-field="settingRoomHumLiquid" name="" title="" class="wp-wd49p">
								</td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="paintingBoothNoLiquid" ><spring:message code="TODO.KEY" text="도장부스 No."/></span></div></th>
								<td class="wp-al"><input type="text" data-field="paintingBoothNoLiquid" name="" title=""></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div id="reg-alwheel-coating-roll-info-powder" style="display: ;">
					<table>
						<caption><spring:message code="TODO.KEY" text="공정 Coating 정보"/></caption>
						<colgroup>
							<col style="width:15%">
							<col style="width:18%">
							<col style="width:14%">
							<col style="width:20%">
							<col style="width:15%">
							<col style="width:18%">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="kvPowder" ><spring:message code="TODO.KEY" text="전압(KV)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="kvPowder" name="" title=""></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="dischargePowder" ><spring:message code="TODO.KEY" text="토출량(Bar)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="dischargePowder" name="" title=""></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="ovenTempPowder" ><spring:message code="TODO.KEY" text="건조로 설정"/><br><spring:message code="TODO.KEY" text="온도(℃)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="ovenTempPowder" name="" title=""></td>
							</tr>
							<tr>	
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="ovenTimePowder" ><spring:message code="TODO.KEY" text="건조로 통과"/><br><spring:message code="TODO.KEY" text="시간(min)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="ovenTimePowder" name="" title=""></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="targetThicknessPowder" ><spring:message code="TODO.KEY" text="Target Coating"/><br><spring:message code="TODO.KEY" text="Thickness(㎛)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="targetThicknessPowder" name="" title=""></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="pitchSecPowder" ><spring:message code="TODO.KEY" text="Pitch Time(sec)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="pitchSecPowder" name="" title=""></td>
							</tr>
							<tr>	
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="paintingBoothNoPowder" ><spring:message code="TODO.KEY" text="도장부스 No."/></span></div></th>
								<td class="wp-al"><input type="text" data-field="paintingBoothNoPowder" name="" title=""></td>
								<td class="wp-al"></td>
								<td class="wp-al"></td>
								<td class="wp-al"></td>
								<td class="wp-al"></td>
							</tr>
						</tbody>
					</table>
				</div>
				</div>
				<!-- //공정 Coating 정보 -->
				<!-- 희석 조건 -->
				<div id="reg-alwheel-diluent-info" style="display: ;">
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="희석 조건"/></h2>
				<div class="wp-table-st1 wp-issue-apply" id="js-indus-proc-info-insp-dt-reg-alwheel-diluent-info">
					<table>
						<caption><spring:message code="TODO.KEY" text="제품 정보"/></caption>
						<colgroup>
							<col style="width:18%">
							<col style="width:15%">
							<col style="width:18%">
							<col style="width:15%">
							<col style="width:18%">
							<col style="width:16%">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="diluent"><spring:message code="TODO.KEY" text="희석제 종류"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="diluent" name="" title="<spring:message code='TODO.KEY' text=''/>"></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="diluentRate"><spring:message code="TODO.KEY" text="희석비율(%)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="diluentRate" name="" title="<spring:message code='TODO.KEY' text=''/>"></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="diluentVisc"><spring:message code="TODO.KEY" text="희석후 점도(sec)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="diluentVisc" name="" title="<spring:message code='TODO.KEY' text=''/>"></td>
							</tr>
							<tr>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="viscTemp"><spring:message code="TODO.KEY" text="점도 측정시 온도(℃)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="viscTemp" name="" title="<spring:message code='TODO.KEY' text=''/>"></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="catchState"><spring:message code="TODO.KEY" text="도료 유동 상태"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="catchState" name="" title="<spring:message code='TODO.KEY' text=''/>"></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="filterState"><spring:message code="TODO.KEY" text="필터상태"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="filterState" name="" title="<spring:message code='TODO.KEY' text=''/>"></td>
							</tr>
						</tbody>
					</table>
				</div>
				</div>
				<!-- //희석 조건 -->
				<!-- 도료 Supplier 점유율 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="도료 Supplier 점유율"/></h2>
				<div class="wp-table-st1 wp-issue-apply" id="js-indus-proc-info-insp-dt-reg-alwheel-maker-info">
					<table>
						<caption><spring:message code="TODO.KEY" text="도료 Supplier 점유율 정보"/></caption>
						<colgroup>
							<col style="width:15%">
							<col style="width:85%">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><span class="wp-icon" data-field="makerId"><spring:message code="TODO.KEY" text="도료 Supplier"/><br><spring:message code="TODO.KEY" text="점유율(%)"/></span></th>
								<td class="wp-al wp-vm">
									<div class="wp-ui-select wp-wd160">
										<select title="항목 개수 설정" data-field="makerId">
										</select>
									</div>
									<input type="text" data-field="shareRate" name="" title="<spring:message code='TODO.KEY' text=''/>" class="wp-wd80">
									<button type="button" class="wp-btn small gray cr3" id="js-indus-proc-info-insp-dt-reg-alwheel-maker-info-input-button"><spring:message code="TODO.KEY" text="등록"/></button>
									<div class="wp-style-sel wp-wd100p">
										<ul data-field="makerList">
										</ul>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //도료 Supplier 점유율 -->
			<!-- // scroll Area -->
			</div>
		
			<div class="wp-btn-area">
				<button type="button" class="wp-btn blue1 cr3 wp-pl18 wp-pr18" id="js-indus-proc-info-insp-dt-reg-alwheel-set-button"><spring:message code="TODO.KEY" text="확인"/></button>
			</div>
	
    	</div>
	</div>
</div>

<script id="js-indus-proc-info-insp-dt-reg-alwheel-prod-lot-template" type="text/x-handlebars-template">
	<tr class="wp-td-padding0" data-field="items-{{index}}" name="itemsList" dataIndex="{{index}}">
		<td><input type="text" data-field="itemsNm" name="" value="{{itemsNm}}" dataIndex="{{index}}" title="<spring:message code='TODO.KEY' text=''/>" class="wp-wd189" disabled="disabled"><button type="button" name="js-indus-proc-info-insp-dt-reg-alwheel-prod-list-button" dataIndex="{{index}}" data-link="js-prod-info-popup" data-depth="3" class="wp-btn small gray cr3"><spring:message code="TODO.KEY" text="조회"/></button></td>
		<td><input type="text" data-field="lotNo" name="" value="{{lotNo}}" dataIndex="{{index}}" title="<spring:message code='TODO.KEY' text=''/>" class="wp-wd189" maxlength="10"><button type="button" name="js-indus-proc-info-insp-dt-reg-alwheel-lot-info-button" dataIndex="{{index}}" data-depth="3" class="wp-btn small gray cr3"><spring:message code="TODO.KEY" text="조회"/></button></td>
		<td class="wp-al"><input type="text" data-field="inDate" name="" value="{{inDate}}" dataIndex="{{index}}" title="<spring:message code='TODO.KEY' text=''/>" class="wp-inp-datepicker wp-wd100p" placeholder="<spring:message code='TODO.KEY' text='날짜입력'/>" disabled=""></td>
		<td class="wp-al"><input type="text" data-field="storeTerm" name="" value="{{storeTerm}}" dataIndex="{{index}}" title="<spring:message code='TODO.KEY' text=''/>" class="wp-wd100p" disabled=""></td>
		<td>
			<button type="button" id="js-indus-proc-info-insp-dt-reg-alwheel-prod-lot-delete-button-{{index}}" dataIndex="{{index}}" name="js-indus-proc-info-insp-dt-reg-alwheel-prod-lot-delete-button" class="wp-btn small white bgray trash"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
		</td>
		<input type="hidden" data-field="items" value="{{items}}" dataIndex="{{index}}">
		<input type="hidden" data-field="dataIndex" value="{{index}}">
	</tr>
</script>
							
							
<!-- 도료 Supplier 점유율 - 스크립트-->
<script id="js-indus-proc-info-insp-dt-reg-alwheel-maker-template" type="text/x-handlebars-template">		
	{{#rows}}
		<li><span data-field="makerNmList">{{makerNm}}%</span><button type="button" class="wp-spr-btn wp-close-sel" name="js-indus-proc-info-insp-dt-reg-alwheel-maker-delete-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
			<input type="hidden" data-field="makerIdList" value="{{makerId}}">
			<input type="hidden" data-field="shareRateList" value="{{shareRate}}">
			<input type="hidden" data-field="makerNmList" value="{{makerNm}}">
		</li>
	{{/rows}}
</script>

<script type="text/javascript">
var indusProcInfoInspDtRegAlWheel = (function() {
	var prodItemsIndex = 0;
	var prodItemsInfoRowIndex;
	
	// item code
	var intProcItemCodeType;
	
	// item code 에 대하여 object id 를 mapping
	// 제품 정보
	var intProcItemCodeMpperProd = {};
	// 공정 Coating 정보
	var intProcItemCodeMpperCoatingRoll = {};
	// 희석 조건
	var intProcItemCodeMpperDiluent = {};
	
	// 적용 공정 attr
	var $procType = [];
	// 적용 제품/LOT No.정보 attr
	var $prodLot = [];
	// 제품 정보 attr
	var $prod = [];
	// 공정 Coating 정보 attr
	var $coatingRoll = [];
	// 희석 조건 attr
	var $diluent = [];
	// 도료 Supplier 점유율 attr
	var $maker = [];
	// 도료 Supplier 점유율 스크립트
	var makerListTemplate;
	var sumResult = 0;
	// 적용 제품/LOT No.정보 스크립트
	var prodLotListTemplate;
	// 제품 정보,공정 Coating 정보,희석 조건 data
	var procInfoDt = [];
	// 도료 Supplier 점유율 data
	var share = [];
	// 적용 제품/LOT No.정보 data
	var item = [];
	// 적용 공정
	var procType = [];
	// 적용 공정 구분
	var remark2 = "";
	
	//------------------------------------------------
	// 초기화
	//------------------------------------------------
	var init = function(itemType, cust, paintCust, factoryId, lineId, procItemCodeType) {
		// 변수 초기화
		initData.init();
		// item code 에 대하여 object id 를 mapping
		initData.procItemCodeMapper();
		// 초기 데이터/환경변수 셋팅
		initData.setInfo(itemType, cust, paintCust, factoryId, lineId, procItemCodeType);
		// 이벤트 초기화
		pageQueryEvent.init();
	};
	
	//-------------------------------------------------
	// 데이터 초기화
	//-------------------------------------------------
	var initData = {
		init: function(){
			// 변수 초기화
			prodItemsIndex = 0;
			prodItemsInfoRowIndex = 0;
			intProcItemCodeType;
			intProcItemCodeMpperProd = {};
			intProcItemCodeMpperCoatingRoll = {};
			intProcItemCodeMpperDiluent = {};
			$procType = [];
			$prodLot = [];
			$prod = [];
			$coatingRoll = [];
			$diluent = [];
			$maker = [];
			makerListTemplate;
			sumResult = 0;
			prodLotListTemplate;
			procInfoDt = [];
			share = [];
			item = [];
			procType = [];
			remark2 = "";
			
			// 적용 공정 attr
			$procType = $('#js-indus-proc-info-insp-dt-reg-alwheel-proc-type-info');
			// 적용 제품/LOT No.정보 attr
			$prodLot =  $('#js-indus-proc-info-insp-dt-reg-alwheel-prod-lot-info');
			// 제품 정보 attr
			$prod = $('#js-indus-proc-info-insp-dt-reg-alwheel-prod-info');
			// 공정 Coating 정보 attr
			$coatingRoll = $('#js-indus-proc-info-insp-dt-reg-alwheel-coating-roll-info');
			// 희석 조건 attr
			$diluent = $('#js-indus-proc-info-insp-dt-reg-alwheel-diluent-info');
			// 도료 Supplier 점유율 attr
			$maker = $('#js-indus-proc-info-insp-dt-reg-alwheel-maker-info');
			
			// 공정 Coating 정보 초기화
			$('#reg-alwheel-coating-roll-info-powder').css({display: 'none'});
			$('#reg-alwheel-coating-roll-info-liquid').css({display: 'none'});
			// 희석 조건 초기화
			$('#reg-alwheel-diluent-info').css({display: 'none'});
			
		},
		procItemCodeMapper: function(){ // item code 에 대하여 object id 를 mapping
			
			// 제품 정보 
			intProcItemCodeMpperProd["input[data-field='objectTemp']"] = "ALWHEEL_00004"; // ALWHEEL_00004	피도물 온도(℃)
			intProcItemCodeMpperProd["select[data-field='paintId']"] = "ALWHEEL_00005"; // ALWHEEL_00005	도료 구분
			intProcItemCodeMpperProd["select[data-field='paintResinId']"] = "ALWHEEL_00006"; // ALWHEEL_00006	도료 수지 타입
			intProcItemCodeMpperProd["input[data-field='objectState']"] = "ALWHEEL_00007"; // ALWHEEL_00007	피도물 외관	
			intProcItemCodeMpperProd["input[data-field='prodOutput']"] = "ALWHEEL_00008"; // ALWHEEL_00008	제품 생산량(kg)	
			intProcItemCodeMpperProd["input[data-field='prodStorageTerm']"] = "ALWHEEL_00009";	// ALWHEEL_00009	제품 저장 기간(개월)
			
			// 공정 Coating 정보 
			//LIQUID
			intProcItemCodeMpperCoatingRoll["input[data-field='dischargeLiquid']"] = "ALWHEEL_00010"; //ALWHEEL_00010	토출량(Bar)
			intProcItemCodeMpperCoatingRoll["input[data-field='ovenTempLiquid']"] = "ALWHEEL_00011"; //ALWHEEL_00011	건조로 설정 온도(℃)
			intProcItemCodeMpperCoatingRoll["input[data-field='settingTimeLiquid']"] = "ALWHEEL_00012"; //ALWHEEL_00012	Setting Time
			intProcItemCodeMpperCoatingRoll["input[data-field='bellRpmLiquid']"] = "ALWHEEL_00013"; //ALWHEEL_00013	Bell RPM
			intProcItemCodeMpperCoatingRoll["input[data-field='targetThicknessLiquid']"] = "ALWHEEL_00014"; //ALWHEEL_00014	Target Coating Thickness(㎛)
			intProcItemCodeMpperCoatingRoll["input[data-field='pitchSecLiquid']"] = "ALWHEEL_00015"; //ALWHEEL_00015	Pitch Time(sec)
			intProcItemCodeMpperCoatingRoll["input[data-field='ovenTimeLiquid']"] = "ALWHEEL_00016"; //ALWHEEL_00016	건조로 통과 시간(min)
			intProcItemCodeMpperCoatingRoll["input[data-field='settingRoomTempLiquid']"] = "ALWHEEL_00017"; //ALWHEEL_00017	셋팅룸 온도(℃)
			intProcItemCodeMpperCoatingRoll["input[data-field='settingRoomHumLiquid']"] = "ALWHEEL_00018"; //ALWHEEL_00018	셋팅룸 습도(%)
			intProcItemCodeMpperCoatingRoll["input[data-field='paintingBoothNoLiquid']"] = "ALWHEEL_00019"; //ALWHEEL_00019	도장 부스 No.
			//POWDER
			intProcItemCodeMpperCoatingRoll["input[data-field='kvPowder']"] = "ALWHEEL_00020"; //ALWHEEL_00020	도장 전압(KV)
			intProcItemCodeMpperCoatingRoll["input[data-field='dischargePowder']"] = "ALWHEEL_00021"; //ALWHEEL_00021	토출량(Bar)
			intProcItemCodeMpperCoatingRoll["input[data-field='ovenTempPowder']"] = "ALWHEEL_00022"; //ALWHEEL_00022	건조로 설정 온도(℃)
			intProcItemCodeMpperCoatingRoll["input[data-field='ovenTimePowder']"] = "ALWHEEL_00023"; //ALWHEEL_00023	건조로 통과 시간(min)
			intProcItemCodeMpperCoatingRoll["input[data-field='targetThicknessPowder']"] = "ALWHEEL_00024"; //ALWHEEL_00024	Target Coating Thickness(㎛)
			intProcItemCodeMpperCoatingRoll["input[data-field='pitchSecPowder']"] = "ALWHEEL_00025"; //ALWHEEL_00025	Pitch Time(sec)
			intProcItemCodeMpperCoatingRoll["input[data-field='paintingBoothNoPowder']"] = "ALWHEEL_00026"; //ALWHEEL_00026	도장 부스 No.
			
			// 희석 조건
			intProcItemCodeMpperDiluent["input[data-field='diluent']"] = "ALWHEEL_00027";	// ALWHEEL_00027	희석제 종류
			intProcItemCodeMpperDiluent["input[data-field='diluentRate']"] = "ALWHEEL_00028";	// ALWHEEL_00028	희석 비율(%)
			intProcItemCodeMpperDiluent["input[data-field='diluentVisc']"] = "ALWHEEL_00029";	// ALWHEEL_00029	희석 후 점도(sec)
			intProcItemCodeMpperDiluent["input[data-field='viscTemp']"] = "ALWHEEL_00030"; // ALWHEEL_00030	점도 측정 시 온도(℃)		                                  
			intProcItemCodeMpperDiluent["input[data-field='catchState']"] = "ALWHEEL_00031";	// ALWHEEL_00031	도료 유동 상태                     
			intProcItemCodeMpperDiluent["input[data-field='filterState']"] = "ALWHEEL_00032";	// ALWHEEL_00032	필터 상태	
		},
		setInfo: function(itemType, cust, paintCust, factoryId, lineId, procItemCodeType){
			// item code
			intProcItemCodeType = procItemCodeType;
			// 수정 설정
			$procType.find('input[data-field="setFlag"]').val("NEW");
			
			//적용 공정 콤보 조회
			retrieveProcList.request(itemType, cust, paintCust, factoryId, lineId);
			
			// 도료구분, 도료 수지 타입, 코팅방식, Coater no 콤보 조회
			retrieveIndProcDetail.request("", itemType);
			// 도료 Supplier 점유율 콤보 조회
			retrieveMakerList.request();
			
			onlyInteger($maker.find('select[data-field="makerId"]'));
			// 제품 정보 Decimal
			$.each(intProcItemCodeMpperProd, function(key, value){ 
				if(intProcItemCodeType[value][0] == "NUM"){
					onlyDecimal($prod.find(key), 5, 1);
				}
				if(key.indexOf("input[") > -1 || key.indexOf("textarea[") > -1){
					$prod.find(key).val("");
				}
				key = key.replace("input[","span[");
				key = key.replace("select[","span[");
				key = key.replace("textarea[","span[");
				if(intProcItemCodeType[value][1] != ""){
					$prod.find(key).addClass(intProcItemCodeType[value][1]);
				}else{
					$prod.find(key).removeClass();
				}
			});
			// 공정 Coating 정보 Decimal
			$.each(intProcItemCodeMpperCoatingRoll, function(key, value){ 
				if(intProcItemCodeType[value][0] == "NUM"){
					onlyDecimal($coatingRoll.find(key), 5, 1);
				}
				if(key.indexOf("input[") > -1 || key.indexOf("textarea[") > -1){
					$coatingRoll.find(key).val("");
				}
				key = key.replace("input[","span[");
				key = key.replace("select[","span[");
				key = key.replace("textarea[","span[");
				if(intProcItemCodeType[value][1] != ""){
					$coatingRoll.find(key).addClass(intProcItemCodeType[value][1]);
				}else{
					$coatingRoll.find(key).removeClass();
				}
			});
			// 희석 조건 정보 Decimal
			$.each(intProcItemCodeMpperDiluent, function(key, value){ 
				if(intProcItemCodeType[value][0] == "NUM"){
					onlyDecimal($diluent.find(key), 5, 1);
				}
				if(key.indexOf("input[") > -1 || key.indexOf("textarea[") > -1){
					$diluent.find(key).val("");
				}
				key = key.replace("input[","span[");
				key = key.replace("select[","span[");
				key = key.replace("textarea[","span[");
				if(intProcItemCodeType[value][1] != ""){
					$diluent.find(key).addClass(intProcItemCodeType[value][1]);
				}else{
					$diluent.find(key).removeClass();
				}
			});
			
			// 적용 제품/LOT No.정보 초기화
			$prodLot.find('tbody[data-field="prodLotList"]').empty();
			// 도료 Supplier 점유율 초기화
			$maker.find('input[data-field="shareRate"]').val("");
			$maker.find('ul[data-field="makerList"]').empty();
		}
	};
	
	// ------------------------------------
	// 이벤트 핸들러
	// ------------------------------------
	var pageQueryEvent = {
		makerReg: function(){ // 도료 Supplier 점유율
			
			var makerId = $maker.find('select[data-field="makerId"]').val();
			var makerNm =  $maker.find('select[data-field="makerId"]').children("option:selected").text();
			var shareRate =$maker.find('input[data-field="shareRate"]').val().replace(/ /gi,"");
			var makerIdLength  = $maker.find('input[data-field="makerIdList"]').length;
			
			shareRate = shareRate == "" ? 0 : Number(shareRate);
			
			for(var i=0 ; i<makerIdLength ; i++){
				if(makerId == $maker.find('input[data-field="makerIdList"]')[i].value){
					messageParam.title = '<spring:message code="TODO.KEY" text="알림"/>';
					messageParam.message = '<spring:message code="TODO.KEY" text="등록된 데이터가 있습니다."/>';
					app.message.alert(messageParam);
					return;
				}
			}
			
			if(shareRate == 0){
				messageParam.title = '<spring:message code="TODO.KEY" text="알림"/>';
				messageParam.message = '<spring:message code="TODO.KEY" text="점유율(%)을 입력해주세요."/>';
				app.message.alert(messageParam);
				return;
			}
			
			if(shareRate > 100){
				messageParam.title = '<spring:message code="TODO.KEY" text="알림"/>';
				messageParam.message = '<spring:message code="TODO.KEY" text="Supplier 의 점유율 합계가 100%를 넘을 수 없습니다." />';
				app.message.alert(messageParam);
				$maker.find('input[data-field="shareRate"]').val("");
				return;
			}
			
			if( (sumResult + parseFloat(shareRate)) <= 100)
			{
				sumResult += parseFloat(shareRate);
			}
			else
			{
				messageParam.title = '<spring:message code="TODO.KEY" text="알림"/>';
				messageParam.message = '<spring:message code="TODO.KEY" text="Supplier 의 점유율 합계가 100%를 넘을 수 없습니다." />';
				app.message.alert(messageParam);
				$maker.find('input[data-field="shareRate"]').val("");
				return;
			}
			
			var makerArr = [{
				  makerNm   : "[" + makerNm + "] " + shareRate
				, makerId   : makerId
				, shareRate : shareRate
			}];
			pageQueryEvent.makerAppend(makerArr);
			
		},
		makerAppend: function(data){ // 도료 Supplier 점유율
			var result = makerListTemplate({rows : data});
			$maker.find('ul[data-field="makerList"]').append(result);
			
			$maker.find('input[data-field="shareRate"]').val("");
			
			// 닫기 버튼 Event 
			$('button[name=js-indus-proc-info-insp-dt-reg-alwheel-maker-delete-button]').off().on('click', function(){
				$(this).parent().remove();
				var delShare = $(this).parent().find("input[data-field='shareRateList']").val();
				sumResult = sumResult - parseFloat(delShare);
			});
		},
		prodLotReg: function(){ // 적용 제품/LOT No.정보
			var result = prodLotListTemplate({index: prodItemsIndex});
			$prodLot.find('tbody[data-field="prodLotList"]').append(result);
			prodItemsIndex++;
			pageQueryEvent.prodLotEvent();
		},
		prodLotEvent: function(){ // 적용 제품/LOT No.정보
			// 제품코드 조회 버튼 클릭
			$("button[name=js-indus-proc-info-insp-dt-reg-alwheel-prod-list-button]").off().on("click", function(){
				fn_openPop($(this));
				prodItemsInfoRowIndex = $(this).attr("dataIndex");
				initRetrieveProdItemsInfoList("js-indus-proc-info-alwheel-reg-popup");   
			});
		
			// Lot No. 조회 버튼 클릭
			$("button[name=js-indus-proc-info-insp-dt-reg-alwheel-lot-info-button]").off().on("click", function(){
				prodItemsInfoRowIndex = $(this).attr("dataIndex");
				retrieveIndItemLotInfo.request("",$prodLot.find('input[data-field="lotNo"][dataIndex="' + prodItemsInfoRowIndex + '"]').val());
			});
		
			//삭제 버튼 클릭
			$("button[name=js-indus-proc-info-insp-dt-reg-alwheel-prod-lot-delete-button]").off().on("click", function(e) {
				var dataIndex = $(this).attr("dataIndex");
				app.message.confirm({
					  title             : '<spring:message code="TODO.KEY" text="적용 제품/LOT No.정보 삭제"/>'
					, message           : '<spring:message code="TODO.KEY" text="삭제 하시겠습니까?"/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="삭제"/>'
					, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
					, callback          : {
						confirm: function() {
							ifFn.prodLotListDel(dataIndex);
						}
					}
				});
			});
			
			// Lot No 중복 확인
			$prodLot.find('input[data-field="lotNo"]').off().on('keyup', function(e) {
				var $this = $(this);
				var lotNo = $this.val();
				var dataIndex = $this.attr("dataIndex");
				var listCheck = true;
				$prodLot.find('input[data-field="lotNo"]').each(function() {
					if(dataIndex != $(this).attr("dataIndex") && lotNo.length == 10 && lotNo == $(this).val()){
						app.message.alert({
							  title             : '<spring:message code="TODO.KEY" text="알림"/>'
							, message           : '<spring:message code="TODO.KEY" text="이미 추가된 Lot No. 입니다."/>'
							, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							, callback          : {
								confirm: function() {
									$this.focus();
								}
							}
						});
						listCheck = false;
					}
				});	
				if(!listCheck){
					$this.val("");
					return false;
				}
				if(!(e.keyCode >=37 && e.keyCode<=40)) {
					$this.val($this.val().replace(/[^a-z0-9]/gi,'').toUpperCase());
				}
			});
		},
		setData: function(){ // 확인 버튼 클릭
			
			// 필수값 입력 여부 체크
			if(app.utils.isEmpty($procType.find('select[data-field="procType"]').val())){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림" />'
					, message           : '<spring:message code="TODO.KEY" text="적용 공정은 필수입력 항목입니다." />'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인" />'
					, callback          : {
						confirm: function() {
						}
					}
				});
				return false;
			}
		
			procInfoDt = [];
			share = [];
			item = []
			
         	// 제품 정보
			$.each(intProcItemCodeMpperProd, function(key, value){ 
				var valueNm = "";
				if(key.indexOf("select[") > -1){
					valueNm = $prod.find(key).children("option:selected").text();
				}
				procInfoDt.push({
					procId: $procType.find('select[data-field="procType"]').val()
					,procItemCode: value
					,procItemCodeInputType: intProcItemCodeType[value][0]
					,procItemValue: $prod.find(key).val() || ""
					,procItemValueNm: valueNm || ""
				});
			});
			// 공정 Coating 정보 Decimal
			$.each(intProcItemCodeMpperCoatingRoll, function(key, value){
				if((key.toUpperCase()).indexOf(remark2) > -1){
					var valueNm = "";
					if(key.indexOf("select[") > -1){
						valueNm = $coatingRoll.find(key).children("option:selected").text();
					}
					procInfoDt.push({
						procId: $procType.find('select[data-field="procType"]').val()
						,procItemCode: value
						,procItemCodeInputType: intProcItemCodeType[value][0]
						,procItemValue: $coatingRoll.find(key).val() || ""
						,procItemValueNm: valueNm || ""
					});
				}else{
					procInfoDt.push({
						procId: $procType.find('select[data-field="procType"]').val()
						,procItemCode: value
						,procItemCodeInputType: intProcItemCodeType[value][0]
						,procItemValue: ""
						,procItemValueNm: ""
					});
				}
			});
			// 희석 조건 정보 Decimal
			$.each(intProcItemCodeMpperDiluent, function(key, value){
				if(remark2 == "LIQUID"){
					var result = $diluent.find(key).val() || "";
					procInfoDt.push({
						procId: $procType.find('select[data-field="procType"]').val()
						,procItemCode: value
						,procItemCodeInputType: intProcItemCodeType[value][0]
						,procItemValue: result
						,procItemValueNm: ""
					});
				}
			});
			
			// 도료 Supplier 점유율
			var makerIdLength  = $maker.find('input[data-field="makerIdList"]').length;
			for(var i=0 ; i<makerIdLength ; i++){
				share.push({
					procId: $procType.find('select[data-field="procType"]').val()
					,makerId: $maker.find('input[data-field="makerIdList"]')[i].value
					,shareRate: $maker.find('input[data-field="shareRateList"]')[i].value
					,makerNm: $maker.find('input[data-field="makerNmList"]')[i].value
				});
			}
			
			// 적용 제품/LOT No.정보
			$prodLot.find('tr[name="itemsList"]').each(function() {
				item.push({
					procId: $procType.find('select[data-field="procType"]').val()
					,items: $(this).find('input[data-field="items"]').val()
					,lotNo: $(this).find('input[data-field="lotNo"]').val()
					,inDate: $(this).find('input[data-field="inDate"]').val()
					,storeTerm: $(this).find('input[data-field="storeTerm"]').val()
					,itemsNm: $(this).find('input[data-field="itemsNm"]').val()
					,dataIndex: $(this).find('input[data-field="dataIndex"]').val()
				});
			});	
			indusProcInfoInspRegAlWheel.ifFn.pageInit();
			
			$("#js-indus-proc-info-insp-dt-reg-alwheel-close").click();
		},
		chkProcType: function(){
			// 적용 공정 등록 된 데이터 확인
			if(indusProcInfoInspRegAlWheel.chkPorcId($procType.find('select[data-field="procType"]').val())){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="등록된 적용 공정 입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				});
				$procType.find('select[data-field="procType"]').val("");
			}
			
			var pt = $(this).val();
			for(var i=0; i<procType.length; i++){
				if(procType[i].code == pt){
					remark2 = procType[i].remark2;
					if(remark2 == "POWDER"){
						$('#reg-alwheel-coating-roll-info-powder').css({display: ''});
						$('#reg-alwheel-coating-roll-info-liquid').css({display: 'none'});
						$('#reg-alwheel-diluent-info').css({display: 'none'});
					}
					if(remark2 == "LIQUID"){
						$('#reg-alwheel-coating-roll-info-powder').css({display: 'none'});
						$('#reg-alwheel-coating-roll-info-liquid').css({display: ''});
						$('#reg-alwheel-diluent-info').css({display: ''});
					}
					break;
				}
			}
		},
		init: function() {
			// 도료 Supplier 점유율
			var source = $('#js-indus-proc-info-insp-dt-reg-alwheel-maker-template').html();
			makerListTemplate = Handlebars.compile(source);
			// 도료 Supplier 점유율(%) 등록
			$('#js-indus-proc-info-insp-dt-reg-alwheel-maker-info-input-button').off().on('click', this.makerReg);
			
			// 적용 제품/LOT No.정보
			var source = $('#js-indus-proc-info-insp-dt-reg-alwheel-prod-lot-template').html();
			prodLotListTemplate = Handlebars.compile(source);
			// 적용 제품/LOT No.정보 등록
			$('#js-indus-proc-info-insp-dt-reg-alwheel-prod-lot-info-input-button').off().on('click', this.prodLotReg);
			// 확인 버튼
			$('#js-indus-proc-info-insp-dt-reg-alwheel-set-button').off().on('click', this.setData);
			
			// 적용 공정 동록 여부확인
			$procType.find('select[data-field="procType"]').off().on("change", this.chkProcType);
		}	
	};

	// ------------------------------------
	// interface function
	// ------------------------------------
	var ifFn = {
		// ------------------------------------
		// 적용 제품/LOT No.정보
		// ------------------------------------
		prodLotSet: function(data){ 
			$prodLot.find('input[data-field="itemsNm"][dataIndex="' + prodItemsInfoRowIndex + '"]').val(data.itemsNm);
			$prodLot.find('input[data-field="items"][dataIndex="' + prodItemsInfoRowIndex + '"]').val(data.items);
			// 제조일자, 저장기간 조회
			retrieveIndItemLotInfo.request(data.items,"");
		},
		prodLotListDel: function(dataIndex){ // 적용 제품/LOT No.정보
			$prodLot.find('tr[data-field="items-' + dataIndex + '"]').remove();	
		},
		// ------------------------------------
		// GET RESULT DATA
		// ------------------------------------
		getProcInfoDt: function(){
			if(item.length == 0){
				procInfoDt = [];
			}
			return procInfoDt;
		},
		getShare: function(){
			if(item.length == 0){
				share = [];
			}
			return share;
		},
		getItem: function(){
			if(item.length == 0){
				item = [];
			}
			return item;
		},
		getProcId: function(){
			var data = {id:"", name:"", setFlag:""};
			if ($procType.length > 0 && typeof $procType.find('select[data-field="procType"]') !== 'undefined') {
				data = {
						id:	$procType.find('select[data-field="procType"]').val()
						,name: $procType.find('select[data-field="procType"]').children("option:selected").text()
						,remark2: remark2
						,setFlag: $procType.find('input[data-field="setFlag"]').val()
					};
			}
			if(item.length == 0){
				data = {id:"", name:"", setFlag:""};
			}
			return data;
		},
		// ------------------------------------
		// 공정별 공정 정보 수정 데이터 설정
		// ------------------------------------
		setModData: function(dtProcId, dtProcInfoDt, dtShare, dtItem){
			// 수정 설정
			$procType.find('input[data-field="setFlag"]').val("CHG");
			
			procId = dtProcId;
			procInfoDt = dtProcInfoDt;
			share = dtShare;
			item = dtItem;
			
			// 적용 공정
			$procType.find('select[data-field="procType"]').val(procId.id);
			
			// 공정 Coating 정보, 희석 조건 출력 여부
			var pt = procId.id;
			for(var i=0; i<procType.length; i++){
				if(procType[i].code == pt){
					remark2 = procType[i].remark2;
					if(remark2 == "POWDER"){
						$('#reg-alwheel-coating-roll-info-powder').css({display: ''});
						$('#reg-alwheel-coating-roll-info-liquid').css({display: 'none'});
						$('#reg-alwheel-diluent-info').css({display: 'none'});
					}
					if(remark2 == "LIQUID"){
						$('#reg-alwheel-coating-roll-info-powder').css({display: 'none'});
						$('#reg-alwheel-coating-roll-info-liquid').css({display: ''});
						$('#reg-alwheel-diluent-info').css({display: ''});
					}
					break;
				}
			}
			
			// 적용 제품/LOT No.정보
			for(var i=0; i<item.length; i++){
				var result = prodLotListTemplate({
						procId: item[i].procId
						,items: item[i].items
						,lotNo: item[i].lotNo
						,inDate: item[i].inDate
						,storeTerm: item[i].storeTerm
						,itemsNm: item[i].itemsNm
						,index: item[i].dataIndex
					});
				$prodLot.find('tbody[data-field="prodLotList"]').append(result);
				
				pageQueryEvent.prodLotEvent();
				
				if(i == item.length-1){
					prodItemsIndex = item[i].dataIndex + 1;
				}
				
			}
			// 제품 정보, 공정 Coating 정보, 도장 생산성 정보
			for(var i=0; i<procInfoDt.length; i++){
				for (var key in intProcItemCodeMpperProd) {
					var value = intProcItemCodeMpperProd[key];
					if(value == procInfoDt[i].procItemCode){
						$prod.find(key).val(procInfoDt[i].procItemValue)
					}
				} 
				for (var key in intProcItemCodeMpperCoatingRoll) {
					var value = intProcItemCodeMpperCoatingRoll[key];
					if(value == procInfoDt[i].procItemCode){
						$coatingRoll.find(key).val(procInfoDt[i].procItemValue)
					}
				} 
				for (var key in intProcItemCodeMpperDiluent) {
					var value = intProcItemCodeMpperDiluent[key];
					if(value == procInfoDt[i].procItemCode){
						$diluent.find(key).val(procInfoDt[i].procItemValue)
					}
				} 
			}
			// 도료 Supplier 점유율
			for(var i=0; i<share.length; i++){
				var makerArr = [{
					  makerNm   : share[i].makerNm
					, makerId   : share[i].makerId
					, shareRate : share[i].shareRate
				}];
				pageQueryEvent.makerAppend(makerArr);
			}
			
		}
		
	};
	
	//------------------------------------------------
	// 적용 제품/LOT No.정보 (제조일, 저장기간 조회)
	//------------------------------------------------
	var retrieveIndItemLotInfo = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
	
				if (message === 'OK') {
					if(response.rs[0].pItems != ""){
						$prodLot.find('input[data-field="inDate"][dataIndex="' + prodItemsInfoRowIndex + '"]').val(response.rs[0].inDate == null?"":response.rs[0].inDate || "");
						$prodLot.find('input[data-field="storeTerm"][dataIndex="' + prodItemsInfoRowIndex + '"]').val(response.rs[0].storeTerm == null?"":""+response.rs[0].storeTerm || "");
					}
					if(response.rs[0].pLotNo != ""){
						$prodLot.find('input[data-field="itemsNm"][dataIndex="' + prodItemsInfoRowIndex + '"]').val(response.rs[0].itemsNm == null?"":response.rs[0].itemsNm || "");
						$prodLot.find('input[data-field="items"][dataIndex="' + prodItemsInfoRowIndex + '"]').val(response.rs[0].items == null?"":response.rs[0].items || "");
						
						$prodLot.find('input[data-field="inDate"][dataIndex="' + prodItemsInfoRowIndex + '"]').val(response.rs[0].inDate == null?"":response.rs[0].inDate || "");
						$prodLot.find('input[data-field="storeTerm"][dataIndex="' + prodItemsInfoRowIndex + '"]').val(response.rs[0].storeTerm == null?"":""+response.rs[0].storeTerm || "");
					}
					
				} else {
					fn_alertInfo('E', message);
					console.log(response.error || '');
				}
			}
		},
		error: function(jqueryXHR, status, errorText) {
			fn_alertInfo('E', errorText);
		},
		complete: function(jqueryXHR, status) {
			app.mask.pageUnlock();
		},
		request: function(items, lotNo) {
			var params = {
				service   : 'ind.procInfo',
				method    : 'retrieveIndItemLotInfo',
				items  	  : items,
				lotNo  	  : lotNo
			};
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);				
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	//------------------------------------------------
	//적용 공정 콤보 조회
	//------------------------------------------------
	var retrieveProcList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
	
				if (message === 'OK') {
					
					var data = response.rs;
					var comboCnt = 0;
					procType = data;
					$procType.find('select[data-field="procType"]').find('option').remove();
					$procType.find('select[data-field="procType"]').append("<option value=''>선택</option>");
					for(var i=0; i < data.length; i++) {
						$procType.find('select[data-field="procType"]').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
						comboCnt++;	
					}
					$procType.find('select[data-field="procType"]').attr("title", comboCnt+" <spring:message code='TODO.KEY' text='건'/>");
					
				} else {
					fn_alertInfo('E', message);
					console.log(response.error || '');
				}
			}
		},
		error: function(jqueryXHR, status, errorText) {
			fn_alertInfo('E', errorText);
		},
		complete: function(jqueryXHR, status) {
			app.mask.pageUnlock();
		},
		request: function(itemType, cust, paintCust, factoryId, lineId) {
			var params = {
				service   : 'ind.common',
				method    : 'retrieveProcList',
				itemType  : itemType,
				cust      : cust,
				paintCust : paintCust,
				factoryId : factoryId,
				lineId : lineId,
			};
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);				
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	//------------------------------------------------
	// 항목 조회
	//------------------------------------------------
	var retrieveIndProcDetail = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					
					var data = response.rs;
					// 도료구분 
					$prod.find('select[data-field="paintId"]').find('option').remove();
					for(var i=0; i<data.paintList.length; i++) {
						$prod.find('select[data-field="paintId"]').append("<option value='"+data.paintList[i].code+"'>"+ data.paintList[i].codeNm +"</option>");
					}
					$prod.find('select[data-field="paintId"]').attr("title", data.paintList.length+" 건");
					// 도료 수지 타입
					$prod.find('select[data-field="paintResinId"]').find('option').remove();
					for(var i=0; i<data.resinList.length; i++) {
						$prod.find('select[data-field="paintResinId"]').append("<option value='"+data.resinList[i].code+"'>"+ data.resinList[i].codeNm +"</option>");
					}			
					$prod.find('select[data-field="paintResinId"]').attr("title", data.resinList.length+" 건");
					
				} else {
					fn_alertInfo('E', message);
					console.log(response.error || '');
				}
			}
		},
		error: function(jqueryXHR, status, errorText) {
			fn_alertInfo('E', errorText);
		},
		complete: function(jqueryXHR, status) {
			app.mask.pageUnlock();
		},
		request: function(docNo, itemType) {
			var params = {
				service: 'ind.procInfo',
				method: 'retrieveIndProcDetailNew',
				docNo: '',
				itemType: itemType
			};
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);				
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	//------------------------------------------------
	// 도료 Supplier 점유율 콤보 조회
	//------------------------------------------------
	var retrieveMakerList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					$maker.find('select[data-field="makerId"]').find('option').remove();
					for(var i=0; i<response.rs.length; i++){
						$maker.find('select[data-field="makerId"]').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
					}
					$maker.find('select[data-field="makerId"]').attr("title", response.rs.length+" 건");
				}else
				{
					fn_alertInfo('E', message);
					console.log(response.error || '');
				}
			}
		},
		error: function(jqueryXHR, status, errorText) {
			fn_alertInfo('E', errorText);
		},
		complete: function(jqueryXHR, status) {
			app.mask.pageUnlock();
		},
		request: function() {
			var params = {
				service: 'ind.common',
				method: 'retrieveMakerList'
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);				
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	return {
		init : init
		,prodLotSet : ifFn.prodLotSet
		,ifFn : ifFn
	};
})();
</script>