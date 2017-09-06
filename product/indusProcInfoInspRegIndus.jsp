<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.09.04] industry 일반공업 공통 팝업 HTML 엘리먼트" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		
	<div class="wp-dim-layer">
   		<div class="wp-dimBg"></div>
   		<div id="js-indus-proc-info-insp-reg-indus-popup" class="wp-pop-layer wp-pop-w940 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="거래선 공정정보 등록-일반공업"/></h1>
	    		<button type="button" id="js-indus-proc-info-insp-reg-indus-close" class="wp-btn-close-layer wp-spr-btn"><span>닫기</span></button>
	    	</div>
	        <div class="wp-pop-conts">
				<!-- scroll Area -->
				<div class="wp-pop-cont-scrollable">

					<!-- 기본 정보 -->
					<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="기본 정보"/></h2>
					<div class="wp-table-st1 wp-issue-apply" id="js-indus-proc-info-insp-reg-indus-basic-info">
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
									<th class="wp-ar" data-field="itemType"><spring:message code="TODO.KEY" text="제품유형"/></th>
									<td class="wp-al">
										<div class="wp-ui-select wp-wd100p">
											<select data-field="itemType" title="항목 개수 설정" disabled="disabled">
											</select>
										</div>
									</td>
									<th class="wp-ar" data-field="cust"><spring:message code="TODO.KEY" text="거래선"/></th>
									<td>
										<div class="wp-ui-select wp-wd100p">
											<select data-field="cust" title="">
											</select>
										</div>
									</td>
									<th class="wp-ar" data-field="paintCust" ><spring:message code="TODO.KEY" text="도장업체"/></th>
									<td>
										<div class="wp-ui-select wp-wd100p">
											<select data-field="paintCust" title="" >
											</select>
										</div>
									</td>
								</tr>
								<tr>
									<th class="wp-ar" data-field="factoryId" ><spring:message code="TODO.KEY" text="공장"/></th>
									<td class="wp-al">
										<div class="wp-ui-select wp-wd100p">
											<select data-field="factoryId" title="항목 개수 설정">
											</select>
										</div>
									</td>
									<th class="wp-ar" data-field="measureDate" ><spring:message code="TODO.KEY" text="측정일자"/></th>
									<td><input type="text" name="" data-field="measureDate" title="" class="wp-inp-datepicker maxdate wp-wd100p" placeholder="날짜입력" value=""></td>
									<th class="wp-ar" data-field="empName" ><spring:message code="TODO.KEY" text="측정자"/></th>
									<td>
										<input type="text" name="" data-field="empName" title="" class="wp-wd108" value="${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}" disabled="disabled">
										<input type="hidden" data-field="emp" value="${sessionScope.LoginUserInfo.empNum}" />
										<input type="hidden"  data-field="sessionEmp" value="${sessionScope.LoginUserInfo.empNum}">
										<input type="hidden"  data-field="sessionEmpName" value="${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}">
										<button type="button" data-field="empSearchButton" data-link="js-industry-emp-retrieve-popup" data-depth="2" class="wp-btn small gray cr3 wp-btn-pop">조회</button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //기본 정보 -->
					<!-- 라인 정보 -->
					<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="라인 정보"/></h2> 
					<div class="wp-table-st1 wp-issue-apply" id="js-indus-proc-info-insp-reg-indus-line-info">
						<table>
							<caption><spring:message code="TODO.KEY" text="라인 정보"/></caption>
							<colgroup>
								<col style="width:13%">
								<col style="width:87%">
							</colgroup>
							<tbody>
								<tr>
									<th class="wp-ar" data-field="line"><spring:message code="TODO.KEY" text="적용 라인"/></th>
									<td class="wp-al">
										<div class="wp-ui-select wp-wd160">
											<select title="" data-field="line">
											</select>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>						
					
					<!-- 소지 및 전처리 정보 -->
					<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="소지 정보"/></h2>
					<div class="wp-table-st1 wp-issue-apply" id="js-indus-proc-info-insp-reg-indus-material-info">
						<table>
							<caption><spring:message code="TODO.KEY" text="소지 정보"/></caption>
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
									<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon wp-red" data-field="applMaterial"><spring:message code="TODO.KEY" text="적용 소지"/></span></div></th>
									<td class="wp-al">
										<div class="wp-ui-select wp-wd100p">
											<select title="항목 개수 설정" data-field="applMaterial" >
											</select>
										</div>
									</td>
									<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="matThickness"><spring:message code="TODO.KEY" text="소지 두께(mm)"/></span></div></th>
									<td class="wp-al"><input type="text" data-field="matThickness" name="" title=""></td>
									<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="matWidth"><spring:message code="TODO.KEY" text="소지 폭(mm)"/></span></div></th>
									<td class="wp-al"><input type="text" data-field="matWidth" name="" title=""></td>
								</tr>
								<tr>
									<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="matDemand"><spring:message code="TODO.KEY" text="수요가"/></span></div></th>
									<td class="wp-al"><input type="text" data-field="matDemand" name="" title=""></td>
									<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="matBuyer"><spring:message code="TODO.KEY" text="발주처"/></span></div></th>
									<td class="wp-al"><input type="text" data-field="matBuyer" name="" title=""></td>
									<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="matUse"><spring:message code="TODO.KEY" text="소지용도"/></span></div></th>
									<td class="wp-al">
										<div class="wp-ui-select wp-wd100p">
											<select title="항목 개수 설정" data-field="matUse">
											</select>
										</div>
									</td>
								</tr>
								<tr>
									<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="matSetSite"><spring:message code="TODO.KEY" text="소재 설치 현장명"/></span></div></th>
									<td colspan="5" class="wp-al"><input type="text" data-field="matSetSite" name="" title="<spring:message code='TODO.KEY' text=''/>"></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //소지 및 전처리 정보 -->
					
					<!-- 환경 조건 및 특이사항 -->
					<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="환경 조건 및 특이사항"/></h2>
					<div class="wp-table-st1 wp-issue-apply" id="js-indus-proc-info-insp-reg-indus-environment-info">
						<table>
							<caption><spring:message code="TODO.KEY" text="환경 조건 및 특이사항"/></caption>
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
									<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="coatRoomTemp"><spring:message code="TODO.KEY" text="도장실 온도(℃)"/></span></div></th>
									<td class="wp-al"><input type="text" data-field="coatRoomTemp" name="" title="<spring:message code='TODO.KEY' text=''/>"></td>
									<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="coatRoomHum"><spring:message code="TODO.KEY" text="도장실 습도(%)"/></span></div></th>
									<td class="wp-al"><input type="text" data-field="coatRoomHum" name="" title="<spring:message code='TODO.KEY' text=''/>"></td>
									<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="workerState"><spring:message code="TODO.KEY" text="작업자환경"/><br><spring:message code="TODO.KEY" text="(피복착용,오염)"/></span></div></th>
									<td class="wp-al"><input type="text" data-field="workerState" name="" title="<spring:message code='TODO.KEY' text=''/>"></td>
								</tr>
								<tr>
									<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="cleanState"><spring:message code="TODO.KEY" text="도장공정 청결"/><br><spring:message code="TODO.KEY" text="상태(집진설비)"/></span></div></th>
									<td class="wp-al"><input type="text" data-field="cleanState" name="" title="<spring:message code='TODO.KEY' text=''/>"></td>
									<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="moveStateTemp"><spring:message code="TODO.KEY" text="도료 이송 조건"/><br><spring:message code="TODO.KEY" text="(5~25℃, 85%↓)"/></span></div></th>
									<td class="wp-al">
										<input type="text" data-field="moveStateTemp" name="" title="<spring:message code='TODO.KEY' text=''/>" class="wp-wd49p">
										<input type="text" data-field="moveStateHumidity" name="" title="<spring:message code='TODO.KEY' text=''/>" class="wp-wd49p">
									</td>
									<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="stockStateTemp"><spring:message code="TODO.KEY" text="도료 보관 조건"/><br><spring:message code="TODO.KEY" text="(5~25℃,85%↓)"/></span></div></th>
									<td class="wp-al">
										<input type="text" data-field="stockStateTemp" name="" title="<spring:message code='TODO.KEY' text=''/>" class="wp-wd49p">
										<input type="text" data-field="stockStateHumidity" name="" title="<spring:message code='TODO.KEY' text=''/>" class="wp-wd49p">
									</td>
								</tr>
								<tr>
									<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span data-field="remark"><spring:message code="TODO.KEY" text="특이사항"/></span></div></th>
									<td colspan="5">
										<textarea cols="" rows="5" data-field="remark" class="wp-wd100p"></textarea></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //환경 조건 및 특이사항 -->
					<!-- 도장 생산성 정보 -->
					<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="도장 생산성 정보"/></h2>
					<div class="wp-table-st1 wp-issue-apply" id="js-indus-proc-info-insp-reg-indus-rate-info">
						<table>
							<caption><spring:message code="TODO.KEY" text="도장 생산성 정보"/></caption>
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
									<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="directRate"><spring:message code="TODO.KEY" text="직행률(%)"/></span></div></th>
									<td class="wp-al"><input type="text" name="" data-field="directRate" title=""></td>
									<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="lineSpeed"><spring:message code="TODO.KEY" text="라인 속도"/><br><spring:message code="TODO.KEY" text="(m/min, rpm)"/></span></div></th>
									<td class="wp-al"><input type="text" name="" data-field="lineSpeed" title=""></td>
									<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="defectRate"><spring:message code="TODO.KEY" text="불량률(%)"/></span></div></th>
									<td class="wp-al"><input type="text" name="" data-field="defectRate" title=""></td>
								</tr>
								<tr>
									<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="oppTime"><spring:message code="TODO.KEY" text="대당 소요 시간"/></span></div></th>
									<td class="wp-al"><input type="text" name="" data-field="oppTime" title=""></td>
									<th class="wp-ar"><div class="wp-temphum wp-icon-area"><span class="wp-icon" data-field="oppRequire"><spring:message code="TODO.KEY" text="대당 도료 소요량"/></span></div></th>
									<td class="wp-al" colspan="3"><input type="text" name="" data-field="oppRequire" title="" class="wp-wd160"></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //도장 생산성 정보 -->
					
					<!-- 공정별 공정 정보 -->
					<div class="wp-clearfix">
						<h2 class="wp-cont-title wp-fl"><spring:message code="TODO.KEY" text="공정별 공정 정보"/></h2>
						<button type="button" id="js-indus-proc-info-insp-dt-reg-indus-button" data-link="js-indus-proc-info-insp-dt-reg-indus-popup" data-depth="2" class="wp-btn small white bgray plus wp-mb5 wp-fr"><spring:message code="TODO.KEY" text="추가"/></button>
					</div>
					<div class="wp-wrap-dl-paint-check02" id="js-indus-proc-info-insp-dt-reg-indus">
					</div>
					<!-- //공정별 공정 정보 -->
					<!-- // scroll Area -->
				</div>
		
				<div class="wp-btn-area">
					<button type="button" id="js-indus-proc-info-reg-indus-popup-save-button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18">저장</button>
					<input type="hidden"  id="js-indus-proc-info-reg-indus-pop-docNo"     value="">
					<input type="hidden"  id="js-indus-proc-info-reg-indus-pop-orgDocNo"  value="">
					<input type="hidden"  id="js-indus-proc-info-reg-indus-pop-item-type" value="">
				</div>
			
			</div>
		</div>
	</div> 

