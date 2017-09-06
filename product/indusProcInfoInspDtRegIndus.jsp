<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.09.04] industry 일반공업 공정별 공정 정보 팝업 HTML 엘리먼트" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="wp-dim-layer">
    <div class="wp-dimBg"></div>
    <div id="js-indus-proc-info-insp-dt-reg-indus-popup" class="wp-pop-layer wp-pop-w940 wp-box-sizing wp-car-popup">
    	<div class="wp-pop-title">
    		<h1><spring:message code="TODO.KEY" text="공정별 공정정보 등록-일반공업"/></h1>
    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-indus-proc-info-insp-dt-reg-indus-close"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
    	</div>
        <div class="wp-pop-conts">
			<!-- scroll Area -->
			<div class="wp-pop-cont-scrollable"  id="js-indus-proc-info-insp-dt-reg-indus-proc-type-info">
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
					<button type="button" id="js-indus-proc-info-insp-dt-reg-indus-prod-lot-info-input-button" class="wp-btn small white bgray plus wp-mb5 wp-fr"><spring:message code="TODO.KEY" text="추가"/></button>
				</div>
				<div class="wp-table-st1" id="js-indus-proc-info-insp-dt-reg-indus-prod-lot-info">
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
				<div class="wp-table-st1 wp-issue-apply" id="js-indus-proc-info-insp-dt-reg-indus-prod-info">
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
							<tr>
								<th class="wp-ar"><span class="wp-icon" data-field="basisWeightState" ><spring:message code="TODO.KEY" text="평량 수행 여부"/></span></div></th>
								<td class="wp-al"><input type="text" name="" data-field="basisWeightState" title=""></td>
								<th class="wp-ar"><span class="wp-icon" data-field="puttyProcState" ><spring:message code="TODO.KEY" text="퍼티 공정 여부"/></span></div></th>
								<td class="wp-al"><input type="text" name="" data-field="puttyProcState" title=""></td>
								<th class="wp-ar"><span class="wp-icon" data-field="puttyNm" ><spring:message code="TODO.KEY" text="퍼티 명칭"/></span></div></th>
								<td class="wp-al"><input type="text" name="" data-field="puttyNm" title=""></td>
							</tr>
							<tr>
								<th class="wp-ar"><span class="wp-icon" data-field="puttyThickness" ><spring:message code="TODO.KEY" text="퍼티 두께(mm)"/></span></div></th>
								<td class="wp-al"><input type="text" name="" data-field="puttyThickness" title=""></td>
								<th class="wp-ar"><span class="wp-icon" data-field="sandPaprerNo" ><spring:message code="TODO.KEY" text="Sand Papering No."/></span></div></th>
								<td class="wp-al" colspan="3"><input type="text" name="" data-field="sandPaprerNo" title="" class="wp-wd143"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //제품 정보 -->
				<!-- 공정 Coating 정보 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="공정 Coating 정보"/></h2>
				<div class="wp-table-st1 wp-issue-apply" id="js-indus-proc-info-insp-dt-reg-indus-coating-roll-info">
					<table>
						<caption><spring:message code="TODO.KEY" text="공정 Coating 정보"/></caption>
						<colgroup>
							<col style="width:19%">
							<col style="width:14%">
							<col style="width:19%">
							<col style="width:14%">
							<col style="width:19%">
							<col style="width:15%">
						</colgroup>
						<tbody>
							<tr>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="coatPress" ><spring:message code="TODO.KEY" text="압력(Bar)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="coatPress" name="" title=""></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="discharge" ><spring:message code="TODO.KEY" text="토출량(Bar)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="discharge" name="" title=""></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="patternWidth" ><spring:message code="TODO.KEY" text="패턴폭(cm)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="patternWidth" name="" title=""></td>
							</tr>
							<tr>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="preHeaterTemp" ><spring:message code="TODO.KEY" text="예열기 설정 온도(℃)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="preHeaterTemp" name="" title=""></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="preHeaterTime" ><spring:message code="TODO.KEY" text="예열기 통과 시간(min)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="preHeaterTime" name="" title=""></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="ovenTime" ><spring:message code="TODO.KEY" text="건조로 통과 시간(min)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="ovenTime" name="" title=""></td>
							</tr>
							<tr>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="ovenTemp" ><spring:message code="TODO.KEY" text="건조로 설정 온도(℃)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="ovenTemp" name="" title=""></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="settingTime" ><spring:message code="TODO.KEY" text="Setting Time"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="settingTime" name="" title=""></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="lineSpeed" ><spring:message code="TODO.KEY" text="라인 속도 (m/min, rpm)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="lineSpeed" name="" title=""></td>
							</tr>
							<tr>	
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="targetThickness" ><spring:message code="TODO.KEY" text="Target Coating"/><br><spring:message code="TODO.KEY" text="Thickness(㎛)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="targetThickness" name="" title=""></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="pitchSec" ><spring:message code="TODO.KEY" text="Pitch Time(sec)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="pitchSec" name="" title=""></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="paintingBoothNo" ><spring:message code="TODO.KEY" text="도장부스 No."/></span></div></th>
								<td class="wp-al"><input type="text" data-field="paintingBoothNo" name="" title=""></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //공정 Coating 정보 -->
				<!-- 희석 조건 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="희석 조건"/></h2>
				<div class="wp-table-st1 wp-issue-apply" id="js-indus-proc-info-insp-dt-reg-indus-diluent-info">
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
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="diluentVisc"><spring:message code="TODO.KEY" text="희석후 점도(sec)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="diluentVisc" name="" title="<spring:message code='TODO.KEY' text=''/>"></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="diluentRate"><spring:message code="TODO.KEY" text="희석비율(%)"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="diluentRate" name="" title="<spring:message code='TODO.KEY' text=''/>"></td>
								<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="diluent"><spring:message code="TODO.KEY" text="희석제 종류"/></span></div></th>
								<td class="wp-al"><input type="text" data-field="diluent" name="" title="<spring:message code='TODO.KEY' text=''/>"></td>
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
				<!-- //희석 조건 -->
				<!-- 도료 Supplier 점유율 -->
				<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="도료 Supplier 점유율"/></h2>
				<div class="wp-table-st1 wp-issue-apply" id="js-indus-proc-info-insp-dt-reg-indus-maker-info">
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
									<button type="button" class="wp-btn small gray cr3" id="js-indus-proc-info-insp-dt-reg-indus-maker-info-input-button"><spring:message code="TODO.KEY" text="등록"/></button>
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
				<button type="button" class="wp-btn blue1 cr3 wp-pl18 wp-pr18" id="js-indus-proc-info-insp-dt-reg-indus-set-button"><spring:message code="TODO.KEY" text="확인"/></button>
			</div>
	
    	</div>
	</div>
