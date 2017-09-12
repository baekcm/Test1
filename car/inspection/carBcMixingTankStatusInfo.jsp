<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.02.03] ship 제품정보-제품 출고 이력 정보" %>
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
				<h1><spring:message code="TODO.KEY" text="도료 상태 검사"/></h1>
				<div class="wp-location"><span><spring:message code="TODO.KEY" text="도장공정"/></span><span class="wp-fc-54"><spring:message code="TODO.KEY" text="도료 상태 검사"/></span></div>
			</header>
			
			<!-- tab -->
			<ul class="wp-prod-tab wp-four">
				<li><a href="/car/inspection/carEdStatusInfoDetail.do"><spring:message code="TODO.KEY" text="전착 본조 상세"/></a></li>
				<li><a href="/car/inspection/carEdStatusInfo.do"><spring:message code="TODO.KEY" text="전착 도료 상태 검사"/></a></li>
				<li><a href="/car/inspection/carBcStatusInfo.do"><spring:message code="TODO.KEY" text="중/상도 도료 상태 검사"/></a></li>
				<li><a href="/car/inspection/carBcMixingTankStatusInfo.do" class="active"><spring:message code="TODO.KEY" text="Mixing Tank 상세"/></a></li>
			</ul>
			<!-- //tab -->
			
			<!-- content box -->
			<div class="wp-table-width wp-mt13">	

				<!-- title area -->
				<div class="wp-clearfix wp-mb10">
					<div class="wp-btn-area wp-fr">
						<button type="button" class="wp-btn small grayblue cr3" id="js-car-bc-mixing-tank-status-info-retrieve-button"><spring:message code="TODO.KEY" text="조회"/></button>
						<%-- <button type="button" class="wp-btn small grayblue2 cr3"><spring:message code="TODO.KEY" text="온도/점도 관리"/></button> --%>
						<button type="button" id="js-car-bc-mixing-tank-status-info-color-tank-match-reg-button" data-link="js-car-bc-color-tank-match-reg-popup" data-depth="1" class="wp-btn small blue2 cr3"><spring:message code="TODO.KEY" text="칼라-Tank 매치 관리"/></button>
						<%-- <button type="button" class="wp-btn small skyblue cr3"><spring:message code="TODO.KEY" text="Mixing Room 관리"/></button> --%>
						<input type="hidden" id="js-car-bc-mixing-tank-status-info-mng-spec-temp-inUpChk">
					</div>
					<div class="wp-sch">
						<em><spring:message code="TODO.KEY" text="공정"/></em>
						<div class="wp-ui-select">
							<select  id="js-car-bc-mixing-tank-status-info-procid-combo">
							</select>
						</div>
						<em><spring:message code="TODO.KEY" text="Tank No."/></em>
						<div class="wp-ui-select">
							<select  id="js-car-bc-mixing-tank-status-info-tankno-combo">
							</select>
						</div>
						<em><spring:message code="TODO.KEY" text="기간"/></em>
						<input type="text" id="js-car-bc-mixing-tank-status-info-fromdate" title="내용입력" class="wp-inp-datepicker" placeholder="날짜입력"> ~ 
						<input type="text" id="js-car-bc-mixing-tank-status-info-todate" title="내용입력" class="wp-inp-datepicker" placeholder="날짜입력">
					</div>
				</div>
				<!-- //title area -->

				<!-- graph area -->
				<div class="wp-graph-area wp-maxing">
					<!-- porduct 20170616-->
					<div class="wp-porduct wp-list-paint-check">
						<div class="wp-title wp-ellipsis wp-bubble" id="js-car-bc-mixing-tank-status-info-tank-info-itemsNm"></div><!-- 20170720 -->
						<ul>
							<li>
								<a class="wp-link-paint-check">
									<strong id="js-car-bc-mixing-tank-status-info-tank-info-tankno" class="wp-num tyA"></strong>
									<span id="js-car-bc-mixing-tank-status-info-tank-info-colornm" class="wp-paint-color"></span>
									<dl class="wp-detail">
										<dd id="js-car-bc-mixing-tank-status-info-tank-info-lastindate"></dd>
										<dd id="js-car-bc-mixing-tank-status-info-tank-info-injdate"></dd>
										<!-- <dd id="js-car-bc-mixing-tank-status-info-tank-info-storeterm"></dd> -->
										<dd id="js-car-bc-mixing-tank-status-info-tank-info-lotno"></dd>
										<dd id="js-car-bc-mixing-tank-status-info-tank-info-paintvisco-temp"></dd>
									</dl>
								</a>
							</li>
						</ul>
					</div>
					<!-- graph -->
					<div class="wp-graph" id="js-car-bc-mixing-tank-status-info-graph-area"></div>
				</div>
				<!-- //graph area -->

				<!-- title area -->
				<div class="wp-title-section wp-no-line">
					<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="온도/점도 등록/수정 관리"/>
						<span class="wp-fs-12 wp-ml10"><span class="wp-spec-over"></span><spring:message code="TODO.KEY" text="Spec. 오버"/></span>
					</h2>
					<div class="wp-btn-area wp-fr">
						<button type="button" class="wp-btn small white bgray write" id="js-car-bc-mixing-tank-status-info-temp-visco-reg-button" data-link="js-car-bc-temp-visco-reg-popup" data-depth="1"><span><spring:message code="TODO.KEY" text="글쓰기"/></span></button>
						<button type="button" class="wp-btn small white bgray prev" name="js-car-bc-mixing-tank-status-info-paging-button"><span><spring:message code="TODO.KEY" text="이전"/></span></button>
						<div class="wp-btn-paging"><span class="wp-ship-fc-blue" id="js-car-bc-mixing-tank-status-info-curr-page">3</span> / <span id="js-car-bc-mixing-tank-status-info-total-page">5</span></div>
						<button type="button" class="wp-btn small white bgray next" name="js-car-bc-mixing-tank-status-info-paging-button"><span><spring:message code="TODO.KEY" text="다음"/></span></button>
					</div>
				</div>

				<!-- table -->
				<div class="wp-table-st1">
					<table>
						<caption></caption>
						<colgroup>
							<col style="width:auto">
							<col style="width:9%">
							<col style="width:9%">
							<col style="width:9%">
							<col style="width:9%">
							<col style="width:9%">
							<col style="width:9%">
							<col style="width:9%">
							<col style="width:9%">
							<col style="width:9%">
							<col style="width:9%">
						</colgroup>
						<thead>
							<tr id="js-car-bc-mixing-tank-status-info-mixing-temp-head">
								<th><spring:message code="TODO.KEY" text="구분"/></th>
								<th class="wp-bubble-mixing-temp-head"><div></div><input type="hidden"></th>
								<th class="wp-bubble-mixing-temp-head"><div></div><input type="hidden"></th>
								<th class="wp-bubble-mixing-temp-head"><div></div><input type="hidden"></th>
								<th class="wp-bubble-mixing-temp-head"><div></div><input type="hidden"></th>
								<th class="wp-bubble-mixing-temp-head"><div></div><input type="hidden"></th>
								<th class="wp-bubble-mixing-temp-head"><div></div><input type="hidden"></th>
								<th class="wp-bubble-mixing-temp-head"><div></div><input type="hidden"></th>
								<th class="wp-bubble-mixing-temp-head"><div></div><input type="hidden"></th>
								<th class="wp-bubble-mixing-temp-head"><div></div><input type="hidden"></th>
								<th class="wp-bubble-mixing-temp-head"><div></div><input type="hidden"></th>
							</tr>
						</thead>
						<tbody>
							<tr id="js-car-bc-mixing-tank-status-info-mixing-temp-visco">
								<th><spring:message code="TODO.KEY" text="점도(sec)"/></th>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr id="js-car-bc-mixing-tank-status-info-mixing-temp-temp">
								<th><spring:message code="TODO.KEY" text="온도(℃)"/></th>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //table -->
			</div>
			<!-- // content box -->
			
			<!-- content box -->
			<div class="wp-table-width wp-mt13">	
				<!-- title area -->
				<div class="wp-title-section wp-no-line">
					<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="Mixing Tank 정보"/></h2>
					<div class="wp-btn-area">
						<button type="button" class="wp-btn small white bgray write" id="js-car-bc-mixing-tank-status-info-mixing-tank-reg-button" data-link="js-car-bc-mixing-tank-reg-popup" data-depth="1"><span><spring:message code="TODO.KEY" text="글쓰기"/></span></button>
					</div>
				</div>
				<!-- //title area -->
				<!-- table -->
				<div class="wp-table-st1">
					<table>
						<caption></caption>
						<colgroup>
							<col style="width:16%">
							<col style="width:7%">
							<col style="width:7%">
							<col style="width:7%">
							<col style="width:7%">
							<col style="width:7%">
							<col style="width:6%">
							<col style="width:6%">
							<col style="width:6%">
							<col style="width:7.5%">
							<col style="width:7.5%">
							<col style="width:auto">
							<col style="width:7%">
						</colgroup>
						<thead>
							<tr>
								<th rowspan="2"><spring:message code="TODO.KEY" text="제품명"/></th>
								<th rowspan="2"><spring:message code="TODO.KEY" text="펌프타입"/></th>
								<th rowspan="2"><spring:message code="TODO.KEY" text="PCS방식"/></th>
								<th rowspan="2"><spring:message code="TODO.KEY" text="필터교환"/></th>
								<th rowspan="2"><spring:message code="TODO.KEY" text="희석제명"/></th>
								<th rowspan="2"><spring:message code="TODO.KEY" text="희석제량(ℓ)"/></th>
								<th colspan="3"><spring:message code="TODO.KEY" text="압력"/></th>
								<th colspan="2"><spring:message code="TODO.KEY" text="필터 사이즈"/></th>
								<th rowspan="2"><spring:message code="TODO.KEY" text="첨가제"/></th>
								<th rowspan="2"><spring:message code="TODO.KEY" text="수정/삭제"/></th>
							</tr>
							<tr>
								<th><spring:message code="TODO.KEY" text="공급"/></th>
								<th><spring:message code="TODO.KEY" text="이송"/></th>
								<th><spring:message code="TODO.KEY" text="리턴"/></th>
								<th><spring:message code="TODO.KEY" text="공급"/></th>
								<th><spring:message code="TODO.KEY" text="이송"/></th>
							</tr>
						</thead>
						<tbody id="js-car-bc-mixing-tank-status-info-mixing-tank-list">
						</tbody>
					</table>
				</div>
				<!-- //table -->
				
				<!-- title area -->
				<div class="wp-title-section wp-no-line">
					<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="Tank 사용 이력"/></h2>
					<div class="wp-btn-area">
						<button type="button" id="js-car-bc-mixing-tank-status-info-mixing-hist-reg-button" data-link="js-car-bc-tank-hist-reg-popup" data-depth="1" class="wp-btn small white bgray write"><span><spring:message code="TODO.KEY" text="글쓰기"/></span></button>
					</div>
				</div>
				<!-- //title area -->
				<!-- table -->
				<div class="wp-table-st1">
					<table>
						<caption></caption>
						<colgroup>
							<col style="width:20%">
							<col style="width:40%">
							<col style="width:auto">
							<col style="width:7%">
						</colgroup>
						<thead>
							<tr>
								<th><spring:message code="TODO.KEY" text="일자"/></th>
								<th><spring:message code="TODO.KEY" text="내용"/></th>
								<th><spring:message code="TODO.KEY" text="비고"/></th>
								<th><spring:message code="TODO.KEY" text="수정/삭제"/></th>
							</tr>
						</thead>
						<tbody id="js-car-bc-mixing-tank-status-info-mixing-hist-list">
						</tbody>
					</table>
				</div>
				<!-- //table -->
				
				<!-- title area -->
				<div class="wp-title-section wp-no-line">
					<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="첨가제/희석제 투입 이력"/></h2>
					<div class="wp-btn-area">
						<button type="button" id="js-car-bc-mixing-tank-status-info-mixing-inj-reg-button" data-link="js-car-bc-inj-hist-reg-popup" data-depth="1" class="wp-btn small white bgray write"><span><spring:message code="TODO.KEY" text="글쓰기"/></span></button>
					</div>
				</div>
				<!-- //title area -->
				<!-- table -->
				<div class="wp-table-st1">
					<table>
						<caption></caption>
						<colgroup>
							<col style="width:12%">
							<col style="width:15%">
							<col style="width:12%">
							<col style="width:auto">
							<col style="width:7%">
						</colgroup>
						<thead>
							<tr>
								<th><spring:message code="TODO.KEY" text="일자"/></th>
								<th><spring:message code="TODO.KEY" text="첨가제"/></th>
								<th><spring:message code="TODO.KEY" text="투입량(ℓ)"/></th>
								<th><spring:message code="TODO.KEY" text="비고"/></th>
								<th><spring:message code="TODO.KEY" text="수정/삭제"/></th>
							</tr>
						</thead>
						<tbody id="js-car-bc-mixing-tank-status-info-mixing-inj-list">
						</tbody>
					</table>
				</div>
				<!-- //table -->
				
				<!-- title area -->
				<div class="wp-title-section wp-no-line">
					<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="LOT 변경 이력"/></h2>
					<div class="wp-btn-area">
						<button type="button" id="js-car-bc-mixing-tank-status-info-mixing-lot-reg-button" data-link="js-car-bc-lot-hist-reg-popup" data-depth="1" class="wp-btn small white bgray write"><span><spring:message code="TODO.KEY" text="글쓰기"/></span></button>
					</div>
				</div>
				<!-- //title area -->
				<!-- table -->
				<div class="wp-table-st1">
					<table>
						<caption></caption>
						<colgroup>
							<col style="width:12%">
							<col style="width:15%">
							<col style="width:12%">
							<col style="width:30%">
							<col style="width:auto">
							<col style="width:7%">
						</colgroup>
						<thead>
							<tr>
								<th><spring:message code="TODO.KEY" text="변경일자" /></th>
								<th><spring:message code="TODO.KEY" text="LOT No." /></th>
								<th><spring:message code="TODO.KEY" text="구분" /></th>
								<th><spring:message code="TODO.KEY" text="내용" /></th>
								<th><spring:message code="TODO.KEY" text="비고" /></th>
								<th><spring:message code="TODO.KEY" text="수정/삭제" /></th>
							</tr>
						</thead>
						<tbody id="js-car-bc-mixing-tank-status-info-mixing-lot-list">
						</tbody>
					</table>
				</div>
				<!-- //table -->
				
				<!-- title area -->
				<div class="wp-title-section wp-no-line">
					<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="관리 Spec."/></h2>
					<div class="wp-btn-area">
						<%-- <button type="button" class="wp-btn small white bgray write"><span><spring:message code="TODO.KEY" text="글쓰기"/></span></button> --%>
					</div>
				</div>
				<!-- //title area -->
				<!-- table -->
				<div class="wp-table-st1">
					<table>
						<caption></caption>
						<colgroup>
							<col style="width:auto">
							<col style="width:50%">
							<%-- <col style="width:7%"> --%>
						</colgroup>
						<thead>
							<tr>
								<th><spring:message code="TODO.KEY" text="점도(sec)"/></th>
								<th><spring:message code="TODO.KEY" text="온도(℃)"/></th>
								<%-- <th><spring:message code="TODO.KEY" text="상태"/></th> --%>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td id="js-car-bc-mixing-tank-status-info-mng-spec-visco"></td>
								<td id="js-car-bc-mixing-tank-status-info-mng-spec-temp"></td>
								<!-- 
								<td class="wp-td-padding0">
									<button type="button" class="wp-btn small white bgray mody"><span>수정</span></button>
									<button type="button" class="wp-btn small white bgray trash-gray"><span>삭제</span></button>
								</td>
								 -->
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //table -->
			</div>
			<!-- //content end -->
		</div>
	</section>
	</tiles:putAttribute>
	<!-- 메인 콘텐츠 E -->
	
	<!-- 페이지 레벨 스크립트 S -->
	<tiles:putAttribute name="page-level-js">
	
		<!-- 하이차트 -->
		<script src="/highcharts/highcharts.js"></script>
		<script src="/highcharts/modules/exporting.js"></script>
		<script src="/highcharts/modules/no-data-to-display.js"></script>	
		
		<!-- Mixing Tank 정보 리스트 - 스크립트-->
		<script id="js-template-car-bc-mixing-tank-status-info-mixing-tank-list" type="text/x-handlebars-template">		
			{{#rows}}
				<tr>
					<td>{{productNm}}</td>
					<td>{{pumpType}}</td>
					<td>{{pcsMethod}}</td>
					<td>{{filterChangeCycle}}</td>
					<td>{{thinnerNm}}</td>
					<td>{{thinnerVqty}}</td>
					<td>{{supplyPressure}}</td>
					<td>{{movePressure}}</td>
					<td>{{returnPressure}}</td>
					<td>{{supplyFilterSize}}</td>
					<td>{{moveFilterSize}}</td>
					<td>{{additive}}</td>
					<td class="wp-td-padding0">
						<button type="button" name="js-car-bc-mixing-tank-status-info-mixing-tank-list-modify-button" data-link="js-car-bc-mixing-tank-reg-popup" data-depth="1" class="wp-btn small white bgray mody" data-seqProdInspBcTank="{{seqProdInspBcTank}}"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
						<button type="button" name="js-car-bc-mixing-tank-status-info-mixing-tank-list-delete-button" class="wp-btn small white bgray trash-gray" data-seqProdInspBcTank="{{seqProdInspBcTank}}"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
					</td>
				</tr>
			{{/rows}}
		</script>		
						
		<!-- Tank 사용 이력 리스트 - 스크립트-->
		<script id="js-template-car-bc-mixing-tank-status-info-mixing-hist-list" type="text/x-handlebars-template">		
			{{#rows}}
				<tr>
					<td>{{histDate}}</td>
					<td>{{histDescription}}</td>
					<td>{{histReason}}</td>
					<td class="wp-td-padding0">
						<button type="button" name="js-car-bc-mixing-tank-status-info-mixing-hist-list-modify-button" value="{{histDate}}" data-link="js-car-bc-tank-hist-mod-popup" data-depth="1" class="wp-btn small white bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
						<button type="button" name="js-car-bc-mixing-tank-status-info-mixing-hist-list-delete-button" value="{{seqCarProdInspBcHist}}" class="wp-btn small white bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
					</td>
				</tr>						
			{{/rows}}
		</script>		
						
		<!-- 첨가제/희석제 투입 이력 리스트 - 스크립트-->
		<script id="js-template-car-bc-mixing-tank-status-info-mixing-inj-list" type="text/x-handlebars-template">		
			{{#rows}}
				<tr>
					<td>{{injDate}}</td>
					<td>{{injItemsNm}}</td>
					<td>{{injVqty}}</td>
					<td>{{injDescription}}</td>
					<td class="wp-td-padding0">
						<button type="button" name="js-car-bc-mixing-tank-status-info-mixing-inj-list-modify-button" value="{{seqCarProdInspBcInj}}" data-link="js-car-bc-inj-hist-mod-popup" data-depth="1" class="wp-btn small white bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
						<button type="button" name="js-car-bc-mixing-tank-status-info-mixing-inj-list-delete-button" value="{{seqCarProdInspBcInj}}" class="wp-btn small white bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
					</td>
				</tr>	
			{{/rows}}
		</script>	

		<!-- LOT 변경 이력 리스트 - 스크립트-->
		<script id="js-template-car-bc-mixing-tank-status-info-mixing-lot-list" type="text/x-handlebars-template">		
			{{#rows}}
				<tr>
					<td>{{injDate}}</td>
					<td>{{lotNo}}</td>
					<td>{{partTypeNm}}</td>
					<td>{{injDescription}}</td>
					<td>{{injRemark}}</td>
					<td class="wp-td-padding0">
						<button type="button" name="js-car-bc-mixing-tank-status-info-mixing-lot-list-modify-button" value="{{seqCarProdInspBcLot}}" data-link="js-car-bc-lot-hist-mod-popup" data-depth="1" class="wp-btn small white bgray mody"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
						<button type="button" name="js-car-bc-mixing-tank-status-info-mixing-lot-list-delete-button" value="{{seqCarProdInspBcLot}}" class="wp-btn small white bgray trash-gray"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
					</td>
				</tr>
			{{/rows}}
		</script>	

						
		<script type="text/javascript">
		
			//메시지 파라미터 정의함수
			var messageParam = {
				title: '<spring:message code="TODO.KEY" text="에러"/>',
				message: '',
				confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>'				
			};
			
			var carBcMixingTankStatusInfoMixingTankListTemplate;
			var carBcMixingTankStatusInfoMixingHistListTemplate;
			var carBcMixingTankStatusInfoMixingInjListTemplate;
			var carBcMixingTankStatusInfoMixingLotListTemplate;
			
			$(document).ready(function() {
				
				var date = app.utils.formatDate(new Date(), "YYYYMMDD");
				$("#js-car-bc-mixing-tank-status-info-todate").val(date).mask('9999-99-99');
				$("#js-car-bc-mixing-tank-status-info-fromdate").val(fn_getBeforeDate(date, 0, 2).substring(0, 6) + "01").mask('9999-99-99');
			
				// Handlebar 초기화
				initCarBcMixingTankStatusInfoHandlebarsTemplate();
				
				// 검색 버튼 클릭
				$("#js-car-bc-mixing-tank-status-info-retrieve-button").off().on('click', function(){
					// 온도, 점도 그래프 및 표 조회
					retrieveCarProdInspMixingTemp.request();
				});
				
				// 기간 change 이벤트
				$("#js-car-bc-mixing-tank-status-info-fromdate, #js-car-bc-mixing-tank-status-info-todate").off().on('change', function(){
					// 온도, 점도 그래프 및 표 조회
					retrieveCarProdInspMixingTemp.request();
				});
				
				// Mixing Tank 온도/점도 등록/수정 관리 - 등록 버튼 클릭
				$("#js-car-bc-mixing-tank-status-info-temp-visco-reg-button").off().on('click', function(){
					
					$('#js-car-bc-mixing-tank-status-info-mng-spec-temp-inUpChk').val("I");
					
					// 등록 시 삭제 버튼 숨김
					$("#js-car-bc-temp-visco-reg-popup-delete-button").css("display", "none");
					
					// 등록 시 공정, Tank No combo 활성화
					$('#js-car-bc-temp-visco-reg-popup-procid-combo').removeAttr("disabled");
					$('#js-car-bc-temp-visco-reg-popup-tankno-combo').removeAttr("disabled");
					
					var param = {
						procId   : $('#js-car-bc-mixing-tank-status-info-procid-combo').val()
					  , tankNo   : $('#js-car-bc-mixing-tank-status-info-tankno-combo').val()
					};
					
					fn_openPop($(this));
					initCarBcTempViscoRegPopup(param);
					
				});
				
				// Mixing Tank 정보 - 등록 버튼 클릭
				$("#js-car-bc-mixing-tank-status-info-mixing-tank-reg-button").off().on('click', function(){
					
					var param = {
						procId   : $('#js-car-bc-mixing-tank-status-info-procid-combo').val()
					  , tankNo   : $('#js-car-bc-mixing-tank-status-info-tankno-combo').val()
					};
					
					fn_openPop($(this));
					initCarBcMixingTankRegPopup(param);
					
				});
				
				// Tank 사용 이력 - 등록 버튼 클릭
				$("#js-car-bc-mixing-tank-status-info-mixing-hist-reg-button").off().on('click', function(){
					var param = {
							procId   : $('#js-car-bc-mixing-tank-status-info-procid-combo').val()
						  , tankNo   : $('#js-car-bc-mixing-tank-status-info-tankno-combo').val()
					};
					fn_openPop($(this));
					initCarBcTankHistRegPopup(param);
				});
				
				// Tank 사용 이력 - 등록 버튼 클릭
				$("#js-car-bc-mixing-tank-status-info-mixing-hist-mod-button").off().on('click', function(){
					var param = {
							procId   : $('#js-car-bc-mixing-tank-status-info-procid-combo').val()
						  , tankNo   : $('#js-car-bc-mixing-tank-status-info-tankno-combo').val()
					};
					fn_openPop($(this));
					initCarBcTankHistModPopup(param);
				});
				
				// 첨가제/희석제 투입정보 - 등록 버튼 클릭
				$("#js-car-bc-mixing-tank-status-info-mixing-inj-reg-button").off().on('click', function(){
					var param = {
							procId   : $('#js-car-bc-mixing-tank-status-info-procid-combo').val()
						  , tankNo   : $('#js-car-bc-mixing-tank-status-info-tankno-combo').val()
					};
					fn_openPop($(this));
					initCarBcInjHistRegPopup(param);
				});
				
				// LOT 변경 정보 - 등록 버튼 클릭
				$("#js-car-bc-mixing-tank-status-info-mixing-lot-reg-button").off().on('click', function(){
					var param = {
							procId   : $('#js-car-bc-mixing-tank-status-info-procid-combo').val()
						  , tankNo   : $('#js-car-bc-mixing-tank-status-info-tankno-combo').val()
					};
					fn_openPop($(this));
					initCarBcLotHistRegPopup(param);
				});
				
				// [컬러-Tank 매치 관리] 버튼 클릭
				$("#js-car-bc-mixing-tank-status-info-color-tank-match-reg-button").off().on('click', function(){
					var param = {
							procId   : $('#js-car-bc-mixing-tank-status-info-procid-combo').val()
						  , tankNo   : $('#js-car-bc-mixing-tank-status-info-tankno-combo').val()
					};
					fn_openPop($(this));
					initCarBcColorTankMatchRegPopup(param);
				});
				
			});
			
			// 중/상도 도료 상태 검사 화면에서 받은 파라미터 세팅을 위한, 처음 화면 로딩 여부 변수
			var carBcMixingTankStatusInfoFirstTimeYn = "Y";
			
			// ------------------------------------------------
			// 화면 전체 재조회
			// ------------------------------------------------
			var retrieveCarBcMixingTankStatusInfoAll = function() {
				
				// 중/상도 도료 상태검사 화면에서 넘어온 경우, 넘겨받은 파라미터로 데이터 세팅.
				if(carBcMixingTankStatusInfoFirstTimeYn == "Y"){
					var carPlant = app.utils.getUrlParameter("carPlant");
					if(!app.utils.isEmpty(carPlant)){
						$("#js-car-header-car-plant").val(carPlant);
						var carPlantNm = $("a[name=js-car-header-car-plant-combo-list][value=" + carPlant + "]").text();
						$("#js-car-header-car-plant").text(carPlantNm);
					}
				}
				
				// 공정 콤보 조회
				retrieveCarProcIdNew.request();
				
				if(carBcMixingTankStatusInfoFirstTimeYn == "Y"){
					var procId = app.utils.getUrlParameter("procId");
					if(!app.utils.isEmpty(procId)){
						$('#js-car-bc-mixing-tank-status-info-procid-combo').val(procId);
					}
				}
				
				// Tank No 콤보 조회
				retrieveCarTankNo.request();
				
				if(carBcMixingTankStatusInfoFirstTimeYn == "Y"){
					var tankNo = app.utils.getUrlParameter("tankNo");
					if(!app.utils.isEmpty(tankNo)){
						$('#js-car-bc-mixing-tank-status-info-tankno-combo').val(tankNo);
					}
					carBcMixingTankStatusInfoFirstTimeYn = "N";
				}
				
				// Tank 정보 조회
				retrieveCarProdInspMixingTank.request();
				
				// 온도, 점도 그래프 및 표 조회
				retrieveCarProdInspMixingTemp.request();
				
				// Mixing Tank 정보 조회
				retrieveCarProdInspMixingTankList.request();
				
				// Tank 사용이력 조회
				retrieveCarProdInspMixingHistList.request();
				
				// 첨가제/희석제 투입 이력 조회
				retrieveCarProdInspMixingInjList.request();
				
				// LOT 변경 이력 조회
				retrieveCarProdInspMixingLotList.request();
				
				
			};

			// ------------------------------------------------
			// Handlebar 초기화
			// ------------------------------------------------
			var initCarBcMixingTankStatusInfoHandlebarsTemplate = function() {
				
				// Mixing Tank 정보 리스트
				var source = $('#js-template-car-bc-mixing-tank-status-info-mixing-tank-list').html();
				carBcMixingTankStatusInfoMixingTankListTemplate = Handlebars.compile(source);
				
				// Tank 사용 이력 리스트
				var source = $('#js-template-car-bc-mixing-tank-status-info-mixing-hist-list').html();
				carBcMixingTankStatusInfoMixingHistListTemplate = Handlebars.compile(source);
				
				// 첨가제/희석제 투입 이력 리스트
				var source = $('#js-template-car-bc-mixing-tank-status-info-mixing-inj-list').html();
				carBcMixingTankStatusInfoMixingInjListTemplate = Handlebars.compile(source);
				
				// LOT 변경 이력 리스트
				var source = $('#js-template-car-bc-mixing-tank-status-info-mixing-lot-list').html();
				carBcMixingTankStatusInfoMixingLotListTemplate = Handlebars.compile(source);
				
			};
			

			//-------------------------------------------------
			// LOT 변경 이력 조회
			//-------------------------------------------------
			var retrieveCarProdInspMixingLotList = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {						
							
							var data = {
								rows : response.rs
							};
							
							var result = carBcMixingTankStatusInfoMixingLotListTemplate(data);
							$('#js-car-bc-mixing-tank-status-info-mixing-lot-list').html(result);
							
							// 수정 버튼 클릭
							$("button[name=js-car-bc-mixing-tank-status-info-mixing-lot-list-modify-button]").off().on('click', function(){
								var seq = $(this).val();
								fn_openPop($(this));
								initCarBcLotHistModPopup(seq);
							});
							
							// 삭제 버튼 클릭
							$("button[name=js-car-bc-mixing-tank-status-info-mixing-lot-list-delete-button]").off().on('click', function(){
								var seq = $(this).val();
								app.message.confirm({
									  title             : '<spring:message code="TODO.KEY" text="알림"/>'
									, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
									, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
									, callback          : {
										confirm: function() {
											// LOT 이력 삭제
											deleteCarProdInspMixingLotNew.request(seq);
										}
									}
								});
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
						  service  : 'car.prodInspEd'
						, method   : 'retrieveCarProdInspMixingLotList'
						, carPlant : $('#js-car-header-car-plant').val()
						, procId   : $('#js-car-bc-mixing-tank-status-info-procid-combo').val()
						, tankNo   : $('#js-car-bc-mixing-tank-status-info-tankno-combo').val()
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				},
				carBcLotHistRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								$("#js-car-bc-lot-hist-reg-popup-list").empty();
								
								for(var i=0 ; i<response.rs.length ; i++){
									addRowCarBcLotHistRegPopupInfo(response.rs[i]);
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
						var params = {
							  service  : 'car.prodInspEd'
							, method   : 'retrieveCarProdInspMixingLotList'
							, carPlant : $('#js-car-header-car-plant').val()
							, procId   : $('#js-car-bc-lot-hist-reg-popup-procid-combo').val()
							, tankNo   : $('#js-car-bc-lot-hist-reg-popup-tankno-combo').val()
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				}
			};
			
			//-------------------------------------------------
			// LOT 이력 삭제
			//-------------------------------------------------
			var deleteCarProdInspMixingLotNew = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="삭제되었습니다."/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
								, callback          : {
									confirm: function() {
									}
								}
							});
							$("#js-car-bc-lot-hist-mod-popup-close-button").click();
							
							// 재조회
							retrieveCarProdInspMixingLotList.request();
							
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
				request: function(seq) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service  				: 'car.prodInspEd'
						, method   				: 'deleteCarProdInspMixingLotNew'
						, seqCarProdInspBcLot 	: seq
						, workType             	: "PC"
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//-------------------------------------------------
			// 첨가제/희석제 투입 이력 조회
			//-------------------------------------------------
			var retrieveCarProdInspMixingInjList = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							var data = {
									rows : response.rs
							};
							var result = carBcMixingTankStatusInfoMixingInjListTemplate(data);
							$('#js-car-bc-mixing-tank-status-info-mixing-inj-list').html(result);
							
							// 수정 버튼 클릭
							$("button[name=js-car-bc-mixing-tank-status-info-mixing-inj-list-modify-button]").off().on('click', function(){
								var seq = $(this).val();
								fn_openPop($(this));
								initCarBcInjHistModPopup(seq);
							});
							
							// 삭제 버튼 클릭
							$("button[name=js-car-bc-mixing-tank-status-info-mixing-inj-list-delete-button]").off().on('click', function(){
								var seq = $(this).val();
								app.message.confirm({
									  title             : '<spring:message code="TODO.KEY" text="알림"/>'
									, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
									, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
									, callback          : {
										confirm: function() {
											// 첨가제/희석제 투입 이력 삭제
											deleteCarProdInspMixingInjNew.request(seq);
										}
									}
								});
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
						  service  : 'car.prodInspEd'
						, method   : 'retrieveCarProdInspMixingInjList'
						, carPlant : $('#js-car-header-car-plant').val()
						, procId   : $('#js-car-bc-mixing-tank-status-info-procid-combo').val()
						, tankNo   : $('#js-car-bc-mixing-tank-status-info-tankno-combo').val()
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				},
				carBcInjHistRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {			
								$("#js-car-bc-inj-hist-reg-popup-list").empty();
								
								for(var i=0 ; i<response.rs.length ; i++){
									addRowCarBcInjHistRegPopupInfo(response.rs[i]);
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
						var params = {
							  service  : 'car.prodInspEd'
							, method   : 'retrieveCarProdInspMixingInjList'
							, carPlant : $('#js-car-header-car-plant').val()
							, procId   : $('#js-car-bc-inj-hist-reg-popup-procid-combo').val()
							, tankNo   : $('#js-car-bc-inj-hist-reg-popup-tankno-combo').val()
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				}
			};

			//-------------------------------------------------
			// 첨가제/희석제 투입 이력 삭제
			//-------------------------------------------------
			var deleteCarProdInspMixingInjNew = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="삭제되었습니다."/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
								, callback          : {
									confirm: function() {
									}
								}
							});
							$("#js-car-bc-inj-hist-mod-popup-close-button").click();
							
							// 재조회
							retrieveCarProdInspMixingInjList.request();
							
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
				request: function(seq) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service  				: 'car.prodInspEd'
						, method   				: 'deleteCarProdInspMixingInjNew'
						, seqCarProdInspBcInj 	: seq
						, workType             	: "PC"
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//-------------------------------------------------
			// Tank 사용이력 조회
			//-------------------------------------------------
			var retrieveCarProdInspMixingHistList = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {													
							var data = {
									rows : response.rs
							};
							var result = carBcMixingTankStatusInfoMixingHistListTemplate(data);
							$('#js-car-bc-mixing-tank-status-info-mixing-hist-list').html(result);
							
							// 수정 버튼 클릭
							$("button[name=js-car-bc-mixing-tank-status-info-mixing-hist-list-modify-button]").off().on('click', function(){
								var param = {
										procId   : $('#js-car-bc-mixing-tank-status-info-procid-combo').val()
									  , tankNo   : $('#js-car-bc-mixing-tank-status-info-tankno-combo').val()
									  , histDate : $(this).val().replace(/-/gi, "") 
								};
								fn_openPop($(this));
								initCarBcTankHistModPopup(param);
							});
							
							// 삭제 버튼 클릭
							$("button[name=js-car-bc-mixing-tank-status-info-mixing-hist-list-delete-button]").off().on('click', function(){
								var seq = $(this).val();
								app.message.confirm({
									  title             : '<spring:message code="TODO.KEY" text="알림"/>'
									, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
									, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
									, callback          : {
										confirm: function() {
											// Tank 사용이력 삭제
											deleteCarProdInspMixingHist.request(seq);
										}
									}
								});
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
						  service  : 'car.prodInspEd'
						, method   : 'retrieveCarProdInspMixingHistList'
						, carPlant : $('#js-car-header-car-plant').val()
						, procId   : $('#js-car-bc-mixing-tank-status-info-procid-combo').val()
						, tankNo   : $('#js-car-bc-mixing-tank-status-info-tankno-combo').val()
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};

			//-------------------------------------------------
			// Tank 사용이력 삭제
			//-------------------------------------------------
			var deleteCarProdInspMixingHist = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {	
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="삭제되었습니다."/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
								, callback          : {
									confirm: function() {
									}
								}
							});
							
							// 재조회
							retrieveCarProdInspMixingHistList.request();
							
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
				request: function(seq) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service  : 'car.prodInspEd'
						, method   : 'deleteCarProdInspMixingHist'
						, seqCarProdInspBcHist : seq
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//-------------------------------------------------
			// Mixing Tank 정보 조회
			//-------------------------------------------------
			var retrieveCarProdInspMixingTankList = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							var data = {
								rows : response.rs
							};
							
							var result = carBcMixingTankStatusInfoMixingTankListTemplate(data);
							$('#js-car-bc-mixing-tank-status-info-mixing-tank-list').html(result);
							
							// 수정 버튼 클릭
							$("button[name=js-car-bc-mixing-tank-status-info-mixing-tank-list-modify-button]").off().on('click', function(){
								
								var seqProdInspBcTank	= $(this).attr("data-seqProdInspBcTank");
								
								var param = {
									procId   			: $('#js-car-bc-mixing-tank-status-info-procid-combo').val()
								  , tankNo   			: $('#js-car-bc-mixing-tank-status-info-tankno-combo').val()
								  , seqProdInspBcTank   : seqProdInspBcTank
								};
								
								fn_openPop($(this));
								initCarBcMixingTankRegPopup(param);
							});
							
							// 삭제 버튼 클릭
							$("button[name=js-car-bc-mixing-tank-status-info-mixing-tank-list-delete-button]").off().on('click', function(){
								
								var seqProdInspBcTank	= $(this).attr("data-seqProdInspBcTank");
								
								app.message.confirm({
									  title             : '<spring:message code="TODO.KEY" text="알림"/>'
									, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
									, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
									, callback          : {
										confirm: function() {
											// Mixing Tank 정보 삭제
											deleteCarProdInspMixingTank.request(seqProdInspBcTank);
										}
									}
								});
								
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
						  service  : 'car.prodInspEd'
						, method   : 'retrieveCarProdInspMixingTankList'
						, carPlant : $('#js-car-header-car-plant').val()
						, procId   : $('#js-car-bc-mixing-tank-status-info-procid-combo').val()
						, tankNo   : $('#js-car-bc-mixing-tank-status-info-tankno-combo').val()
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				},
				carBcMixingTankRegPopup : {
						success: function(response, status, jqueryXHR) {
							// ------------------------------------
							// response json structure - {message: '', error: '' rs: null}
							// ------------------------------------
							if (typeof response.message !== 'undefined') {
								var message = response.message || '';
								
								if (message === 'OK') {							
									
									$("[name=js-car-bc-mixing-tank-reg-popup-input-data]").val("");
									
									if(response.rs.length > 0){
										var tankInfo = response.rs[0];
										
										$("#js-car-bc-mixing-tank-reg-popup-productnm").val(tankInfo.productNm);
										$("#js-car-bc-mixing-tank-reg-popup-supplypressure").val(tankInfo.supplyPressure);
										$("#js-car-bc-mixing-tank-reg-popup-pumptype").val(tankInfo.pumpType);
										$("#js-car-bc-mixing-tank-reg-popup-movepressure").val(tankInfo.movePressure);
										$("#js-car-bc-mixing-tank-reg-popup-pcsmethod").val(tankInfo.pcsMethod);
										$("#js-car-bc-mixing-tank-reg-popup-returnpressure").val(tankInfo.returnPressure);
										$("#js-car-bc-mixing-tank-reg-popup-filterchangecycle").val(tankInfo.filterChangeCycle);
										$("#js-car-bc-mixing-tank-reg-popup-supplyfiltersize").val(tankInfo.supplyFilterSize);
										$("#js-car-bc-mixing-tank-reg-popup-thinnernm").val(tankInfo.thinnerNm);
										$("#js-car-bc-mixing-tank-reg-popup-movefiltersize").val(tankInfo.moveFilterSize);
										$("#js-car-bc-mixing-tank-reg-popup-thinnervqty").val(tankInfo.thinnerVqty);
										$("#js-car-bc-mixing-tank-reg-popup-additive").val(tankInfo.additive);
										$("#js-car-bc-mixing-tank-reg-popup-remark").val(tankInfo.remark);
										
										
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
							var params = {
								  service  : 'car.prodInspEd'
								, method   : 'retrieveCarProdInspMixingTankList'
								, carPlant : $('#js-car-header-car-plant').val()
								, procId   : $('#js-car-bc-mixing-tank-reg-popup-procid-combo').val()
								, tankNo   : $('#js-car-bc-mixing-tank-reg-popup-tankno-combo').val()
							};
							app.mask.pageLock();
							var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
							ajax.done(this.success);
							ajax.fail(this.error);
							ajax.always(this.complete);
						}
					}
			};

			//-------------------------------------------------
			// Mixing Tank 정보 삭제
			//-------------------------------------------------
			var deleteCarProdInspMixingTank = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {	
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="삭제되었습니다."/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
								, callback          : {
									confirm: function() {
									}
								}
							});
							
							// 재조회
							retrieveCarProdInspMixingTankList.request();
							
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
				request: function(seqProdInspBcTank) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					
					var seq = seqProdInspBcTank == "" ? 0 : seqProdInspBcTank;
					
					var params = {
						  service  			: 'car.prodInspEd'
						, method   			: 'deleteCarProdInspMixingTank'
						, carPlant 			: $('#js-car-header-car-plant').val()
						, procId   			: $('#js-car-bc-mixing-tank-status-info-procid-combo').val()
						, tankNo   			: $('#js-car-bc-mixing-tank-status-info-tankno-combo').val()
						, seqProdInspBcTank : seq
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//-------------------------------------------------
			// 공정 콤보 조회
			//-------------------------------------------------
			var retrieveCarProcIdNew = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							$('#js-car-bc-mixing-tank-status-info-procid-combo').find('option').remove();
							for(var i=0; i<response.rs.length; i++)
							{
								$('#js-car-bc-mixing-tank-status-info-procid-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
							}
							
							// 공정 콤보 change Event 
							$('#js-car-bc-mixing-tank-status-info-procid-combo').off().on('change', function(){
								
								// Tank 정보 조회
								retrieveCarProdInspMixingTank.request();
								
								// 온도, 점도 그래프 및 표 조회
								retrieveCarProdInspMixingTemp.request();
								
								// Mixing Tank 정보 조회
								retrieveCarProdInspMixingTankList.request();
								
								// Tank 사용이력 조회
								retrieveCarProdInspMixingHistList.request();
								
								// 첨가제/희석제 투입 이력 조회
								retrieveCarProdInspMixingInjList.request();
								
								// LOT 변경 이력 조회
								retrieveCarProdInspMixingLotList.request();
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
						  service  : 'car.common'
						, method   : 'retrieveCarProcIdNew'
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				},
				carBcTempViscoRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								$('#js-car-bc-temp-visco-reg-popup-procid-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-bc-temp-visco-reg-popup-procid-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								// 공정 콤보 change Event 
								$('#js-car-bc-temp-visco-reg-popup-procid-combo').off().on('change', function(){
									
									// Mixing Tank 온도/점도 조회
									retrieveCarProdInspMixingTempPopup.request();
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
							  service  : 'car.common'
							, method   : 'retrieveCarProcIdNew'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carBcMixingTankRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								$('#js-car-bc-mixing-tank-reg-popup-procid-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-bc-mixing-tank-reg-popup-procid-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								// 공정 콤보 change Event 
								$('#js-car-bc-mixing-tank-reg-popup-procid-combo').off().on('change', function(){
									
									// Mixing Tank 정보 조회
									retrieveCarProdInspMixingTankList.carBcMixingTankRegPopup.request();
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
							  service  : 'car.common'
							, method   : 'retrieveCarProcIdNew'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carBcTankHistRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								$('#js-car-bc-tank-hist-reg-popup-procid-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-bc-tank-hist-reg-popup-procid-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
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
						var params = {
							  service  : 'car.common'
							, method   : 'retrieveCarProcIdNew'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carBcTankHistModPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								console.log(response.rs.length);
								$('#js-car-bc-tank-hist-mod-popup-procid-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-bc-tank-hist-mod-popup-procid-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
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
						var params = {
							  service  : 'car.common'
							, method   : 'retrieveCarProcIdNew'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carBcInjHistRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								$('#js-car-bc-inj-hist-reg-popup-procid-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-bc-inj-hist-reg-popup-procid-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								// 공정 콤보 change Event 
								$('#js-car-bc-inj-hist-reg-popup-procid-combo').off().on('change', function(){
									
									// 첨가제/희석제 투입 이력 조회
									retrieveCarProdInspMixingInjList.carBcInjHistRegPopup.request();
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
							  service  : 'car.common'
							, method   : 'retrieveCarProcIdNew'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carBcInjHistModPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								$('#js-car-bc-inj-hist-mod-popup-procid-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-bc-inj-hist-mod-popup-procid-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
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
						var params = {
							  service  : 'car.common'
							, method   : 'retrieveCarProcIdNew'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carBcLotHistRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								$('#js-car-bc-lot-hist-reg-popup-procid-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-bc-lot-hist-reg-popup-procid-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								// 공정 콤보 change Event 
								$('#js-car-bc-lot-hist-reg-popup-procid-combo').off().on('change', function(){
									
									// LOT 이력 조회
									retrieveCarProdInspMixingLotList.carBcLotHistRegPopup.request();
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
							  service  : 'car.common'
							, method   : 'retrieveCarProcIdNew'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carBcLotHistModPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								$('#js-car-bc-lot-hist-mod-popup-procid-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-bc-lot-hist-mod-popup-procid-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
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
						var params = {
							  service  : 'car.common'
							, method   : 'retrieveCarProcIdNew'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carBcColorTankMatchRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								$('#js-car-bc-color-tank-match-reg-popup-procid-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-bc-color-tank-match-reg-popup-procid-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								// 공정 콤보 change Event 
								$('#js-car-bc-color-tank-match-reg-popup-procid-combo').off().on('change', function(){
									// Mixing Tank 별 컬러 정보 조회
									retrieveCarProdInspMixingMast.request();
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
							  service  : 'car.common'
							, method   : 'retrieveCarProcIdNew'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				}
			};
			
			//-------------------------------------------------
			// Tank No 콤보 조회
			//-------------------------------------------------
			var retrieveCarTankNo = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							$('#js-car-bc-mixing-tank-status-info-tankno-combo').find('option').remove();
							for(var i=0; i<response.rs.length; i++)
							{
								$('#js-car-bc-mixing-tank-status-info-tankno-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
							}
							
							// Tank No. 콤보 change Event 
							$('#js-car-bc-mixing-tank-status-info-tankno-combo').off().on('change', function(){
								
								// Tank 정보 조회
								retrieveCarProdInspMixingTank.request();
								
								// 온도, 점도 그래프 및 표 조회
								retrieveCarProdInspMixingTemp.request();
								
								// Mixing Tank 정보 조회
								retrieveCarProdInspMixingTankList.request();
								
								// Tank 사용이력 조회
								retrieveCarProdInspMixingHistList.request();
								
								// 첨가제/희석제 투입 이력 조회
								retrieveCarProdInspMixingInjList.request();
								
								// LOT 변경 이력 조회
								retrieveCarProdInspMixingLotList.request();
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
						  service  : 'car.common'
						, method   : 'retrieveCarTankNo'
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				},
				carBcTempViscoRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								$('#js-car-bc-temp-visco-reg-popup-tankno-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-bc-temp-visco-reg-popup-tankno-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								// Tank No. 콤보 change Event 
								$('#js-car-bc-temp-visco-reg-popup-tankno-combo').off().on('change', function(){
									
									// Mixing Tank 온도/점도 조회
									retrieveCarProdInspMixingTempPopup.request();
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
							  service  : 'car.common'
							, method   : 'retrieveCarTankNo'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carBcMixingTankRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								$('#js-car-bc-mixing-tank-reg-popup-tankno-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-bc-mixing-tank-reg-popup-tankno-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								// Tank No. 콤보 change Event 
								$('#js-car-bc-mixing-tank-reg-popup-tankno-combo').off().on('change', function(){
									
									// Mixing Tank 정보 조회
									retrieveCarProdInspMixingTankList.carBcMixingTankRegPopup.request();
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
							  service  : 'car.common'
							, method   : 'retrieveCarTankNo'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carBcTankHistRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								$('#js-car-bc-tank-hist-reg-popup-tankno-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-bc-tank-hist-reg-popup-tankno-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								// Tank No. 콤보 change Event 
								$('#js-car-bc-tank-hist-reg-popup-tankno-combo').off().on('change', function(){
									
									// Tank 사용이력 조회
									retrieveCarProdInspMixingHistPopup.request();
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
							  service  : 'car.common'
							, method   : 'retrieveCarTankNo'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carBcTankHistModPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								$('#js-car-bc-tank-hist-mod-popup-tankno-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-bc-tank-hist-mod-popup-tankno-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								// Tank No. 콤보 change Event 
								$('#js-car-bc-tank-hist-Mod-popup-tankno-combo').off().on('change', function(){
									
									// Tank 사용이력 조회
									retrieveCarProdInspMixingHistPopup.request();
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
							  service  : 'car.common'
							, method   : 'retrieveCarTankNo'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carBcInjHistRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								$('#js-car-bc-inj-hist-reg-popup-tankno-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-bc-inj-hist-reg-popup-tankno-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								// Tank No. 콤보 change Event 
								$('#js-car-bc-inj-hist-reg-popup-tankno-combo').off().on('change', function(){
									
									// 첨가제/희석제 투입 이력 조회
									retrieveCarProdInspMixingInjList.carBcInjHistRegPopup.request();
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
							  service  : 'car.common'
							, method   : 'retrieveCarTankNo'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carBcInjHistModPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								$('#js-car-bc-inj-hist-mod-popup-tankno-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-bc-inj-hist-mod-popup-tankno-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
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
						var params = {
							  service  : 'car.common'
							, method   : 'retrieveCarTankNo'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carBcLotHistRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								$('#js-car-bc-lot-hist-reg-popup-tankno-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-bc-lot-hist-reg-popup-tankno-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								// Tank No. 콤보 change Event 
								$('#js-car-bc-lot-hist-reg-popup-tankno-combo').off().on('change', function(){
									
									// LOT 이력 조회
									retrieveCarProdInspMixingLotList.carBcLotHistRegPopup.request();
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
							  service  : 'car.common'
							, method   : 'retrieveCarTankNo'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carBcLotHistModPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								$('#js-car-bc-lot-hist-mod-popup-tankno-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-bc-lot-hist-mod-popup-tankno-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
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
						var params = {
							  service  : 'car.common'
							, method   : 'retrieveCarTankNo'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carBcColorTankMatchRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								$('#js-car-bc-color-tank-match-reg-popup-tankno-combo').find('option').remove();
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-car-bc-color-tank-match-reg-popup-tankno-combo').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								// Tank No. 콤보 change Event 
								$('#js-car-bc-color-tank-match-reg-popup-tankno-combo').off().on('change', function(){
									// Mixing Tank 별 컬러 정보 조회
									retrieveCarProdInspMixingMast.request();
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
							  service  : 'car.common'
							, method   : 'retrieveCarTankNo'
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				}
			};
			
			//-------------------------------------------------
			// Tank 정보 조회
			//-------------------------------------------------
			var retrieveCarProdInspMixingTank = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {
							$("#js-car-bc-mixing-tank-status-info-tank-info-tankno").text($('#js-car-bc-mixing-tank-status-info-tankno-combo option:selected').text());
							$("#js-car-bc-mixing-tank-status-info-tank-info-itemsNm").text("");
							$("#js-car-bc-mixing-tank-status-info-tank-info-colornm").text("");
							$("#js-car-bc-mixing-tank-status-info-tank-info-lastindate").text("");
							$("#js-car-bc-mixing-tank-status-info-tank-info-injdate").text("");
							//$("#js-car-bc-mixing-tank-status-info-tank-info-storeterm").text("");
							$("#js-car-bc-mixing-tank-status-info-tank-info-lotno").text("");
							$("#js-car-bc-mixing-tank-status-info-tank-info-paintvisco-temp").text("");
							
							if(response.rs.length > 0){
								var tankInfo = response.rs[0];
								
								for(var key in tankInfo){
									tankInfo[key] = tankInfo[key] == null ? "" : tankInfo[key];
								}
								
								$("#js-car-bc-mixing-tank-status-info-tank-info-itemsNm").text(tankInfo.itemsNm);
								$("#js-car-bc-mixing-tank-status-info-tank-info-colornm").text(tankInfo.colorNm);
								
								// 제조일자 								
								if (tankInfo.lastInDate != null) {
									$("#js-car-bc-mixing-tank-status-info-tank-info-lastindate").text("제조일자 : " + tankInfo.lastInDate);
								} else {
									$("#js-car-bc-mixing-tank-status-info-tank-info-lastindate").text("제조일자 : - ");
								}
								// 투입일자
								if (tankInfo.injDate != null) {
									$("#js-car-bc-mixing-tank-status-info-tank-info-injdate").text("투입일자 : " + tankInfo.injDate);
								} else {
									$("#js-car-bc-mixing-tank-status-info-tank-info-injdate").text("투입일자 : - ");
								}
								// LOT No
								if (tankInfo.lotNo != null) {
									$("#js-car-bc-mixing-tank-status-info-tank-info-lotno").text("LOT No. : " + tankInfo.lotNo);
								} else {
									$("#js-car-bc-mixing-tank-status-info-tank-info-lotno").text("LOT No. : - ");
								}								
								
								//$("#js-car-bc-mixing-tank-status-info-tank-info-storeterm").text("보관기간 : " + tankInfo.storeTerm);
								//$("#js-car-bc-mixing-tank-status-info-tank-info-paintvisco-temp").text(tankInfo.paintVisco + "sec/" + tankInfo.paintTemp + "℃");
								
								if ( tankInfo.paintVisco == "" && tankInfo.paintTemp == "") {
									$("#js-car-bc-mixing-tank-status-info-tank-info-paintvisco-temp").text(" - ");
								} else if (tankInfo.paintVisco != "" &&  tankInfo.paintTemp == "") {
									$("#js-car-bc-mixing-tank-status-info-tank-info-paintvisco-temp").text(tankInfo.paintVisco +"sec/-℃");   
								} else if (tankInfo.paintVisco == "" &&  tankInfo.paintTemp != "") {
									$("#js-car-bc-mixing-tank-status-info-tank-info-paintvisco-temp").text("-sec/"+ tankInfo.paintTemp +"℃");
								} else {
									$("#js-car-bc-mixing-tank-status-info-tank-info-paintvisco-temp").text(tankInfo.paintVisco + "sec/" + tankInfo.paintTemp + "℃");
								}
								
								// 관리 Spec 조회
								retrieveCarProdInspMixingSpecList.request(tankInfo.colorId);
								
							} else {
								$("#js-car-bc-mixing-tank-status-info-tank-info-itemsNm").text("");
								$("#js-car-bc-mixing-tank-status-info-tank-info-colornm").text("");
								$("#js-car-bc-mixing-tank-status-info-tank-info-lastindate").text("제조일자 : - ");
								$("#js-car-bc-mixing-tank-status-info-tank-info-injdate").text("투입일자 : - ");
								//$("#js-car-bc-mixing-tank-status-info-tank-info-storeterm").text("보관기간 : " + tankInfo.storeTerm);
								$("#js-car-bc-mixing-tank-status-info-tank-info-lotno").text("LOT No. : - ");
								$("#js-car-bc-mixing-tank-status-info-tank-info-paintvisco-temp").text(" - ");
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
					var params = {
						  service  : 'car.prodInspEd'
						, method   : 'retrieveCarProdInspMixingTank'
						, carPlant : $('#js-car-header-car-plant').val()
						, procId   : $('#js-car-bc-mixing-tank-status-info-procid-combo').val()
						, tankNo   : $('#js-car-bc-mixing-tank-status-info-tankno-combo').val()
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//-------------------------------------------------
			// 온도, 점도 테이블 set
			//------------------------------------------------- 
			var setTableCarProdInspMixingTemp = function(resultList, paramPage){

				var showList = [];
				var pageNo   = paramPage;
				for(var i=(pageNo-1)*10 ; i<pageNo*10 ; i++){
					if(resultList[i] != undefined){
						showList.push(resultList[i]);
					}
				}
				
				$("#js-car-bc-mixing-tank-status-info-mixing-temp-head th").each(function(index){
					if(index > 0){
						$(this).find("div").text("");
						$(this).find("input").val("");
						if(showList[index-1] != undefined){
							$(this).find("div").text(showList[index-1].inspDate);
							$(this).find("input").val(showList[index-1].remark);
							
							$(this).css("cursor", "pointer");
							$(this).attr("inspdate", showList[index-1].inspDate);
						}
					}
				});
				
				$("#js-car-bc-mixing-tank-status-info-mixing-temp-visco td").each(function(index){
					$(this).text("");
					if(showList[index] != undefined){
						var str = "";
						if(showList[index].viscoOverYn == "Y"){
							str = '<span class="wp-spec-over">' + showList[index].paintVisco + '</span>';
						} else {
							str = showList[index].paintVisco;
						}
						$(this).html(str);
						
						$(this).css("cursor", "pointer");
						$(this).attr("inspdate", showList[index].inspDate);
					}
				});
				
				$("#js-car-bc-mixing-tank-status-info-mixing-temp-temp td").each(function(index){
					$(this).text("");
					if(showList[index] != undefined){
						var str = "";
						if(showList[index].tempOverYn == "Y"){
							str = '<span class="wp-spec-over">' + showList[index].paintTemp + '</span>';
						} else {
							str = showList[index].paintTemp;
						}
						$(this).html(str);
						
						$(this).css("cursor", "pointer");
						$(this).attr("inspdate", showList[index].inspDate);
					}
				});
				
				// 말풍선 기능구현
			    $(document).on('mouseenter', '.wp-bubble-mixing-temp-head', function(e){
			        var bubbleText  = $(this).find("input").val(),
			            bubbleTop   = $(this).offset().top + 35, 
			            bubbleLeft  = $(this).offset().left,
			            bubbleWidth = $(this).width()+10;
			        $('body').append('<div class=wp-bubble-div></div>');
			        $('.wp-bubble-div').css({
			                top: bubbleTop,
			                left : bubbleLeft,
			                width : bubbleWidth
			            }).text(bubbleText);
			        $(this).on('mouseleave', function(){
			            $('.wp-bubble-div').remove();
			        })
			    });
				
				
				// 조회결과 항목 클릭시 수정팝업
				$("#js-car-bc-mixing-tank-status-info-mixing-temp-head th, #js-car-bc-mixing-tank-status-info-mixing-temp-visco td, #js-car-bc-mixing-tank-status-info-mixing-temp-temp td").off().on('click', function(){
					
					$('#js-car-bc-mixing-tank-status-info-mng-spec-temp-inUpChk').val("U");
					
					// 등록 시 삭제 버튼 보이게
					$("#js-car-bc-temp-visco-reg-popup-delete-button").css("display", "");
					
					var inspDate = $(this).attr("inspdate");
					
					if(app.utils.isEmpty(inspDate)){
						return;
					}
					
					$(this).attr("data-link",  "js-car-bc-temp-visco-reg-popup");
					$(this).attr("data-depth", "1");
					
					var param = {
						procId   : $('#js-car-bc-mixing-tank-status-info-procid-combo').val()
					  	, tankNo   : $('#js-car-bc-mixing-tank-status-info-tankno-combo').val()
					  	, inspDate : inspDate
					};
					
					fn_openPop($(this));
					initCarBcTempViscoRegPopup(param);
					
				});
			};

			//-------------------------------------------------
			// 관리 Spec 조회
			//-------------------------------------------------
			var retrieveCarProdInspMixingSpecList = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						console.log("관리spec");
						console.log(response);
						
						if (message === 'OK') {
							$("#js-car-bc-mixing-tank-status-info-mng-spec-visco").text("");
							$("#js-car-bc-mixing-tank-status-info-mng-spec-temp").text("");
							
							if(response.rs.length > 0){
								$("#js-car-bc-mixing-tank-status-info-mng-spec-visco").text(response.rs[0].pmItemsVisco);
								$("#js-car-bc-mixing-tank-status-info-mng-spec-temp").text(response.rs[0].pmItemsTemp);
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
				request: function(colorId) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service  : 'car.prodInspEd'
						, method   : 'retrieveCarProdInspMixingSpecList'
						, carPlant : $('#js-car-header-car-plant').val()
						, colorId  : colorId
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//-------------------------------------------------
			// 온도, 점도 그래프 및 표 조회
			//-------------------------------------------------
			var retrieveCarProdInspMixingTemp = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {			
							
							var resultList = response.rs;
							
							var pageCount = Math.floor(resultList.length / 10);
							if(resultList.length % 10 > 0){
								pageCount++;
							}
							if(pageCount == 0){
								pageCount = 1;
							}
							$("#js-car-bc-mixing-tank-status-info-curr-page").text("1");
							$("#js-car-bc-mixing-tank-status-info-total-page").text(pageCount);
							
							// 페이징 버튼 클릭
							$("button[name=js-car-bc-mixing-tank-status-info-paging-button]").off().on('click', function(){
								var currPage  = Number($("#js-car-bc-mixing-tank-status-info-curr-page").text());
								var totalPage = Number($("#js-car-bc-mixing-tank-status-info-total-page").text());
								var paramPage = 0;
								
								// 이전
								if($(this).hasClass('prev')){
									if(currPage == null || currPage == 0 || currPage == 1){
										return;
									}
									paramPage = currPage - 1;
								} 
								// 다음
								else if($(this).hasClass('next')){
									if(currPage == null || currPage == totalPage){
										return;
									}
									paramPage = currPage + 1;
								}
								$("#js-car-bc-mixing-tank-status-info-curr-page").text(paramPage);
								
								setTableCarProdInspMixingTemp(resultList, paramPage);
							});
							
							// 온도, 점도 테이블 set
							setTableCarProdInspMixingTemp(resultList, 1);
							
							// 그래프 set 
							setHighChartMixingTankGraph(resultList);
							
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
						  service  : 'car.prodInspEd'
						, method   : 'retrieveCarProdInspMixingTemp'
						, carPlant : $('#js-car-header-car-plant').val()
						, procId   : $('#js-car-bc-mixing-tank-status-info-procid-combo').val()
						, tankNo   : $('#js-car-bc-mixing-tank-status-info-tankno-combo').val()
						, fromDate : $('#js-car-bc-mixing-tank-status-info-fromdate').val().replace(/-/gi, "")
						, toDate   : $('#js-car-bc-mixing-tank-status-info-todate').val().replace(/-/gi, "")
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			

			//------------------------------------------------
			// 하이차트 
			//------------------------------------------------
			var setHighChartMixingTankGraph = function(data){

				var measureDateArr  = new Array();
				var paintViscoArr   = new Array();
				var paintTempArr    = new Array();
				
				for(var i=0 ; i<data.length ; i++){
					measureDateArr.push(data[i].inspDate);
					paintViscoArr.push(data[i].paintVisco);
					paintTempArr.push(data[i].paintTemp);
				}
				
				Highcharts.chart('js-car-bc-mixing-tank-status-info-graph-area', {
					chart: {
				        zoomType: 'xy'
				    },
			        title: {
			            text: ''
			        },
			        xAxis: [{
			            categories: measureDateArr,
			            crosshair: true
			        }],
			        yAxis: [{ // Primary yAxis
			        	min : 0,
			        	max : 50,
			            labels: {
			                format: '{value}',
			                style: {
			                    color: "black"
			                }
			            },
			            title: {
			                text: '점도 (sec)',
			                style: {
			                    color: "black"
			                }
			            }
			        }, { // Secondary yAxis
			        	min : 0,
			        	max : 60,
			            title: {
			                text: '온도 (℃)',
			                style: {
			                    color: "black"
			                }
			            },
			            labels: {
			                format: '{value}',
			                style: {
			                    color: "black"
			                }
			            },
			            opposite: true
			        }],
			        tooltip: {
			            shared: true
			        },
			        exporting: {enabled: false },
			        series: [{
			            name: '점도',
			            type: 'spline',
			            data: paintViscoArr,
			            tooltip: {
			                valueSuffix: 'sec'
			            },
		                color: "blue"
			        },{
			            name: '온도',
			            type: 'spline',
			            yAxis: 1,
			            data: paintTempArr,
			            tooltip: {
			                valueSuffix: '℃'
			            },
			            color: "red"
			        }]
			    });
			};
			
			
		</script>
		
	</tiles:putAttribute>
	<!-- 페이지 레벨 스크립트 E -->

	<!-- 팝업 콘텐츠 S -->
	<tiles:putAttribute name="popup-content">
	
	<!-- 온도/점도 관리 팝업 [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-bc-temp-visco-reg-popup" class="wp-pop-layer wp-pop-w700 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="Mixing Tank 온도/점도 등록/수정 관리"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-bc-temp-visco-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
	    	</div>
	        <div class="wp-pop-conts">
		<!-- scroll Area -->
		<div class="wp-pop-cont-scrollable">
	            <!--content //-->
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="일반정보"/></h2>
			<!-- 기본 정보 -->
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:20%">
						<col style="width:30%">
						<col style="width:20%">
						<col style="width:30%">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="공정"/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select  id="js-car-bc-temp-visco-reg-popup-procid-combo" disabled="disabled">
									</select>
								</div>
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="Tank No."/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select  id="js-car-bc-temp-visco-reg-popup-tankno-combo" disabled="disabled">
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="검사일자"/></th>
							<td colspan="3" class="wp-al wp-vm"><input type="text" id="js-car-bc-temp-visco-reg-popup-date" class="wp-inp-datepicker maxdate wp-wd160" placeholder="날짜입력"></td>
						</tr>
					</tbody>
				</table>
			</div>
	
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="Mixing Tank 온도/점도"/></h2>
			<!-- 기본 정보 -->
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:20%">
						<col style="width:30%">
						<col style="width:20%">
						<col style="width:30%">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="Tank No."/></th>
							<td id="js-car-bc-temp-visco-reg-popup-tanknonm"></td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="칼라"/></th>
							<td id="js-car-bc-temp-visco-reg-popup-color"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="온도 관리 Spec"/></th>
							<td id="js-car-bc-temp-visco-reg-popup-temp-spec"></td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="점도 관리 Spec"/></th>
							<td id="js-car-bc-temp-visco-reg-popup-visco-spec"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="온도(℃)"/></th>
							<td><input type="text" id="js-car-bc-temp-visco-reg-popup-temp"></td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="점도(sec)"/></th>
							<td><input type="text" id="js-car-bc-temp-visco-reg-popup-visco"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="비고"/></th>
							<td colspan="3"><input type="text" id="js-car-bc-temp-visco-reg-popup-remark"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- // scroll Area -->
			</div>
			<div class="wp-btn-area">
				<input type="hidden" id="js-car-bc-temp-visco-reg-popup-tankno" >
				<input type="hidden" id="js-car-bc-temp-visco-reg-popup-seq" >
				<button type="button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18" id="js-car-bc-temp-visco-reg-popup-save-button"><spring:message code="TODO.KEY" text="저장" /></button>
				<button type="button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18" id="js-car-bc-temp-visco-reg-popup-delete-button" style="display:none"><spring:message code="TODO.KEY" text="삭제" /></button>
			</div>
	        </div>
	    </div>
	</div>	
	
	<script type="text/javascript">
	
	//------------------------------------------------
	// 초기화
	//------------------------------------------------
	var initCarBcTempViscoRegPopup = function(param) {
		
		initDataCarBcTempViscoRegPopup();
		
		// 검사일자
		var date = app.utils.formatDate(new Date(), "YYYYMMDD");
		$("#js-car-bc-temp-visco-reg-popup-date").val(date).mask('9999-99-99');
		
		// 공정 콤보 조회
		retrieveCarProcIdNew.carBcTempViscoRegPopup.request();
		
		// Tank No.
		retrieveCarTankNo.carBcTempViscoRegPopup.request();
		
		if(param != undefined){
			$("#js-car-bc-temp-visco-reg-popup-procid-combo").val(param.procId);
			$("#js-car-bc-temp-visco-reg-popup-tankno-combo").val(param.tankNo);
			if(param.inspDate != undefined){
				$("#js-car-bc-temp-visco-reg-popup-date").val(param.inspDate);
			}
		}
		
		// Mixing Tank 온도/점도 조회
		if(param.inspDate != undefined){
			retrieveCarProdInspMixingTempPopup.request();
		}
		
		// 검사일자 change 이벤트 - event bubble 필요.
		//$("#js-car-bc-temp-visco-reg-popup-date").off().on('change', function(){
		$(document.body).off().on('change', "#js-car-bc-temp-visco-reg-popup-date", function(){
			// Mixing Tank 온도/점도 조회
			retrieveCarProdInspMixingTempPopup.request();
		});
		
		// 저장 버튼 클릭
		$("#js-car-bc-temp-visco-reg-popup-save-button").off().on('click', function(){
			
			// Validation Check
			if(!validationCheckCarBcTempViscoRegPopup()){
				return;
			}
			
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						// Mixing Tank 온도/점도 정보 저장
						saveCarProdInspMixingTempPopup.request();
					}
				}
			});
			
		});
		
		// 삭제 버튼 클릭
		$("#js-car-bc-temp-visco-reg-popup-delete-button").off().on('click', function(){
			
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림" />'
				, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?" />'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인" />'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소" />'
				, callback          : {
					confirm: function() {
						// Mixing Tank 온도/점도 정보 삭제
						deleteCarInspBcTempInfo.request();
					}
				}
			});
			
		});
		
	};

	//-------------------------------------------------
	// 저장 전 Validation Check
	//-------------------------------------------------
	var validationCheckCarBcTempViscoRegPopup = function(){
		
		var carPlant             = $('#js-car-header-car-plant').val();
		var procId               = $('#js-car-bc-temp-visco-reg-popup-procid-combo').val();
		var tankNo               = $('#js-car-bc-temp-visco-reg-popup-tankno-combo').val();
		var inspDate             = $('#js-car-bc-temp-visco-reg-popup-date').val().replace(/-/gi, "");
		var paintTemp            = $("#js-car-bc-temp-visco-reg-popup-temp").val();
		var paintVisco           = $("#js-car-bc-temp-visco-reg-popup-visco").val();
		var remark               = $("#js-car-bc-temp-visco-reg-popup-remark").val();
		
		// 필수값 입력 여부 체크
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
			return false;
		}
		
		if(app.utils.isEmpty(procId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공정코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		
		if(app.utils.isEmpty(tankNo)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="조회된 데이터가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		
		if(app.utils.isEmpty(inspDate)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="검사일자가 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		
		if(app.utils.isEmpty(paintTemp)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					  , message           : '<spring:message code="TODO.KEY" text="온도는 필수입력 항목입니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		
		if(app.utils.isEmpty(paintVisco)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="점도는 필수입력 항목입니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		/*
		if(app.utils.isEmpty(remark)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="비고가 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		*/
		return true;
	};
	
	//-------------------------------------------------
	// Mixing Tank 온도/점도 저장
	//-------------------------------------------------
	var saveCarProdInspMixingTempPopup = {
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
						, callback          : {
							confirm: function() {
							}
						}
					});
					
					// 재조회
					retrieveCarProdInspMixingTempPopup.request();
					retrieveCarProdInspMixingTemp.request();
					
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
				  service              	: 'car.prodInspEd'
				, method               	: 'saveCarProdInspMixingTempPopup'
				, carPlant             	: $('#js-car-header-car-plant').val()
				, procId               	: $('#js-car-bc-temp-visco-reg-popup-procid-combo').val()
				, tankNo               	: $('#js-car-bc-temp-visco-reg-popup-tankno-combo').val()
				, inspDate             	: $('#js-car-bc-temp-visco-reg-popup-date').val().replace(/-/gi, "")
				, paintTemp            	: $("#js-car-bc-temp-visco-reg-popup-temp").val()
				, paintVisco           	: $("#js-car-bc-temp-visco-reg-popup-visco").val()
				, remark               	: $("#js-car-bc-temp-visco-reg-popup-remark").val()
				, seqCarProdInspBcTemp 	: $("#js-car-bc-temp-visco-reg-popup-seq").val() || 0
				, workType 				: 'PC'
			};
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	//-------------------------------------------------
	// 데이터 초기화
	//-------------------------------------------------
	var initDataCarBcTempViscoRegPopup = function(){
		$("#js-car-bc-temp-visco-reg-popup-tankno").val("");
		$("#js-car-bc-temp-visco-reg-popup-tanknonm").text("");
		$("#js-car-bc-temp-visco-reg-popup-color").text("");
		$("#js-car-bc-temp-visco-reg-popup-temp-spec").text("");
		$("#js-car-bc-temp-visco-reg-popup-visco-spec").text("");
		$("#js-car-bc-temp-visco-reg-popup-temp").val("");
		$("#js-car-bc-temp-visco-reg-popup-visco").val("");
		$("#js-car-bc-temp-visco-reg-popup-remark").val("");
		$("#js-car-bc-temp-visco-reg-popup-seq").val("");
	};

	//-------------------------------------------------
	// Mixing Tank 온도/점도 조회
	//-------------------------------------------------
	var retrieveCarProdInspMixingTempPopup = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					initDataCarBcTempViscoRegPopup();
					
					if(response.rs.length > 0){
						
						var tankInfo = response.rs[0];
						
						$("#js-car-bc-temp-visco-reg-popup-tankno").val(tankInfo.tankNo);
						$("#js-car-bc-temp-visco-reg-popup-tanknonm").text(tankInfo.tankNoNm);
						$("#js-car-bc-temp-visco-reg-popup-color").text(tankInfo.colorNm);
						$("#js-car-bc-temp-visco-reg-popup-temp-spec").text(tankInfo.paintTempRange);
						$("#js-car-bc-temp-visco-reg-popup-visco-spec").text(tankInfo.paintViscoRange);
						
						/*
						** 수정인 경우에만 값을 바인딩.
						** 로직 상 기존 공정 + TankNo + 검사일자 값에 해당하는 데이터가 있는 경우 등록/수정 버튼 클릭 시 이미 데이터가 존재하므로
						** 보여지는게 맞는것으로 파악되나(최초 기획이었을 것으로 추측됨.), 요청에 의해 수정 시 임의로 데이터 바인딩을 막아놓음.
						*/ 
						if($('#js-car-bc-mixing-tank-status-info-mng-spec-temp-inUpChk').val() == "U")
						{
							$("#js-car-bc-temp-visco-reg-popup-temp").val(tankInfo.paintTemp);
							$("#js-car-bc-temp-visco-reg-popup-visco").val(tankInfo.paintVisco);
							$("#js-car-bc-temp-visco-reg-popup-remark").val(tankInfo.remark);
							$("#js-car-bc-temp-visco-reg-popup-seq").val(tankInfo.seqCarProdInspBcTemp);
						}
						
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
			var params = {
				  service  : 'car.prodInspEd'
				, method   : 'retrieveCarProdInspMixingTempPopup'
				, carPlant : $('#js-car-header-car-plant').val()
				, procId   : $('#js-car-bc-temp-visco-reg-popup-procid-combo').val()
				, tankNo   : $('#js-car-bc-temp-visco-reg-popup-tankno-combo').val()
				, inspDate : $('#js-car-bc-temp-visco-reg-popup-date').val().replace(/-/gi, "")
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	
	
	//-------------------------------------------------
	// Mixing Tank 온도/점도 삭제
	//-------------------------------------------------
	var deleteCarInspBcTempInfo = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {							
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="삭제되었습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$("#js-car-bc-temp-visco-reg-popup-close-button").click();
								
								// 재조회
								retrieveCarProdInspMixingTempPopup.request();
								retrieveCarProdInspMixingTemp.request();
								
							}
						}
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
				  service  	: 'car.prodInspEd'
				, method   	: 'deleteCarInspBcTempInfo'
				, carPlant  : $('#js-car-header-car-plant').val()
				, procId   	: $('#js-car-bc-temp-visco-reg-popup-procid-combo').val()
				, tankNo   	: $('#js-car-bc-temp-visco-reg-popup-tankno-combo').val()
				, inspDate 	: $('#js-car-bc-temp-visco-reg-popup-date').val().replace(/-/gi, "")
				, workType	: "PC"
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	
	</script>
	<!-- 온도/점도 관리 팝업 [END] -->
	
	
	<!-- Mixing Tank 정보 관리 팝업 [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-bc-mixing-tank-reg-popup" class="wp-pop-layer wp-pop-w700 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="Mixing Tank 정보 관리"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-bc-mixing-tank-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
	    	</div>
	        <div class="wp-pop-conts">
		<!-- scroll Area -->
		<div class="wp-pop-cont-scrollable">
	            <!--content //-->
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="일반정보"/></h2>
			<!-- 기본 정보 -->
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:20%">
						<col style="width:30%">
						<col style="width:20%">
						<col style="width:30%">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="공정"/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select id="js-car-bc-mixing-tank-reg-popup-procid-combo" disabled="disabled">
									</select>
								</div>
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="Tank No."/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select id="js-car-bc-mixing-tank-reg-popup-tankno-combo" disabled="disabled">
									</select>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
	
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="Mixing Tank 정보"/></h2>
			<!-- 기본 정보 -->
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:20%">
						<col style="width:30%">
						<col style="width:20%">
						<col style="width:30%">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="제품명"/></th>
							<td><input type="text" id="js-car-bc-mixing-tank-reg-popup-productnm" name="js-car-bc-mixing-tank-reg-popup-productnm" title="내용입력"></td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="압력(공급)"/></th>
							<td><input type="text" id="js-car-bc-mixing-tank-reg-popup-supplypressure" data-type="number" name="js-car-bc-mixing-tank-reg-popup-input-data" title="내용입력"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="펌프타입"/></th>
							<td><input type="text" id="js-car-bc-mixing-tank-reg-popup-pumptype" name="js-car-bc-mixing-tank-reg-popup-pumptype" title="내용입력"></td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="압력(이송)"/></th>
							<td><input type="text" id="js-car-bc-mixing-tank-reg-popup-movepressure" data-type="number" name="js-car-bc-mixing-tank-reg-popup-input-data" title="내용입력"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="PCS 방식"/></th>
							<td><input type="text" id="js-car-bc-mixing-tank-reg-popup-pcsmethod" name="js-car-bc-mixing-tank-reg-popup-pcsmethod" title="내용입력"></td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="압력(리턴)"/></th>
							<td><input type="text" id="js-car-bc-mixing-tank-reg-popup-returnpressure" data-type="number" name="js-car-bc-mixing-tank-reg-popup-input-data" title="내용입력"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="필터교환주기"/></th>
							<td><input type="text" id="js-car-bc-mixing-tank-reg-popup-filterchangecycle" name="js-car-bc-mixing-tank-reg-popup-filterchangecycle" title="내용입력"></td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="필터 사이즈(공급)"/></th>
							<td><input type="text" id="js-car-bc-mixing-tank-reg-popup-supplyfiltersize" title="내용입력"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="희석제명"/></th>
							<td><input type="text" id="js-car-bc-mixing-tank-reg-popup-thinnernm" name="js-car-bc-mixing-tank-reg-popup-input-data-thinnernm" title="내용입력"></td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="필터 사이즈(이송)"/></th>
							<td><input type="text" id="js-car-bc-mixing-tank-reg-popup-movefiltersize" title="내용입력"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="희석제 량(ℓ)"/></th>
							<td><input type="text" id="js-car-bc-mixing-tank-reg-popup-thinnervqty" data-type="number" name="js-car-bc-mixing-tank-reg-popup-input-data" title="내용입력"></td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="첨가제"/></th>
							<td><input type="text" id="js-car-bc-mixing-tank-reg-popup-additive" title="내용입력"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="기타"/></h2>
			<!-- 기본 정보 -->
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:20%">
						<col style="width:80%">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="비고"/></th>
							<td><input type="text" id="js-car-bc-mixing-tank-reg-popup-remark" name="js-car-bc-mixing-tank-reg-popup-input-data-remark" title="내용입력"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- // scroll Area -->
			</div>
			<div class="wp-btn-area">
				<button type="button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18" id="js-car-bc-mixing-tank-reg-popup-save-button"><spring:message code="TODO.KEY" text="저장"/></button>
			</div>
	        </div>
	    </div>
	</div>
	
	<script type="text/javascript">
	
	//------------------------------------------------
	// 초기화
	//------------------------------------------------
	var initCarBcMixingTankRegPopup = function(param) {
		
		$("[name=js-car-bc-mixing-tank-reg-popup-input-data]").val("");
		
		//초기화			
		$('#js-car-bc-mixing-tank-reg-popup-productnm').val('');
		$('#js-car-bc-mixing-tank-reg-popup-supplypressure').val('');
		$('#js-car-bc-mixing-tank-reg-popup-pumptype').val('');
		$('#js-car-bc-mixing-tank-reg-popup-movepressure').val('');
		$('#js-car-bc-mixing-tank-reg-popup-pcsmethod').val('');
		$('#js-car-bc-mixing-tank-reg-popup-returnpressure').val('');
		$('#js-car-bc-mixing-tank-reg-popup-filterchangecycle').val('');
		$('#js-car-bc-mixing-tank-reg-popup-supplyfiltersize').val('');
		$('#js-car-bc-mixing-tank-reg-popup-thinnernm').val('');
		$('#js-car-bc-mixing-tank-reg-popup-movefiltersize').val('');
		$('#js-car-bc-mixing-tank-reg-popup-thinnervqty').val('');
		$('#js-car-bc-mixing-tank-reg-popup-additive').val('');
		$('#js-car-bc-mixing-tank-reg-popup-remark').val('');
		
		//onlyInteger($('[name=js-car-bc-mixing-tank-reg-popup-input-data][data-type=number]'));
		
		// 마이너스 없는 양수(실수). 소수점1째자리만 입력 가능
		onlyDecimal($('input[name=js-car-bc-mixing-tank-reg-popup-input-data]'), 10, 1);
		
		// 공정 콤보 조회
		retrieveCarProcIdNew.carBcMixingTankRegPopup.request();
		
		// Tank No.
		retrieveCarTankNo.carBcMixingTankRegPopup.request();
		
		if(param != undefined){
			$("#js-car-bc-mixing-tank-reg-popup-procid-combo").val(param.procId);
			$("#js-car-bc-mixing-tank-reg-popup-tankno-combo").val(param.tankNo);
		}
		
		var seqProdInspBcTank = param.seqProdInspBcTank;
		
		// Mixing Tank 정보 조회
		if(seqProdInspBcTank != undefined)
			retrieveCarProdInspMixingTankList.carBcMixingTankRegPopup.request();
		
		// 저장 버튼 클릭
		$("#js-car-bc-mixing-tank-reg-popup-save-button").off().on('click', function(){
			
			// Validation Check
			if(!validationCheckCarBcMixingTankRegPopup()){
				return;
			}
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						// Mixing Tank 정보 저장
						saveCarProdInspMixingTankPopup.request(seqProdInspBcTank);
					}
				}
			});
		});
		
	};

	//-------------------------------------------------
	// 저장 전 Validation Check
	//-------------------------------------------------
	var validationCheckCarBcMixingTankRegPopup = function(){
		var carPlant             = $('#js-car-header-car-plant').val();
		var procId               = $('#js-car-bc-mixing-tank-reg-popup-procid-combo').val();
		var tankNo               = $('#js-car-bc-mixing-tank-reg-popup-tankno-combo').val();
		
		// 필수값 입력 여부 체크
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
			return false;
		}
		if(app.utils.isEmpty(procId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공정코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		if(app.utils.isEmpty(tankNo)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="Tank No.가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		
		return true;
	};
	
	//-------------------------------------------------
	// Mixing Tank 정보 저장
	//-------------------------------------------------
	var saveCarProdInspMixingTankPopup = {
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
						, callback          : {
							confirm: function() {
							}
						}
					});
					// Mixing Tank 정보 조회
					retrieveCarProdInspMixingTankList.carBcMixingTankRegPopup.request();
					retrieveCarProdInspMixingTankList.request();
					
					$("#js-car-bc-mixing-tank-reg-popup-close-button").click();
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
		request: function(seqProdInspBcTank) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			
			var seq = seqProdInspBcTank == "" ? 0 : seqProdInspBcTank;
			
			var params = {
				  service              : 'car.prodInspEd'
				, method               : 'saveCarProdInspMixingTankPopup'
				, carPlant             : $('#js-car-header-car-plant').val()
				, procId               : $('#js-car-bc-mixing-tank-reg-popup-procid-combo').val()
				, tankNo               : $('#js-car-bc-mixing-tank-reg-popup-tankno-combo').val()
				, productNm            : $("#js-car-bc-mixing-tank-reg-popup-productnm").val()
				, supplyPressure       : $("#js-car-bc-mixing-tank-reg-popup-supplypressure").val()
				, pumpType             : $("#js-car-bc-mixing-tank-reg-popup-pumptype").val()
				, movePressure         : $("#js-car-bc-mixing-tank-reg-popup-movepressure").val()
				, pcsMethod            : $("#js-car-bc-mixing-tank-reg-popup-pcsmethod").val()
				, returnPressure       : $("#js-car-bc-mixing-tank-reg-popup-returnpressure").val()
				, filterChangeCycle    : $("#js-car-bc-mixing-tank-reg-popup-filterchangecycle").val()
				, supplyFilterSize     : $("#js-car-bc-mixing-tank-reg-popup-supplyfiltersize").val()
				, thinnerNm            : $("#js-car-bc-mixing-tank-reg-popup-thinnernm").val()
				, moveFilterSize       : $("#js-car-bc-mixing-tank-reg-popup-movefiltersize").val()
				, thinnerVqty          : $("#js-car-bc-mixing-tank-reg-popup-thinnervqty").val()
				, additive             : $("#js-car-bc-mixing-tank-reg-popup-additive").val()
				, remark               : $("#js-car-bc-mixing-tank-reg-popup-remark").val()
				, seqProdInspBcTank    : seq
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	</script>
	<!-- Mixing Tank 정보 관리 팝업 [END] -->
	
	<!-- Tank 사용 이력 등록 팝업 [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-bc-tank-hist-reg-popup" class="wp-pop-layer wp-pop-w700 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="Tank 사용 이력 등록"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-bc-tank-hist-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
	    	</div>
	        <div class="wp-pop-conts">
		<!-- scroll Area -->
		<div class="wp-pop-cont-scrollable">
	            <!--content //-->
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="일반정보"/></h2>
			<!-- 기본 정보 -->
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:20%">
						<col style="width:30%">
						<col style="width:20%">
						<col style="width:30%">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="공정"/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-bc-tank-hist-reg-popup-procid-combo" disabled="disabled">
									</select>
								</div>
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="Tank No."/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-bc-tank-hist-reg-popup-tankno-combo" disabled="disabled">
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="일자"/></th>
							<td colspan="3" class="wp-al wp-vm"><input type="text"id="js-car-bc-tank-hist-reg-popup-date" class="wp-inp-datepicker maxdate wp-wd160" placeholder="날짜입력" readonly="readonly"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="사용이력 정보"/></h2>
			<!-- 기본 정보 -->
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:20%">
						<col style="width:30%">
						<col style="width:20%">
						<col style="width:30%">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="비고"/></th>
							<td colspan="3"><input type="text" id="js-car-bc-tank-hist-reg-popup-remark" name="js-car-bc-tank-hist-reg-popup-input-data" title="내용입력" class="wp-wd100p"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="내용"/></th>
							<td colspan="3"><input type="text" id="js-car-bc-tank-hist-reg-popup-desc" name="js-car-bc-tank-hist-reg-popup-input-data" title="내용입력" class="wp-wd100p"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- // scroll Area -->
			</div>
			<div class="wp-btn-area">
				<input type="hidden" id="js-car-bc-tank-hist-reg-popup-seq" name="js-car-bc-tank-hist-reg-popup-input-data" >
				<button type="button" id="js-car-bc-tank-hist-reg-popup-save-button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="저장"/></button>
			</div>
	        </div>
	    </div>
	</div>
	
	<script type="text/javascript">
	//------------------------------------------------
	// 초기화
	//------------------------------------------------
	var initCarBcTankHistRegPopup = function(param) {
		
		$("[name=js-car-bc-tank-hist-reg-popup-input-data]").val("");
		
		// 일자
		var date = app.utils.formatDate(new Date(), "YYYYMMDD");
		$("#js-car-bc-tank-hist-reg-popup-date").val(date).mask('9999-99-99');
		
		// 공정 콤보 조회
		retrieveCarProcIdNew.carBcTankHistRegPopup.request();
		
		// Tank No.
		retrieveCarTankNo.carBcTankHistRegPopup.request();
		
		if(param != undefined){
			$("#js-car-bc-tank-hist-reg-popup-procid-combo").val(param.procId);
			$("#js-car-bc-tank-hist-reg-popup-tankno-combo").val(param.tankNo);
			if(param.histDate != undefined){
				$("#js-car-bc-tank-hist-reg-popup-date").val(param.histDate).mask('9999-99-99');
			}
		}
		
		// Tank 사용이력 조회
		//retrieveCarProdInspMixingHistPopup.request();
		
		// 일자 change 이벤트
		//$("#js-car-bc-tank-hist-reg-popup-date").off().on('change', function(){
			// Tank 사용이력 조회
		//	retrieveCarProdInspMixingHistPopup.request();
		//});
		
		// 저장 버튼 클릭
		$("#js-car-bc-tank-hist-reg-popup-save-button").off().on('click', function(){
			
			// Validation Check
			if(!validationCheckCarBcTankHistRegPopup()){
				return;
			}
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						// Tank 사용 이력 저장
						$("#js-car-bc-tank-hist-reg-popup-close-button").click();
						saveCarProdInspMixingHistPopupReg.request();
					}
				}
			});
		});
		
	};

	//-------------------------------------------------
	// 저장 전 Validation Check
	//-------------------------------------------------
	var validationCheckCarBcTankHistRegPopup = function(){
		var carPlant             = $('#js-car-header-car-plant').val();
		var procId               = $('#js-car-bc-tank-hist-reg-popup-procid-combo').val();
		var tankNo               = $('#js-car-bc-tank-hist-reg-popup-tankno-combo').val();
		var histDate             = $('#js-car-bc-tank-hist-reg-popup-date').val().replace(/-/gi, "");
		
		// 필수값 입력 여부 체크
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
			return false;
		}
		if(app.utils.isEmpty(procId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공정코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		if(app.utils.isEmpty(tankNo)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="Tank No.가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		if(app.utils.isEmpty(histDate)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="일자가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		return true;
	};
	
	//-------------------------------------------------
	// Tank 사용 이력 저장
	//-------------------------------------------------
	var saveCarProdInspMixingHistPopupReg = {
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
						, callback          : {
							confirm: function() {
							}
						}
					});
					// Tank 사용이력 조회
					retrieveCarProdInspMixingHistPopup.request();
					retrieveCarProdInspMixingHistList.request();
					
					
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
				  service              : 'car.prodInspEd'
				, method               : 'saveCarProdInspMixingHistPopup'
				, carPlant             : $('#js-car-header-car-plant').val()
				, procId               : $('#js-car-bc-tank-hist-reg-popup-procid-combo').val()
				, tankNo               : $('#js-car-bc-tank-hist-reg-popup-tankno-combo').val()
				, histDate             : $("#js-car-bc-tank-hist-reg-popup-date").val().replace(/-/gi, "")
				, seqCarProdInspBcHist : $("#js-car-bc-tank-hist-reg-popup-seq").val()
				, histDescription      : $("#js-car-bc-tank-hist-reg-popup-desc").val()
				, histReason           : $("#js-car-bc-tank-hist-reg-popup-remark").val()
			};
			console.log(params);
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	//-------------------------------------------------
	// Tank 사용이력 조회
	//-------------------------------------------------
	var retrieveCarProdInspMixingHistPopup = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					$("[name=js-car-bc-tank-hist-reg-popup-input-data]").val("");
					
					if(response.rs.length > 0){
						$("#js-car-bc-tank-hist-reg-popup-remark").val(response.rs[0].histReason);
						$("#js-car-bc-tank-hist-reg-popup-desc").val(response.rs[0].histDescription);
						$("#js-car-bc-tank-hist-reg-popup-seq").val(response.rs[0].seqCarProdInspBcHist);
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
			var params = {
				  service              : 'car.prodInspEd'
				, method               : 'retrieveCarProdInspMixingHistPopup'
				, carPlant             : $('#js-car-header-car-plant').val()
				, procId               : $('#js-car-bc-tank-hist-reg-popup-procid-combo').val()
				, tankNo               : $('#js-car-bc-tank-hist-reg-popup-tankno-combo').val()
				, histDate             : $("#js-car-bc-tank-hist-reg-popup-date").val().replace(/-/gi, "")
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	</script>
	<!-- Tank 사용 이력 등록 팝업 [END] -->

	<!-- Tank 사용 이력 수정 팝업 [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-bc-tank-hist-mod-popup" class="wp-pop-layer wp-pop-w700 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="Tank 사용 이력 수정"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-bc-tank-hist-mod-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
	    	</div>
	        <div class="wp-pop-conts">
		<!-- scroll Area -->
		<div class="wp-pop-cont-scrollable">
	            <!--content //-->
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="일반정보"/></h2>
			<!-- 기본 정보 -->
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:20%">
						<col style="width:30%">
						<col style="width:20%">
						<col style="width:30%">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="공정"/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-bc-tank-hist-mod-popup-procid-combo" disabled="disabled">
									</select>
								</div>
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="Tank No."/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-bc-tank-hist-mod-popup-tankno-combo" disabled="disabled">
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="일자"/></th>
							<td colspan="3" class="wp-al wp-vm"><input type="text"id="js-car-bc-tank-hist-mod-popup-date" class="wp-inp-datepicker maxdate wp-wd160" placeholder="날짜입력" readonly="readonly"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="사용이력 정보"/></h2>
			<!-- 기본 정보 -->
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:20%">
						<col style="width:30%">
						<col style="width:20%">
						<col style="width:30%">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="비고"/></th>
							<td colspan="3"><input type="text" id="js-car-bc-tank-hist-mod-popup-remark" name="js-car-bc-tank-hist-mod-popup-input-data" title="내용입력" class="wp-wd100p"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="내용"/></th>
							<td colspan="3"><input type="text" id="js-car-bc-tank-hist-mod-popup-desc" name="js-car-bc-tank-hist-mod-popup-input-data" title="내용입력" class="wp-wd100p"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- // scroll Area -->
			</div>
			<div class="wp-btn-area">
				<input type="hidden" id="js-car-bc-tank-hist-mod-popup-seq" name="js-car-bc-tank-hist-mod-popup-input-data" >
				<button type="button" id="js-car-bc-tank-hist-mod-popup-save-button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="저장"/></button>
			</div>
	        </div>
	    </div>
	</div>
	
	<script type="text/javascript">
	//------------------------------------------------
	// 초기화
	//------------------------------------------------
	var initCarBcTankHistModPopup = function(param) {
		
		$("[name=js-car-bc-tank-hist-mod-popup-input-data]").val("");
		
		// 일자
		var date = app.utils.formatDate(new Date(), "YYYYMMDD");
		$("#js-car-bc-tank-hist-mod-popup-date").val(date).mask('9999-99-99');
		
		// 공정 콤보 조회
		retrieveCarProcIdNew.carBcTankHistModPopup.request();
		
		// Tank No.
		retrieveCarTankNo.carBcTankHistModPopup.request();
		
		if(param != undefined){
			$("#js-car-bc-tank-hist-mod-popup-procid-combo").val(param.procId);
			$("#js-car-bc-tank-hist-mod-popup-tankno-combo").val(param.tankNo);
			if(param.histDate != undefined){
				$("#js-car-bc-tank-hist-mod-popup-date").val(param.histDate).mask('9999-99-99');
			}
		}
		
		// Tank 사용이력 조회
		retrieveCarProdInspMixingHistPopup.request();
		
		// 일자 change 이벤트
		/*$("#js-car-bc-tank-hist-mod-popup-date").off().on('change', function(){
			// Tank 사용이력 조회
			retrieveCarProdInspMixingHistPopup.request();
		});*/
		
		// 저장 버튼 클릭
		$("#js-car-bc-tank-hist-mod-popup-save-button").off().on('click', function(){
			
			// Validation Check
			if(!validationCheckCarBcTankHistModPopup()){
				return;
			}
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						// Tank 사용 이력 저장
						$("#js-car-bc-tank-hist-mod-popup-close-button").click();
						saveCarProdInspMixingHistPopup.request();
					}
				}
			});
		});
		
	};

	//-------------------------------------------------
	// 저장 전 Validation Check
	//-------------------------------------------------
	var validationCheckCarBcTankHistModPopup = function(){
		var carPlant             = $('#js-car-header-car-plant').val();
		var procId               = $('#js-car-bc-tank-hist-mod-popup-procid-combo').val();
		var tankNo               = $('#js-car-bc-tank-hist-mod-popup-tankno-combo').val();
		var histDate             = $('#js-car-bc-tank-hist-mod-popup-date').val().replace(/-/gi, "");
		
		// 필수값 입력 여부 체크
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
			return false;
		}
		if(app.utils.isEmpty(procId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공정코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		if(app.utils.isEmpty(tankNo)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="Tank No.가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		if(app.utils.isEmpty(histDate)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="일자가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		return true;
	};
	
	//-------------------------------------------------
	// Tank 사용 이력 저장
	//-------------------------------------------------
	var saveCarProdInspMixingHistPopup = {
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
						, callback          : {
							confirm: function() {
							}
						}
					});
					// Tank 사용이력 조회
					retrieveCarProdInspMixingHistPopup.request();
					retrieveCarProdInspMixingHistList.request();
					
					
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
				  service              : 'car.prodInspEd'
				, method               : 'saveCarProdInspMixingHistPopup'
				, carPlant             : $('#js-car-header-car-plant').val()
				, procId               : $('#js-car-bc-tank-hist-mod-popup-procid-combo').val()
				, tankNo               : $('#js-car-bc-tank-hist-mod-popup-tankno-combo').val()
				, histDate             : $("#js-car-bc-tank-hist-mod-popup-date").val().replace(/-/gi, "")
				, seqCarProdInspBcHist : $("#js-car-bc-tank-hist-mod-popup-seq").val()
				, histDescription      : $("#js-car-bc-tank-hist-mod-popup-desc").val()
				, histReason           : $("#js-car-bc-tank-hist-mod-popup-remark").val()
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	//-------------------------------------------------
	// Tank 사용이력 조회
	//-------------------------------------------------
	var retrieveCarProdInspMixingHistPopup = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					$("[name=js-car-bc-tank-hist-mod-popup-input-data]").val("");
					
					if(response.rs.length > 0){
						$("#js-car-bc-tank-hist-mod-popup-remark").val(response.rs[0].histReason);
						$("#js-car-bc-tank-hist-mod-popup-desc").val(response.rs[0].histDescription);
						$("#js-car-bc-tank-hist-mod-popup-seq").val(response.rs[0].seqCarProdInspBcHist);
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
			var params = {
				  service              : 'car.prodInspEd'
				, method               : 'retrieveCarProdInspMixingHistPopup'
				, carPlant             : $('#js-car-header-car-plant').val()
				, procId               : $('#js-car-bc-tank-hist-mod-popup-procid-combo').val()
				, tankNo               : $('#js-car-bc-tank-hist-mod-popup-tankno-combo').val()
				, histDate             : $("#js-car-bc-tank-hist-mod-popup-date").val().replace(/-/gi, "")
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	</script>
	<!-- Tank 사용 이력 수정 팝업 [END] -->
	
	<!-- 첨가제/희석제 투입 정보 등록 팝업 [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-bc-inj-hist-reg-popup" class="wp-pop-layer wp-pop-w800 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="첨가제/희석제 투입 정보 등록"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-bc-inj-hist-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
	    	</div>
	        <div class="wp-pop-conts">
		<!-- scroll Area -->
		<div class="wp-pop-cont-scrollable">
	            <!--content //-->
			<!-- 기본 정보 -->
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="일반정보"/></h2>
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:20%">
						<col style="width:30%">
						<col style="width:20%">
						<col style="width:30%">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="공정"/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-bc-inj-hist-reg-popup-procid-combo" disabled="disabled">
									</select>
								</div>
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="Tank No."/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-bc-inj-hist-reg-popup-tankno-combo" disabled="disabled">
									</select>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="wp-clearfix">
				<h2 class="wp-cont-title wp-fl"><spring:message code="TODO.KEY" text="첨가제/희석제 투입 정보"/></h2>
				<button type="button" id="js-car-bc-inj-hist-reg-popup-add-button" class="wp-btn small white bgray plus wp-mb5 wp-fr"><spring:message code="TODO.KEY" text="추가"/></button>
			</div>
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption><spring:message code="TODO.KEY" text="기본 정보등록"/></caption>
					<colgroup>
						<col style="width:16%">
						<col style="width:15%">
						<col style="width:10%">
						<col style="width:20%">
						<col style="width:auto">
						<col style="width:6%">
					</colgroup>
					<thead>
						<tr>
							<th><spring:message code="TODO.KEY" text="일자"/></th>
							<th><spring:message code="TODO.KEY" text="첨가제"/></th>
							<th><spring:message code="TODO.KEY" text="투입량(ℓ)"/></th>
							<th><spring:message code="TODO.KEY" text="내용"/></th>
							<th><spring:message code="TODO.KEY" text="비고"/></th>
							<th><spring:message code="TODO.KEY" text="상태"/></th>
						</tr>
					</thead>
					<tbody id="js-car-bc-inj-hist-reg-popup-list">
					</tbody>
				</table>
	            </div>
			<!-- // scroll Area -->
			</div>
			<div class="wp-btn-area">
				<button type="button" id="js-car-bc-inj-hist-reg-popup-save-button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="저장"/></button>
			</div>
	        </div>
	    </div>
	</div>	

	<!-- 첨가제/희석제 투입정보 -->
	<script id="js-template-car-bc-inj-hist-reg-popup-list" type="text/x-handlebars-template">		
		{{#rows}}
			<tr class="wp-td-padding0" id="js-car-bc-inj-hist-reg-popup-tr-{{itemIndex}}"     data-index="{{itemIndex}}">
				<td><input type="text" id="js-car-bc-inj-hist-reg-popup-date-{{itemIndex}}"   data-index="{{itemIndex}}" value="{{injDate}}"    title="내용입력" class="wp-inp-datepicker maxdate" placeholder="날짜입력"></td>
				<td><input type="text" id="js-car-bc-inj-hist-reg-popup-item-{{itemIndex}}"   data-index="{{itemIndex}}" value="{{injItemsNm}}" title="내용입력" class="wp-wd100p" placeholder="입력"></td>
				<td><input type="text" id="js-car-bc-inj-hist-reg-popup-vqty-{{itemIndex}}"   data-index="{{itemIndex}}" value="{{injVqty}}"    title="내용입력" class="wp-wd100p" placeholder="입력" name="js-car-bc-inj-hist-reg-popup-vqty-name"></td>
				<td><input type="text" id="js-car-bc-inj-hist-reg-popup-desc-{{itemIndex}}"   data-index="{{itemIndex}}" value="{{injDescription}}" title="내용입력" class="wp-wd100p" placeholder="입력"></td>
				<td><input type="text" id="js-car-bc-inj-hist-reg-popup-remark-{{itemIndex}}" data-index="{{itemIndex}}" value="{{injReason}}"   title="내용입력" class="wp-wd100p" placeholder="입력"></td>
				<td>
					<button type="button" name="js-car-bc-inj-hist-reg-popup-delete-button" data-index="{{itemIndex}}" class="wp-btn small white bgray trash"><span>삭제</span></button>
					<input type="hidden"  id="js-car-bc-inj-hist-reg-popup-seq-{{itemIndex}}" value="{{seqCarProdInspBcInj}}" >
				</td>
			</tr>
		{{/rows}}
	</script>	
	
	<script type="text/javascript">
	
	var carBcInjHistRegPopupListTemplate;
	var carBcInjHistRegPopupToday;
	
	//------------------------------------------------
	// 초기화
	//------------------------------------------------
	var initCarBcInjHistRegPopup = function(param) {
		
		// Handlebar 초기화
		initCarBcInjHistRegPopupHandlebarsTemplate();
		
		carBcInjHistRegPopupToday = app.utils.formatDate(new Date(), "YYYYMMDD");
		
		$("#js-car-bc-inj-hist-reg-popup-list").empty();
		
		// 공정 콤보 조회
		retrieveCarProcIdNew.carBcInjHistRegPopup.request();
		
		// Tank No.
		retrieveCarTankNo.carBcInjHistRegPopup.request();
		
		if(param != undefined){
			$("#js-car-bc-inj-hist-reg-popup-procid-combo").val(param.procId);
			$("#js-car-bc-inj-hist-reg-popup-tankno-combo").val(param.tankNo);
		}
		
		// 첨가제/희석제 투입 이력 조회
		//retrieveCarProdInspMixingInjList.carBcInjHistRegPopup.request();
		
		// 추가 버튼 클릭 Event 
		$('#js-car-bc-inj-hist-reg-popup-add-button').off().on('click', function(){
			
			// row 추가
			addRowCarBcInjHistRegPopupInfo();
		});
		
		// 저장 버튼 클릭
		$("#js-car-bc-inj-hist-reg-popup-save-button").off().on('click', function(){
			
			// Validation Check
			if(!validationCheckCarBcInjHistRegPopup()){
				return;
			}
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-bc-inj-hist-reg-popup-close-button").click();
						// 첨가제/희석제 투입 이력 저장
						saveCarProdInspMixingInjPopup.request();
					}
				}
			});
		});
		
	};
	
	//------------------------------------------------
	// Handlebar 초기화
	//------------------------------------------------
	var initCarBcInjHistRegPopupHandlebarsTemplate = function() {
		
		// 투입정보 리스트
		var source = $('#js-template-car-bc-inj-hist-reg-popup-list').html();
		carBcInjHistRegPopupListTemplate = Handlebars.compile(source);
	};

	//------------------------------------------------
	// 첨가제/희석제 투입정보 항목(row) 추가
	//------------------------------------------------
	var addRowCarBcInjHistRegPopupInfo = function(itemData) {

		var itemIndex = $("tr[id*=js-car-bc-inj-hist-reg-popup-tr]:last").attr("data-index");
		if(itemIndex == undefined){
			itemIndex = 0;
		} else {
			itemIndex++;
		}
		
		var data = null;
		if(itemData != undefined){
			data = {
					itemIndex            : itemIndex
				  , injDate              : itemData.injDate
				  , injItemsNm           : itemData.injItemsNm
				  , injVqty              : itemData.injVqty
				  , injDescription       : itemData.injDescription
				  , injReason            : itemData.injReason
				  , seqCarProdInspBcInj  : itemData.seqCarProdInspBcInj
			};
		} else {
			data = {
					itemIndex : itemIndex
				  , injDate   : carBcInjHistRegPopupToday
			};
		}
		
		var result = carBcInjHistRegPopupListTemplate({rows : data});
		$("#js-car-bc-inj-hist-reg-popup-list").append(result);
		
		$("[id*=js-car-bc-inj-hist-reg-popup-date]").mask("9999-99-99");
		
		onlyDecimal($("[id*=js-car-bc-inj-hist-reg-popup-vqty]"), 10, 1);
		
		// 이벤트 바인딩
		setEventBindingCarBcInjHistRegPopup();
	};
	
	//------------------------------------------------
	// 이벤트 바인딩
	//------------------------------------------------
	var setEventBindingCarBcInjHistRegPopup = function(){
		
		// 삭제 버튼 클릭
		$("[name=js-car-bc-inj-hist-reg-popup-delete-button]").off().on('click', function(){
			var itemIndex = $(this).attr("data-index");
			$("#js-car-bc-inj-hist-reg-popup-tr-" + itemIndex).remove();
		});
		
	};
	
	//-------------------------------------------------
	// 저장 전 Validation Check
	//-------------------------------------------------
	var validationCheckCarBcInjHistRegPopup = function(){
		var carPlant             = $('#js-car-header-car-plant').val();
		var procId               = $('#js-car-bc-inj-hist-reg-popup-procid-combo').val();
		var tankNo               = $('#js-car-bc-inj-hist-reg-popup-tankno-combo').val();
		
		// 필수값 입력 여부 체크
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
			return false;
		}
		if(app.utils.isEmpty(procId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공정코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		if(app.utils.isEmpty(tankNo)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="Tank No.가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		return true;
	};
	
	//-------------------------------------------------
	// 첨가제/희석제 투입 이력 저장
	//-------------------------------------------------
	var saveCarProdInspMixingInjPopup = {
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
						, callback          : {
							confirm: function() {
							}
						}
					});
					// 재조회
					retrieveCarProdInspMixingInjList.carBcInjHistRegPopup.request();
					retrieveCarProdInspMixingInjList.request();
					
					
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
			
			var bcInj = [];
			$("tr[id*=js-car-bc-inj-hist-reg-popup-tr-]").each(function(){
				var itemIndex      = $(this).attr("data-index");
				var injDate        = $("#js-car-bc-inj-hist-reg-popup-date-" + itemIndex).val().replace(/-/gi, "");
				var injItemsNm     = $("#js-car-bc-inj-hist-reg-popup-item-" + itemIndex).val();
				var injVqty        = $("#js-car-bc-inj-hist-reg-popup-vqty-" + itemIndex).val();
				var injDescription = $("#js-car-bc-inj-hist-reg-popup-desc-" + itemIndex).val();
				var injReason      = $("#js-car-bc-inj-hist-reg-popup-remark-" + itemIndex).val();
				var seq            = $("#js-car-bc-inj-hist-reg-popup-seq-" + itemIndex).val();
				bcInj.push({
					  injDate             	: injDate       
					, injItemsNm          	: injItemsNm    
					, injVqty             	: injVqty       
					, injDescription      	: injDescription
					, injReason           	: injReason     
					, seqCarProdInspBcInj 	: seq || 0
					, workType 				: 'PC'
				});
			});
			
			var params = {
				  service   : 'car.prodInspEd'
				, method    : 'saveCarProdInspMixingInjPopup'
				, carPlant  : $('#js-car-header-car-plant').val()
				, procId    : $('#js-car-bc-inj-hist-reg-popup-procid-combo').val()
				, tankNo    : $('#js-car-bc-inj-hist-reg-popup-tankno-combo').val()
				, bcInj     : bcInj.length == 0 ? "" : JSON.stringify(bcInj)
			};
			console.log(params);
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	</script>
	<!-- 첨가제/희석제 투입 정보 등록 팝업 [END] -->
	
	
	<!-- 첨가제/희석제 투입 정보 수정 팝업 [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-bc-inj-hist-mod-popup" class="wp-pop-layer wp-pop-w350 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="첨가제/희석제 투입 정보 수정"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-bc-inj-hist-mod-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
	    	</div>
	        <div class="wp-pop-conts">
		<!-- scroll Area -->
		<div class="wp-pop-cont-scrollable">
	            <!--content //-->
			<!-- 기본 정보 -->
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="일반정보"/></h2>
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:30%">
						<col style="width:auto">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="공정"/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-bc-inj-hist-mod-popup-procid-combo" disabled="disabled">
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="Tank No."/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-bc-inj-hist-mod-popup-tankno-combo" disabled="disabled">
									</select>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="첨가제/희석제 투입 정보"/></h2>
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption><spring:message code="TODO.KEY" text="일반정보"/></caption>
					<colgroup>
						<col style="width:30%">
						<col style="width:auto">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="일자"/></th>
							<td><input type="text" id="js-car-bc-inj-hist-mod-popup-date" title="내용입력" class="wp-inp-datepicker maxdate wp-wd100p" placeholder="날짜입력"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="첨가제"/></th>
							<td><input type="text" id="js-car-bc-inj-hist-mod-popup-item" name="js-car-bc-inj-hist-mod-popup-input-data" title="내용입력" class="wp-wd100p" placeholder="입력"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="투입량"/>(ℓ)</th>
							<td><input type="text" id="js-car-bc-inj-hist-mod-popup-vqty" name="js-car-bc-inj-hist-mod-popup-input-data" title="내용입력" class="wp-wd100p" placeholder="입력"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="내용"/></th>
							<td><input type="text" id="js-car-bc-inj-hist-mod-popup-desc" name="js-car-bc-inj-hist-mod-popup-input-data" title="내용입력" class="wp-wd100p" placeholder="입력"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="비고"/></th>
							<td><input type="text" id="js-car-bc-inj-hist-mod-popup-remark" name="js-car-bc-inj-hist-mod-popup-input-data" title="내용입력" class="wp-wd100p" placeholder="입력"></td>
						</tr>
					</tbody>
				</table>
	            </div>
			<!-- // scroll Area -->
			</div>
			<div class="wp-btn-area">
				<input type="hidden" id="js-car-bc-inj-hist-mod-popup-seq" name="js-car-bc-inj-hist-mod-popup-input-data">
				<button type="button" id="js-car-bc-inj-hist-mod-popup-save-button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="저장"/></button>
				<!-- <button type="button" id="js-car-bc-inj-hist-mod-popup-delete-button" class="wp-btn big gray cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="삭제"/></button> -->
			</div>
	        </div>
	    </div>
	</div>	
	
	<script type="text/javascript">
	
	//------------------------------------------------
	// 초기화
	//------------------------------------------------
	var initCarBcInjHistModPopup = function(seq) {
		$("[name=js-car-bc-inj-hist-mod-popup-input-data").val("");
		
		// 공정 콤보 조회
		retrieveCarProcIdNew.carBcInjHistModPopup.request();
		
		// Tank No.
		retrieveCarTankNo.carBcInjHistModPopup.request();
		
		if(app.utils.isEmpty(seq)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="시퀀스 정보가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			$("#js-car-bc-inj-hist-mod-popup-close-button").click();
		}
		
		$("#js-car-bc-inj-hist-mod-popup-seq").val(seq);
		
		// 첨가제/희석제 투입 이력 조회
		retrieveCarProdInspMixingInj.request();
		
		onlyInteger($("#js-car-bc-inj-hist-mod-popup-vqty"));
				
		// 저장 버튼 클릭
		$("#js-car-bc-inj-hist-mod-popup-save-button").off().on('click', function(){
			
			// Validation Check
			if(!validationCheckCarBcInjHistModPopup()){
				return;
			}
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-bc-inj-hist-mod-popup-close-button").click();
						// 첨가제/희석제 투입 이력 저장
						saveCarProdInspMixingInjNew.request();
					}
				}
			});
		});
		
		// 삭제 버튼 클릭
		$("#js-car-bc-inj-hist-mod-popup-delete-button").off().on('click', function(){
			var seq = $("#js-car-bc-inj-hist-mod-popup-seq").val();
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						// 첨가제/희석제 투입 이력 삭제
						deleteCarProdInspMixingInjNew.request(seq);
					}
				}
			});
		});
	};
	
	//-------------------------------------------------
	// 저장 전 Validation Check
	//-------------------------------------------------
	var validationCheckCarBcInjHistModPopup = function(){
		var carPlant             = $('#js-car-header-car-plant').val();
		var procId               = $('#js-car-bc-inj-hist-mod-popup-procid-combo').val();
		var tankNo               = $('#js-car-bc-inj-hist-mod-popup-tankno-combo').val();
		var seq                  = $('#js-car-bc-inj-hist-mod-popup-seq').val();
		
		// 필수값 입력 여부 체크
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
			return false;
		}
		if(app.utils.isEmpty(procId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공정코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		if(app.utils.isEmpty(tankNo)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="Tank No.가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		if(app.utils.isEmpty(seq)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="시퀀스가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		return true;
	};

	//-------------------------------------------------
	// 첨가제/희석제 투입 이력 조회
	//-------------------------------------------------
	var retrieveCarProdInspMixingInj = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {							
					
					$("[name=js-car-bc-inj-hist-mod-popup-input-data").val("");
					
					if(response.rs.length > 0){
						var data = response.rs[0];
						$('#js-car-bc-inj-hist-mod-popup-procid-combo').val(data.procId);
						$('#js-car-bc-inj-hist-mod-popup-tankno-combo').val(data.tankNo);
						$("#js-car-bc-inj-hist-mod-popup-date").val(data.injDate);
						$("#js-car-bc-inj-hist-mod-popup-item").val(data.injItemsNm);  
						$("#js-car-bc-inj-hist-mod-popup-vqty").val(data.injVqty);  
						$("#js-car-bc-inj-hist-mod-popup-desc").val(data.injDescription);  
						$("#js-car-bc-inj-hist-mod-popup-remark").val(data.injReason);
						$("#js-car-bc-inj-hist-mod-popup-seq").val(data.seqCarProdInspBcInj);
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
			var params = {
				  service   : 'car.prodInspEd'
				, method    : 'retrieveCarProdInspMixingInj'
				, seqCarProdInspBcInj  : $("#js-car-bc-inj-hist-mod-popup-seq").val()
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	//-------------------------------------------------
	// 첨가제/희석제 투입 이력 저장
	//-------------------------------------------------
	var saveCarProdInspMixingInjNew = {
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
						, callback          : {
							confirm: function() {
							}
						}
					});
					// 재조회
					retrieveCarProdInspMixingInjList.request();
					retrieveCarProdInspMixingInj.request();
					
					
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
				  service             	: 'car.prodInspEd'
				, method              	: 'saveCarProdInspMixingInjNew'
				, carPlant            	: $('#js-car-header-car-plant').val()
				, procId              	: $('#js-car-bc-inj-hist-mod-popup-procid-combo').val()
				, tankNo              	: $('#js-car-bc-inj-hist-mod-popup-tankno-combo').val()
				, injDate             	: $("#js-car-bc-inj-hist-mod-popup-date").val().replace(/-/gi, "")
				, injItemsNm          	: $("#js-car-bc-inj-hist-mod-popup-item").val()
				, injVqty             	: $("#js-car-bc-inj-hist-mod-popup-vqty").val()
				, injDescription      	: $("#js-car-bc-inj-hist-mod-popup-desc").val()
				, injReason           	: $("#js-car-bc-inj-hist-mod-popup-remark").val()
				, seqCarProdInspBcInj 	: $("#js-car-bc-inj-hist-mod-popup-seq").val() || 0
				, workType 			  	: 'PC'
			};
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	
	//-------------------------------------------------
	// LOT 변경 정보 등록 - 구분 콤보 조회
	//-------------------------------------------------
	var retrieveLotPartType = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					gvCarBcMixingTankStatusInfoRegPopupLotTypeRs = response.rs;
					
					var data = response.rs;
					
					$('#js-car-bc-lot-hist-mod-popup-type').find('option').remove();
					
					for(var i=0; i < data.length; i++)
					{
						$('#js-car-bc-lot-hist-mod-popup-type').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
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
			var params = {
				  service  : 'car.common'
				, method   : 'retrievePartType'
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	
	</script>
	<!-- 첨가제/희석제 투입 정보 수정 팝업 [END] -->
		
	<!-- LOT 변경 정보 등록 팝업 [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-bc-lot-hist-reg-popup" class="wp-pop-layer wp-pop-w800 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="LOT 변경 정보 등록"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-bc-lot-hist-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
	    	</div>
	        <div class="wp-pop-conts">
		<!-- scroll Area -->
		<div class="wp-pop-cont-scrollable">
	            <!--content //-->
			<!-- 기본 정보 -->
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="일반정보"/></h2>
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:20%">
						<col style="width:30%">
						<col style="width:20%">
						<col style="width:30%">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="공정"/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-bc-lot-hist-reg-popup-procid-combo" disabled="disabled">
									</select>
								</div>
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="Tank No."/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-bc-lot-hist-reg-popup-tankno-combo" disabled="disabled">
									</select>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="wp-clearfix">
				<h2 class="wp-cont-title wp-fl"><spring:message code="TODO.KEY" text="LOT 변경 이력"/></h2>
				<button type="button" id="js-car-bc-lot-hist-reg-popup-add-button" class="wp-btn small white bgray plus wp-mb5 wp-fr"><spring:message code="TODO.KEY" text="추가"/></button>
			</div>
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption><spring:message code="TODO.KEY" text="기본 정보등록"/></caption>
					<colgroup>
						<col style="width:16%">
						<col style="width:10%">
						<col style="width:15%">
						<col style="width:20%">
						<col style="width:auto">
						<col style="width:6%">
					</colgroup>
					<thead>
						<tr>
							<th><spring:message code="TODO.KEY" text="변경일자" /></th>
							<th><spring:message code="TODO.KEY" text="구분" /></th>
							<th><spring:message code="TODO.KEY" text="LOT No." /></th>
							<th><spring:message code="TODO.KEY" text="내용" /></th>
							<th><spring:message code="TODO.KEY" text="비고" /></th>
							<th><spring:message code="TODO.KEY" text="삭제" /></th>
						</tr>
					</thead>
					<tbody id="js-car-bc-lot-hist-reg-popup-list">
					</tbody>
				</table>
	            </div>
			<!-- // scroll Area -->
			</div>
			<div class="wp-btn-area">
				<button type="button" id="js-car-bc-lot-hist-reg-popup-save-button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="저장"/></button>
			</div>
	        </div>
	    </div>
	</div>	

	<!-- LOT 변경 이력 -->
	<script id="js-template-car-bc-lot-hist-reg-popup-list" type="text/x-handlebars-template">		
		{{#rows}}
			<tr class="wp-td-padding0" id="js-car-bc-lot-hist-reg-popup-tr-{{itemIndex}}"     data-index="{{itemIndex}}">
				<td><input type="text" id="js-car-bc-lot-hist-reg-popup-date-{{itemIndex}}"   data-index="{{itemIndex}}" value="{{injDate}}"    title="내용입력" class="wp-inp-datepicker maxdate" placeholder="날짜입력"></td>
				<td><div class="wp-ui-select"><select name="js-car-bc-lot-hist-reg-popup-type" id="js-car-bc-lot-hist-reg-popup-type-{{itemIndex}}" data-index="{{itemIndex}}" value="{{injType}}" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p" placeholder="<spring:message code="TODO.KEY" text="입력" />"></div></td>
				<td><input type="text" id="js-car-bc-lot-hist-reg-popup-lotno-{{itemIndex}}"  data-index="{{itemIndex}}" value="{{lotNo}}" title="내용입력" class="wp-wd100p" placeholder="입력" maxLength="10"></td>
				<td><input type="text" id="js-car-bc-lot-hist-reg-popup-desc-{{itemIndex}}"   data-index="{{itemIndex}}" value="{{injDescription}}" title="내용입력" class="wp-wd100p" placeholder="입력"></td>
				<td><input type="text" id="js-car-bc-lot-hist-reg-popup-remark-{{itemIndex}}" data-index="{{itemIndex}}" value="{{injRemark}}"   title="내용입력" class="wp-wd100p" placeholder="입력"></td>
				<td>
					<button type="button" name="js-car-bc-lot-hist-reg-popup-delete-button" data-index="{{itemIndex}}" class="wp-btn small white bgray trash"><span>삭제</span></button>
					<input type="hidden"  id="js-car-bc-lot-hist-reg-popup-seq-{{itemIndex}}" value="{{seqCarProdInspBcLot}}" >
				</td>
			</tr>
		{{/rows}}
	</script>
	
	<script type="text/javascript">
	
	var gvCarBcMixingTankStatusInfoRegPopupLotTypeRs;
	
	var carBcLotHistRegPopupListTemplate;
	var carBcLotHistRegPopupToday;
	
	//------------------------------------------------
	// 초기화
	//------------------------------------------------
	var initCarBcLotHistRegPopup = function(param) {

		// 구분 combo setting
		retrieveLotPartType.request();
		
		// Handlebar 초기화
		initCarBcLotHistRegPopupHandlebarsTemplate();
		
		carBcLotHistRegPopupToday = app.utils.formatDate(new Date(), "YYYYMMDD");
		
		$("#js-car-bc-lot-hist-reg-popup-list").empty();
		
		// 공정 콤보 조회
		retrieveCarProcIdNew.carBcLotHistRegPopup.request();
		
		// Tank No.
		retrieveCarTankNo.carBcLotHistRegPopup.request();
		
		if(param != undefined){
			$("#js-car-bc-lot-hist-reg-popup-procid-combo").val(param.procId);
			$("#js-car-bc-lot-hist-reg-popup-tankno-combo").val(param.tankNo);
		}
		
		// LOT 이력 조회
		//retrieveCarProdInspMixingLotList.carBcLotHistRegPopup.request();
		
		// 추가 버튼 클릭 Event 
		$('#js-car-bc-lot-hist-reg-popup-add-button').off().on('click', function(){
			
			// row 추가
			addRowCarBcLotHistRegPopupInfo();
		});
		
		// 저장 버튼 클릭
		$("#js-car-bc-lot-hist-reg-popup-save-button").off().on('click', function(){
			
			// Validation Check
			if(!validationCheckCarBcLotHistRegPopup()){
				return;
			}
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-bc-lot-hist-reg-popup-close-button").click();
						// LOT 이력 저장
						saveCarProdInspMixingLotPopup.request();
					}
				}
			});
		});
		
	};
	
	//------------------------------------------------
	// Handlebar 초기화
	//------------------------------------------------
	var initCarBcLotHistRegPopupHandlebarsTemplate = function() {
		
		// 투입정보 리스트
		var source = $('#js-template-car-bc-lot-hist-reg-popup-list').html();
		carBcLotHistRegPopupListTemplate = Handlebars.compile(source);
	};

	//------------------------------------------------
	// LOT 변경 이력 항목(row) 추가
	//------------------------------------------------
	var addRowCarBcLotHistRegPopupInfo = function(itemData) {

		var itemIndex = $("tr[id*=js-car-bc-lot-hist-reg-popup-tr]:last").attr("data-index");
		if(itemIndex == undefined){
			itemIndex = 0;
		} else {
			itemIndex++;
		}
		
		var data = null;
		if(itemData != undefined){
			data = {
					itemIndex            : itemIndex
				  , injDate              : itemData.injDate
				  , lotNo                : itemData.lotNo
				  , injDescription       : itemData.injDescription
				  , injRemark            : itemData.injRemark
				  , seqCarProdInspBcLot  : itemData.seqCarProdInspBcLot
			};
		} else {
			data = {
					itemIndex : itemIndex
				  , injDate   : carBcLotHistRegPopupToday
			};
		}
		
		var result = carBcLotHistRegPopupListTemplate({rows : data});
		$("#js-car-bc-lot-hist-reg-popup-list").append(result);
		
		// 구분 콤보 set
		for(var i=0; i < gvCarBcMixingTankStatusInfoRegPopupLotTypeRs.length; i++)
		{
			$('#js-car-bc-lot-hist-reg-popup-type-' + itemIndex).append("<option value='"+ gvCarBcMixingTankStatusInfoRegPopupLotTypeRs[i].code +"'>"+ gvCarBcMixingTankStatusInfoRegPopupLotTypeRs[i].codeNm +"</option>");
		}
		
		$("[id*=js-car-bc-lot-hist-reg-popup-date]").mask("9999-99-99");
		
		//change 이벤트
		$("[id*=js-car-bc-lot-hist-reg-popup-lotno]").off().on('keyup', function(){
			$(this).val($(this).val().replace(/[^a-z0-9]/gi,'').toUpperCase());
			var lotNo = $(this).val();
			
			if(lotNo.length == 10){
				var itemIndex = $(this).attr("data-index");
				retrieveCarBcMixingTankStatusInfoRegDetail(itemIndex, lotNo);
			}
			
		});
		
		// 이벤트 바인딩
		setEventBindingCarBcLotHistRegPopup();
		
	};
	
	
	//------------------------------------------------
	// 
	//------------------------------------------------
	var retrieveCarBcMixingTankStatusInfoRegDetail = function(itemIndex, lotNo) {
		
		if(app.utils.isEmpty(lotNo)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="LOT No가 입력되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			$("#js-car-bc-lot-hist-reg-popup-lotno-" + itemIndex).focus();
			return;
		}
		
		if(lotNo.length != 10){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="LOT No.는 10자리이어야 합니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			$("#js-car-bc-lot-hist-reg-popup-lotno-" + itemIndex).focus();
			return;
		}
		
		retrieveCarBcProdInfo.request(itemIndex, lotNo);
		
	};
	
	
	var retrieveCarBcProdInfo = {
		itemIndex : "",
		success : function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					var itemIndex = retrieveCarBcProdInfo.itemIndex;
					
					if(response.rs !== null && response.rs.length > 0)
					{
						// LOT No 값에 의해 구분값을 바인딩.
						$("#js-car-bc-lot-hist-reg-popup-type-" + itemIndex).val(response.rs[0].partId);
					} 
					else 
					{
						app.message.alert({
							title: '<spring:message code="TODO.KEY" text="알림" />', 
							message: '<spring:message code="TODO.KEY" text="조회된 데이터가 없습니다." />', 
							confirmButtonText: '<spring:message code="TODO.KEY" text="확인" />',
							callback: {
								confirm: function() {
									$("#js-car-bc-lot-hist-reg-popup-lotno-" + itemIndex).val('');
									$("#js-car-bc-lot-hist-reg-popup-lotno-" + itemIndex).focus();
								}
							}
						});
						
						return;
						
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
		request : function(itemIndex, lotNo) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var params = {
				service 	: 'car.extinsp'
				, method 	: 'retrieveLotNo'
				, lotNo 	: lotNo
				, partType 	: $("#js-car-bc-lot-hist-reg-popup-type-"+ itemIndex).val()
			};
			
			retrieveCarBcProdInfo.itemIndex = itemIndex;
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	
	//------------------------------------------------
	// 이벤트 바인딩
	//------------------------------------------------
	var setEventBindingCarBcLotHistRegPopup = function(){
		// 삭제 버튼 클릭
		$("[name=js-car-bc-lot-hist-reg-popup-delete-button]").off().on('click', function(){
			var itemIndex = $(this).attr("data-index");
			$("#js-car-bc-lot-hist-reg-popup-tr-" + itemIndex).remove();
		});
		
	};
	
	//-------------------------------------------------
	// 저장 전 Validation Check
	//-------------------------------------------------
	var validationCheckCarBcLotHistRegPopup = function(){
		var carPlant             = $('#js-car-header-car-plant').val();
		var procId               = $('#js-car-bc-lot-hist-reg-popup-procid-combo').val();
		var tankNo               = $('#js-car-bc-lot-hist-reg-popup-tankno-combo').val();
		
		// 필수값 입력 여부 체크
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
			return false;
		}
		if(app.utils.isEmpty(procId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공정코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		if(app.utils.isEmpty(tankNo)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="Tank No.가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		
		var error = false;
		$("tr[id*=js-car-bc-lot-hist-reg-popup-tr-]").each(function(){
			var itemIndex      = $(this).attr("data-index");
			var injDate        = $("#js-car-bc-lot-hist-reg-popup-date-" + itemIndex).val().replace(/-/gi, "");
			var lotNo          = $("#js-car-bc-lot-hist-reg-popup-lotno-" + itemIndex).val();
			
			if(app.utils.isEmpty(injDate)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="일자가 없습니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
						}
					}
				});
				error = true;
				return;
			}
			if(app.utils.isEmpty(lotNo)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="LOT No가 없습니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
						}
					}
				});
				error = true;
				return;
			}
			if(lotNo.length != 10){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="LOT No는 10자리 이어야 합니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
						}
					}
				});
				error = true;
				return;
			}
		});
		if(error){
			return false;
		}
		
		return true;
	};
	
	//-------------------------------------------------
	// LOT 이력 저장
	//-------------------------------------------------
	var saveCarProdInspMixingLotPopup = {
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
						, callback          : {
							confirm: function() {
							}
						}
					});
					// 재조회
					retrieveCarProdInspMixingLotList.carBcLotHistRegPopup.request();
					retrieveCarProdInspMixingLotList.request();
					
					
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
			
			var bcLot = [];
			$("tr[id*=js-car-bc-lot-hist-reg-popup-tr-]").each(function(){
				var itemIndex      = $(this).attr("data-index");
				var injDate        = $("#js-car-bc-lot-hist-reg-popup-date-" + itemIndex).val().replace(/-/gi, "");
				var partType       = $("#js-car-bc-lot-hist-reg-popup-type-" + itemIndex).val();
				var lotNo          = $("#js-car-bc-lot-hist-reg-popup-lotno-" + itemIndex).val();
				var injDescription = $("#js-car-bc-lot-hist-reg-popup-desc-" + itemIndex).val();
				var injRemark      = $("#js-car-bc-lot-hist-reg-popup-remark-" + itemIndex).val();
				var seq            = $("#js-car-bc-lot-hist-reg-popup-seq-" + itemIndex).val();
				bcLot.push({
					  injDate             	: injDate
					, partType            	: partType
					, lotNo               	: lotNo
					, injDescription      	: injDescription
					, injRemark           	: injRemark     
					, seqCarProdInspBcLot 	: seq || 0
					, workType 			  	: 'PC'
				});
			});
			
			var params = {
				  service   : 'car.prodInspEd'
				, method    : 'saveCarProdInspMixingLotPopup'
				, carPlant  : $('#js-car-header-car-plant').val()
				, procId    : $('#js-car-bc-lot-hist-reg-popup-procid-combo').val()
				, tankNo    : $('#js-car-bc-lot-hist-reg-popup-tankno-combo').val()
				, bcLot     : bcLot.length == 0 ? "" : JSON.stringify(bcLot)
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	</script>
	<!-- LOT 변경 정보 등록 팝업 [END] -->
	
	
	<!-- LOT 변경 정보 수정 팝업 [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-bc-lot-hist-mod-popup" class="wp-pop-layer wp-pop-w350 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="LOT 변경 정보 수정"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-bc-lot-hist-mod-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
	    	</div>
	        <div class="wp-pop-conts">
		<!-- scroll Area -->
		<div class="wp-pop-cont-scrollable">
	            <!--content //-->
			<!-- 기본 정보 -->
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="일반정보"/></h2>
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:30%">
						<col style="width:auto">
					</colgroup>
					<tbody>
						<tr>
							<th><spring:message code="TODO.KEY" text="공정"/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-bc-lot-hist-mod-popup-procid-combo" disabled="disabled">
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th><spring:message code="TODO.KEY" text="Tank No."/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-bc-lot-hist-mod-popup-tankno-combo" disabled="disabled">
									</select>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="LOT 변경 정보"/></h2>
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption><spring:message code="TODO.KEY" text="일반정보"/></caption>
					<colgroup>
						<col style="width:30%">
						<col style="width:auto">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="일자"/></th>
							<td><input type="text" id="js-car-bc-lot-hist-mod-popup-date" title="내용입력" class="wp-inp-datepicker maxdate wp-wd100p" placeholder="날짜입력"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="구분" /></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select id="js-car-bc-lot-hist-mod-popup-type" name="js-car-bc-lot-hist-mod-popup-type" title="항목 개수 설정">
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="LOT No."/></th>
							<td><input type="text" id="js-car-bc-lot-hist-mod-popup-lotno" name="js-car-bc-lot-hist-mod-popup-input-data" title="내용입력" class="wp-wd100p" placeholder="입력" maxLength="10"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="내용"/></th>
							<td><input type="text" id="js-car-bc-lot-hist-mod-popup-desc" name="js-car-bc-lot-hist-mod-popup-input-data" title="내용입력" class="wp-wd100p" placeholder="입력"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="비고"/></th>
							<td><input type="text" id="js-car-bc-lot-hist-mod-popup-remark" name="js-car-bc-lot-hist-mod-popup-input-data" title="내용입력" class="wp-wd100p" placeholder="입력"></td>
						</tr>
					</tbody>
				</table>
	            </div>
			<!-- // scroll Area -->
			</div>
			<div class="wp-btn-area">
				<input type="hidden" id="js-car-bc-lot-hist-mod-popup-seq" name="js-car-bc-lot-hist-mod-popup-input-data">
				<button type="button" id="js-car-bc-lot-hist-mod-popup-save-button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="저장"/></button>
				<!-- <button type="button" id="js-car-bc-lot-hist-mod-popup-delete-button" class="wp-btn big gray cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="삭제"/></button> -->
			</div>
	        </div>
	    </div>
	</div>	
	
	<script type="text/javascript">
	
	//------------------------------------------------
	// 초기화
	//------------------------------------------------
	var initCarBcLotHistModPopup = function(seq) {
		
		$("[name=js-car-bc-lot-hist-mod-popup-input-data").val("");
		
		// 구분 콤보 조회
		retrieveLotPartType.request();
		
		// 공정 콤보 조회
		retrieveCarProcIdNew.carBcLotHistModPopup.request();
		
		// Tank No.
		retrieveCarTankNo.carBcLotHistModPopup.request();
		
		if(app.utils.isEmpty(seq)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="시퀀스 정보가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			$("#js-car-bc-lot-hist-mod-popup-close-button").click();
		}
		
		$("#js-car-bc-lot-hist-mod-popup-seq").val(seq);
		
		// LOT 이력 조회
		retrieveCarProdInspMixingLot.request();
		
		//change 이벤트
		$("#js-car-bc-lot-hist-mod-popup-lotno").off().on('keyup', function(){
			$(this).val($(this).val().replace(/[^a-z0-9]/gi,'').toUpperCase());
			
			var lotNo = $(this).val();
		});
				
		// 저장 버튼 클릭
		$("#js-car-bc-lot-hist-mod-popup-save-button").off().on('click', function(){
			
			// Validation Check
			if(!validationCheckCarBcLotHistModPopup()){
				return;
			}
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-bc-lot-hist-mod-popup-close-button").click();
						// Lot 이력 저장
						saveCarProdInspMixingLotNew.request();
					}
				}
			});
		});
		
		// 삭제 버튼 클릭
		$("#js-car-bc-lot-hist-mod-popup-delete-button").off().on('click', function(){
			var seq = $("#js-car-bc-lot-hist-mod-popup-seq").val();
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						// LOT 이력 삭제
						deleteCarProdInspMixingLotNew.request(seq);
					}
				}
			});
		});
	};
	
	//-------------------------------------------------
	// 저장 전 Validation Check
	//-------------------------------------------------
	var validationCheckCarBcLotHistModPopup = function(){
		var carPlant             = $('#js-car-header-car-plant').val();
		var procId               = $('#js-car-bc-lot-hist-mod-popup-procid-combo').val();
		var tankNo               = $('#js-car-bc-lot-hist-mod-popup-tankno-combo').val();
		var seq                  = $('#js-car-bc-lot-hist-mod-popup-seq').val();
		
		// 필수값 입력 여부 체크
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
			return false;
		}
		if(app.utils.isEmpty(procId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공정코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		if(app.utils.isEmpty(tankNo)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="Tank No.가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		if(app.utils.isEmpty(seq)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="시퀀스가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		return true;
	};

	//-------------------------------------------------
	// LOT 이력 조회
	//-------------------------------------------------
	var retrieveCarProdInspMixingLot = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {							
					
					$("[name=js-car-bc-lot-hist-mod-popup-input-data").val("");
					
					if(response.rs.length > 0){
						var data = response.rs[0];
						$('#js-car-bc-lot-hist-mod-popup-procid-combo').val(data.procId);
						$('#js-car-bc-lot-hist-mod-popup-tankno-combo').val(data.tankNo);
						$("#js-car-bc-lot-hist-mod-popup-date").val(data.injDate);
						$("#js-car-bc-lot-hist-mod-popup-lotno").val(data.lotNo);  
						$("#js-car-bc-lot-hist-mod-popup-desc").val(data.injDescription);  
						$("#js-car-bc-lot-hist-mod-popup-remark").val(data.injRemark);
						$("#js-car-bc-lot-hist-mod-popup-seq").val(data.seqCarProdInspBcLot);
						
						// 서비스에서 값을 setting 하지 않아 주석 처리.
						//$("#js-car-bc-lot-hist-mod-popup-type").val(data.partType);
						
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
			var params = {
				  service   : 'car.prodInspEd'
				, method    : 'retrieveCarProdInspMixingLot'
				, seqCarProdInspBcLot  : $("#js-car-bc-lot-hist-mod-popup-seq").val()
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	//-------------------------------------------------
	// LOT 이력 저장
	//-------------------------------------------------
	var saveCarProdInspMixingLotNew = {
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
						, callback          : {
							confirm: function() {
							}
						}
					});
					// 재조회
					retrieveCarProdInspMixingLotList.request();
					retrieveCarProdInspMixingLot.request();
					
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
				  service             	: 'car.prodInspEd'
				, method              	: 'saveCarProdInspMixingLotNew'
				, carPlant            	: $('#js-car-header-car-plant').val()
				, procId              	: $('#js-car-bc-lot-hist-mod-popup-procid-combo').val()
				, tankNo              	: $('#js-car-bc-lot-hist-mod-popup-tankno-combo').val()
				, injDate             	: $("#js-car-bc-lot-hist-mod-popup-date").val().replace(/-/gi, "")
				, lotNo               	: $("#js-car-bc-lot-hist-mod-popup-lotno").val()
				, injDescription      	: $("#js-car-bc-lot-hist-mod-popup-desc").val()
				, injRemark           	: $("#js-car-bc-lot-hist-mod-popup-remark").val()
				, seqCarProdInspBcLot 	: $("#js-car-bc-lot-hist-mod-popup-seq").val() || 0
				, partType 				: $("#js-car-bc-lot-hist-mod-popup-type").val()
				, workType 			  	: 'PC'
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	</script>
	<!-- LOT 변경 정보 수정 팝업 [END] -->
	
	
	<!-- 컬러-Tank 매치 수정 팝업 [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-bc-color-tank-match-reg-popup" class="wp-pop-layer wp-pop-w700 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="칼라-Tank 매치 수정"/></h1>
	    		<button type="button" id="js-car-bc-color-tank-match-reg-popup-close-button" class="wp-btn-close-layer wp-spr-btn"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
	    	</div>
	        <div class="wp-pop-conts">
		<!-- scroll Area -->
		<div class="wp-pop-cont-scrollable">
	            <!--content //-->
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="일반정보"/></h2>
			<!-- 기본 정보 -->
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:20%">
						<col style="width:30%">
						<col style="width:20%">
						<col style="width:30%">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="공정"/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select id="js-car-bc-color-tank-match-reg-popup-procid-combo" title="항목 개수 설정" disabled="disabled">
									</select>
								</div>
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="Tank No."/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select id="js-car-bc-color-tank-match-reg-popup-tankno-combo" title="항목 개수 설정" disabled="disabled">
									</select>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
	
			<h2 class="wp-cont-title"><spring:message code="TODO.KEY" text="Mixing Tank 별 칼라 정보"/></h2>
			<!-- 기본 정보 -->
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:20%">
						<col style="width:30%">
						<col style="width:20%">
						<col style="width:30%">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="사용 여부"/></th>
							<td  class="wp-al wp-vm">
								<span name="js-car-bc-color-tank-match-reg-popup-useyn-radio-span" value="Y" class="wp-ui-radio wp-mt0"><input type="radio" name="js-car-bc-color-tank-match-reg-popup-useyn-radio" class="wp-inp-radio"></span> <spring:message code="TODO.KEY" text="예"/>
								<span name="js-car-bc-color-tank-match-reg-popup-useyn-radio-span" value="N" class="wp-ui-radio wp-mt0 wp-ml10"><input type="radio" name="js-car-bc-color-tank-match-reg-popup-useyn-radio" class="wp-inp-radio"></span> <spring:message code="TODO.KEY" text="아니오"/>
							</td>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="칼라"/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select id="js-car-bc-color-tank-match-reg-popup-color-combo" title="항목 개수 설정">
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="비고"/></th>
							<td colspan="3"><input type="text" id="js-car-bc-color-tank-match-reg-popup-remark" title="내용입력" class="wp-wd100p"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="내용"/></th>
							<td colspan="3"><input type="text" id="js-car-bc-color-tank-match-reg-popup-desc" title="내용입력" class="wp-wd100p"></td>
						</tr>
					</tbody>
				</table>
			</div>
	
			<!-- // scroll Area -->
			</div>
			<div class="wp-btn-area">
				<button type="button" id="js-car-bc-color-tank-match-reg-popup-save-button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="저장"/></button>
			</div>
			
	        </div>
	    </div>
	</div>	
	
	<script type="text/javascript">
	//------------------------------------------------
	// 초기화
	//------------------------------------------------
	var initCarBcColorTankMatchRegPopup = function(param) {
		
		$("#js-car-bc-color-tank-match-reg-popup-remark").val("");
		$("#js-car-bc-color-tank-match-reg-popup-desc").val("");
		
		// 공정 콤보 조회
		retrieveCarProcIdNew.carBcColorTankMatchRegPopup.request();
		
		// Tank No.
		retrieveCarTankNo.carBcColorTankMatchRegPopup.request();
		
		if(param != undefined){
			$("#js-car-bc-color-tank-match-reg-popup-procid-combo").val(param.procId);
			$("#js-car-bc-color-tank-match-reg-popup-tankno-combo").val(param.tankNo);
		}
		
		// 컬러 콤보 조회
		retrieveSearchColor.request();
		
		// Mixing Tank 별 컬러 정보 조회
		retrieveCarProdInspMixingMast.request();
		
		// 저장 버튼 클릭
		$("#js-car-bc-color-tank-match-reg-popup-save-button").off().on('click', function(){
			
			// Validation Check
			if(!validationCheckCarBcColorTankMatchRegPopup()){
				return;
			}
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						// 컬러-Tank 매치 저장
						saveCarProdInspBcMastPopup.request();
					}
				}
			});
		});
		
	};

	//-------------------------------------------------
	// 저장 전 Validation Check
	//-------------------------------------------------
	var validationCheckCarBcColorTankMatchRegPopup = function(){
		var carPlant  = $('#js-car-header-car-plant').val();
		var procId    = $('#js-car-bc-color-tank-match-reg-popup-procid-combo').val();
		var tankNo    = $('#js-car-bc-color-tank-match-reg-popup-tankno-combo').val();
		var tankUseYn = $("[name=js-car-bc-color-tank-match-reg-popup-useyn-radio-span][class*=checked]").attr("value");
		var colorId   = $("#js-car-bc-color-tank-match-reg-popup-color-combo").val();
		
		// 필수값 입력 여부 체크
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
			return false;
		}
		if(app.utils.isEmpty(procId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공정코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		if(app.utils.isEmpty(tankNo)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="Tank No.가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		if(app.utils.isEmpty(tankUseYn)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="사용 여부를 선택해주세요."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		if(app.utils.isEmpty(colorId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="선택된 컬러가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		return true;
	};
	
	//-------------------------------------------------
	// 컬러-Tank 매치 저장
	//-------------------------------------------------
	var saveCarProdInspBcMastPopup = {
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
						, callback          : {
							confirm: function() {
							}
						}
					});
					$("#js-car-bc-color-tank-match-reg-popup-close-button").click();
					
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
				  service              : 'car.prodInspEd'
				, method               : 'saveCarProdInspBcMastPopup'
				, carPlant             : $('#js-car-header-car-plant').val()
				, procId               : $('#js-car-bc-color-tank-match-reg-popup-procid-combo').val()
				, tankNo               : $('#js-car-bc-color-tank-match-reg-popup-tankno-combo').val()
				, colorId              : $("#js-car-bc-color-tank-match-reg-popup-color-combo").val()
				, tankUseYn            : $("[name=js-car-bc-color-tank-match-reg-popup-useyn-radio-span][class*=checked]").attr("value")
				, remark               : $("#js-car-bc-color-tank-match-reg-popup-remark").val()
				, description          : $("#js-car-bc-color-tank-match-reg-popup-desc").val()
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	//-------------------------------------------------
	// Mixing Tank 별 컬러 정보 조회
	//-------------------------------------------------
	var retrieveCarProdInspMixingMast = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {							
					
					$("#js-car-bc-color-tank-match-reg-popup-remark").val("");
					$("#js-car-bc-color-tank-match-reg-popup-desc").val("");
					$("[name=js-car-bc-color-tank-match-reg-popup-useyn-radio-span]").removeClass("checked");
					
					if(response.rs.length > 0){
						$("#js-car-bc-color-tank-match-reg-popup-color-combo").val(response.rs[0].colorId);
						$("#js-car-bc-color-tank-match-reg-popup-remark").val(response.rs[0].remark);
						$("#js-car-bc-color-tank-match-reg-popup-desc").val(response.rs[0].description);
						$("[name=js-car-bc-color-tank-match-reg-popup-useyn-radio-span][value="+ response.rs[0].tankUseYn + "]").addClass("checked");
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
			var params = {
				  service              : 'car.prodInspEd'
				, method               : 'retrieveCarProdInspMixingMast'
				, carPlant             : $('#js-car-header-car-plant').val()
				, procId               : $('#js-car-bc-color-tank-match-reg-popup-procid-combo').val()
				, tankNo               : $('#js-car-bc-color-tank-match-reg-popup-tankno-combo').val()
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	//-------------------------------------------------
	// 컬러 콤보 조회
	//-------------------------------------------------
	var retrieveSearchColor = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {							
					
					$('#js-car-bc-color-tank-match-reg-popup-color-combo').find('option').remove();
					for(var i=0; i<response.rs.length; i++)
					{
						$('#js-car-bc-color-tank-match-reg-popup-color-combo').append("<option value='"+response.rs[i].colorId+"'>"+response.rs[i].colorNm+"</option>");
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
			var params = {
				  service              : 'car.color'
				, method               : 'retrieveSearchColor'
				, carPlant             : $('#js-car-header-car-plant').val()
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	</script>
	<!-- 컬러-Tank 매치 수정 팝업 [END] -->
	
	
	
	
	</tiles:putAttribute>
	<!-- 팝업 콘텐츠 E -->
</tiles:insertDefinition>