<!-- 공정별 공정 정보 - 스크립트-->
<script id="js-indus-proc-info-insp-dt-reg-indus-template" type="text/x-handlebars-template">
{{#rows}}
<dl class="wp-dl-paint-check02" data-field="item-detail-{{dataIndex}}">
    <dt>
        <!-- wp-list-paint-check02 -->
        <a class="wp-list-paint-check02 wp-pointer">
            <div class="wp-clearfix">
                <strong class="wp-tit bold"><spring:message code="TODO.KEY" text="적용 공정 : "/>{{procNm}}</strong>
                <div class="wp-rp-bttn">
                    <button type="button" class="wp-btn small white bgray mody" data-field="itemMod" data-link="js-indus-proc-info-insp-dt-reg-indus-popup" data-depth="2" dataIndex="{{dataIndex}}" procId="{{procId}}"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
                    <button type="button" class="wp-btn small white bgray trash-gray" data-field="itemDel" dataIndex="{{dataIndex}}" procId="{{procId}}"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
                </div>
            </div>
            <div class="wp-wrap-table-st10">
                <table class="wp-table-st10">
                    <caption><spring:message code="TODO.KEY" text="적용 공정 : "/>{{procNm}}</caption>
                    <colgroup>
                    <col style="width:20%">
                    <col style="width:20%">
                    <col style="width:20%">
                    <col style="width:20%">
                    <col style="width:20%">
                    </colgroup>
                    <thead>
                    <tr>
                        <th scope="col"><spring:message code="TODO.KEY" text="제품코드"/></th>
                        <th scope="col"><spring:message code="TODO.KEY" text="제품명"/></th>
                        <th scope="col"><spring:message code="TODO.KEY" text="저장기간(개월)"/></th>
                        <th scope="col"><spring:message code="TODO.KEY" text="LOT No."/></th>
                        <th scope="col"><spring:message code="TODO.KEY" text="제조일자"/></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>{{items}}</td>
                        <td>{{itemsNm}}</td>
                        <td>{{storeTerm}}</td>
                        <td>{{lotNo}}</td>
                        <td>{{inDate}}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </a>
        <!-- // wp-list-paint-check02 -->
    </dt>	
    <dd class="wp-list-paint-check02-view" style="display: none;">
        <!-- wp-list-paint-check02 -->
        <div class="wp-list-paint-check02 on">
            <div class="wp-clearfix">
                <strong class="wp-tit bold"><spring:message code="TODO.KEY" text="적용 공정 : "/>{{procNm}}</strong>
                <div class="wp-rp-bttn">
                    <button type="button" class="wp-btn small white bgray mody" data-field="itemModSub" data-link="js-indus-proc-info-insp-dt-reg-indus-popup" data-depth="2" dataIndex="{{dataIndex}}" procId="{{procId}}"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
                    <button type="button" class="wp-btn small white bgray trash-gray" data-field="itemDelSub" dataIndex="{{dataIndex}}" procId="{{procId}}"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
                </div>
            </div>
            <div class="wp-wrap-table-st10">
                <table class="wp-table-st10">
                    <caption><spring:message code="TODO.KEY" text="적용 공정 : "/>{{procNm}}</caption>
                    <colgroup>
                    <col style="width:20%">
                    <col style="width:20%">
                    <col style="width:20%">
                    <col style="width:20%">
                    <col style="width:20%">
                    </colgroup>
                    <thead>
                    <tr>
                        <th scope="col"><spring:message code="TODO.KEY" text="제품코드"/></th>
                        <th scope="col"><spring:message code="TODO.KEY" text="제품명"/></th>
                        <th scope="col"><spring:message code="TODO.KEY" text="저장기간(개월)"/></th>
                        <th scope="col"><spring:message code="TODO.KEY" text="LOT No."/></th>
                        <th scope="col"><spring:message code="TODO.KEY" text="제조일자"/></th>
                    </tr>
                    </thead>
                    <tbody>
                    {{#temArray}}
                    <tr>
                        <td>{{items}}</td>
                        <td>{{itemsNm}}</td>
                        <td>{{storeTerm}}</td>
                        <td>{{lotNo}}</td>
                        <td>{{inDate}}</td>
                    </tr>
                    {{/temArray}}
                    </tbody>
                </table>
            </div>

            <!-- 제품 정보 -->
            <div class="wp-clearfix">
                <strong class="wp-tit bold"><spring:message code="TODO.KEY" text="제품 정보"/></strong>
            </div>
            <div class="wp-wrap-table-st10">
                <table class="wp-table-st11">
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
						<th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00008}}"><spring:message code="TODO.KEY" text="피도물 온도(℃)"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00008}}</td>
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00009}}"><spring:message code="TODO.KEY" text="도료 구분"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00009}}</td>
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00010}}"><spring:message code="TODO.KEY" text="도료 수지 타입"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00010}}</td>
                    </tr>
                    <tr>
						<th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00011}}"><spring:message code="TODO.KEY" text="피도물 외관"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00011}}</td>
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00012}}"><spring:message code="TODO.KEY" text="제품 생산량(kg)"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00012}}</td>
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00013}}"><spring:message code="TODO.KEY" text="제품 저장 기간(개월)"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00013}}</td>
                    </tr>
					<tr>
						<th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00014}}"><spring:message code="TODO.KEY" text="평량 수행 여부"/></span></div></th>
						<td class="wp-al">{{detail.INDUS_00014}}</td>
						<th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00015}}"><spring:message code="TODO.KEY" text="퍼티 공정 여부"/></span></div></th>
						<td class="wp-al">{{detail.INDUS_00015}}</td>
						<th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00016}}"><spring:message code="TODO.KEY" text="퍼티 명칭"/></span></div></th>
						<td class="wp-al">{{detail.INDUS_00016}}</td>
					</tr>
					<tr>
						<th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00017}}"><spring:message code="TODO.KEY" text="퍼티 두께(mm)"/></span></div></th>
						<td class="wp-al">{{detail.INDUS_00017}}</td>
						<th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00018}}"><spring:message code="TODO.KEY" text="Sand Papering No."/></span></div></th>
						<td class="wp-al" colspan="3">{{detail.INDUS_00018}}</td>
					</tr>
                    </tbody>
                </table>
            </div>
            <!-- //제품 정보 -->
            <!-- 공정 Coating 정보 -->
            <div class="wp-clearfix">
                <strong class="wp-tit bold"><spring:message code="TODO.KEY" text="공정 Coating 정보"/></strong>
            </div>
            <div class="wp-wrap-table-st10">
                <table class="wp-table-st11">
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
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00019}}"><spring:message code="TODO.KEY" text="압력(Bar)"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00019}}</td>
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00020}}"><spring:message code="TODO.KEY" text="토출량(Bar)"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00020}}</td>
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00021}}"><spring:message code="TODO.KEY" text="패턴폭(cm)"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00021}}</td>
                    </tr>
                    <tr>
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00022}}"><spring:message code="TODO.KEY" text="예열기 설정 온도(℃)"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00022}}</td>
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00023}}"><spring:message code="TODO.KEY" text="예열기 통과 시간(min)"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00023}}</td>
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00024}}"><spring:message code="TODO.KEY" text="건조로 통과 시간(min)"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00024}}</td>
                    </tr>
                    <tr>
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00025}}"><spring:message code="TODO.KEY" text="건조로 설정 온도(℃)"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00025}}</td>
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00026}}"><spring:message code="TODO.KEY" text="Setting Time"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00026}}</td>
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00027}}"><spring:message code="TODO.KEY" text="라인 속도(m/min, rpm)"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00027}}</td>
                    </tr>
                    <tr>
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00028}}"><spring:message code="TODO.KEY" text="Target Coating Thickness(㎛)"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00028}}</td>
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00029}}"><spring:message code="TODO.KEY" text="Pitch Time(sec)"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00029}}</td>
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00030}}"><spring:message code="TODO.KEY" text="도장부스 No."/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00030}}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <!-- //공정 Coating 정보 -->
            <!-- 공정 희석 조건 -->
            <div class="wp-clearfix">
                <strong class="wp-tit bold"><spring:message code="TODO.KEY" text="공정 희석 조건"/></strong>
            </div>
            <div class="wp-wrap-table-st10">
                <table class="wp-table-st11">
                    <caption><spring:message code="TODO.KEY" text="공정 희석 조건"/></caption>
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
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00031}}"><spring:message code="TODO.KEY" text="희석 후 점도(sec)"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00031}}</td>
						<th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00032}}"><spring:message code="TODO.KEY" text="희석 비율(%)"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00032}}</td>
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00033}}"><spring:message code="TODO.KEY" text="희석제 종류"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00033}}</td>
                    </tr>
                    <tr>
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00034}}"><spring:message code="TODO.KEY" text="점도 측정시 온도(℃)"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00034}}</td>
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00035}}"><spring:message code="TODO.KEY" text="캐치팬 내 도료"/><br><spring:message code="TODO.KEY" text="유동 상태"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00035}}</td>
                        <th scope="row"><div class="wp-temphum wp-icon-area"><span class="{{css.INDUS_00036}}"><spring:message code="TODO.KEY" text="필터 상태"/></span></div></th>
                        <td class="wp-al">{{detail.INDUS_00036}}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <!-- //공정 희석 조건 -->
            <!-- 도료 Supplier 점유율 -->
            <div class="wp-clearfix">
                <strong class="wp-tit bold"><spring:message code="TODO.KEY" text="도료 Supplier 점유율"/></strong>
            </div>
            <div class="wp-wrap-table-st10">
                <table class="wp-table-st11">
                    <caption><spring:message code="TODO.KEY" text="도료 Supplier 점유율"/></caption>
                    <colgroup>
                        <col style="width:14%">
                        <col style="width:20%">
                        <col style="width:13%">
                        <col style="width:20%">
                        <col style="width:13%">
                        <col style="width:20%">
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row"><spring:message code="TODO.KEY" text="Maker별 점유율(%)"/></th>
                        <td class="wp-al" colspan="5">{{detail.makers}}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <!-- //도료 Supplier 점유율 -->
        </div>
        <!-- // wp-list-paint-check02 -->
    </dd>