</div>

<script id="js-indus-proc-info-insp-dt-reg-indus-prod-lot-template" type="text/x-handlebars-template">
	<tr class="wp-td-padding0" data-field="items-{{index}}" name="itemsList" dataIndex="{{index}}">
		<td><input type="text" data-field="itemsNm" name="" value="{{itemsNm}}" dataIndex="{{index}}" title="<spring:message code='TODO.KEY' text=''/>" class="wp-wd189" disabled="disabled"><button type="button" name="js-indus-proc-info-insp-dt-reg-indus-prod-list-button" dataIndex="{{index}}" data-link="js-prod-info-popup" data-depth="3" class="wp-btn small gray cr3"><spring:message code="TODO.KEY" text="조회"/></button></td>
		<td><input type="text" data-field="lotNo" name="" value="{{lotNo}}" dataIndex="{{index}}" title="<spring:message code='TODO.KEY' text=''/>" class="wp-wd189" maxlength="10"><button type="button" name="js-indus-proc-info-insp-dt-reg-indus-lot-info-button" dataIndex="{{index}}" data-depth="3" class="wp-btn small gray cr3"><spring:message code="TODO.KEY" text="조회"/></button></td>
		<td class="wp-al"><input type="text" data-field="inDate" name="" value="{{inDate}}" dataIndex="{{index}}" title="<spring:message code='TODO.KEY' text=''/>" class="wp-inp-datepicker wp-wd100p" placeholder="<spring:message code='TODO.KEY' text='날짜입력'/>" disabled=""></td>
		<td class="wp-al"><input type="text" data-field="storeTerm" name="" value="{{storeTerm}}" dataIndex="{{index}}" title="<spring:message code='TODO.KEY' text=''/>" class="wp-wd100p" disabled=""></td>
		<td>
			<button type="button" id="js-indus-proc-info-insp-dt-reg-indus-prod-lot-delete-button-{{index}}" dataIndex="{{index}}" name="js-indus-proc-info-insp-dt-reg-indus-prod-lot-delete-button" class="wp-btn small white bgray trash"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
		</td>
		<input type="hidden" data-field="items" value="{{items}}" dataIndex="{{index}}">
		<input type="hidden" data-field="dataIndex" value="{{index}}">
	</tr>