</dl>
{{/rows}}
</script>		 

<script type="text/javascript">

var indusProcInfoInspRegIndus = (function() {
	// item code
	var intProcItemCodeType = {
	};
	// item code 에 대하여 object id 를 mapping
	// 소지정보
	var intProcItemCodeMpperMaterial = {};
	// 환경 조건 및 특이사항
	var intProcItemCodeMpperEnvironment = {};
	// 도장 생산성 정보
	var intProcItemCodeMpperRate = {};
	
	// 기본정보 attr
	var $basicInfo = [];
	// 라인정보 attr
	var $line = [];
	// 소지 정보 attr
	var $material = [];
	// 환경 조건 및 특이사항 attr
	var $environment = [];
	// 공정별 공정 정보 attr(적용 제품/LOT No.정보)
	var $item = [];
	// 공정별 공정 정보 attr
	var procList = [];
	
	//공정별 공정 정보 스크립트
	var procDetailTemplate;
	
	//------------------------------------------------
	// 초기화
	//------------------------------------------------
	var init = function(docNo, itemType){
		// 변수 초기화
		initData.init();
		// item code 에 대하여 object id 를 mapping
		initData.procItemCodeMapper();
		// 초기화 데이터/환경변수 셋팅
		initData.setInfo(docNo, itemType);
		// 이벤트 핸들러
		pageQueryEvent.init();
	}
	
	//-------------------------------------------------
	// 데이터 초기화
	//-------------------------------------------------
	var initData = {
		init: function(){
			// 소지정보
			intProcItemCodeMpperMaterial = {};
			// 환경 조건 및 특이사항
			intProcItemCodeMpperEnvironment = {};
			// 도장 생산성 정보
			intProcItemCodeMpperRate = {};
			
			// 기본정보 attr
			$basicInfo = [];
			// 라인정보 attr
			$line = [];
			// 소지 정보 attr
			$material = [];
			// 환경 조건 및 특이사항 attr
			$environment = [];
			// 공정별 공정 정보 attr(적용 제품/LOT No.정보)
			$item = [];
			// 공정별 공정 정보 attr
			procList = [];
			//공정별 공정 정보 스크립트
			procDetailTemplate;
			
			// 공정별 공정 정보
			$('#js-indus-proc-info-insp-dt-reg-indus').empty();
			
			// 기본정보 attr
			$basicInfo = $('#js-indus-proc-info-insp-reg-indus-basic-info');
			// 라인정보 attr
			$line = $('#js-indus-proc-info-insp-reg-indus-line-info');
			//소지 정보 attr
			$material = $('#js-indus-proc-info-insp-reg-indus-material-info');
			// 환경 조건 및 특이사항 attr
			$environment = $('#js-indus-proc-info-insp-reg-indus-environment-info');
			//도장 생산성 정보 attr
			$rate = $('#js-indus-proc-info-insp-reg-indus-rate-info');
			//공정별 공정 정보 attr(적용 제품/LOT No.정보)
			$item = $('#js-indus-proc-info-insp-dt-reg-indus');
		},
		procItemCodeMapper: function(){ // item code 에 대하여 object id 를 mapping
			// 소지정보
			intProcItemCodeMpperMaterial["select[data-field='applMaterial']"] = "INDUS_00001";// 적용소지
			intProcItemCodeMpperMaterial["input[data-field='matThickness']"] = "INDUS_00002";// 소지 두께(mm)
			intProcItemCodeMpperMaterial["input[data-field='matWidth']"] = "INDUS_00003";// 소지 폭(mm)
			intProcItemCodeMpperMaterial["input[data-field='matDemand']"] = "INDUS_00004";// 수요가 
			intProcItemCodeMpperMaterial["input[data-field='matBuyer']"] = "INDUS_00005";// 발주처	
			intProcItemCodeMpperMaterial["select[data-field='matUse']"] = "INDUS_00006";// 소지용도
			intProcItemCodeMpperMaterial["input[data-field='matSetSite']"] = "INDUS_00007";// 소재 설치 현장명
			
			// 환경 조건 및 특이사항
			intProcItemCodeMpperEnvironment["input[data-field='coatRoomTemp']"] = "INDUS_00037";// 도장실 온도(℃)
			intProcItemCodeMpperEnvironment["input[data-field='coatRoomHum']"] = "INDUS_00038";// 도장실 습도(%)
			intProcItemCodeMpperEnvironment["input[data-field='workerState']"] = "INDUS_00039";// 작업자환경 (피복착용,오염)
			intProcItemCodeMpperEnvironment["input[data-field='cleanState']"] = "INDUS_00040";// 도장공정 청결 상태(집진설비)
			intProcItemCodeMpperEnvironment["input[data-field='moveStateTemp']"] = "INDUS_00041";// 도료 이송 조건 (5~25℃, 85%↓)
			intProcItemCodeMpperEnvironment["input[data-field='moveStateHumidity']"] = "INDUS_00042";// 도료 이송 조건 (5~25℃, 85%↓)
			intProcItemCodeMpperEnvironment["input[data-field='stockStateTemp']"] = "INDUS_00043";// 도료 보관 조건 (5~25℃,85%↓)
			intProcItemCodeMpperEnvironment["input[data-field='stockStateHumidity']"] = "INDUS_00044";// 도료 보관 조건 (5~25℃,85%↓)
			
			// 도장 생산성 정보
			intProcItemCodeMpperRate["input[data-field='directRate']"] = "INDUS_00045";// 직행률(%)
			intProcItemCodeMpperRate["input[data-field='lineSpeed']"] = "INDUS_00046";// 라인 속도<br>(m/min, rpm)
			intProcItemCodeMpperRate["input[data-field='defectRate']"] = "INDUS_00047";// 불량률(%)
			intProcItemCodeMpperRate["input[data-field='oppTime']"] = "INDUS_00048";// 대당 소요 시간
			intProcItemCodeMpperRate["input[data-field='oppRequire']"] = "INDUS_00049";// 대당 도료 소요량
		},
		setInfo: function(docNo, itemType){
			// 제품 유형 셋팅
			$basicInfo.find('select[data-field="itemType"]').val(jsCommon.itemType.getItem().code );
			
			retrieveIndusItemTypeList.request();
	        retrieveCustList.request();
			retrievePcustList.request();
			retrieveFactoryList.request();
			retrieveLineList.request();
			
			$basicInfo.find('input[data-field="emp"]').val($basicInfo.find('input[data-field="sessionEmp"]').val());
			$basicInfo.find('input[data-field="empName"]').val($basicInfo.find('input[data-field="sessionEmpName"]').val());
			$basicInfo.find('input[data-field="measureDate"]').val(fn_getTodayDate()).mask('9999-99-99');
			
			// 특이사항
			$environment.find('textarea[data-field="remark"]').val("");
			
			var today = fn_getTodayDate();
			
			$basicInfo.find('input[data-field="measureDate"]').val(today);
			$("#js-indus-proc-info-reg-indus-pop-item-type").val(itemType);

			// 공정별 공정 정보
			var source = $('#js-indus-proc-info-insp-dt-reg-indus-template').html();
			procDetailTemplate = Handlebars.compile(source);
			
			// 소지정보 초기화
			$.each(intProcItemCodeMpperMaterial, function(key, value){ 
				if(key.indexOf("input[") > -1 || key.indexOf("textarea[") > -1){
					$material.find(key).val("");
				}
			});
			// 환경 조건 및 특이사항 초기화
			$.each(intProcItemCodeMpperEnvironment, function(key, value){ 
				if(key.indexOf("input[") > -1 || key.indexOf("textarea[") > -1){
					$environment.find(key).val("");
				}
			});
			// 도장 생산성 정보 초기화
			$.each(intProcItemCodeMpperRate, function(key, value){ 
				if(key.indexOf("input[") > -1 || key.indexOf("textarea[") > -1){
					$rate.find(key).val("");
				}
			});
			
			// 상세 조회
			retrieveIndProcDetail.request(docNo, itemType);
			
			// 소지정보 Decimal
			$.each(intProcItemCodeMpperMaterial, function(key, value){ 
				if(intProcItemCodeType[value][0] == "NUM"){
					onlyDecimal($material.find(key), 5, 1);
				}
				key = key.replace("input[","span[");
				key = key.replace("select[","span[");
				key = key.replace("textarea[","span[");
				if(intProcItemCodeType[value][1] != ""){
					$material.find(key).addClass(intProcItemCodeType[value][1]);
				}else{
					$material.find(key).removeClass();
				}
			});
			// 환경 조건 및 특이사항 Decimal
			$.each(intProcItemCodeMpperEnvironment, function(key, value){ 
				if(intProcItemCodeType[value][0] == "NUM"){
					onlyDecimal($environment.find(key), 5, 1);
				}
				key = key.replace("input[","span[");
				key = key.replace("select[","span[");
				key = key.replace("textarea[","span[");
				if(intProcItemCodeType[value][1] != ""){
					$environment.find(key).addClass(intProcItemCodeType[value][1]);
				}else{
					$environment.find(key).removeClass();
				}
			});
			// 희석 조건 정보 Decimal
			$.each(intProcItemCodeMpperRate, function(key, value){ 
				if(intProcItemCodeType[value][0] == "NUM"){
					onlyDecimal($rate.find(key), 5, 1);
				}
				key = key.replace("input[","span[");
				key = key.replace("select[","span[");
				key = key.replace("textarea[","span[");
				if(intProcItemCodeType[value][1] != ""){
					$rate.find(key).addClass(intProcItemCodeType[value][1]);
				}else{
					$rate.find(key).removeClass();
				}
			});
			
			percentFormat($rate.find('input[data-field="defectRate"]'),"불량률(%)");
			percentFormat($rate.find('input[data-field="directRate"]'),"직행률(%)");
			
			
		}
	};
	
	// ------------------------------------
	// 이벤트 핸들러
	// ------------------------------------
	var pageQueryEvent = {
		init: function(){
			
			// 공정별 공정 정보 PCM Detail 등록 팝업
			$("#js-indus-proc-info-insp-dt-reg-indus-button").off().on('click', function(e){
				fn_openPop($(this));
				indusProcInfoInspDtRegIndus.init(
					$basicInfo.find('select[data-field="itemType"]').val() // 제품유형
					,$basicInfo.find('select[data-field="cust"]').val() // 거래선
					,$basicInfo.find('select[data-field="paintCust"]').val() // 도장업체 
					,$basicInfo.find('select[data-field="factoryId"]').val() // 공장  
					,$line.find('select[data-field="line"]').val() // 적용 라인 
					,intProcItemCodeType // item code
				);
			});
			
			// 측정자 조회 버튼 클릭
			$basicInfo.find('button[data-field="empSearchButton"]').off().on('click', function(){
				initIndustryEmpRetrievePopup('js-indus-proc-info-reg-indus-popup');
			});
			
			// 저장
			$("#js-indus-proc-info-reg-indus-popup-save-button").off().on('click', this.saveData);
		},
		saveData: function(){ // 저장
			// Validation Check
			if(!pageQueryEvent.saveDataValidation()){
				return;
			}
			
			var procInfo = [];
			// 소지정보
			$.each(intProcItemCodeMpperMaterial, function(key, value){ 
				procInfo.push({
					procItemValue: $material.find(key).val() || ""
					,procItemCode: value
					,procItemCodeInputType: intProcItemCodeType[value][0]
				});
			});
			// 환경 조건 및 특이사항
			$.each(intProcItemCodeMpperEnvironment, function(key, value){ 
				procInfo.push({
					procItemValue: $environment.find(key).val() || ""
					,procItemCode: value
					,procItemCodeInputType: intProcItemCodeType[value][0]
				});
			});
			// 도장 생산성 정보
			$.each(intProcItemCodeMpperRate, function(key, value){ 
				procInfo.push({
					procItemValue: $rate.find(key).val() || ""
					,procItemCode: value
					,procItemCodeInputType: intProcItemCodeType[value][0]
				});
			});
			
			var dtProcInfoDt = []; // 제품 정보, 공정 Coating 정보, 희석 조건
			var dtShare = []; // 도료 Supplier 점유율
			var dtItem = []; // 적용 제품/LOT No.정보
			
			for(var j=0; j<procList.length; j++){
				for(var k=0; k<procList[j].dtProcInfoDt.length; k++){
					dtProcInfoDt.push(procList[j].dtProcInfoDt[k]);
				}
				for(var k=0; k<procList[j].dtShare.length; k++){
					dtShare.push(procList[j].dtShare[k]);
				}
				for(var k=0; k<procList[j].dtItem.length; k++){
					dtItem.push(procList[j].dtItem[k]);
				}
			}
			
			var params = {
				// 기본정보,적용라인,특이사항
				  docNo            		: ''
				, itemType         		: $basicInfo.find('select[data-field="itemType"]').val() // 제품유형
				, cust             		: $basicInfo.find('select[data-field="cust"]').val() // 거래선
				, pcust        			: $basicInfo.find('select[data-field="paintCust"]').val() // 도장업체 
				, factoryId        		: $basicInfo.find('select[data-field="factoryId"]').val() // 공장  
				, measureDate         	: ($basicInfo.find('input[data-field="measureDate"]').val()).replace(/-/gi,"") // 측정일자
				, measureEmp          	: $basicInfo.find('input[data-field="emp"]').val() // 측정자
				, lineId        		: $line.find('select[data-field="line"]').val() // 적용 라인 
				, remark 				: $environment.find('textarea[data-field="remark"]').val() // 특이사항
				, procInfo				: JSON.stringify(procInfo) // 소지정보, 환경 조건 및 특이사항, 도장 생산성 정보
				, procInfoDt			: JSON.stringify(dtProcInfoDt) // 제품 정보, 공정 Coating 정보, 희석 조건
				, share					: JSON.stringify(dtShare) // 도료 Supplier 점유율
				, item					: JSON.stringify(dtItem) // 적용 제품/LOT No.정보
			};
			
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림" />'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?" />'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인" />'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소" />'
				, callback          : {
					confirm: function() {
						saveProcInfo.request(params);
					}
				}
			});
		},
		saveDataValidation: function(){
			
			// 필수값 입력 여부 체크
			if(app.utils.isEmpty($basicInfo.find('select[data-field="itemType"]').val())){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림" />'
					, message           : '<spring:message code="TODO.KEY" text="제품유형 필수입력 항목입니다." />'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인" />'
					, callback          : {
						confirm: function() {
							$basicInfo.find('select[data-field="itemType"]').focus();
						}
					}
				});
				return false;
			}
			
			if(app.utils.isEmpty($basicInfo.find('select[data-field="cust"]').val())){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="거래선 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$basicInfo.find('select[data-field="cust"]').focus();
						}
					}
				});
				return false;
			}
			
			if(app.utils.isEmpty($basicInfo.find('select[data-field="paintCust"]').val())){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="도장업체 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$basicInfo.find('select[data-field="paintCust"]').focus();
						}
					}
				});
				return false;
			}
			
			if(app.utils.isEmpty($basicInfo.find('select[data-field="factoryId"]').val())){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="공장 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$basicInfo.find('select[data-field="factoryId"]').focus();
						}
					}
				});
				return false;
			}
			
			if(app.utils.isEmpty($line.find('select[data-field="line"]').val())){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="라인 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$line.find('select[data-field="line"]').focus();
						}
					}
				});
				return false;
			}
			
			if(procList.length == 0){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="공정별 공정 정보를 등록하세요."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				});
				return false;
			}
			
			return true;
			
		}
		
	};
	
	// ------------------------------------
	// interface function
	// ------------------------------------
	var ifFn = {
		// ------------------------------------
		// 적용 공정 등록 여부확인
		// ------------------------------------
		chkPorcId: function(procId){ 
			var ret = false;
			for(var j=0; j<procList.length; j++){
				if(procList[j].dtProcId.id == procId){
					ret = true;
				}
			}
			return ret;
		},
		// ------------------------------------
		// 측정자 팝업 선택값 바인딩
		// ------------------------------------
		applyEmpData: function(data){ 
			$basicInfo.find('input[data-field="emp"]').val(data.emp);
			$basicInfo.find('input[data-field="empName"]').val(data.empNm);
		},
		// ------------------------------------
		// 공정별 공정 정보 테이터 화면 출력
		// ------------------------------------
		pageSetData: function() {
			var dtProcId = {};
			var dtProcInfoDt = [];
			var dtShare = [];
			var dtItem = [];
			// 공정별 공정 정보 화면 출력 data 생성
			var dtMain = [];
			for(var j=0; j<procList.length; j++){
				var makers = "";
				var dataArray = {};
				var cssArray = {};
				dtProcId = procList[j].dtProcId;
				dtProcInfoDt = procList[j].dtProcInfoDt;
				dtShare = procList[j].dtShare;
				dtItem = procList[j].dtItem;
				
				for(var i=0; i<dtProcInfoDt.length; i++){
					dataArray[dtProcInfoDt[i].procItemCode] = dtProcInfoDt[i].procItemValueNm != "" ? dtProcInfoDt[i].procItemValueNm : dtProcInfoDt[i].procItemValue;
					cssArray[dtProcInfoDt[i].procItemCode] = intProcItemCodeType[dtProcInfoDt[i].procItemCode][1] != "" ? "wp-icon " + intProcItemCodeType[dtProcInfoDt[i].procItemCode][1] : "";
				}
				
				for(var i=0; i<dtShare.length; i++){
					makers += dtShare[i].makerNm + "%";
					if(i != dtShare.length-1){
						makers += " / ";
					}
				}
				dataArray["makers"] = makers || "";
				
				dtMain.push({
					   dataIndex: dtItem[0].dataIndex
					   ,inDate: dtItem[0].inDate
					   ,items: dtItem[0].items
					   ,itemsNm: dtItem[0].itemsNm
					   ,lotNo: dtItem[0].lotNo
					   ,procId: dtItem[0].procId
					   ,storeTerm: dtItem[0].storeTerm
					   ,procNm: dtProcId.name
					   ,temArray: dtItem
					   ,detail: dataArray
					   ,css: cssArray
					}
				);
			}
			var result = procDetailTemplate({rows : dtMain});
			$('#js-indus-proc-info-insp-dt-reg-indus').empty().append(result);
			
			$('a.wp-list-paint-check02').off().on("click", function() {
					$('dd.wp-list-paint-check02-view').slideUp('fast'); /*, 'easeInOutExpo'*/
					var slidedownelement = $(this).closest('dl.wp-dl-paint-check02').find('dd.wp-list-paint-check02-view').eq(0);
					if(!slidedownelement.is(':visible')) {
					slidedownelement.slideDown('fast'); /*, 'easeInOutExpo'*/
				}
			});
			
			//적용 제품/LOT No.정보 삭제 
			$item.find('button[data-field="itemDel"]').off().on("click", function(e) {
				var dataIndex = $(this).attr("dataIndex");
				var procId = $(this).attr("procId");
				app.message.confirm({
					  title             : '<spring:message code="TODO.KEY" text="공정별 공정 정보 삭제"/>'
					, message           : '<spring:message code="TODO.KEY" text="삭제 하시겠습니까?"/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="삭제"/>'
					, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
					, callback          : {
						confirm: function() {
							var newProcList = [];
							for(var j=0; j<procList.length; j++){
								if(procList[j].dtProcId.id != procId){
									newProcList.push(procList[j]);
								}
							}
							procList = newProcList;
							newProcList = [];
							ifFn.pageSetData();
						}
					}
				});
			});
			$item.find('button[data-field="itemDelSub"]').off().on("click", function(e) {
				var dataIndex = $(this).attr("dataIndex");
				var procId = $(this).attr("procId");
				app.message.confirm({
					  title             : '<spring:message code="TODO.KEY" text="공정별 공정 정보 삭제"/>'
					, message           : '<spring:message code="TODO.KEY" text="삭제 하시겠습니까?"/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="삭제"/>'
					, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
					, callback          : {
						confirm: function() {
							var newProcList = [];
							for(var j=0; j<procList.length; j++){
								if(procList[j].dtProcId.id != procId){
									newProcList.push(procList[j]);
								}
							}
							procList = newProcList;
							newProcList = [];
							ifFn.pageSetData();
						}
					}
				});
			});
			
			//적용 제품/LOT No.정보 수정
			$item.find('button[data-field="itemMod"]').off().on("click", function() {
				fn_openPop($(this));
				var procId = $(this).attr("procId");
				indusProcInfoInspDtRegIndus.init(
					$basicInfo.find('select[data-field="itemType"]').val() // 제품유형
					,$basicInfo.find('select[data-field="cust"]').val() // 거래선
					,$basicInfo.find('select[data-field="paintCust"]').val() // 도장업체 
					,$basicInfo.find('select[data-field="factoryId"]').val() // 공장  
					,$line.find('select[data-field="line"]').val() // 적용 라인 
					,intProcItemCodeType // item code
				);
				for(var j=0; j<procList.length; j++){
					if(procList[j].dtProcId.id == procId){
						indusProcInfoInspDtRegIndus.ifFn.setModData(procList[j].dtProcId, procList[j].dtProcInfoDt, procList[j].dtShare, procList[j].dtItem);
					}
				}
				
			});
			$item.find('button[data-field="itemModSub"]').off().on("click", function() {
				fn_openPop($(this));
				var procId = $(this).attr("procId");
				indusProcInfoInspDtRegIndus.init(
					$basicInfo.find('select[data-field="itemType"]').val() // 제품유형
					,$basicInfo.find('select[data-field="cust"]').val() // 거래선
					,$basicInfo.find('select[data-field="paintCust"]').val() // 도장업체 
					,$basicInfo.find('select[data-field="factoryId"]').val() // 공장  
					,$line.find('select[data-field="line"]').val() // 적용 라인 
					,intProcItemCodeType // item code
				);
				for(var j=0; j<procList.length; j++){
					if(procList[j].dtProcId.id == procId){
						indusProcInfoInspDtRegIndus.ifFn.setModData(procList[j].dtProcId, procList[j].dtProcInfoDt, procList[j].dtShare, procList[j].dtItem);
					}
				}
			});
		},
		pageInit: function() {
			var dtProcId = indusProcInfoInspDtRegIndus.ifFn.getProcId();
			var dtProcInfoDt = indusProcInfoInspDtRegIndus.ifFn.getProcInfoDt();
			var dtShare = indusProcInfoInspDtRegIndus.ifFn.getShare();
			var dtItem = indusProcInfoInspDtRegIndus.ifFn.getItem();
			// 공정별 공정 정보 attr
			if(dtProcId.setFlag == "NEW"){ // 추가
				procList.push({
						dtProcId: dtProcId
						,dtProcInfoDt: dtProcInfoDt
						,dtShare: dtShare
						,dtItem: dtItem
					}
				);
			}else{ // 수정
				for(var i=0; i<procList.length; i++){
					var prodIdTemp = procList[i].dtProcId;
					if(prodIdTemp.id == dtProcId.id){
						procList[i].dtProcId = dtProcId;
						procList[i].dtProcInfoDt = dtProcInfoDt;
						procList[i].dtShare = dtShare;
						procList[i].dtItem = dtItem;
					}
				}
			}
			ifFn.pageSetData();
		}
	};
	
	//------------------------------------
	// 거래선 공정정보 등록 저장
	//------------------------------------
	var saveProcInfo = {
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
					// 메인화면 재조회
					// ---------------------------------------
					retrieveIndProcInfo.request(jsCommon.itemType.getItem().code);
					$("#js-indus-proc-info-insp-reg-indus-close").click();
					
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
		request: function(params) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			// 파라미터 Set
			params.service = 'ind.procInfo';
			params.method = 'saveIndProcInfoNew';
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
		
	};
	
	
	// ------------------------------------------------
	// 제품유형 콤보 조회
	// ------------------------------------------------
	var retrieveIndusItemTypeList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					var data = response.rs;
					$basicInfo.find('select[data-field="itemType"]').find('option').remove();
					for(var i=0; i < data.length; i++) {
						$basicInfo.find('select[data-field="itemType"]').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}
					$basicInfo.find('select[data-field="itemType"]').attr("title", data.length+" 건");
					$basicInfo.find('select[data-field="itemType"]').val(jsCommon.itemType.getItem().code);
					// 제품유형 변경 시 거래선 combo 재조회
					$basicInfo.find('select[data-field="itemType"]').off().on("change", function(){
						retrieveCustList.request();
						retrievePcustList.request();
						retrieveFactoryList.request();
						retrieveLineList.request();
					});
				}
				else
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
	var retrieveCustList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					var data = response.rs;
					$basicInfo.find('select[data-field="cust"]').find('option').remove();
					for(var i=0; i < data.length; i++) {
						$basicInfo.find('select[data-field="cust"]').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}
					$basicInfo.find('select[data-field="cust"]').attr("title", data.length+" 건");
					// 거래선 변경 시 도장업체 combo 재조회
					$basicInfo.find('select[data-field="cust"]').off().on("change", function(){
						retrievePcustList.request();
						retrieveFactoryList.request();
						retrieveLineList.request();
					});
				}
				else
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
		request: function(itemType) {
			var params = {
				service: 'ind.common',
				method: 'retrieveCustList',
				itemType : $basicInfo.find('select[data-field="itemType"]').val()
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
	var retrievePcustList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					var data = response.rs;
					$basicInfo.find('select[data-field="paintCust"]').find('option').remove();
					for(var i=0; i < data.length; i++) {
						$basicInfo.find('select[data-field="paintCust"]').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}
					$basicInfo.find('select[data-field="paintCust"]').attr("title", data.length+" 건");
					// 도장업체 변경 시 공장 combo 재조회
					$basicInfo.find('select[data-field="paintCust"]').off().on("change", function(){
						retrieveFactoryList.request();
						retrieveLineList.request();
					});
				}
				else
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
		request: function(itemType, cust) {
			var params = {
				service   : 'ind.common',
				method    : 'retrievePcustList',
				itemType  : $basicInfo.find('select[data-field="itemType"]').val(),
				cust      : $basicInfo.find('select[data-field="cust"]').val()
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
	var retrieveFactoryList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					
					var data = response.rs;
					$basicInfo.find('select[data-field="factoryId"]').find('option').remove();
					for(var i=0; i < data.length; i++) {
						$basicInfo.find('select[data-field="factoryId"]').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}
					$basicInfo.find('select[data-field="factoryId"]').attr("title", data.length+" 건");
					// 공장 변경 시 - 라인 combo 재조회
					$basicInfo.find('select[data-field="factoryId"]').off().on("change", function(){
						retrieveLineList.request();
					});
					
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
		request: function(itemType, cust, pcust) {
			var params = {
				service   : 'ind.common',
				method    : 'retrieveFactoryList',
				itemType  : $basicInfo.find('select[data-field="itemType"]').val(),
				cust      : $basicInfo.find('select[data-field="cust"]').val(),
				paintCust : $basicInfo.find('select[data-field="paintCust"]').val()
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
	var retrieveLineList = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';

				if (message === 'OK') {
					
					var data = response.rs;
					$line.find('select[data-field="line"]').find('option').remove();
					for(var i=0; i < data.length; i++) {
						$line.find('select[data-field="line"]').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
					}
					$line.find('select[data-field="line"]').attr("title", data.length+" 건");
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
		request: function(itemType, cust, pcust, factoryId) {
			var params = {
				service   : 'ind.common',
				method    : 'retrieveLineList',
				itemType  : $basicInfo.find('select[data-field="itemType"]').val(),
				cust      : $basicInfo.find('select[data-field="cust"]').val(),
				paintCust : $basicInfo.find('select[data-field="paintCust"]').val(),
				factoryId : $basicInfo.find('select[data-field="factoryId"]').val()
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
					
					// 적용소지
					$material.find('select[data-field="applMaterial"]').find('option').remove();
					for(var i=0; i < data.matKindList.length; i++) {
						$material.find('select[data-field="applMaterial"]').append("<option value='"+ data.matKindList[i].code +"'>"+ data.matKindList[i].codeNm +"</option>");
					}
					$material.find('select[data-field="applMaterial"]').attr("title", data.matKindList.length+" 건");
					// 소지용도
					$material.find('select[data-field="matUse"]').find('option').remove();
					for(var i=0; i < data.materialList.length; i++) {
						$material.find('select[data-field="matUse"]').append("<option value='"+ data.materialList[i].code +"'>"+ data.materialList[i].codeNm +"</option>");
					}
					$material.find('select[data-field="matUse"]').attr("title", data.materialList.length+" 건");
					
					// item code
					for(var i=0; i<data.itemType.length; i++){
						intProcItemCodeType[data.itemType[i].procItemCode] = [data.itemType[i].valueType || "", data.itemType[i].style || ""];
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
	
	return {
		init : init
		, applyEmpData : ifFn.applyEmpData
		, ifFn : ifFn
		, chkPorcId: ifFn.chkPorcId
	};
})();
</script>