</script>
							
							
<!-- 도료 Supplier 점유율 - 스크립트-->
<script id="js-indus-proc-info-insp-dt-reg-indus-maker-template" type="text/x-handlebars-template">		
	{{#rows}}
		<li><span data-field="makerNmList">{{makerNm}}%</span><button type="button" class="wp-spr-btn wp-close-sel" name="js-indus-proc-info-insp-dt-reg-indus-maker-delete-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
			<input type="hidden" data-field="makerIdList" value="{{makerId}}">
			<input type="hidden" data-field="shareRateList" value="{{shareRate}}">
			<input type="hidden" data-field="makerNmList" value="{{makerNm}}">
		</li>
	{{/rows}}
</script>

<script type="text/javascript">
var indusProcInfoInspDtRegIndus = (function() {
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
			
			// 적용 공정 attr
			$procType = $('#js-indus-proc-info-insp-dt-reg-indus-proc-type-info');
			// 적용 제품/LOT No.정보 attr
			$prodLot =  $('#js-indus-proc-info-insp-dt-reg-indus-prod-lot-info');
			// 제품 정보 attr
			$prod = $('#js-indus-proc-info-insp-dt-reg-indus-prod-info');
			// 공정 Coating 정보 attr
			$coatingRoll = $('#js-indus-proc-info-insp-dt-reg-indus-coating-roll-info');
			// 희석 조건 attr
			$diluent = $('#js-indus-proc-info-insp-dt-reg-indus-diluent-info');
			// 도료 Supplier 점유율 attr
			$maker = $('#js-indus-proc-info-insp-dt-reg-indus-maker-info');
		},
		procItemCodeMapper: function(){ // item code 에 대하여 object id 를 mapping
			// 제품 정보 
			intProcItemCodeMpperProd["input[data-field='objectTemp']"] = "INDUS_00008"; // INDUS_00008	피도물 온도(℃)
			intProcItemCodeMpperProd["select[data-field='paintId']"] = "INDUS_00009"; // INDUS_00009	도료 구분
			intProcItemCodeMpperProd["select[data-field='paintResinId']"] = "INDUS_00010"; // INDUS_00010	도료 수지 타입   
			intProcItemCodeMpperProd["input[data-field='objectState']"] = "INDUS_00011"; // INDUS_00011	피도물 외관			
			intProcItemCodeMpperProd["input[data-field='prodOutput']"] = "INDUS_00012"; // INDUS_00012	제품 생산량(kg)		
			intProcItemCodeMpperProd["input[data-field='prodStorageTerm']"] = "INDUS_00013";	// INDUS_00013	제품 저장 기간(개월)
			intProcItemCodeMpperProd["input[data-field='basisWeightState']"] = "INDUS_00014"; // INDUS_00014	평량 수행 여부
			intProcItemCodeMpperProd["input[data-field='puttyProcState']"] = "INDUS_00015"; // INDUS_00015	퍼티 공정 여부
			intProcItemCodeMpperProd["input[data-field='puttyNm']"] = "INDUS_00016"; // INDUS_00016	퍼티 명칭
			intProcItemCodeMpperProd["input[data-field='puttyThickness']"] = "INDUS_00017"; // INDUS_00017	퍼티 두께(mm)
			intProcItemCodeMpperProd["input[data-field='sandPaprerNo']"] = "INDUS_00018"; // INDUS_00018	Sand papering No.
			
			// 공정 Coating 정보 
			intProcItemCodeMpperCoatingRoll["input[data-field='coatPress']"] = "INDUS_00019"; //INDUS_00019	압력(Bar)
			intProcItemCodeMpperCoatingRoll["input[data-field='discharge']"] = "INDUS_00020"; //INDUS_00020	토출량(Bar)
			intProcItemCodeMpperCoatingRoll["input[data-field='patternWidth']"] = "INDUS_00021"; //INDUS_00021	패턴폭(cm)
			intProcItemCodeMpperCoatingRoll["input[data-field='preHeaterTemp']"] = "INDUS_00022"; //INDUS_00022	예열기 설정 온도(℃)
			intProcItemCodeMpperCoatingRoll["input[data-field='preHeaterTime']"] = "INDUS_00023"; //INDUS_00023	예열기 통과 시간(min)
			intProcItemCodeMpperCoatingRoll["input[data-field='ovenTime']"] = "INDUS_00024"; //INDUS_00024	건조로 통과 시간(min)
			intProcItemCodeMpperCoatingRoll["input[data-field='ovenTemp']"] = "INDUS_00025"; //INDUS_00025	건조로 설정 온도(℃)
			intProcItemCodeMpperCoatingRoll["input[data-field='settingTime']"] = "INDUS_00026"; //INDUS_00026	Setting Time
			intProcItemCodeMpperCoatingRoll["input[data-field='lineSpeed']"] = "INDUS_00027"; //INDUS_00027	라인 속도(m/min, rpm)
			intProcItemCodeMpperCoatingRoll["input[data-field='targetThickness']"] = "INDUS_00028"; //INDUS_00028	Target Coating Thickness(㎛)
			intProcItemCodeMpperCoatingRoll["input[data-field='pitchSec']"] = "INDUS_00029"; //INDUS_00029	Pitch Time(sec)
			intProcItemCodeMpperCoatingRoll["input[data-field='paintingBoothNo']"] = "INDUS_00030"; //INDUS_00030	도장 부스 No.
			
			// 희석 조건
			intProcItemCodeMpperDiluent["input[data-field='diluentVisc']"] = "INDUS_00031";	// INDUS_00031	희석 후 점도(sec)	
			intProcItemCodeMpperDiluent["input[data-field='diluentRate']"] = "INDUS_00032";	// INDUS_00032	희석 비율(%)
			intProcItemCodeMpperDiluent["input[data-field='diluent']"] = "INDUS_00033";	// INDUS_00033	희석제 종류
			intProcItemCodeMpperDiluent["input[data-field='viscTemp']"] = "INDUS_00034"; // INDUS_00034	점도 측정 시 온도(℃)			                                  
			intProcItemCodeMpperDiluent["input[data-field='catchState']"] = "INDUS_00035";	// INDUS_00035	도료 유동 상태                          
			intProcItemCodeMpperDiluent["input[data-field='filterState']"] = "INDUS_00036";	// INDUS_00036	필터 상태	
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
			$('button[name=js-indus-proc-info-insp-dt-reg-indus-maker-delete-button]').off().on('click', function(){
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
			$("button[name=js-indus-proc-info-insp-dt-reg-indus-prod-list-button]").off().on("click", function(){
				fn_openPop($(this));
				prodItemsInfoRowIndex = $(this).attr("dataIndex");
				initRetrieveProdItemsInfoList("js-indus-proc-info-indus-reg-popup");   
			});
		
			// Lot No. 조회 버튼 클릭
			$("button[name=js-indus-proc-info-insp-dt-reg-indus-lot-info-button]").off().on("click", function(){
				prodItemsInfoRowIndex = $(this).attr("dataIndex");
				retrieveIndItemLotInfo.request("",$prodLot.find('input[data-field="lotNo"][dataIndex="' + prodItemsInfoRowIndex + '"]').val());
			});
		
			//삭제 버튼 클릭
			$("button[name=js-indus-proc-info-insp-dt-reg-indus-prod-lot-delete-button]").off().on("click", function(e) {
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
			});
			// 희석 조건 정보 Decimal
			$.each(intProcItemCodeMpperDiluent, function(key, value){ 
				var result = $diluent.find(key).val() || "";
				procInfoDt.push({
					procId: $procType.find('select[data-field="procType"]').val()
					,procItemCode: value
					,procItemCodeInputType: intProcItemCodeType[value][0]
					,procItemValue: result
					,procItemValueNm: ""
				});
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
			indusProcInfoInspRegIndus.ifFn.pageInit();
			
			$("#js-indus-proc-info-insp-dt-reg-indus-close").click();
		},
		chkProcType: function(){
			// 적용 공정 등록 된 데이터 확인
			if(indusProcInfoInspRegIndus.chkPorcId($procType.find('select[data-field="procType"]').val())){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="등록된 적용 공정 입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				});
				$procType.find('select[data-field="procType"]').val("");
			}
		},
		init: function() {
			// 도료 Supplier 점유율
			var source = $('#js-indus-proc-info-insp-dt-reg-indus-maker-template').html();
			makerListTemplate = Handlebars.compile(source);
			// 도료 Supplier 점유율(%) 등록
			$('#js-indus-proc-info-insp-dt-reg-indus-maker-info-input-button').off().on('click', this.makerReg);
			
			// 적용 제품/LOT No.정보
			var source = $('#js-indus-proc-info-insp-dt-reg-indus-prod-lot-template').html();
			prodLotListTemplate = Handlebars.compile(source);
			// 적용 제품/LOT No.정보 등록
			$('#js-indus-proc-info-insp-dt-reg-indus-prod-lot-info-input-button').off().on('click', this.prodLotReg);
			// 확인 버튼
			$('#js-indus-proc-info-insp-dt-reg-indus-set-button').off().on('click', this.setData);
			
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