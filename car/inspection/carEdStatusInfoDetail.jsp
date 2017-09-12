<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.02.03] ship 제품정보-제품 출고 이력 정보" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.car">

	<!-- 메인 콘텐츠 S -->
	<tiles:putAttribute name="page-content">
	<section class="wp-stat">
		<div class="wp-cont wp-car-sub" style="background:none !important">
			<!-- content start -->
			<header class="wp-contents-title">
				<h1><spring:message code="TODO.KEY" text="도료 상태 검사"/></h1>
				<div class="wp-location"><span><spring:message code="TODO.KEY" text="도장공정"/></span><span class="wp-fc-54"><spring:message code="TODO.KEY" text="도료 상태 검사"/></span></div>
			</header>
			
			<!-- tab -->
			<ul class="wp-prod-tab wp-four">
				<li><a href="/car/inspection/carEdStatusInfoDetail.do" class="active"><spring:message code="TODO.KEY" text="전착 본조 상세"/></a></li>
				<li><a href="/car/inspection/carEdStatusInfo.do"><spring:message code="TODO.KEY" text="전착 도료 상태 검사"/></a></li>
				<li><a href="/car/inspection/carBcStatusInfo.do"><spring:message code="TODO.KEY" text="중/상도 도료 상태 검사"/></a></li>
				<li><a href="/car/inspection/carBcMixingTankStatusInfo.do"><spring:message code="TODO.KEY" text="Mixing Tank 상세"/></a></li>
			</ul>
			<!-- //tab -->
			
			<!-- content box -->
			<div class="wp-table-width wp-mt13">		
				<!-- title area -->
				<div class="wp-clearfix wp-mb10">
					<div class="wp-btn-area wp-fr">
						<button type="button" class="wp-btn small grayblue cr3" id="js-car-ed-status-info-detail-refresh-button"><spring:message code="TODO.KEY" text="조회"/></button>
					</div>
					<div class="wp-sch">
						<em><spring:message code="TODO.KEY" text="본조 No."/></em>
						<div class="wp-ui-select">
							<select id="js-car-ed-status-info-detail-boothid" title="항목 개수 설정">
							</select>
						</div>
						<em><spring:message code="TODO.KEY" text="기간"/></em>
						<input type="text" id="js-car-ed-status-info-detail-fromdate" title="시작일자" class="wp-inp-datepicker" placeholder="날짜입력"> ~ 
						<input type="text" id="js-car-ed-status-info-detail-todate"   title="종료일자" class="wp-inp-datepicker" placeholder="날짜입력">
					</div>
				</div>
				<!-- //title area -->

				<!-- graph area -->
				<div class="wp-graph-area">				
					<div class="wp-porduct wp-maxing">
						<!-- <div class="wp-title" id="js-car-ed-status-info-detail-title"></div> -->
						<div class="wp-title" id="js-car-ed-status-info-detail-title-div">-</div>
						<div class="wp-img"><img src="/image/car/img_tank02.jpg"></div>
						<ul id="js-car-ed-status-info-detail-pta-list">
							<!-- 
							<li id="js-car-ed-status-info-detail-pta" style="width:240px !important"></li>
							<li id="js-car-ed-status-info-detail-ptb" style="width:240px !important"></li>
							 -->
						</ul>
					</div>
					
					<!-- tab -->
					<div class="wp-ui-btn-switch wp-clearfix noborder-switch">
						<ul>
							<li><button type="button" name="js-car-ed-status-info-detail-spec-over-chart-button" value="nv"  class="on">NV(%)</button></li>
							<li><button type="button" name="js-car-ed-status-info-detail-spec-over-chart-button" value="ash" class="">ASH(%)</button></li>
							<li><button type="button" name="js-car-ed-status-info-detail-spec-over-chart-button" value="meq" class="">MEQ(mmol)</button></li>
							<li><button type="button" name="js-car-ed-status-info-detail-spec-over-chart-button" value="ph"  class="">PH</button></li>
							<li><button type="button" name="js-car-ed-status-info-detail-spec-over-chart-button" value="con" class="">CONDUCT.(㎲/㎝)</button></li>
							<li><button type="button" name="js-car-ed-status-info-detail-spec-over-chart-button" value="sol" class="">SOLVENT</button></li>
							<li><button type="button" name="js-car-ed-status-info-detail-spec-over-chart-button" value="bc"  class="">BC</button></li>
							<li><button type="button" name="js-car-ed-status-info-detail-spec-over-chart-button" value="tex" class="">TEX.</button></li>
						</ul>
					</div>
					<!-- graph -->
					<div class="wp-graph" id="js-car-ed-status-info-detail-spec-over-chart"></div>
				</div>
				<!-- //graph area -->

				<!-- title area -->
				<div class="wp-title-section wp-no-line">
					<!-- <h2 class="wp-section-title"><span class="wp-spec-over"></span><spring:message code="TODO.KEY" text="Spec. 오버"/></h2> -->
					<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="욕액 분석 결과 등록/수정 관리"/>
						<span class="wp-fs-12 wp-ml10"><span class="wp-spec-over"></span><spring:message code="TODO.KEY" text="Spec. 오버"/></span>
					</h2>
					<div class="wp-btn-area">
						<button type="button" id="js-car-ed-status-info-detail-reg-button" data-link="js-car-ed-status-info-reg-popup" data-depth="1" class="wp-btn small white bgray write"><span><spring:message code="TODO.KEY" text="등록"/></span></button>
					</div>
				</div>
				<!-- //title area -->
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
							<col style="width:8%">
						</colgroup>
						<thead>
							<tr>
								<th><spring:message code="TODO.KEY" text="검사일자"/></th>
								<th><spring:message code="TODO.KEY" text="샘플채취일자"/></th>
								<th><spring:message code="TODO.KEY" text="NV"/></th>
								<th><spring:message code="TODO.KEY" text="ASH"/></th>
								<th><spring:message code="TODO.KEY" text="MEQ"/></th>
								<th><spring:message code="TODO.KEY" text="PH"/></th>
								<th><spring:message code="TODO.KEY" text="Conductivity"/></th>
								<th><spring:message code="TODO.KEY" text="SOLVENT"/></th>
								<th><spring:message code="TODO.KEY" text="BC"/></th>
								<th><spring:message code="TODO.KEY" text="TEXANOL"/></th>
								<th><spring:message code="TODO.KEY" text="수정/삭제"/></th>
							</tr>
						</thead>
						<tbody id="js-car-ed-status-info-detail-spec-over-data-list">
						</tbody>
					</table>
				</div>
				<!-- //table -->
				
			</div>
			<!-- // content box -->
			
			<!-- content box -->
			<div class="wp-table-width wp-mt13">
				<!-- wp-table-section -->
				<div class="wp-table-section">
					<div class="wp-fl">
						<div class="wp-title-section wp-no-line">
							<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="투입비"/></h2>
						</div>
						<div class="wp-fc-red wp-mt30 wp-mb30" id="js-car-ed-status-info-detail-insp-ed-rate-chart"><spring:message code="TODO.KEY" text="그래프"/></div>
						<!-- //title area -->
						<!-- table -->
						<div class="wp-table-st1">
							<table>
								<caption></caption>
								<colgroup id="js-car-ed-status-info-detail-insp-ed-rate-colgroup-list">
								</colgroup>
								<thead>
									<tr id="js-car-ed-status-info-detail-insp-ed-rate-head-list">
									</tr>
								</thead>
								<tbody id="js-car-ed-status-info-detail-insp-ed-rate-list">
									<tr id="js-car-ed-status-info-detail-insp-ed-rate-pta-list">
									</tr>
									<tr id="js-car-ed-status-info-detail-insp-ed-rate-ptb-list">
									</tr>
								</tbody>
							</table>
						</div>
						<!-- //table -->
					</div>
					<div class="wp-fr">
						<div class="wp-title-section wp-no-line">
							<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="본조 액온"/></h2>
						</div>
						<div class="wp-fc-red wp-mt30 wp-mb30" id="js-car-ed-status-info-detail-insp-ed-temp-chart"><spring:message code="TODO.KEY" text="그래프"/></div>
						<!-- title area -->
						<!-- table -->
						<div class="wp-table-st1">
							<table>
								<caption></caption>
								<colgroup id="js-car-ed-status-info-detail-insp-ed-temp-colgroup-list">
									<col style="width:auto">
									<col style="width:20%">
									<col style="width:20%">
									<col style="width:20%">
									<col style="width:20%">
								</colgroup>
								<thead>
									<tr id="js-car-ed-status-info-detail-insp-ed-temp-head-list">
									</tr>
								</thead>
								<tbody>
									<tr id="js-car-ed-status-info-detail-insp-ed-temp-painttemp-list">
									</tr>
								</tbody>
							</table>
						</div>
						<!-- //table -->
					</div>
				</div>
				<!-- //wp-table-section -->
			</div>
			<!-- // content box -->
			
			<!-- content box -->
			<div class="wp-table-width wp-mt13">				
				<!-- title area -->
				<div class="wp-title-section wp-no-line">
					<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="첨가제/희석제 투입 이력"/></h2>
					<div class="wp-btn-area">
						<button type="button" id="js-car-ed-status-info-detail-inj-hist-list-reg-button" data-link="js-car-ed-add-inj-hist-reg-popup" data-depth="1" class="wp-btn small white bgray write"><span><spring:message code="TODO.KEY" text="등록"/></span></button>
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
								<th><spring:message code="TODO.KEY" text="투입일자"/></th>
								<th><spring:message code="TODO.KEY" text="Solvent 명"/></th>
								<th><spring:message code="TODO.KEY" text="투입량"/>(ℓ)</th>
								<th><spring:message code="TODO.KEY" text="내용"/></th>
								<th><spring:message code="TODO.KEY" text="사유"/></th>
								<th><spring:message code="TODO.KEY" text="수정/삭제"/></th>
							</tr>
						</thead>
						<tbody id="js-car-ed-status-info-detail-inj-hist-list">
						</tbody>
					</table>
				</div>
				<!-- //table -->

				<!-- title area -->
				<div class="wp-title-section wp-no-line">
					<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="LOT 변경 이력"/></h2>
					<div class="wp-btn-area">
						<button type="button" id="js-car-ed-status-info-detail-lot-hist-list-reg-button" data-link="js-car-ed-lot-mod-hist-reg-popup" data-depth="1" class="wp-btn small white bgray write"><span><spring:message code="TODO.KEY" text="등록"/></span></button>
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
								<th><spring:message code="TODO.KEY" text="변경일자"/></th>
								<th><spring:message code="TODO.KEY" text="LOT No."/></th>
								<th><spring:message code="TODO.KEY" text="구분"/></th>
								<th><spring:message code="TODO.KEY" text="내용"/></th>
								<th><spring:message code="TODO.KEY" text="사유"/></th>
								<th><spring:message code="TODO.KEY" text="수정/삭제"/></th>
							</tr>
						</thead>
						<tbody id="js-car-ed-status-info-detail-lot-hist-list">
						</tbody>
					</table>
				</div>
				<!-- //table -->
				
				<!-- wp-table-section -->
				<div class="wp-table-section">
					<div class="wp-fl">
						<!-- title area -->
						<div class="wp-title-section wp-no-line">
							<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="투입비"/></h2>
							<div class="wp-btn-area">
								<button type="button" id="js-car-ed-status-info-detail-inj-rate-list-reg-button" data-link="js-car-ed-inj-rate-reg-popup" data-depth="1" class="wp-btn small white bgray write"><span><spring:message code="TODO.KEY" text="등록"/></span></button>
							</div>
						</div>
						<!-- //title area -->
						
						<!-- table -->
						<div class="wp-table-st1">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:26%">
									<col style="width:15%">
									<col style="width:15%">
									<col style="width:30%">
									<col style="width:14%">
								</colgroup>
								<thead>
									<tr>
										<th><spring:message code="TODO.KEY" text="투입일자"/></th>
										<th><spring:message code="TODO.KEY" text="PART A"/></th>
										<th><spring:message code="TODO.KEY" text="PART B"/></th>
										<th><spring:message code="TODO.KEY" text="비고"/></th>
										<th><spring:message code="TODO.KEY" text="수정/삭제"/></th>
									</tr>
								</thead>
								<tbody id="js-car-ed-status-info-detail-inj-rate-list">
								</tbody>
							</table>
						</div>
						<!-- //table -->
						
					</div>
					<div class="wp-fr">
						<!-- title area -->
						<div class="wp-title-section wp-no-line">
							<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="본조 액온"/></h2>
							<div class="wp-btn-area">
								<button type="button" id="js-car-ed-status-info-detail-temp-list-reg-button" data-link="js-car-ed-temp-reg-popup" data-depth="1" class="wp-btn small white bgray write"><span><spring:message code="TODO.KEY" text="등록"/></span></button>
							</div>
						</div>
						<!-- //title area -->
						<!-- table -->
						<div class="wp-table-st1">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:auto">
									<col style="width:40%">
									<col style="width:14%">
								</colgroup>
								<thead>
									<tr>
										<th><spring:message code="TODO.KEY" text="측정일자"/></th>
										<th><spring:message code="TODO.KEY" text="본조 온도"/>(˚C)</th>
										<th><spring:message code="TODO.KEY" text="수정/삭제"/></th>
									</tr>
								</thead>
								<tbody id="js-car-ed-status-info-detail-temp-list">
								</tbody>
							</table>
						</div>
						<!-- //table -->
					</div>
				</div>
				<!-- //wp-table-section -->
				
				<!-- title area -->
				<div class="wp-title-section wp-no-line">
					<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="관리 Spec."/></h2>
					<div class="wp-btn-area">
						<button type="button" id="js-car-ed-status-info-detail-spec-list-reg-button" data-link="js-car-ed-mng-spec-info-reg-popup" data-depth="1" class="wp-btn small white bgray write"><span><spring:message code="TODO.KEY" text="등록"/></span></button>
					</div>
				</div>
				<!-- //title area -->
				<!-- table -->
				<div class="wp-table-st1">
					<table>
						<caption></caption>
						<colgroup>
							<col style="width:auto">
							<col style="width:12%">
							<col style="width:12%">
							<col style="width:12%">
							<col style="width:13%">
							<col style="width:12%">
							<col style="width:12%">
							<col style="width:12%">
							<col style="width:7%">
						</colgroup>
						<thead>
							<tr>
								<th>NV(%)</th>
								<th>ASH(%)</th>
								<th>MEQ (m mol)</th>
								<th>PH</th>
								<th>Conductivity (㎲/㎝)</th>
								<th>Solvent</th>
								<th>BC</th>
								<th>TEXANOL</th>
								<th><spring:message code="TODO.KEY" text="수정"/></th>
							</tr>
						</thead>
						<tbody id="js-car-ed-status-info-detail-spec-list">
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
		
		<!-- 첨가제/희석제 투입 이력 리스트 - 스크립트-->
		<script id="js-template-car-ed-status-info-detail-inj-hist-list" type="text/x-handlebars-template">		
			{{#rows}}
				<tr>
					<td>{{injDate}}</td>
					<td>{{injItemsNm}}</td>
					<td>{{injVqty}}</td>
					<td>{{injDescription}}</td>
					<td>{{injReason}}</td>
					<td class="wp-td-padding0">
						<button type="button" class="wp-btn small white bgray mody" data-link="js-car-ed-add-inj-hist-mod-popup" data-depth="1" name="js-car-ed-status-info-detail-inj-hist-list-modify-button" seq="{{seqCarProdInspEdInj}}" ><span><spring:message code="TODO.KEY" text="수정"/></span></button>
						<button type="button" class="wp-btn small white bgray trash-gray" name="js-car-ed-status-info-detail-inj-hist-list-delete-button" seq="{{seqCarProdInspEdInj}}" ><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
					</td>
				</tr>
			{{/rows}}
		</script>		
		
		<!-- Lot 변경 이력 리스트 - 스크립트-->
		<script id="js-template-car-ed-status-info-detail-lot-hist-list" type="text/x-handlebars-template">		
			{{#rows}}
				<tr>
					<td>{{injDate}}</td>
					<td>{{lotNo}}</td>
					<td>{{partTypeNm}}</td>
					<td>{{injDescription}}</td>
					<td>{{injRemark}}</td>
					<td class="wp-td-padding0">
						<button type="button" class="wp-btn small white bgray mody" data-link="js-car-ed-lot-mod-hist-mod-popup" data-depth="1" name="js-car-ed-status-info-detail-lot-hist-list-modify-button" seq="{{seqCarProdInspEdLot}}" ><span><spring:message code="TODO.KEY" text="수정"/></span></button>
						<button type="button" class="wp-btn small white bgray trash-gray" name="js-car-ed-status-info-detail-lot-hist-list-delete-button" seq="{{seqCarProdInspEdLot}}" ><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
					</td>
				</tr>
			{{/rows}}
		</script>		
		
		<!-- 투입비 리스트 - 스크립트-->
		<script id="js-template-car-ed-status-info-detail-inj-rate-list" type="text/x-handlebars-template">		
			{{#rows}}
				<tr>
					<td>{{injDate}}</td>
					<td>{{ptaRate}}</td>
					<td>{{ptbRate}}</td>
					<td>{{remark}}</td>
					<td class="wp-td-padding0">
						<button type="button" class="wp-btn small white bgray mody" data-link="js-car-ed-inj-rate-reg-popup" data-depth="1" name="js-car-ed-status-info-detail-inj-rate-list-modify-button" seq="{{seqCarProdInspEdRate}}" ><span><spring:message code="TODO.KEY" text="수정"/></span></button>
						<button type="button" class="wp-btn small white bgray trash-gray" name="js-car-ed-status-info-detail-inj-rate-list-delete-button" seq="{{seqCarProdInspEdRate}}" ><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
					</td>
				</tr>
			{{/rows}}
		</script>	
		
		<!-- 본조 액온 리스트 - 스크립트-->
		<script id="js-template-car-ed-status-info-detail-temp-list" type="text/x-handlebars-template">		
			{{#rows}}
				<tr>
					<td>{{inspDate}}</td>
					<td>{{paintTemp}}</td>
					<td class="wp-td-padding0">
						<button type="button" class="wp-btn small white bgray mody" data-link="js-car-ed-temp-reg-popup" data-depth="1" name="js-car-ed-status-info-detail-temp-list-modify-button" seq="{{seqCarProdInspEdTemp}}" ><span><spring:message code="TODO.KEY" text="수정"/></span></button>
						<button type="button" class="wp-btn small white bgray trash-gray" name="js-car-ed-status-info-detail-temp-list-delete-button" seq="{{seqCarProdInspEdTemp}}" ><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
					</td>
				</tr>
			{{/rows}}
		</script>	
		
		<!-- 관리 Spec 리스트 - 스크립트-->
		<script id="js-template-car-ed-status-info-detail-spec-list" type="text/x-handlebars-template">		
			{{#rows}}
				<tr>
					<td>{{setDataMark nvMinValue nvMaxValue}}</td>
					<td>{{setDataMark ashMinValue ashMaxValue}}</td>
					<td>{{setDataMark meqMinValue meqMaxValue}}</td>
					<td>{{setDataMark phMinValue phMaxValue}}</td>
					<td>{{setDataMark conMinValue conMaxValue}}</td>
					<td>{{setDataMark solMinValue solMaxValue}}</td>
					<td>{{setDataMark bcMinValue bcMaxValue}}</td>
					<td>{{setDataMark texMinValue texMaxValue}}</td>
					<td class="wp-td-padding0">
						<button type="button" class="wp-btn small white bgray mody" data-link="js-car-ed-mng-spec-info-reg-popup" data-depth="1" name="js-car-ed-status-info-detail-spec-list-modify-button"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
					</td>
				</tr>
			{{/rows}}
		</script>

		<!-- Spec.오버 리스트 - 스크립트-->
		<script id="js-template-car-ed-status-info-detail-spec-over-data-list" type="text/x-handlebars-template">		
			{{#rows}}
				<tr>
					<th>{{inspDate}}</th>
					<td>{{samplingDate}}</td>
					<td><span class="{{setSpecOverCheck chkNv}}">{{nvValue}}</span></td>
					<td><span class="{{setSpecOverCheck chkAsh}}">{{ashValue}}</span></td>
					<td><span class="{{setSpecOverCheck chkMeq}}">{{meqValue}}</span></td>
					<td><span class="{{setSpecOverCheck chkPh}}">{{phValue}}</span></td>
					<td><span class="{{setSpecOverCheck chkCon}}">{{conValue}}</span></td>
					<td><span class="{{setSpecOverCheck chkSol}}">{{solValue}}</span></td>
					<td><span class="{{setSpecOverCheck chkBc}}">{{bcValue}}</span></td>
					<td><span class="{{setSpecOverCheck chkTex}}">{{texValue}}</span></td>
					<td class="wp-td-padding0">
						<button type="button" class="wp-btn small white bgray mody" data-link="js-car-ed-status-info-reg-popup" data-depth="1" name="js-car-ed-status-info-detail-spec-over-data-list-modify-button" docNo="{{docNo}}" data-seqProdInspEdPa="{{seqProdInspEdPa}}"><span><spring:message code="TODO.KEY" text="수정"/></span></button>
						<button type="button" class="wp-btn small white bgray trash-gray" name="js-car-ed-status-info-detail-spec-over-data-list-delete-button" docNo="{{docNo}}" data-seqProdInspEdPa="{{seqProdInspEdPa}}"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
					</td>
					<input type="hidden" name="js-car-ed-status-info-detail-spec-over-data-list-inspdate" value="{{inspDate}}" docNo="{{docNo}}" >
					<input type="hidden" name="js-car-ed-status-info-detail-spec-over-data-list-boothid"  value="{{boothId}}"  docNo="{{docNo}}" >
				</tr>
			{{/rows}}
		</script>		
				
		<!-- 투입비 리스트 (최근4개) head - 스크립트-->
		<script id="js-template-car-ed-status-info-detail-insp-ed-rate-head-list" type="text/x-handlebars-template">		
			{{#rows}}
				{{#if @first}}
					<th><spring:message code="TODO.KEY" text="구분"/></th>
				{{/if}}
					<th>{{injDate}}</th>
			{{/rows}}
		</script>

		<!-- 투입비 리스트 (최근4개) colgroup - 스크립트-->
		<script id="js-template-car-ed-status-info-detail-insp-ed-rate-colgroup-list" type="text/x-handlebars-template">		
			{{#rows}}
				{{#if @first}}
					<col style="width:auto">
				{{/if}}
					<col style="width:{{width}}%">
			{{/rows}}
		</script>

		<!-- 투입비 리스트 (최근4개) PART A - 스크립트-->
		<script id="js-template-car-ed-status-info-detail-insp-ed-rate-pta-list" type="text/x-handlebars-template">		
			{{#rows}}
				{{#if @first}}
					<th>PART A</th>
				{{/if}}
					<td>{{ptaRate}}</td>
			{{/rows}}
		</script>

		<!-- 투입비 리스트 (최근4개) PART B - 스크립트-->
		<script id="js-template-car-ed-status-info-detail-insp-ed-rate-ptb-list" type="text/x-handlebars-template">		
			{{#rows}}
				{{#if @first}}
					<th>PART B</th>
				{{/if}}
					<td>{{ptbRate}}</td>
			{{/rows}}
		</script>

		<!-- 본조 온도 리스트 (최근4개) head - 스크립트-->
		<script id="js-template-car-ed-status-info-detail-insp-ed-temp-head-list" type="text/x-handlebars-template">		
			{{#rows}}
				{{#if @first}}
					<th><spring:message code="TODO.KEY" text="구분"/></th>
				{{/if}}
					<th>{{inspDate}}</th>
			{{/rows}}
		</script>

		<!-- 본조 온도 리스트 (최근4개) colgroup - 스크립트-->
		<script id="js-template-car-ed-status-info-detail-insp-ed-temp-colgroup-list" type="text/x-handlebars-template">		
			{{#rows}}
				{{#if @first}}
					<col style="width:auto">
				{{/if}}
					<col style="width:{{width}}%">
			{{/rows}}
		</script>

		<!-- 본조 온도 리스트 (최근4개) 본조 온도 - 스크립트-->
		<script id="js-template-car-ed-status-info-detail-insp-ed-temp-painttemp-list" type="text/x-handlebars-template">		
			{{#rows}}
				{{#if @first}}
					<th><spring:message code="TODO.KEY" text="본조 온도"/></th>
				{{/if}}
					<td>{{paintTemp}}</td>
			{{/rows}}
		</script>						
						
		<script type="text/javascript">
		
			//메시지 파라미터 정의함수
			var messageParam = {
				title: '<spring:message code="TODO.KEY" text="에러"/>',
				message: '',
				confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>'				
			};
			
			var carEdStatusInfoDetailInjHistListTemplate;
			var carEdStatusInfoDetailLotHistListTemplate;
			var carEdStatusInfoDetailInjRateListTemplate;
			var carEdStatusInfoDetailTempListTemplate;
			var carEdStatusInfoDetailSpecListTemplate;
			var carEdStatusInfoDetailSpecOverDataListTemplate;
			var carEdStatusInfoDetailInspEdRateHeadListTemplate;
			var carEdStatusInfoDetailInspEdRateColgroupListTemplate;
			var carEdStatusInfoDetailInspEdRatePtaListTemplate;
			var carEdStatusInfoDetailInspEdRatePtbListTemplate;
			var carEdStatusInfoDetailInspEdTempHeadListTemplate;
			var carEdStatusInfoDetailInspEdTempColgroupListTemplate;
			var carEdStatusInfoDetailInspEdTempPaintTempListTemplate;
			
			var carEdItemInfoTempListTemplate;
			
			$(document).ready(function() {
				
				// 기간 초기화
				var today = app.utils.formatDate(new Date(), "YYYYMMDD");
				$("#js-car-ed-status-info-detail-todate").val(today);
				$("#js-car-ed-status-info-detail-fromdate").val(fn_getBeforeDate(today, 0, 2).substring(0, 6) + "01");
				$("#js-car-ed-status-info-detail-todate, #js-car-ed-status-info-detail-fromdate").mask('9999-99-99');
				
				// Handlebar 초기화
				initCarEdStatusInfoDetailHandlebarsTemplate();
				
				// 도료 상태 검사 등록 버튼 클릭
				$("#js-car-ed-status-info-detail-reg-button").off().on('click', function(){
					
					var param = {
							boothId : $('#js-car-ed-status-info-detail-boothid').val()
					};
					fn_openPop($(this));
					initCarEdStatusInfoRegPopup(param);
				});
				
				// 전착 본조 이력 조회 버튼 클릭
				$("#js-car-ed-status-info-detail-refresh-button").off().on('click', function(){
					retrieveCarEdStatusInfoDetailAll();
				});
				
				// 첨가제/희석제 투입 이력 - [등록] 버튼 클릭
				$('#js-car-ed-status-info-detail-inj-hist-list-reg-button').off().on('click', function() {
					var param = {
							
							carPlant : $("#js-car-header-car-plant").val()
			  			  , boothId  : $("#js-car-ed-status-info-detail-boothid").val()
					};
					fn_openPop($(this));
					initCarEdAddInjHistRegPopup(param);
				});
				
				// Lot 변경 이력 - [등록] 버튼 클릭
				$('#js-car-ed-status-info-detail-lot-hist-list-reg-button').off().on('click', function() {
					var param = {
							carPlant : $("#js-car-header-car-plant").val()
			  			  , boothId  : $("#js-car-ed-status-info-detail-boothid").val()
					};
					fn_openPop($(this));
					initCarEdLotModHistRegPopup(param);
				});
				
				
				// 투입비 - [등록] 버튼 클릭
				$('#js-car-ed-status-info-detail-inj-rate-list-reg-button').off().on('click', function() {
					var param = {
							carPlant : $("#js-car-header-car-plant").val()
			  			  , boothId  : $("#js-car-ed-status-info-detail-boothid").val()
					};
					fn_openPop($(this));
					initCarEdInjRateRegPopup(param);
				});
				
				
				// 본조 액온 - [등록] 버튼 클릭
				$('#js-car-ed-status-info-detail-temp-list-reg-button').off().on('click', function() {
					var param = {
							carPlant : $("#js-car-header-car-plant").val()
			  			  , boothId  : $("#js-car-ed-status-info-detail-boothid").val()
					};
					fn_openPop($(this));
					initCarEdTempRegPopup(param);
				});
				
				
				// 관리 Spec - [등록] 버튼 클릭
				$('#js-car-ed-status-info-detail-spec-list-reg-button').off().on('click', function() {
					
					var param = {
						carPlant : $("#js-car-header-car-plant").val()
					  , boothId  : $("#js-car-ed-status-info-detail-boothid").val()
					};
					
					fn_openPop($(this));
					initCarEdMngSpecInfoRegPopup(param);
				});
			});
			
			// ------------------------------------------------
			// 화면 전체 재조회
			// ------------------------------------------------
			var retrieveCarEdStatusInfoDetailAll = function() {
				
				// 전착 본조 상세 메인 ITEM 조회
				retrieveCarProdInspRepItem.request();
				
				// 첨가제/희석제 투입 이력 조회
				retrieveMainCarProdInspEdInj.request();
				
				// Lot 변경 이력 조회
				retrieveMainCarProdInspEdLot.request();
				
				// 투입비 조회
				retrieveMainCarProdInspEdRate.request();
				
				// 본조 액온 조회
				retrieveMainCarProdInspEdTemp.request();
				
				// 관리 Spec 조회
				retrieveMainCarStdEdPaSpec.request();
				
				// Spec 항목별 그래프 조회
				retrieveCarSpecGraph.request();
				
				// Spec 오버 조회
				retrieveCarSpec.request();
				
				// 투입비 그래프, 표 조회
				retrieveCarProdInspEdRateGraph.request();
				
				// 본조액온 그래프, 표 조회
				retrieveCarProdInspEdTempGraph.request();
				
				// 전착 상태검사 제품명 및 제조/투입일자 조회
				retrieveEdItemsInfo.request();
				
			};

			// ------------------------------------------------
			// Handlebar 초기화
			// ------------------------------------------------
			var initCarEdStatusInfoDetailHandlebarsTemplate = function() {
				
				// 첨가제/희석제 투입 이력
				var source = $('#js-template-car-ed-status-info-detail-inj-hist-list').html();
				carEdStatusInfoDetailInjHistListTemplate = Handlebars.compile(source);
				
				// Lot 변경 이력
				var source = $('#js-template-car-ed-status-info-detail-lot-hist-list').html();
				carEdStatusInfoDetailLotHistListTemplate = Handlebars.compile(source);
				
				// 투입비 리스트
				var source = $('#js-template-car-ed-status-info-detail-inj-rate-list').html();
				carEdStatusInfoDetailInjRateListTemplate = Handlebars.compile(source);
				
				// 본조 액온 리스트
				var source = $('#js-template-car-ed-status-info-detail-temp-list').html();
				carEdStatusInfoDetailTempListTemplate = Handlebars.compile(source);
				
				// 관리 Spec 리스트
				var source = $('#js-template-car-ed-status-info-detail-spec-list').html();
				carEdStatusInfoDetailSpecListTemplate = Handlebars.compile(source);
				
				// Spec 오버 데이터 리스트
				var source = $('#js-template-car-ed-status-info-detail-spec-over-data-list').html();
				carEdStatusInfoDetailSpecOverDataListTemplate = Handlebars.compile(source);
				
				// Spec 오버 체크표시 클래스
				Handlebars.registerHelper('setSpecOverCheck', function(chkValue) {
					if(chkValue == "1"){
						return "wp-spec-over";
					} else {
						return "";
					}
				});
				
				// 관리 Spec min / max 값에 따른 표기 설정
				Handlebars.registerHelper('setDataMark', function(arg1, arg2) {
					if (arg1 != null && arg2 == null) {  
						return "Min." + arg1;
					} else if (arg1 == null && arg2 != null) { 
						return "Max." + arg2;
					} else if (arg1 != null &&  arg2 != null) {
						return arg1 + " ~ " + arg2;
					} else {
						return "";
					}
				});
				
				// 투입비 리스트 (최근 4개) - head
				var source = $('#js-template-car-ed-status-info-detail-insp-ed-rate-head-list').html();
				carEdStatusInfoDetailInspEdRateHeadListTemplate = Handlebars.compile(source);
				
				// 투입비 리스트 (최근 4개) - colgroup
				var source = $('#js-template-car-ed-status-info-detail-insp-ed-rate-colgroup-list').html();
				carEdStatusInfoDetailInspEdRateColgroupListTemplate = Handlebars.compile(source);
				
				// 투입비 리스트 (최근 4개) - PART A
				var source = $('#js-template-car-ed-status-info-detail-insp-ed-rate-pta-list').html();
				carEdStatusInfoDetailInspEdRatePtaListTemplate = Handlebars.compile(source);
				
				// 투입비 리스트 (최근 4개) - PART B
				var source = $('#js-template-car-ed-status-info-detail-insp-ed-rate-ptb-list').html();
				carEdStatusInfoDetailInspEdRatePtbListTemplate = Handlebars.compile(source);
				
				// 본조온도 리스트 (최근 4개) - head
				var source = $('#js-template-car-ed-status-info-detail-insp-ed-temp-head-list').html();
				carEdStatusInfoDetailInspEdTempHeadListTemplate = Handlebars.compile(source);
				
				// 본조온도 리스트 (최근 4개) - colgroup
				var source = $('#js-template-car-ed-status-info-detail-insp-ed-temp-colgroup-list').html();
				carEdStatusInfoDetailInspEdTempColgroupListTemplate = Handlebars.compile(source);
				
				// 본조온도 리스트 (최근 4개) - 본조온도
				var source = $('#js-template-car-ed-status-info-detail-insp-ed-temp-painttemp-list').html();
				carEdStatusInfoDetailInspEdTempPaintTempListTemplate = Handlebars.compile(source);
				
				Handlebars.registerHelper('addNumberComma', function(num) {
					return addNumberComma(num);
				});
			};
			
			//-------------------------------------------------
			// Spec 오버 조회
			//-------------------------------------------------
			var retrieveCarSpec = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {		
							
							console.log("오버");
							console.log(response);
							
							var data = {
								rows : response.rs
							};
							
							var html = carEdStatusInfoDetailSpecOverDataListTemplate(data);
							$('#js-car-ed-status-info-detail-spec-over-data-list').empty().append(html);
							
							// 수정 버튼 클릭
							$("button[name=js-car-ed-status-info-detail-spec-over-data-list-modify-button]").off().on('click', function(e){
								
								var seqProdInspEdPa	= $(this).attr("data-seqProdInspEdPa");
								
								var docNo    		= $(this).attr("docNo");
								var carPlant 		= $("#js-car-header-car-plant").val();
								var boothId  		= $("input[name=js-car-ed-status-info-detail-spec-over-data-list-boothid][docNo="+docNo+"]").val();
								var inspDate 		= $("input[name=js-car-ed-status-info-detail-spec-over-data-list-inspdate][docNo="+docNo+"]").val();
								
								var param = { 
									  docNo				: docNo
									, carPlant 			: carPlant
									, boothId  			: boothId
									, inspDate 			: inspDate
									, seqProdInspEdPa 	: seqProdInspEdPa
								};
								
								fn_openPop($(this));
								initCarEdStatusInfoRegPopup(param);
								
							});
							
							// 삭제 버튼 클릭
							$("button[name=js-car-ed-status-info-detail-spec-over-data-list-delete-button]").off().on('click', function(e){
								
								var seqProdInspEdPa	= $(this).attr("data-seqProdInspEdPa");
								
								var docNo    = $(this).attr("docNo");

								app.message.confirm({
									  title             : '<spring:message code="TODO.KEY" text="삭제"/>'
									, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
									, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
									, callback          : {
										confirm: function() {
											deleteCarProdStatusInsp.request(docNo, seqProdInspEdPa);
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
						, method   : 'retrieveCarSpec'
						, fromDate : $("#js-car-ed-status-info-detail-fromdate").val().replace(/-/gi, "")
						, toDate   : $("#js-car-ed-status-info-detail-todate").val().replace(/-/gi, "")
						, carPlant : $("#js-car-header-car-plant").val()
						, boothId  : $("#js-car-ed-status-info-detail-boothid").val()	
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};	
			
			//-------------------------------------------------
			// Spec Over 삭제
			//-------------------------------------------------
			var deleteCarProdStatusInsp = {
				success: function(response, status, jqueryXHR) {
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="삭제 되었습니다."/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
							
							// Main 재조회
							retrieveCarSpec.request();
					
						} else 	{
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
				request: function(docNo, seqProdInspEdPa) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					
					var seq = seqProdInspEdPa == "" ? 0 : seqProdInspEdPa;
					
					var params = {
						  service  			: 'car.prodInspEd'
						, method   			: 'deleteCarProdStatusInsp'
						, docNo    			: docNo
						, seqProdInspEdPa   : seq
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};

			//-------------------------------------------------
			// 투입비 그래프, 표 조회
			//-------------------------------------------------
			var retrieveCarProdInspEdRateGraph = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {		
							

							// 차트
							setHighChartCarInspEdRateGraph(response.rs);

							// 날짜 head, colgroup 리스트 세팅
							var colWidth = 80 / response.rs.length;
							for(var i=0 ; i<response.rs.length ; i++){
								response.rs[i].width = colWidth;
							}
							
							var data = {
									rows : response.rs
							};
							var html = carEdStatusInfoDetailInspEdRateHeadListTemplate(data);
							$('#js-car-ed-status-info-detail-insp-ed-rate-head-list').empty().append(html);
							
							var html2 = carEdStatusInfoDetailInspEdRateColgroupListTemplate(data);
							$('#js-car-ed-status-info-detail-insp-ed-rate-colgroup-list').empty().append(html2);
							
							var html3 = carEdStatusInfoDetailInspEdRatePtaListTemplate(data);
							$('#js-car-ed-status-info-detail-insp-ed-rate-pta-list').empty().append(html3);
							
							var html4 = carEdStatusInfoDetailInspEdRatePtbListTemplate(data);
							$('#js-car-ed-status-info-detail-insp-ed-rate-ptb-list').empty().append(html4);

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
						, method   : 'retrieveCarProdInspEdRateGraph'
						, fromDate : $("#js-car-ed-status-info-detail-fromdate").val().replace(/-/gi, "")
						, toDate   : $("#js-car-ed-status-info-detail-todate").val().replace(/-/gi, "")
						, carPlant : $("#js-car-header-car-plant").val()
						, boothId  : $("#js-car-ed-status-info-detail-boothid").val()	
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};	

			//------------------------------------------------
			// 하이차트 - 투입비 그래프
			//------------------------------------------------
			var setHighChartCarInspEdRateGraph = function(resultData){
				
				var data     = resultData;
				var dateArr  = new Array();
				var ptaArr   = new Array();
				var ptbArr   = new Array();
				for(var i=0 ; i<data.length ; i++){
					dateArr.push(data[i].injDate);
					ptaArr.push(data[i].ptaRate);
					ptbArr.push(data[i].ptbRate);
				}
				Highcharts.chart('js-car-ed-status-info-detail-insp-ed-rate-chart', {
				    chart: {
				        type: 'line'
				    },
				    title: {
				        text: ''
				    },
				    xAxis: {
				        categories: dateArr
				    },
				    yAxis: {
				        title: {
				            text: ''
				        }
				    },
				    plotOptions: {
				        line: {
				            dataLabels: {
				                enabled: true
				            },
				            enableMouseTracking: false
				        }
				    },
				    exporting: {enabled: false },
				    series: [{
				        name: "PART A",
				        data: ptaArr
				    }, {
				        name: "PART B",
				        data: ptbArr
				    }]
			    });
			};

			//-------------------------------------------------
			// 본조액온 그래프, 표 조회
			//-------------------------------------------------
			var retrieveCarProdInspEdTempGraph = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {		
							

							// 차트
							setHighChartCarInspEdTempGraph(response.rs);
							
							// 날짜 head, colgroup 리스트 세팅
							var colWidth = 80 / response.rs.length;
							for(var i=0 ; i<response.rs.length ; i++){
								response.rs[i].width = colWidth;
							}
							
							var data = {
									rows : response.rs
							};
							var html = carEdStatusInfoDetailInspEdTempHeadListTemplate(data);
							$('#js-car-ed-status-info-detail-insp-ed-temp-head-list').empty().append(html);
							
							var html2 = carEdStatusInfoDetailInspEdTempColgroupListTemplate(data);
							$('#js-car-ed-status-info-detail-insp-ed-temp-colgroup-list').empty().append(html2);
							
							var html3 = carEdStatusInfoDetailInspEdTempPaintTempListTemplate(data);
							$('#js-car-ed-status-info-detail-insp-ed-temp-painttemp-list').empty().append(html3);
							
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
						, method   : 'retrieveCarProdInspEdTempGraph'
						, fromDate : $("#js-car-ed-status-info-detail-fromdate").val().replace(/-/gi, "")
						, toDate   : $("#js-car-ed-status-info-detail-todate").val().replace(/-/gi, "")
						, carPlant : $("#js-car-header-car-plant").val()
						, boothId  : $("#js-car-ed-status-info-detail-boothid").val()	
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};	
			
			//------------------------------------------------
			// 하이차트 - 본조액온 그래프
			//------------------------------------------------
			var setHighChartCarInspEdTempGraph = function(resultData){
				
				var data     = resultData;
				var dateArr  = new Array();
				var tempArr  = new Array();
				for(var i=0 ; i<data.length ; i++){
					dateArr.push(data[i].inspDate);
					tempArr.push(data[i].paintTemp);
				}
				Highcharts.chart('js-car-ed-status-info-detail-insp-ed-temp-chart', {
				    chart: {
				        type: 'line'
				    },
				    title: {
				        text: ''
				    },
				    xAxis: {
				        categories: dateArr
				    },
				    yAxis: {
				        title: {
				            text: ''
				        }
				    },
				    plotOptions: {
				        line: {
				            dataLabels: {
				                enabled: true
				            },
				            enableMouseTracking: false
				        }
				    },
				    exporting: {enabled: false },
				    series: [{
				        name: "본조 온도 (˚C)",
				        data: tempArr
				    }]
			    });
			};
			
			//-------------------------------------------------
			// Spec 항목별 그래프 조회
			//-------------------------------------------------
			var retrieveCarSpecGraph = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {		
							
							// 차트
							setHighChartCarSpecGraph(response.rs, "nv", "NV");
							
							// 차트 항목 클릭
							$('button[name=js-car-ed-status-info-detail-spec-over-chart-button]').off().on('click', function() {
								setHighChartCarSpecGraph(response.rs, $(this).val(), $(this).text());
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
						, method   : 'retrieveCarSpecGraph'
						, fromDate : $("#js-car-ed-status-info-detail-fromdate").val().replace(/-/gi, "")
						, toDate   : $("#js-car-ed-status-info-detail-todate").val().replace(/-/gi, "")
						, carPlant : $("#js-car-header-car-plant").val()
						, boothId  : $("#js-car-ed-status-info-detail-boothid").val()	
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};	

			//------------------------------------------------
			// 하이차트 - Spec 항목별 그래프
			//------------------------------------------------
			var setHighChartCarSpecGraph = function(resultData, type, typeName){
				
				var data     = resultData[type];
				var valueArr = new Array();
				var dateArr  = new Array();
				for(var i=0 ; i<data.length ; i++){
					valueArr.push(data[i].value);
					dateArr.push(data[i].inspDate);
				}
				Highcharts.chart('js-car-ed-status-info-detail-spec-over-chart', {
				    chart: {
				        type: 'line'
				    },
				    title: {
				        text: ''
				    },
				    xAxis: {
				        categories: dateArr
				    },
				    yAxis: {
				        title: {
				            text: ''
				        }
				    },
				    legend: {
				    	enabled: false
				        //layout: 'vertical',
				        //align: 'right',
				        //verticalAlign: 'middle'
				    },
				    plotOptions: {
				        line: {
				            dataLabels: {
				                enabled: true
				            },
				            enableMouseTracking: false
				        }
				    },
				    exporting: {enabled: false },
				    series: [{
				        name: typeName,
				        data: valueArr
				    }]
			    });
			};
			
			//-------------------------------------------------
			//  첨가제/희석제 투입 이력 삭제
			//-------------------------------------------------
			var deleteCarProdInspEdInj = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {		

							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="정상적으로 삭제되었습니다."/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
							
							// 첨가제/희석제 투입 이력 재조회
							retrieveMainCarProdInspEdInj.request();

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
				request: function(seqCarProdInspEdInj) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service              	: 'car.prodInspEd'
						, method               	: 'deleteCarProdInspEdInj'
						, seqCarProdInspEdInj 	: seqCarProdInspEdInj
						, workType             	: "PC"
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				},
				carEdAddInjHistModPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {		

								app.message.alert({
									  title             : '<spring:message code="TODO.KEY" text="알림"/>'
									, message           : '<spring:message code="TODO.KEY" text="정상적으로 삭제되었습니다."/>'
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
								});
								$("#js-car-ed-add-inj-hist-mod-popup-close-button").click();
								
								// 재조회
								retrieveMainCarProdInspEdInj.request();

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
					request: function(seqCarProdInspEdInj) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						var params = {
							  service              : 'car.prodInspEd'
							, method               : 'deleteCarProdInspEdInj'
							, seqCarProdInspEdInj  : $("#js-car-ed-add-inj-hist-mod-popup-seq").val()
							, workType             : "PC"
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				}
			};	
			
			//-------------------------------------------------
			//  Lot 변경이력 삭제
			//-------------------------------------------------
			var deleteCarProdInspEdLot = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {		

							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="정상적으로 삭제되었습니다."/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
							
							// Lot 변경 이력 재조회
							retrieveMainCarProdInspEdLot.request();

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
				request: function(seqCarProdInspEdLot) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service              	: 'car.prodInspEd'
						, method               	: 'deleteCarProdInspEdLot'
						, seqCarProdInspEdLot 	: seqCarProdInspEdLot
						, workType             	: "PC"
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				},
				carEdLotModHistModPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {		

								app.message.alert({
									  title             : '<spring:message code="TODO.KEY" text="알림"/>'
									, message           : '<spring:message code="TODO.KEY" text="정상적으로 삭제되었습니다."/>'
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
								});
								
								$("#js-car-ed-lot-mod-hist-mod-popup-close-button").click();
								
								// Lot 변경 이력 재조회
								retrieveMainCarProdInspEdLot.request();

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
							, method               : 'deleteCarProdInspEdLot'
							, seqCarProdInspEdLot  : $("#js-car-ed-lot-mod-hist-mod-popup-seq").val()
							, workType             : "PC"
						};
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				}
			};	
			
			//-------------------------------------------------
			//  투입비 삭제
			//-------------------------------------------------
			var deleteCarProdInspEdRate = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {		

							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="정상적으로 삭제되었습니다."/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
							
							// 투입비 재조회
							retrieveMainCarProdInspEdRate.request();

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
				request: function(seqCarProdInspEdRate) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service              : 'car.prodInspEd'
						, method               : 'deleteCarProdInspEdRate'
						, seqCarProdInspEdRate : seqCarProdInspEdRate
						, workType             : "PC"
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};	
			
			//-------------------------------------------------
			//  본조 액온 삭제
			//-------------------------------------------------
			var deleteCarProdInspEdTemp = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {		

							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="정상적으로 삭제되었습니다."/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
							
							// 본조 액온 재조회
							retrieveMainCarProdInspEdTemp.request();

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
				request: function(seqCarProdInspEdTemp) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service              : 'car.prodInspEd'
						, method               : 'deleteCarProdInspEdTemp'
						, seqCarProdInspEdTemp : seqCarProdInspEdTemp
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};	

			//-------------------------------------------------
			//  관리 Spec 삭제
			//-------------------------------------------------
			var deleteCarProdInspEdSpec = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {		

							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="정상적으로 삭제되었습니다."/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
							
							// 관리 Spec 재조회
							retrieveMainCarStdEdPaSpec.request();

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
						, method   : 'deleteCarProdInspEdSpec'
						, carPlant : $("#js-car-header-car-plant").val()
						, boothId  : $("#js-car-ed-status-info-detail-boothid").val()
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};	
			
			//-------------------------------------------------
			//  관리 Spec 조회
			//-------------------------------------------------
			var retrieveMainCarStdEdPaSpec = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {		
							
							var result = carEdStatusInfoDetailSpecListTemplate({rows : response.rs});
							$("#js-car-ed-status-info-detail-spec-list").empty().append(result);
							
							// 관리 Spec - [수정] 버튼 클릭
							$('button[name=js-car-ed-status-info-detail-spec-list-modify-button]').off().on('click', function() {
								var param = {
										carPlant : $("#js-car-header-car-plant").val()
									  , boothId  : $("#js-car-ed-status-info-detail-boothid").val()
								};
								fn_openPop($(this));
								initCarEdMngSpecInfoRegPopup(param);
							});
							
							// 관리 Spec - [삭제] 버튼 클릭
							$('button[name=js-car-ed-status-info-detail-spec-list-delete-button]').off().on('click', function() {
								app.message.confirm({
									  title             : '<spring:message code="TODO.KEY" text="알림"/>'
									, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
									, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
									, callback          : {
										confirm: function() {
											// 관리 Spec 정보 삭제
											deleteCarProdInspEdSpec.request();
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
						, method   : 'retrieveMainCarStdEdPaSpec'
						, carPlant : $("#js-car-header-car-plant").val()
						, boothId  : $("#js-car-ed-status-info-detail-boothid").val()
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};	

			//-------------------------------------------------
			//  본조 액온 조회
			//-------------------------------------------------
			var retrieveMainCarProdInspEdTemp = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {		
							
							var result = carEdStatusInfoDetailTempListTemplate({rows : response.rs});
							$("#js-car-ed-status-info-detail-temp-list").empty().append(result);
							
							// 본조 액온 - [수정] 버튼 클릭
							$('button[name=js-car-ed-status-info-detail-temp-list-modify-button]').off().on('click', function() {
								var param = {
										//docNo                : $(this).attr("docNo")
										carPlant : $("#js-car-header-car-plant").val()
						  			  , boothId  : $("#js-car-ed-status-info-detail-boothid").val()
									  , seqCarProdInspEdTemp : $(this).attr("seq")
								};
								fn_openPop($(this));
								initCarEdTempRegPopup(param);
							});
							
							// 본조 액온 - [삭제] 버튼 클릭
							$('button[name=js-car-ed-status-info-detail-temp-list-delete-button]').off().on('click', function() {
								var seqCarProdInspEdTemp = $(this).attr("seq");
								app.message.confirm({
									  title             : '<spring:message code="TODO.KEY" text="알림"/>'
									, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
									, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
									, callback          : {
										confirm: function() {
											// 본조 액온 삭제
											deleteCarProdInspEdTemp.request(seqCarProdInspEdTemp);
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
						, method   : 'retrieveMainCarProdInspEdTemp'
						, fromDate : $("#js-car-ed-status-info-detail-fromdate").val().replace(/-/gi, "")
						, toDate   : $("#js-car-ed-status-info-detail-todate").val().replace(/-/gi, "")
						, carPlant : $("#js-car-header-car-plant").val()
						, boothId  : $("#js-car-ed-status-info-detail-boothid").val()						
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};	
			
			//-------------------------------------------------
			//  투입비 조회
			//-------------------------------------------------
			var retrieveMainCarProdInspEdRate = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {		
							
							var result = carEdStatusInfoDetailInjRateListTemplate({rows : response.rs});
							$("#js-car-ed-status-info-detail-inj-rate-list").empty().append(result);
							
							// 투입비 - [수정] 버튼 클릭
							$('button[name=js-car-ed-status-info-detail-inj-rate-list-modify-button]').off().on('click', function() {
								var param = {
										//docNo                : $(this).attr("docNo")
										carPlant : $("#js-car-header-car-plant").val()
						  			  , boothId  : $("#js-car-ed-status-info-detail-boothid").val()
									  , seqCarProdInspEdRate : $(this).attr("seq")
								};
								fn_openPop($(this));
								initCarEdInjRateRegPopup(param);
							});
							
							// 투입비 - [삭제] 버튼 클릭
							$('button[name=js-car-ed-status-info-detail-inj-rate-list-delete-button]').off().on('click', function() {
								var seqCarProdInspEdRate = $(this).attr("seq");
								app.message.confirm({
									  title             : '<spring:message code="TODO.KEY" text="알림"/>'
									, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
									, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
									, callback          : {
										confirm: function() {
											// 투입비 삭제
											deleteCarProdInspEdRate.request(seqCarProdInspEdRate);
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
						, method   : 'retrieveMainCarProdInspEdRate'
						, fromDate : $("#js-car-ed-status-info-detail-fromdate").val().replace(/-/gi, "")
						, toDate   : $("#js-car-ed-status-info-detail-todate").val().replace(/-/gi, "")
						, carPlant : $("#js-car-header-car-plant").val()
						, boothId  : $("#js-car-ed-status-info-detail-boothid").val()						
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};		
			
			//-------------------------------------------------
			//  Lot 변경 이력 조회
			//-------------------------------------------------
			var retrieveMainCarProdInspEdLot = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {		
							
							var result = carEdStatusInfoDetailLotHistListTemplate({rows : response.rs});
							$("#js-car-ed-status-info-detail-lot-hist-list").empty().append(result);

							// Lot 변경 이력 - [수정] 버튼 클릭
							$('button[name=js-car-ed-status-info-detail-lot-hist-list-modify-button]').off().on('click', function() {
								fn_openPop($(this));
								initCarEdLotModHistModPopup($(this).attr("seq"));
							});
							
							// Lot 변경 이력 - [삭제] 버튼 클릭
							$('button[name=js-car-ed-status-info-detail-lot-hist-list-delete-button]').off().on('click', function() {
								var seqCarProdInspEdLot = $(this).attr("seq");
								app.message.confirm({
									  title             : '<spring:message code="TODO.KEY" text="알림"/>'
									, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
									, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
									, callback          : {
										confirm: function() {
											// Lot 변경이력 삭제
											deleteCarProdInspEdLot.request(seqCarProdInspEdLot);
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
						, method   : 'retrieveMainCarProdInspEdLot'
						, fromDate : $("#js-car-ed-status-info-detail-fromdate").val().replace(/-/gi, "")
						, toDate   : $("#js-car-ed-status-info-detail-todate").val().replace(/-/gi, "")
						, carPlant : $("#js-car-header-car-plant").val()
						, boothId  : $("#js-car-ed-status-info-detail-boothid").val()						
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//-------------------------------------------------
			//  전착 본조 상세 메인 ITEM 조회
			//-------------------------------------------------
			var retrieveCarProdInspRepItem = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {		
							
							//$("#js-car-ed-status-info-detail-title").html("<span>" + $("#js-car-ed-status-info-detail-boothid option:selected").text() + "</span>");
							//$("#js-car-ed-status-info-detail-pta").html("");
							//$("#js-car-ed-status-info-detail-ptb").html("");
							
							if(response.rs.length > 0){
								var data = response.rs[0];
								
								for(var key in data){
									data[key] = data[key] == null ? "" : data[key];
								}
								
								//$("#js-car-ed-status-info-detail-title").html("<span>" + data.boothNm + "   " + data.items + "</span>");
								//$("#js-car-ed-status-info-detail-pta").html("<span>PART A</span>제조일자 " + data.aInDate + " , 투입일자 " + data.aInjDate);
								//$("#js-car-ed-status-info-detail-ptb").html("<span>PART B</span>제조일자 " + data.bInDate + " , 투입일자 " + data.bInjDate);
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
						, method   : 'retrieveCarProdInspRepItem'
						, fromDate : $("#js-car-ed-status-info-detail-fromdate").val().replace(/-/gi, "")
						, toDate   : $("#js-car-ed-status-info-detail-todate").val().replace(/-/gi, "")
						, carPlant : $("#js-car-header-car-plant").val()
						, boothId  : $("#js-car-ed-status-info-detail-boothid").val()
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			//-------------------------------------------------
			//  전착 상태검사 제품명 및 제조/투입일자 조회(TANK이미지 상/하단에 표시)
			//-------------------------------------------------
			var retrieveEdItemsInfo = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {		
							
							//$("#js-car-ed-status-info-detail-pta").html("");
							//$("#js-car-ed-status-info-detail-ptb").html("");
							$("#js-car-ed-status-info-detail-title-div").text("");
							$("#js-car-ed-status-info-detail-pta-list").find("li").remove();
							
							if(response.rs.length > 0){
								
								var data = response.rs;
								//var data2 = response.rs[1];
								
								var boothCodeNm = $("#js-car-ed-status-info-detail-boothid option:selected").text();
								var ptaItemsNm = '';
								
								if(data.ptaItemsNm != ''){
									ptaItemsNm = data[0].ptaItemsNm;
								}
								
								var html = boothCodeNm + '<span id="js-car-ed-status-info-detail-title-span">'+ ptaItemsNm +'</span>';
								$("#js-car-ed-status-info-detail-title-div").html(html);
								
								for(var i=0; i < data.length; i++){
									var html = "<li style='width:250px !important'><span>PT."+ data[i].partType +"</span>제조일자 " + data[i].mfgDate + ", 투입일자 " + data[i].injDate;
									$("#js-car-ed-status-info-detail-pta-list").append(html);
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
						, method   : 'retrieveEdItemsInfo'
						, fromDate : $("#js-car-ed-status-info-detail-fromdate").val().replace(/-/gi, "")
						, toDate   : $("#js-car-ed-status-info-detail-todate").val().replace(/-/gi, "")
						, carPlant : $("#js-car-header-car-plant").val()
						, boothId  : $("#js-car-ed-status-info-detail-boothid").val()
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			
			//-------------------------------------------------
			// 첨가제/희석제 투입 이력 조회
			//-------------------------------------------------
			var retrieveMainCarProdInspEdInj = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {		
							
							var result = carEdStatusInfoDetailInjHistListTemplate({rows : response.rs});
							$("#js-car-ed-status-info-detail-inj-hist-list").empty().append(result);
							
							// 첨가제/희석제 투입 이력 - [수정] 버튼 클릭
							$('button[name=js-car-ed-status-info-detail-inj-hist-list-modify-button]').off().on('click', function() {
								
								fn_openPop($(this));
								initCarEdAddInjHistModPopup($(this).attr("seq"));
							});
							
							// 첨가제/희석제 투입 이력 - [삭제] 버튼 클릭
							$('button[name=js-car-ed-status-info-detail-inj-hist-list-delete-button]').off().on('click', function() {
								var seqCarProdInspEdInj = $(this).attr("seq");
								app.message.confirm({
									  title             : '<spring:message code="TODO.KEY" text="알림"/>'
									, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
									, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
									, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
									, callback          : {
										confirm: function() {
											// 첨가제/희석제 투입 이력 삭제
											deleteCarProdInspEdInj.request(seqCarProdInspEdInj);
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
						, method   : 'retrieveMainCarProdInspEdInj'
						, fromDate : $("#js-car-ed-status-info-detail-fromdate").val().replace(/-/gi, "")
						, toDate   : $("#js-car-ed-status-info-detail-todate").val().replace(/-/gi, "")
						, carPlant : $("#js-car-header-car-plant").val()
						, boothId  : $("#js-car-ed-status-info-detail-boothid").val()
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};			
			
		</script>
		
	</tiles:putAttribute>
	<!-- 페이지 레벨 스크립트 E -->

	<!-- 팝업 콘텐츠 S -->
	<tiles:putAttribute name="popup-content">
	
	<!-- 전착 관리 Spec 정보 관리 팝업 [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-ed-mng-spec-info-reg-popup" class="wp-pop-layer wp-pop-w800 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="관리Spec. 관리"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-ed-mng-spec-info-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
	    	</div>
	        <div class="wp-pop-conts">
			<!-- scroll Area -->
			<div class="wp-pop-cont-scrollable">
	            <!--content //-->
			<!-- 기본 정보 -->
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption><spring:message code="TODO.KEY" text="기본 정보등록"/></caption>
					<colgroup>
						<col style="width:auto">
						<col style="width:11%">
						<col style="width:11%">
						<col style="width:11%">
						<col style="width:11%">
						<col style="width:11%">
						<col style="width:11%">
						<col style="width:11%">
						<col style="width:11%">
					</colgroup>
					<thead>
						<tr>
							<th><spring:message code="TODO.KEY" text="구분"/></th>
							<th>NV</th>
							<th>ASH</th>
							<th>MEQ <br />(m mol)</th>
							<th>PH</th>
							<th>Conductivity (㎲/㎝)</th>
							<th>Solvent</th>
							<th>BC</th>
							<th>TEXANOL</th>
						</tr>
					</thead>
					<tbody>
						<tr class="wp-td-padding0">
							<th><spring:message code="TODO.KEY" text="상한"/></th>
							<td><input type="text" name="js-car-ed-mng-spec-info-reg-popup-input-data" id="js-car-ed-mng-spec-info-reg-popup-nv-max"  field-type="max" field-name="NV 상한" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p"></td>
							<td><input type="text" name="js-car-ed-mng-spec-info-reg-popup-input-data" id="js-car-ed-mng-spec-info-reg-popup-ash-max" field-type="max" field-name="ASH 상한" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p"></td>
							<td><input type="text" name="js-car-ed-mng-spec-info-reg-popup-input-data" id="js-car-ed-mng-spec-info-reg-popup-meq-max" field-type="max" field-name="MEQ 상한" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p"></td>
							<td><input type="text" name="js-car-ed-mng-spec-info-reg-popup-input-data" id="js-car-ed-mng-spec-info-reg-popup-ph-max"  field-type="max" field-name="PH 상한" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p"></td>
							<td><input type="text" name="js-car-ed-mng-spec-info-reg-popup-input-data" id="js-car-ed-mng-spec-info-reg-popup-con-max" field-type="max" field-name="Conductivity 상한" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p"></td>
							<td><input type="text" name="js-car-ed-mng-spec-info-reg-popup-input-data" id="js-car-ed-mng-spec-info-reg-popup-sol-max" field-type="max" field-name="Solvent 상한" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p"></td>
							<td><input type="text" name="js-car-ed-mng-spec-info-reg-popup-input-data" id="js-car-ed-mng-spec-info-reg-popup-bc-max"  field-type="max" field-name="BC 상한" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p"></td>
							<td><input type="text" name="js-car-ed-mng-spec-info-reg-popup-input-data" id="js-car-ed-mng-spec-info-reg-popup-tex-max" field-type="max" field-name="TEXANOL 상한" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p"></td>
						</tr>
						<tr class="wp-td-padding0">
							<th><spring:message code="TODO.KEY" text="하한"/></th>
							<td><input type="text" name="js-car-ed-mng-spec-info-reg-popup-input-data" id="js-car-ed-mng-spec-info-reg-popup-nv-min"  field-type="min" field-name="NV 하한" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p"></td>
							<td><input type="text" name="js-car-ed-mng-spec-info-reg-popup-input-data" id="js-car-ed-mng-spec-info-reg-popup-ash-min" field-type="min" field-name="ASH 하한" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p"></td>
							<td><input type="text" name="js-car-ed-mng-spec-info-reg-popup-input-data" id="js-car-ed-mng-spec-info-reg-popup-meq-min" field-type="min" field-name="MEQ 하한" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p"></td>
							<td><input type="text" name="js-car-ed-mng-spec-info-reg-popup-input-data" id="js-car-ed-mng-spec-info-reg-popup-ph-min"  field-type="min" field-name="PH 하한" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p"></td>
							<td><input type="text" name="js-car-ed-mng-spec-info-reg-popup-input-data" id="js-car-ed-mng-spec-info-reg-popup-con-min" field-type="min" field-name="Conductivity 하한" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p"></td>
							<td><input type="text" name="js-car-ed-mng-spec-info-reg-popup-input-data" id="js-car-ed-mng-spec-info-reg-popup-sol-min" field-type="min" field-name="Solvent 하한" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p"></td>
							<td><input type="text" name="js-car-ed-mng-spec-info-reg-popup-input-data" id="js-car-ed-mng-spec-info-reg-popup-bc-min"  field-type="min" field-name="BC 하한" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p"></td>
							<td><input type="text" name="js-car-ed-mng-spec-info-reg-popup-input-data" id="js-car-ed-mng-spec-info-reg-popup-tex-min" field-type="min" field-name="TEXANOL 하한" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p"></td>
						</tr>
					</tbody>
				</table>
	            </div>
				<!-- // scroll Area -->
				</div>
				<div class="wp-btn-area">
					<button type="button" id="js-car-ed-mng-spec-info-reg-popup-save-button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="저장"/></button>
				</div>
				<input type="hidden" name="js-car-ed-mng-spec-info-reg-popup-input-data" id="js-car-ed-mng-spec-info-reg-popup-car-plant"    field-name="공장코드" >
				<input type="hidden" name="js-car-ed-mng-spec-info-reg-popup-input-data" id="js-car-ed-mng-spec-info-reg-popup-booth-id" field-name="부스코드" >
	        </div>
	    </div>
	</div>
	<!-- 전착 관리 Spec 정보 관리 팝업 [END] -->
	
	<!-- 전착 관리 Spec 정보 관리 팝업 - 스크립트 [START] -->
	<script type="text/javascript">
	
	//메시지 파라미터 정의함수
	var messageParam = {
		title: '<spring:message code="TODO.KEY" text="에러"/>',
		message: '',
		confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>'				
	};
	
	//------------------------------------------------
	// 초기화
	// ------------------------------------------------
	var initCarEdMngSpecInfoRegPopup = function(param) {
		
		// 입력값 초기화
		$('input[name=js-car-ed-mng-spec-info-reg-popup-input-data]').val("");
		
		// 파라미터 Set.
		if(typeof param == "undefined"){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공장코드, 부스코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-ed-mng-spec-info-reg-popup-close-button").click();
					}
				}
			});
			return;
		}
		
		$('#js-car-ed-mng-spec-info-reg-popup-car-plant').val(param.carPlant);
		$('#js-car-ed-mng-spec-info-reg-popup-booth-id').val(param.boothId);
		
		// 상한, 하한 값 : 마이너스 없는 양수(실수). 소수점2째자리만 입력 가능
		onlyDecimal($('input[name=js-car-ed-mng-spec-info-reg-popup-input-data]'), 10, 2);
		
		// 관리 Spec 팝업 조회
		retrieveCarStdEdPaSpec.request();
		
		// 저장 버튼 클릭 Event 
		$('#js-car-ed-mng-spec-info-reg-popup-save-button').off().on('click', function(){
			
			// Validation Check
			if(!validationCheckCarEdMngSpecInfoReg()){
				return;
			}
			
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						// 관리 Spec 정보 저장
						saveCarStdEdPaSpec.request();
					}
				}
			});
			
		});
	};
	
	//-------------------------------------------------
	// 관리 Spec 팝업 조회
	//-------------------------------------------------
	var retrieveCarStdEdPaSpec = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					if(response.rs.length > 0){
						var resultData = response.rs[0];
						
						$('#js-car-ed-mng-spec-info-reg-popup-nv-max'   ).val(resultData.nvMaxValue);
						$('#js-car-ed-mng-spec-info-reg-popup-nv-min'   ).val(resultData.nvMinValue);
						$('#js-car-ed-mng-spec-info-reg-popup-ash-max'  ).val(resultData.ashMaxValue);
						$('#js-car-ed-mng-spec-info-reg-popup-ash-min'  ).val(resultData.ashMinValue);
						$('#js-car-ed-mng-spec-info-reg-popup-meq-max'  ).val(resultData.meqMaxValue);
						$('#js-car-ed-mng-spec-info-reg-popup-meq-min'  ).val(resultData.meqMinValue);
						$('#js-car-ed-mng-spec-info-reg-popup-ph-max'   ).val(resultData.phMaxValue);
						$('#js-car-ed-mng-spec-info-reg-popup-ph-min'   ).val(resultData.phMinValue);
						$('#js-car-ed-mng-spec-info-reg-popup-con-max'  ).val(resultData.conMaxValue);
						$('#js-car-ed-mng-spec-info-reg-popup-con-min'  ).val(resultData.conMinValue);
						$('#js-car-ed-mng-spec-info-reg-popup-bc-max'   ).val(resultData.bcMaxValue);
						$('#js-car-ed-mng-spec-info-reg-popup-bc-min'   ).val(resultData.bcMinValue);
						$('#js-car-ed-mng-spec-info-reg-popup-tex-max'  ).val(resultData.texMaxValue);
						$('#js-car-ed-mng-spec-info-reg-popup-tex-min'  ).val(resultData.texMinValue);
						$('#js-car-ed-mng-spec-info-reg-popup-sol-max'  ).val(resultData.solMaxValue);
						$('#js-car-ed-mng-spec-info-reg-popup-sol-min'  ).val(resultData.solMinValue);
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
				, method   : 'retrieveCarStdEdPaSpec'
				, carPlant : $('#js-car-ed-mng-spec-info-reg-popup-car-plant').val()
				, boothId  : $('#js-car-ed-mng-spec-info-reg-popup-booth-id').val()
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	// ------------------------------------------------
	// 관리 Spec 정보 저장 전 Validation Check
	// ------------------------------------------------
	var validationCheckCarEdMngSpecInfoReg = function() {
		
		var inputFields = $('input[name=js-car-ed-mng-spec-info-reg-popup-input-data]');
		
		var fieldValueChk = true;
		
		for(var i=0 ; i < inputFields.length ; i++){
			var $this = $(inputFields[i]);
			
			if($this.attr('field-type') == "min" || $this.attr('field-type') == "max")
			{
				var inputValue = $this.val();
				
				if(!app.utils.isEmpty(inputValue))
				{
					fieldValueChk = false;
					break;
				}
			}
			
		}
		
		// 항목 중 한개도 입력된 데이터가 없을 경우
		if(fieldValueChk){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림" />'
				, message           : '<spring:message code="TODO.KEY" text="변경된 데이터가 없습니다" />'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인" />'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		
		// 상한, 하한 크기 비교 체크
		var maxFields = $('input[name=js-car-ed-mng-spec-info-reg-popup-input-data][field-type=max]');
		var minFields = $('input[name=js-car-ed-mng-spec-info-reg-popup-input-data][field-type=min]');
		
		for(var j=0 ; j<maxFields.length ; j++){
			var maxValue   = Number($(maxFields[j]).val());
			var minValue   = Number($(minFields[j]).val());
			var maxFieldName  = $(maxFields[j]).attr("field-name");
			var minFieldName  = $(minFields[j]).attr("field-name");
			
			if(maxValue > 0){
				if(maxValue < minValue){
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="알림"/>'
						, message           : '<spring:message code="TODO.KEY" text="' + minFieldName + '값이 ' + maxFieldName + '값보다 더 큽니다. "/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, callback          : {
							confirm: function() {
								$(minFields[j]).focus();
							}
						}
					});
					return false;
				} 
			}
		}
		return true;
	};
	
	//-------------------------------------------------
	// 관리 Spec 팝업 저장
	//-------------------------------------------------
	var saveCarStdEdPaSpec = {
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
					$("#js-car-ed-mng-spec-info-reg-popup-close-button").click();
					
					// 관리 Spec 재조회
					retrieveMainCarStdEdPaSpec.request();
					
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
	
			// 파라미터 Set
			var carPlant      = $('#js-car-ed-mng-spec-info-reg-popup-car-plant').val();
			var boothId       = $('#js-car-ed-mng-spec-info-reg-popup-booth-id').val();
			var nvMaxValue    = $('#js-car-ed-mng-spec-info-reg-popup-nv-max').val();
			var nvMinValue    = $('#js-car-ed-mng-spec-info-reg-popup-nv-min').val();
			var ashMaxValue   = $('#js-car-ed-mng-spec-info-reg-popup-ash-max').val();
			var ashMinValue   = $('#js-car-ed-mng-spec-info-reg-popup-ash-min').val();
			var meqMaxValue   = $('#js-car-ed-mng-spec-info-reg-popup-meq-max').val();
			var meqMinValue   = $('#js-car-ed-mng-spec-info-reg-popup-meq-min').val();
			var phMaxValue    = $('#js-car-ed-mng-spec-info-reg-popup-ph-max').val();
			var phMinValue    = $('#js-car-ed-mng-spec-info-reg-popup-ph-min').val();
			var conMaxValue   = $('#js-car-ed-mng-spec-info-reg-popup-con-max').val();
			var conMinValue   = $('#js-car-ed-mng-spec-info-reg-popup-con-min').val();
			var bcMaxValue    = $('#js-car-ed-mng-spec-info-reg-popup-bc-max').val();
			var bcMinValue    = $('#js-car-ed-mng-spec-info-reg-popup-bc-min').val();
			var texMaxValue   = $('#js-car-ed-mng-spec-info-reg-popup-tex-max').val();
			var texMinValue   = $('#js-car-ed-mng-spec-info-reg-popup-tex-min').val();
			var solMaxValue   = $('#js-car-ed-mng-spec-info-reg-popup-sol-max').val();
			var solMinValue   = $('#js-car-ed-mng-spec-info-reg-popup-sol-min').val();
			
			var params = {
				  service       : 'car.prodInspEd'
				, method        : 'saveCarStdEdPaSpec'
				, carPlant      : carPlant
				, boothId       : boothId
				, nvMinValue    : nvMinValue
				, nvMaxValue    : nvMaxValue
				, ashMinValue   : ashMinValue
				, ashMaxValue   : ashMaxValue
				, meqMinValue   : meqMinValue
				, meqMaxValue   : meqMaxValue
				, phMinValue    : phMinValue
				, phMaxValue    : phMaxValue
				, conMinValue   : conMinValue
				, conMaxValue   : conMaxValue
				, bcMinValue    : bcMinValue
				, bcMaxValue    : bcMaxValue
				, texMinValue   : texMinValue
				, texMaxValue   : texMaxValue
				, solMinValue   : solMinValue
				, solMaxValue   : solMaxValue
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	</script>
	<!-- 전착 관리 Spec 정보 관리 팝업 - 스크립트 [END] -->
	
	<!-- 전착 투입비 관리 팝업 [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-ed-inj-rate-reg-popup" class="wp-pop-layer wp-pop-w500 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="투입비 관리"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-ed-inj-rate-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
	    	</div>
	        <div class="wp-pop-conts">
		<!-- scroll Area -->
		<div class="wp-pop-cont-scrollable">
	            <!--content //-->
			<!-- 기본 정보 -->
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption><spring:message code="TODO.KEY" text="투입비 관리 등록"/></caption>
					<colgroup>
						<col style="width:30%">
						<col style="width:15%">
						<col style="width:15%">
						<col style="width:40%">
					</colgroup>
					<thead>
						<tr>
							<th><spring:message code="TODO.KEY" text="투입일자"/></th>
							<th>PART A</th>
							<th>PART B</th>
							<th>비고</th>
						</tr>
					</thead>
					<tbody>
						<tr class="wp-td-padding0">
							<td><input type="text" id="js-car-ed-inj-rate-reg-popup-date" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-inp-datepicker" placeholder="<spring:message code="TODO.KEY" text="날짜입력"/>"></td>
							<td><input type="text" id="js-car-ed-inj-rate-reg-popup-pta"  name="js-car-ed-inj-rate-reg-popup-input-data" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p"></td>
							<td><input type="text" id="js-car-ed-inj-rate-reg-popup-ptb"  name="js-car-ed-inj-rate-reg-popup-input-data" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p"></td>
							<td><input type="text" id="js-car-ed-inj-rate-reg-popup-remark"  name="js-car-ed-inj-rate-reg-popup-input-data-remark" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p"></td>
						</tr>
					</tbody>
				</table>
	            </div>
				<!-- // scroll Area -->
				</div>
			
				<div class="wp-btn-area">
					<button type="button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18" id="js-car-ed-inj-rate-reg-popup-save-button"><spring:message code="TODO.KEY" text="저장"/></button>
				</div>
				<input type="hidden" id="js-car-ed-inj-rate-reg-popup-seq"   name="js-car-ed-inj-rate-reg-popup-input-data">
				<input type="hidden" id="js-car-ed-inj-rate-reg-popup-carplant" name="js-car-ed-inj-rate-reg-popup-input-data">
				<input type="hidden" id="js-car-ed-inj-rate-reg-popup-boothid" name="js-car-ed-inj-rate-reg-popup-input-data">
	        </div>
	    </div>
	</div>
	
	<!-- 전착 투입비 관리 팝업 [END] -->
	
	<!-- 전착 투입비 관리 팝업 - 스크립트 [START] -->
	<script type="text/javascript">
	
	//메시지 파라미터 정의함수
	var messageParam = {
		title: '<spring:message code="TODO.KEY" text="에러"/>',
		message: '',
		confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>'				
	};
	
	//------------------------------------------------
	// 초기화
	// ------------------------------------------------
	var initCarEdInjRateRegPopup = function(param) {
		
		// 입력값 초기화
		$('input[name=js-car-ed-inj-rate-reg-popup-input-data]').val("");
		$('input[name=js-car-ed-inj-rate-reg-popup-input-data-remark]').val("");
		
		// 상한, 하한 값 : 마이너스 없는 양수(실수). 소수점1째자리만 입력 가능
		onlyDecimal($('input[name=js-car-ed-inj-rate-reg-popup-input-data]'), 10, 1);
		
		var date = app.utils.formatDate(new Date(), "YYYYMMDD");
		$("#js-car-ed-inj-rate-reg-popup-date").val(date);
		$("#js-car-ed-inj-rate-reg-popup-date").mask('9999-99-99');
		
		// 파라미터 Set.
		if(typeof param == "undefined"){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공장코드, 부스코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-ed-inj-rate-reg-popup-close-button").click();
					}
				}
			});
			return;
		}
		$('#js-car-ed-inj-rate-reg-popup-seq').val(param.seqCarProdInspEdRate);
		$('#js-car-ed-inj-rate-reg-popup-carplant').val(param.carPlant);
		$('#js-car-ed-inj-rate-reg-popup-boothid').val(param.boothId);
		
		// PART A, B 값 : 소수점 없는 정수만 입력가능
		//onlyInteger($('input[name=js-car-ed-inj-rate-reg-popup-input-data]'));
		
		// 투입비 관리 조회
		if(param.seqCarProdInspEdRate != undefined)
			retrieveCarProdInspEdRate.request();
		
		// 저장 버튼 클릭 Event 
		$('#js-car-ed-inj-rate-reg-popup-save-button').off().on('click', function(){
			
			// Validation Check
			if(!validationCheckCarEdInjRateReg()){
				return;
			}
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						// 투입비 관리 저장
						saveCarProdInspEdRate.request();
					}
				}
			});
		});
	};
	
	//------------------------------------------------
	// 투입비 관리 저장 전 Validation Check
	//------------------------------------------------
	var validationCheckCarEdInjRateReg = function() {
		
		// 필수값 입력 여부 체크
		var date = $("#js-car-ed-inj-rate-reg-popup-date").val();
		if(app.utils.isEmpty(date)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="일자는 필수입력 항목입니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-ed-inj-rate-reg-popup-date").focus();
					}
				}
			});
			return false;
		}
		return true;
	};
	
	//-------------------------------------------------
	// 투입비 관리 저장
	//-------------------------------------------------
	var saveCarProdInspEdRate = {
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
					$("#js-car-ed-inj-rate-reg-popup-close-button").click();
					
					// 투입비 조회
					retrieveMainCarProdInspEdRate.request();
					
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
				, method               : 'saveCarProdInspEdRate'
				, seqCarProdInspEdRate : $('#js-car-ed-inj-rate-reg-popup-seq').val()                    
				, carPlant             : $('#js-car-ed-inj-rate-reg-popup-carplant').val()
				, boothId              : $('#js-car-ed-inj-rate-reg-popup-boothid').val()
				, injDate              : $('#js-car-ed-inj-rate-reg-popup-date').val().replace(/-/gi, "")
				, ptaRate              : $('#js-car-ed-inj-rate-reg-popup-pta').val()                    
				, ptbRate              : $('#js-car-ed-inj-rate-reg-popup-ptb').val()                    
				, remark               : $('#js-car-ed-inj-rate-reg-popup-remark').val()
				, workType             : "PC"
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	//-------------------------------------------------
	// 투입비 관리 팝업 조회
	//-------------------------------------------------
	var retrieveCarProdInspEdRate = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					if(response.rs.length > 0){
						var resultData = response.rs[0];
						
						$('#js-car-ed-inj-rate-reg-popup-date'  ).val(resultData.injDate);
						$('#js-car-ed-inj-rate-reg-popup-pta'   ).val(resultData.ptaRate);
						$('#js-car-ed-inj-rate-reg-popup-ptb'   ).val(resultData.ptbRate);
						$('#js-car-ed-inj-rate-reg-popup-remark'   ).val(resultData.remark);
						
					}

					onlyDecimal($('#js-car-ed-inj-rate-reg-popup-pta') , 3, 1);
					onlyDecimal($('#js-car-ed-inj-rate-reg-popup-ptb') , 3, 1);
					
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
				, method               : 'retrieveCarProdInspEdRate'
				, seqCarProdInspEdRate : $('#js-car-ed-inj-rate-reg-popup-seq').val()
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	</script>
	<!-- 전착 투입비 관리 팝업 - 스크립트 [END] -->
	
	<!-- 본조 액온 관리 팝업  [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-ed-temp-reg-popup" class="wp-pop-layer wp-pop-w500 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="본조 액온 관리"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-ed-temp-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
	    	</div>
	        <div class="wp-pop-conts">
		<!-- scroll Area -->
		<div class="wp-pop-cont-scrollable">
	            <!--content //-->
			<!-- 기본 정보 -->
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption><spring:message code="TODO.KEY" text="본조 액온 관리 등록"/></caption>
					<colgroup>
						<col style="width:30%">
						<col style="width:auto">
					</colgroup>
					<thead>
						<tr>
							<th><spring:message code="TODO.KEY" text="측정일자"/></th>
							<th><spring:message code="TODO.KEY" text="본조 온도"/>(˚C)</th>
						</tr>
					</thead>
					<tbody>
						<tr class="wp-td-padding0">
							<td><input type="text" id="js-car-ed-temp-reg-popup-date" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-inp-datepicker" placeholder="<spring:message code="TODO.KEY" text="날짜입력"/>"></td>
							<td><input type="text" name="js-car-ed-temp-reg-popup-input-data" id="js-car-ed-temp-reg-popup-temp" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p"></td>
						</tr>
					</tbody>
				</table>
	            </div>
				<!-- // scroll Area -->
				</div>
				<div class="wp-btn-area">
					<button type="button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18" id="js-car-ed-temp-reg-popup-save-button"><spring:message code="TODO.KEY" text="저장"/></button>
				</div>
				<input type="hidden" id="js-car-ed-temp-reg-popup-seq"   name="js-car-ed-temp-reg-popup-input-data">
				<input type="hidden" id="js-car-ed-temp-reg-popup-carplant" name="js-car-ed-temp-reg-popup-input-data">
				<input type="hidden" id="js-car-ed-temp-reg-popup-boothid" name="js-car-ed-temp-reg-popup-input-data">
	        </div>
	    </div>
	</div>
	<!-- 본조 액온 관리 팝업 [END] -->
	
	<!-- 본조 액온 관리 팝업 - 스크립트 [START] -->
	<script type="text/javascript">
	
	//메시지 파라미터 정의함수
	var messageParam = {
		title: '<spring:message code="TODO.KEY" text="에러"/>',
		message: '',
		confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>'				
	};
	
	//------------------------------------------------
	// 초기화
	//------------------------------------------------
	var initCarEdTempRegPopup = function(param) {
		
		// 입력값 초기화
		$('input[name=js-car-ed-temp-reg-popup-input-data]').val("");
		
		// 상한, 하한 값 : 마이너스 없는 양수(실수). 소수점1째자리만 입력 가능
		onlyDecimal($('input[name=js-car-ed-temp-reg-popup-input-data]'), 10, 1);
		
		var date = app.utils.formatDate(new Date(), "YYYYMMDD");
		$("#js-car-ed-temp-reg-popup-date").val(date);
		$("#js-car-ed-temp-reg-popup-date").mask('9999-99-99');
		
		// 파라미터 Set.
		if(typeof param == "undefined"){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공장코드, 부스코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-ed-temp-reg-popup-close-button").click();
					}
				}
			});
			return;
		}
		$('#js-car-ed-temp-reg-popup-seq').val(param.seqCarProdInspEdTemp);
		$('#js-car-ed-temp-reg-popup-carplant').val(param.carPlant);
		$('#js-car-ed-temp-reg-popup-boothid').val(param.boothId);
		
		// 본조 온도 : 소수점 없는 정수만 입력가능
		//onlyInteger($('input[name=js-car-ed-temp-reg-popup-input-data]'));
		
		// 본조 액온 조회
		retrieveCarProdInspEdTemp.request();
		
		// 저장 버튼 클릭 Event 
		$('#js-car-ed-temp-reg-popup-save-button').off().on('click', function(){
			
			// Validation Check
			if(!validationCheckCarEdTempReg()){
				return;
			}
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						// 본조 액온 저장
						saveCarProdInspEdTemp.request();
					}
				}
			});
		});
	};
	
	//------------------------------------------------
	// 본조 액온 저장 전 Validation Check
	//------------------------------------------------
	var validationCheckCarEdTempReg = function() {
		
		// 필수값 입력 여부 체크
		var date = $("#js-car-ed-temp-reg-popup-date").val();
		var temp = $("#js-car-ed-temp-reg-popup-temp").val();
		
		if(app.utils.isEmpty(date)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="일자는 필수입력 항목입니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-ed-temp-reg-popup-date").focus();
					}
				}
			});
			return false;
		}
		if(app.utils.isEmpty(temp)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="본조 온도는 필수입력 항목입니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-ed-temp-reg-popup-temp").focus();
					}
				}
			});
			return false;
		}
		return true;
	};
	
	//-------------------------------------------------
	// 본조 액온 저장
	//-------------------------------------------------
	var saveCarProdInspEdTemp = {
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
					$("#js-car-ed-temp-reg-popup-close-button").click();
	
					// 본조 액온 재조회
					retrieveMainCarProdInspEdTemp.request();
					
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
				, method               : 'saveCarProdInspEdTemp'
				, seqCarProdInspEdTemp : $('#js-car-ed-temp-reg-popup-seq').val()                    
				, carPlant             : $('#js-car-ed-temp-reg-popup-carplant').val()
				, boothId              : $('#js-car-ed-temp-reg-popup-boothid').val()
				, inspDate             : $('#js-car-ed-temp-reg-popup-date').val().replace(/-/gi, "")
				, paintTemp            : $('#js-car-ed-temp-reg-popup-temp').val()                    
				, remark               : ""
				, workType             : "PC"
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	//-------------------------------------------------
	// 본조 액온 팝업 조회
	//-------------------------------------------------
	var retrieveCarProdInspEdTemp = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					if(response.rs.length > 0){
						var resultData = response.rs[0];
						
						$('#js-car-ed-temp-reg-popup-date').val(resultData.inspDate);
						$('#js-car-ed-temp-reg-popup-temp').val(resultData.paintTemp);
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
				, method               : 'retrieveCarProdInspEdTemp'
				, seqCarProdInspEdTemp : $('#js-car-ed-temp-reg-popup-seq').val()
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	</script>
	<!-- 본조 액온 관리 팝업 - 스크립트 [END] -->
	
	<!-- 첨가제/희석제 투입 이력 관리 팝업  [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-ed-add-inj-hist-reg-popup" class="wp-pop-layer wp-pop-w800 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="첨가제/희석제 투입 이력  관리"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-ed-add-inj-hist-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
	    	</div>
	        <div class="wp-pop-conts">
		<!-- scroll Area -->
		<div class="wp-pop-cont-scrollable">
	            <!--content //-->
			<!-- 기본 정보 -->
			<div class="wp-clearfix"><button type="button" class="wp-btn small white bgray plus wp-mb5 wp-fr" id="js-car-ed-add-inj-hist-reg-popup-add-button"><spring:message code="TODO.KEY" text="추가"/></button></div>
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
							<th><spring:message code="TODO.KEY" text="투입일자"/></th>
							<th><spring:message code="TODO.KEY" text="첨가제"/></th>
							<th><spring:message code="TODO.KEY" text="투입량"/>(ℓ)</th>
							<th><spring:message code="TODO.KEY" text="내용"/></th>
							<th><spring:message code="TODO.KEY" text="사유"/></th>
							<th><spring:message code="TODO.KEY" text="상태"/></th>
						</tr>
					</thead>
					<tbody id="js-car-ed-add-inj-hist-reg-popup-list">
					</tbody>
				</table>
	            </div>
				<!-- // scroll Area -->
				</div>
			
				<div class="wp-btn-area">
					<button type="button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18" id="js-car-ed-add-inj-hist-reg-popup-save-button"><spring:message code="TODO.KEY" text="저장"/></button>
				</div>
				<input type="hidden" id="js-car-ed-add-inj-hist-reg-popup-carplant" >
				<input type="hidden" id="js-car-ed-add-inj-hist-reg-popup-boothid" >
	        </div>
	    </div>
	</div>
	<!-- 첨가제/희석제 투입 이력 관리 팝업 [END] -->
	
	<!-- 첨가제/희석제 투입 이력 관리 팝업 - 스크립트 [START] -->
	<script id="js-template-car-ed-add-inj-hist-reg-popup-list" type="text/x-handlebars-template">		
	{{#rows}}
		<tr class="wp-td-padding0">
			<td><input type="text"    name="js-car-ed-add-inj-hist-reg-popup-date"     value="{{injDate}}"        title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-inp-datepicker" placeholder="<spring:message code="TODO.KEY" text="날짜입력"/>"></td>
			<td><input type="text"    name="js-car-ed-add-inj-hist-reg-popup-inj-item" value="{{injItemsNm}}"     title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p" placeholder="<spring:message code="TODO.KEY" text="입력"/>"></td>
			<td><input type="text"    name="js-car-ed-add-inj-hist-reg-popup-vqty"     value="{{injVqty}}"        title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p" placeholder="<spring:message code="TODO.KEY" text="입력"/>"></td>
			<td><input type="text"    name="js-car-ed-add-inj-hist-reg-popup-desc"     value="{{injDescription}}" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p" placeholder="<spring:message code="TODO.KEY" text="입력"/>"></td>
			<td><input type="text"    name="js-car-ed-add-inj-hist-reg-popup-reason"   value="{{injReason}}"      title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p" placeholder="<spring:message code="TODO.KEY" text="입력"/>"></td>
			<td><button type="button" name="js-car-ed-add-inj-hist-reg-popup-delete-button" class="wp-btn small white bgray trash"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
			    <input type="hidden"  name="js-car-ed-add-inj-hist-reg-popup-seq"      value="{{seqCarProdInspEdInj}}">
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
	
	var carEdAddInjHistRegListTemplate;
	
	//------------------------------------------------
	// 초기화
	//------------------------------------------------
	var initCarEdAddInjHistRegPopup = function(param) {
		
		// Handlebar 초기화
		initCarEdAddInjHistRegPopupHandlebarsTemplate();
		
		// Lot 변경 이력 관리 추가 row 제거
		$("#js-car-ed-add-inj-hist-reg-popup-list").find("tr").remove();
	
		// 파라미터 Set.
		if(typeof param == "undefined"){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공장코드, 부스코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-ed-add-inj-hist-reg-popup-close-button").click();
					}
				}
			});
			return;
		}
		
		$('#js-car-ed-add-inj-hist-reg-popup-carplant').val(param.carPlant);
		$('#js-car-ed-add-inj-hist-reg-popup-boothid').val(param.boothId);
		
		// 첨가제/희석제 투입 이력 조회
		//retrieveCarProdInspEdInj.request();
		
		// 추가 버튼 클릭 Event 
		$('#js-car-ed-add-inj-hist-reg-popup-add-button').off().on('click', function(){
			
			// 입력 Row 추가
			addCarEdAddInjHistReg();
		});
		
		// 저장 버튼 클릭 Event 
		$('#js-car-ed-add-inj-hist-reg-popup-save-button').off().on('click', function(){
			
			// Validation Check
			if(!validationCheckCarEdAddInjHistReg()){
				return;
			}
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						$("js-car-ed-add-inj-hist-reg-popup-close-button").click();
						// 첨가제/희석제 투입 이력 저장
						saveCarProdInspEdInj.request();
					}
				}
			});
		});
	};
	
	// ------------------------------------------------
	// Handlebar 초기화
	// ------------------------------------------------
	var initCarEdAddInjHistRegPopupHandlebarsTemplate = function() {
		
		// 첨가제/희석제 투입 이력 리스트
		var source = $('#js-template-car-ed-add-inj-hist-reg-popup-list').html();
		carEdAddInjHistRegListTemplate = Handlebars.compile(source);
	};
	
	//------------------------------------------------
	// 입력 row 추가
	//------------------------------------------------
	var addCarEdAddInjHistReg = function() {
		
		var data = {
			  injDate             : app.utils.formatDate(new Date(), "YYYYMMDD")
			, injItemsNm          : ""
			, injVqty             : ""
			, injDescription      : ""
			, injReason	          : ""
			, seqCarProdInspEdInj : ""
		};
		var result = carEdAddInjHistRegListTemplate({rows : data});
		$("#js-car-ed-add-inj-hist-reg-popup-list").append(result);
		
		setCarEdAddInjHistRegEventHandler();
	};
	
	//------------------------------------------------
	// 이벤트 handler Set
	//------------------------------------------------
	var setCarEdAddInjHistRegEventHandler = function() {
		
		$("input[name=js-car-ed-add-inj-hist-reg-popup-date]").mask('9999-99-99');
		
		// 투입량 : 소수점 없는 정수만 입력가능
		//onlyInteger($('input[name=js-car-ed-add-inj-hist-reg-popup-vqty]'));
		
		// 투입량 : 마이너스 없는 양수(실수). 소수점2째자리만 입력 가능
		onlyDecimal($('input[name=js-car-ed-add-inj-hist-reg-popup-vqty]'), 10, 1);
		
		// 삭제 버튼 클릭 Event 
		$('button[name=js-car-ed-add-inj-hist-reg-popup-delete-button]').off().on('click', function(){
			$(this).parent().parent().remove();
		});
	};
	
	//------------------------------------------------
	// 첨가제/희석제 투입 이력 저장 전 Validation Check
	//------------------------------------------------
	var validationCheckCarEdAddInjHistReg = function() {
		
		// 필수값 입력 여부 체크
		var inputObjLength = $("input[name=js-car-ed-add-inj-hist-reg-popup-date]").length;
		if(inputObjLength == 0){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="입력된 데이터가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
			});
			return false;
		}
		if(app.utils.isEmpty($('#js-car-ed-add-inj-hist-reg-popup-carplant').val())){
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
		if(app.utils.isEmpty($('#js-car-ed-add-inj-hist-reg-popup-boothid').val())){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="부스코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		for(var i=0 ; i<inputObjLength ; i++){
			var $injDate    = $($("input[name=js-car-ed-add-inj-hist-reg-popup-date]")[i]);
			var $injItemsNm = $($("input[name=js-car-ed-add-inj-hist-reg-popup-inj-item]")[i]);
			var $injVqty    = $($("input[name=js-car-ed-add-inj-hist-reg-popup-vqty]")[i]);
			
			// 필수값 입력 여부 체크
			if(app.utils.isEmpty($injDate.val())){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="일자는 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$injDate.focus();
						}
					}
				});
				return false;
			}
			if(app.utils.isEmpty($injItemsNm.val())){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="첨가제는 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$injItemsNm.focus();
						}
					}
				});
				return false;
			}
			if(app.utils.isEmpty($injVqty.val())){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="투입량은 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$injVqty.focus();
						}
					}
				});
				return false;
			}
		}
		return true;
	};
	
	//-------------------------------------------------
	// 첨가제/희석제 투입 이력 저장
	//-------------------------------------------------
	var saveCarProdInspEdInj = {
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
					$("#js-car-ed-add-inj-hist-reg-popup-close-button").click();
					
					// 첨가제/희석제 투입 이력 조회
					retrieveMainCarProdInspEdInj.request();
	
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
			
			// 파라미터 Set
			var edInj = [];
			var inputObjLength = $("input[name=js-car-ed-add-inj-hist-reg-popup-date]").length;
			for(var i=0 ; i<inputObjLength ; i++){
				var $injDate             = $($("input[name=js-car-ed-add-inj-hist-reg-popup-date]")[i]);
				var $injItemsNm          = $($("input[name=js-car-ed-add-inj-hist-reg-popup-inj-item]")[i]);
				var $injVqty             = $($("input[name=js-car-ed-add-inj-hist-reg-popup-vqty]")[i]);
				var $injDescription      = $($("input[name=js-car-ed-add-inj-hist-reg-popup-desc]")[i]);
				var $injReason           = $($("input[name=js-car-ed-add-inj-hist-reg-popup-reason]")[i]);
				var $seqCarProdInspEdInj = $($("input[name=js-car-ed-add-inj-hist-reg-popup-seq]")[i]);
				
				edInj.push({
					  injDate              : $injDate.val().replace(/-/gi, "")
					, injItemsNm           : $injItemsNm.val()    
					, injVqty              : $injVqty.val()       
					, injDescription       : $injDescription.val()
					, injReason            : $injReason.val()
					, seqCarProdInspEdInj  : $seqCarProdInspEdInj.val() || 0
					, workType             : "PC"
				});
			}
			var params = {
				  service              : 'car.prodInspEd'
				, method               : 'saveCarProdInspEdInj'
				, carPlant             : $('#js-car-ed-add-inj-hist-reg-popup-carplant').val()
				, boothId              : $('#js-car-ed-add-inj-hist-reg-popup-boothid').val()
				, edInj                : JSON.stringify(edInj)
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	//-------------------------------------------------
	// 첨가제/희석제 투입 이력 조회
	//-------------------------------------------------
	var retrieveCarProdInspEdInj = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					if(response.rs.length > 0){
						var data = {
								rows : response.rs
						}
						var result = carEdAddInjHistRegListTemplate(data);
						$("#js-car-ed-add-inj-hist-reg-popup-list").empty().append(result);
						setCarEdAddInjHistRegEventHandler();
						
					} else {
						$("#js-car-ed-add-inj-hist-reg-popup-list").empty();
						addCarEdAddInjHistReg();
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
				, method   : 'retrieveCarProdInspEdInj'
				, carPlant : $('#js-car-ed-add-inj-hist-reg-popup-carplant').val()
				, boothId  : $('#js-car-ed-add-inj-hist-reg-popup-boothid').val()
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	</script>
	<!-- 첨가제/희석제 투입 이력 관리 팝업 - 스크립트 [END] -->
	
	<!-- 첨가제/희석제 투입 이력 수정 팝업 - [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-ed-add-inj-hist-mod-popup" class="wp-pop-layer wp-pop-w350 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1>첨가제/희석제 투입  이력 관리</h1>
	    		<button type="button" id="js-car-ed-add-inj-hist-mod-popup-close-button" class="wp-btn-close-layer wp-spr-btn"><span>닫기</span></button>
	    	</div>
	        <div class="wp-pop-conts">
		<!-- scroll Area -->
		<div class="wp-pop-cont-scrollable">
	            <!--content //-->
			<!-- 기본 정보 -->
			<h2 class="wp-cont-title">일반정보</h2>
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption>일반정보</caption>
					<colgroup>
						<col style="width:30%">
						<col style="width:auto">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar">투입일자</th>
							<td><input type="text" id="js-car-ed-add-inj-hist-mod-popup-date" title="내용입력" class="wp-inp-datepicker wp-wd100p" placeholder="날짜입력"></td>
						</tr>
						<tr>
							<th class="wp-ar">첨가제</th>
							<td><input type="text" id="js-car-ed-add-inj-hist-mod-popup-injitemsnm" title="내용입력" class="wp-wd100p" placeholder="입력"></td>
						</tr>
						<tr>
							<th class="wp-ar">투입량(ℓ)</th>
							<td><input type="text" id="js-car-ed-add-inj-hist-mod-popup-injvqty" title="내용입력" class="wp-wd100p" placeholder="입력"></td>
						</tr>
						<tr>
							<th class="wp-ar">내용</th>
							<td><input type="text" id="js-car-ed-add-inj-hist-mod-popup-injdescription" title="내용입력" class="wp-wd100p" placeholder="입력"></td>
						</tr>
						<tr>
							<th class="wp-ar">비고</th>
							<td><input type="text" id="js-car-ed-add-inj-hist-mod-popup-injreason" title="내용입력" class="wp-wd100p" placeholder="입력"></td>
						</tr>
					</tbody>
				</table>
	            </div>
			<!-- // scroll Area -->
			</div>
		
			<div class="wp-btn-area">
				<button type="button" id="js-car-ed-add-inj-hist-mod-popup-save-button"   class="wp-btn big blue1 cr3 wp-pl18 wp-pr18">저장</button>
				<!-- <button type="button" id="js-car-ed-add-inj-hist-mod-popup-delete-button" class="wp-btn big gray cr3 wp-pl18 wp-pr18">삭제</button> -->
			</div>
			<input type="hidden" id="js-car-ed-add-inj-hist-mod-popup-seq">
	        </div>
	    </div>
	</div>
	
	<script type="text/javascript">

	//------------------------------------------------
	// 초기화
	//------------------------------------------------
	var initCarEdAddInjHistModPopup = function(seq) {
		
		// 파라미터 Set.
		if(seq == undefined || app.utils.isEmpty(seq)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="시퀀스가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-ed-add-inj-hist-mod-popup-close-button").click();
					}
				}
			});
			return;
		}
		
		$("#js-car-ed-add-inj-hist-mod-popup-seq").val(seq);
		
		// 정수만 입력.
		onlyInteger($("#js-car-ed-add-inj-hist-mod-popup-injvqty"));
		
		// 조회
		retrieveCarProdInspEdInjMobile.request();
		
		// 저장 버튼 클릭 Event 
		$('#js-car-ed-add-inj-hist-mod-popup-save-button').off().on('click', function(){
			
			var date       = $("#js-car-ed-add-inj-hist-mod-popup-date").val().replace(/-/gi, "");
			var injItemsNm = $("#js-car-ed-add-inj-hist-mod-popup-injitemsnm").val();
			var injVqty    = $("#js-car-ed-add-inj-hist-mod-popup-injvqty").val();
			
			if(app.utils.isEmpty(date)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="에러"/>'
					, message           : "투입일자가 입력되지 않았습니다."
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				});
				return;
			}
			if(app.utils.isEmpty(injItemsNm)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="에러"/>'
					, message           : "첨가제가 입력되지 않았습니다."
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				});
				return;
			}
			if(app.utils.isEmpty(injVqty)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="에러"/>'
					, message           : "투입량이 입력되지 않았습니다."
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				});
				return;
			}
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-ed-add-inj-hist-mod-popup-close-button").click();
	 					//첨가제/희석제 투입 이력 저장
						//saveCarProdInspEdInjMobile.request();
						saveCarProdInspEdInjMod.request();
					}
				}
			});
		});
		
		// 삭제 버튼 클릭 Event 
		$('#js-car-ed-add-inj-hist-mod-popup-delete-button').off().on('click', function(){
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						// 첨가제/희석제 투입 이력 삭제
						deleteCarProdInspEdInj.carEdAddInjHistModPopup.request();
					}
				}
			});
		});	
	};
	
	//-------------------------------------------------
	// 첨가제/희석제 투입 이력 저장
	//-------------------------------------------------
	var saveCarProdInspEdInjMod = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="에러"/>'
						, message           : '<spring:message code="TODO.KEY" text="저장되었습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					});
					
					// 재조회
					retrieveMainCarProdInspEdInj.request();
					retrieveCarProdInspEdInjMobile.request();
					
				} else 	{
					// 서비스 요청 처리 오류 발생 메시지
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
				  service              : 'car.prodInspEd'
				, method               : 'saveCarProdInspEdInjMod'
				, carPlant             : $("#js-car-header-car-plant").val()
				, boothId              : $("#js-car-ed-status-info-detail-boothid").val()
				, injDate              : $("#js-car-ed-add-inj-hist-mod-popup-date").val().replace(/-/gi, "")
				, injItemsNm           : $("#js-car-ed-add-inj-hist-mod-popup-injitemsnm").val()
				, injVqty              : $("#js-car-ed-add-inj-hist-mod-popup-injvqty").val()
				, injDescription       : $("#js-car-ed-add-inj-hist-mod-popup-injdescription").val()
				, injReason            : $("#js-car-ed-add-inj-hist-mod-popup-injreason").val()
				, seqCarProdInspEdInj  : $("#js-car-ed-add-inj-hist-mod-popup-seq").val()
				, workType             : "PC"
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: true});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};	
	
	//-------------------------------------------------
	// 데이타 조회
	//-------------------------------------------------
	var retrieveCarProdInspEdInjMobile = {
		success: function(response, status, jqueryXHR) {
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {							
					
					$("#js-car-ed-add-inj-hist-mod-popup-date").val("");
					$("#js-car-ed-add-inj-hist-mod-popup-injitemsnm").val("");
					$("#js-car-ed-add-inj-hist-mod-popup-injvqty").val("");
					$("#js-car-ed-add-inj-hist-mod-popup-injdescription").val("");
					$("#js-car-ed-add-inj-hist-mod-popup-injreason").val("");
					
					if(response.rs.length > 0){
						$("#js-car-ed-add-inj-hist-mod-popup-date").val(response.rs[0].injDate);
						$("#js-car-ed-add-inj-hist-mod-popup-injitemsnm").val(response.rs[0].injItemsNm);
						$("#js-car-ed-add-inj-hist-mod-popup-injvqty").val(response.rs[0].injVqty);
						$("#js-car-ed-add-inj-hist-mod-popup-injdescription").val(response.rs[0].injDescription);
						$("#js-car-ed-add-inj-hist-mod-popup-injreason").val(response.rs[0].injReason);
					}
						
				} else 	{
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
				  service  : 'car.prodInspEd'
				, method   : 'retrieveCarProdInspEdInjMobile'
				, seqCarProdInspEdInj    : $("#js-car-ed-add-inj-hist-mod-popup-seq").val()
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	
	</script>
	
	<!-- 첨가제/희석제 투입 이력 수정 팝업 - [END] -->
	
	<!-- 도료 Lot 변경 이력 관리 팝업  [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-ed-lot-mod-hist-reg-popup" class="wp-pop-layer wp-pop-w800 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="Lot 변경 이력  관리"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-ed-lot-mod-hist-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
	    	</div>
	        <div class="wp-pop-conts">
		<!-- scroll Area -->
		<div class="wp-pop-cont-scrollable">
	            <!--content //-->
			<!-- 기본 정보 -->
			<div class="wp-clearfix"><button type="button" class="wp-btn small white bgray plus wp-mb5 wp-fr" id="js-car-ed-lot-mod-hist-reg-popup-add-button"><spring:message code="TODO.KEY" text="추가"/></button></div>
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption><spring:message code="TODO.KEY" text="기본 정보등록"/></caption>
					<colgroup>
						<col style="width:10%">
						<col style="width:16%">
						<col style="width:15%">
						<col style="width:20%">
						<col style="width:auto">
						<col style="width:6%">
					</colgroup>
					<thead>
						<tr>
							<th><spring:message code="TODO.KEY" text="구분"/></th>
							<th><spring:message code="TODO.KEY" text="변경일자"/></th>
							<th><spring:message code="TODO.KEY" text="LOT No."/></th>
							<th><spring:message code="TODO.KEY" text="내용"/></th>
							<th><spring:message code="TODO.KEY" text="사유"/></th>
							<th><spring:message code="TODO.KEY" text="삭제"/></th>
						</tr>
					</thead>
					<tbody id="js-car-ed-lot-mod-hist-reg-popup-list">
					</tbody>
				</table>
	            </div>
				<!-- // scroll Area -->
				</div>
			
				<div class="wp-btn-area">
					<button type="button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18" id="js-car-ed-lot-mod-hist-reg-popup-save-button"><spring:message code="TODO.KEY" text="저장"/></button>
				</div>
				<input type="hidden" id="js-car-ed-lot-mod-hist-reg-popup-carplant" >
				<input type="hidden" id="js-car-ed-lot-mod-hist-reg-popup-boothid" >
	        </div>
	    </div>
	</div>
	
	
	<!-- 도료 Lot 변경 이력 관리 팝업 [END] -->
	
	<!-- 도료 Lot 변경 이력 관리 팝업 - 스크립트 [START] -->
	<script id="js-template-car-ed-lot-mod-hist-reg-popup-list" type="text/x-handlebars-template">
	{{#rows}}
		<tr id="js-car-ed-lot-mod-hist-reg-popup-tr" class="wp-td-padding0" data-index={{itemIndex}}>
			<td><div class="wp-ui-select"><select name="js-car-ed-lot-mod-hist-reg-popup-type" id="js-car-ed-lot-mod-hist-reg-popup-type-{{itemIndex}}" data-index="{{itemIndex}}" value="{{injType}}" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p" placeholder="<spring:message code="TODO.KEY" text="입력" />"></div></td>
			<td><input type="text" name="js-car-ed-lot-mod-hist-reg-popup-date" id="js-car-ed-lot-mod-hist-reg-popup-date-{{itemIndex}}" data-index="{{itemIndex}}" value="{{injDate}}" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-inp-datepicker" placeholder="<spring:message code="TODO.KEY" text="날짜입력"/>"></td>
			<td><input type="text" name="js-car-ed-lot-mod-hist-reg-popup-lotno" id="js-car-ed-lot-mod-hist-reg-popup-lotno-{{itemIndex}}" data-index="{{itemIndex}}" value="{{lotNo}}" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p" maxLength="10" placeholder="<spring:message code="TODO.KEY" text="입력"/>"></td>
			<td><input type="text" name="js-car-ed-lot-mod-hist-reg-popup-desc" id="js-car-ed-lot-mod-hist-reg-popup-desc-{{itemIndex}}" data-index="{{itemIndex}}" value="{{injDescription}}" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p" placeholder="<spring:message code="TODO.KEY" text="입력"/>"></td>
			<td><input type="text" name="js-car-ed-lot-mod-hist-reg-popup-remark" id="js-car-ed-lot-mod-hist-reg-popup-remark-{{itemIndex}}" data-index="{{itemIndex}}" value="{{injRemark}}" title="<spring:message code="TODO.KEY" text="내용입력"/>" class="wp-wd100p" placeholder="<spring:message code="TODO.KEY" text="입력"/>"></td>
			<td><button type="button" name="js-car-ed-lot-mod-hist-reg-popup-delete-button" class="wp-btn small white bgray trash"><span><spring:message code="TODO.KEY" text="삭제"/></span></button>
			    <input type="hidden" name="js-car-ed-lot-mod-hist-reg-popup-seq" value="{{seqCarProdInspEdLot}}">
			</td>
		</tr>
	{{/rows}}
	</script>
	
	<script type="text/javascript">
	
	var gvCarEdStatusInfoRegPopupLotTypeRs;
	
	//메시지 파라미터 정의함수
	var messageParam = {
		title: '<spring:message code="TODO.KEY" text="에러"/>',
		message: '',
		confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>'				
	};
	
	var carEdLotModHistRegListTemplate;
	
	//------------------------------------------------
	// 초기화
	//------------------------------------------------
	var initCarEdLotModHistRegPopup = function(param) {
		
		// Lot 변경 이력 관리 추가 row 제거
		$("#js-car-ed-lot-mod-hist-reg-popup-list").find("tr").remove();
		
		// Lot 변경 이력 관리 - 구분 콤보 조회
		retrieveLotPartType.request();
		
		// Handlebar 초기화
		initCarEdLotModHistRegPopupHandlebarsTemplate();
		
		// 파라미터 Set.
		if(typeof param == "undefined"){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공장코드, 부스코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-ed-lot-mod-hist-reg-popup-close-button").click();
					}
				}
			});
			return;
		}
		
		$('#js-car-ed-lot-mod-hist-reg-popup-carplant').val(param.carPlant);
		$('#js-car-ed-lot-mod-hist-reg-popup-boothid').val(param.boothId);
		
		// 도료 Lot 변경 이력 조회
		//retrieveCarProdInspEdLot.request();
		
		// 추가 버튼 클릭 Event 
		$('#js-car-ed-lot-mod-hist-reg-popup-add-button').off().on('click', function(){
			
			// 입력 Row 추가
			addCarEdLotModHistReg();
		});
		
		// 저장 버튼 클릭 Event 
		$('#js-car-ed-lot-mod-hist-reg-popup-save-button').off().on('click', function(){
			
			// Validation Check
			if(!validationCheckCarEdLotModHistReg()){
				return;
			}
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-ed-lot-mod-hist-reg-popup-close-button").click();
						// 도료 Lot 변경 이력 저장
						saveCarProdInspEdLot.request();
					}
				}
			});
		});
	};
	
	// ------------------------------------------------
	// Handlebar 초기화
	// ------------------------------------------------
	var initCarEdLotModHistRegPopupHandlebarsTemplate = function() {
		
		// 도료 Lot 변경 이력 리스트
		var source = $('#js-template-car-ed-lot-mod-hist-reg-popup-list').html();
		carEdLotModHistRegListTemplate = Handlebars.compile(source);
	};
	
	//------------------------------------------------
	// 입력 row 추가
	//------------------------------------------------
	var addCarEdLotModHistReg = function() {
		
		var itemIndex = $("tr[id*=js-car-ed-lot-mod-hist-reg-popup-tr]:last").attr("data-index");
		if(itemIndex == undefined){
			itemIndex = 0;
		} else {
			itemIndex++;
		}
		
		var data = {
			itemIndex : itemIndex
			, injDate             : app.utils.formatDate(new Date(), "YYYYMMDD")
			, lotNo               : ""
			, injType             : ""
			, injDescription      : ""
			, injRemark	          : ""
			, seqCarProdInspEdLot : ""
		};
		
		var result = carEdLotModHistRegListTemplate({rows : data});
		$("#js-car-ed-lot-mod-hist-reg-popup-list").append(result);
		
		// 구분 콤보 set
		for(var i=0; i < gvCarEdStatusInfoRegPopupLotTypeRs.length; i++)
		{
			$('#js-car-ed-lot-mod-hist-reg-popup-type-' + itemIndex).append("<option value='"+ gvCarEdStatusInfoRegPopupLotTypeRs[i].code +"'>"+ gvCarEdStatusInfoRegPopupLotTypeRs[i].codeNm +"</option>");
		}
		
		// LOT No. 입력 event
		$("[name=js-car-ed-lot-mod-hist-reg-popup-lotno]").off().on('keyup', function(e){

			$(this).val($(this).val().replace(/[^a-z0-9]/gi,'').toUpperCase());
			
			var lotNo = $(this).val();
			if(lotNo.length == 10){
				var itemIndex = $(this).attr("data-index");
				retrieveCarEdStatusInfoRegDetail(itemIndex, lotNo);
			}
			
		});
		
		setCarEdLotModHistRegEventHandler();
		
	};
	
	
	//------------------------------------------------
	// 
	//------------------------------------------------
	var retrieveCarEdStatusInfoRegDetail = function(itemIndex, lotNo) {
		
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
			$("#js-car-ed-lot-mod-hist-reg-popup-lotno-" + itemIndex).focus();
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
			$("#js-car-ed-lot-mod-hist-reg-popup-lotno-" + itemIndex).focus();
			return;
		}
		
		if(app.utils.isEmpty(itemIndex))
			retrieveCarEdModProdInfo.request(lotNo);
		else
			retrieveCarEdProdInfo.request(itemIndex, lotNo);
		
		
	};
	
	
	
	var retrieveCarEdModProdInfo = {
		success : function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					var itemIndex = retrieveCarEdProdInfo.itemIndex;
					
					if(response.rs !== null && response.rs.length > 0)
					{
						// LOT No 값에 의해 구분값을 바인딩.
						$("#js-car-ed-lot-mod-hist-mod-popup-type").val(response.rs[0].partId);
					} 
					else 
					{
						app.message.alert({
							title: '<spring:message code="TODO.KEY" text="알림" />', 
							message: '<spring:message code="TODO.KEY" text="조회된 데이터가 없습니다." />', 
							confirmButtonText: '<spring:message code="TODO.KEY" text="확인" />',
							callback: {
								confirm: function() {
									$("#js-car-ed-lot-mod-hist-mod-popup-lotno").val("");
									$('#js-car-ed-lot-mod-hist-mod-popup-lotno').focus();
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
		request : function(lotNo) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var params = {
				service 	: 'car.extinsp'
				, method 	: 'retrieveLotNo'
				, lotNo 	: lotNo
				, partType 	: $("#js-car-ed-lot-mod-hist-mod-popup-type").val()
			};
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	
	var retrieveCarEdProdInfo = {
		itemIndex : "",
		success : function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					var itemIndex = retrieveCarEdProdInfo.itemIndex;
					
					if(response.rs !== null && response.rs.length > 0)
					{
						// LOT No 값에 의해 구분값을 바인딩.
						$("#js-car-ed-lot-mod-hist-reg-popup-type-" + itemIndex).val(response.rs[0].partId);
					} 
					else 
					{
						app.message.alert({
							title: '<spring:message code="TODO.KEY" text="알림" />', 
							message: '<spring:message code="TODO.KEY" text="조회된 데이터가 없습니다." />', 
							confirmButtonText: '<spring:message code="TODO.KEY" text="확인" />',
							callback: {
								confirm: function() {
									$("#js-car-ed-lot-mod-hist-reg-popup-lotno-" + itemIndex).val('');
									$('#js-car-ed-lot-mod-hist-reg-popup-lotno').focus();
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
				, partType 	: $("#js-car-ed-lot-mod-hist-reg-popup-type-"+ itemIndex).val()
			};
			
			retrieveCarEdProdInfo.itemIndex = itemIndex;
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	
	//------------------------------------------------
	// 이벤트 handler Set
	//------------------------------------------------
	var setCarEdLotModHistRegEventHandler = function() {
		
		$("input[name=js-car-ed-lot-mod-hist-reg-popup-date]").mask('9999-99-99');
		
		// 삭제 버튼 클릭 Event 
		$('button[name=js-car-ed-lot-mod-hist-reg-popup-delete-button]').off().on('click', function(){
			$(this).parent().parent().remove();
		});
	};
	
	//------------------------------------------------
	// 도료 Lot 변경 이력 저장 전 Validation Check
	//------------------------------------------------
	var validationCheckCarEdLotModHistReg = function() {
		
		// 입력 row 개수 체크
		var inputObjLength = $("input[name=js-car-ed-lot-mod-hist-reg-popup-date]").length;
		if(inputObjLength == 0){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="입력된 데이터가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
			});
			return false;
		}
		if(app.utils.isEmpty($('#js-car-ed-lot-mod-hist-reg-popup-carplant').val())){
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
		if(app.utils.isEmpty($('#js-car-ed-lot-mod-hist-reg-popup-boothid').val())){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="부스코드가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return false;
		}
		
		// 필수값 입력 여부 체크
		for(var i=0 ; i<inputObjLength ; i++){
			var $injDate    = $($("input[name=js-car-ed-lot-mod-hist-reg-popup-date]")[i]);
			var $lotNo      = $($("input[name=js-car-ed-lot-mod-hist-reg-popup-lotno]")[i]);
			var $injType    = $($("input[name=js-car-ed-lot-mod-hist-reg-popup-type]")[i]);
			
			if(app.utils.isEmpty($injDate.val())){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="일자는 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$injDate.focus();
						}
					}
				});
				return false;
			}
			if(app.utils.isEmpty($lotNo.val())){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="LOT No는 필수입력 항목입니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$lotNo.focus();
						}
					}
				});
				return false;
			}
			if($lotNo.val().length != 10){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="LOT No는 10자리 이어야 합니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$lotNo.focus();
						}
					}
				});
				return false;
			}
		}
		return true;
	};
	
	//-------------------------------------------------
	// 도료 Lot 변경 이력 저장
	//-------------------------------------------------
	var saveCarProdInspEdLot = {
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
					$("#js-car-ed-lot-mod-hist-reg-popup-close-button").click();
					
					// Lot 변경 이력 조회
					retrieveMainCarProdInspEdLot.request();
					
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
			// 파라미터 Set
			var edLot = [];
			var inputObjLength = $("input[name=js-car-ed-lot-mod-hist-reg-popup-date]").length;
			
			for(var i=0 ; i<inputObjLength ; i++){
				var $injDate             = $($("input[name=js-car-ed-lot-mod-hist-reg-popup-date]")[i]);
				var $lotNo               = $($("input[name=js-car-ed-lot-mod-hist-reg-popup-lotno]")[i]);
				var $injType             = $($("select[name=js-car-ed-lot-mod-hist-reg-popup-type]")[i]);
				var $injDescription      = $($("input[name=js-car-ed-lot-mod-hist-reg-popup-desc]")[i]);
				var $injRemark           = $($("input[name=js-car-ed-lot-mod-hist-reg-popup-remark]")[i]);
				var $seqCarProdInspEdLot = $($("input[name=js-car-ed-lot-mod-hist-reg-popup-seq]")[i]);
				
				edLot.push({
					  injDate              	: $injDate.val().replace(/-/gi, "")
					, lotNo                	: $lotNo.val()
					, partType              : $injType.val()
					, injDescription       	: $injDescription.val()
					, injRemark            	: $injRemark.val()
					, seqCarProdInspEdLot  	: $seqCarProdInspEdLot.val() || 0
					, workType  			: "PC"
				});
				
			}
			
			var params = {
				  service              : 'car.prodInspEd'
				, method               : 'saveCarProdInspEdLot'
				, carPlant             : $('#js-car-ed-lot-mod-hist-reg-popup-carplant').val()
				, boothId              : $('#js-car-ed-lot-mod-hist-reg-popup-boothid').val()
				, edLot                : JSON.stringify(edLot)
			};
			
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	//-------------------------------------------------
	// Lot 변경 이력 관리 - 구분 콤보 조회
	//-------------------------------------------------
	var retrieveLotPartType = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					gvCarEdStatusInfoRegPopupLotTypeRs = response.rs;
					
					var data = response.rs;
					
					$('#js-car-ed-lot-mod-hist-mod-popup-type').find('option').remove();
					
					for(var i=0; i < data.length; i++)
					{
						$('#js-car-ed-lot-mod-hist-mod-popup-type').append("<option value='"+ data[i].code +"'>"+ data[i].codeNm +"</option>");
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
	
	
	//-------------------------------------------------
	// 도료 Lot 변경 이력 조회
	//-------------------------------------------------
	var retrieveCarProdInspEdLot = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					
					if(response.rs.length > 0){
						var data = {
								rows : response.rs
						}
						var result = carEdLotModHistRegListTemplate(data);
						$("#js-car-ed-lot-mod-hist-reg-popup-list").empty().append(result);
						setCarEdLotModHistRegEventHandler();
						
					} else {
						$("#js-car-ed-lot-mod-hist-reg-popup-list").empty();
						addCarEdLotModHistReg();
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
				, method   : 'retrieveCarProdInspEdLot'
				, carPlant : $('#js-car-ed-lot-mod-hist-reg-popup-carplant').val()
				, boothId  : $('#js-car-ed-lot-mod-hist-reg-popup-boothid').val()
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	</script>
	<!-- 도료 Lot 변경 이력 관리 팝업 - 스크립트 [END] -->
	
	<!-- Lot 변경 이력 수정 팝업 - [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-ed-lot-mod-hist-mod-popup" class="wp-pop-layer wp-pop-w350 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1>Lot 변경 정보 수정</h1>
	    		<button type="button" id="js-car-ed-lot-mod-hist-mod-popup-close-button" class="wp-btn-close-layer wp-spr-btn"><span>닫기</span></button>
	    	</div>
	        <div class="wp-pop-conts">
		<!-- scroll Area -->
		<div class="wp-pop-cont-scrollable">
            <!--content //-->
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption>일반정보</caption>
					<colgroup>
						<col style="width:30%">
						<col style="width:auto">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar">변경일자</th>
							<td><input type="text" id="js-car-ed-lot-mod-hist-mod-popup-date" title="내용입력" class="wp-inp-datepicker wp-wd100p" placeholder="날짜입력"></td>
						</tr>
						<tr>
							<th class="wp-ar">구분</th>
							<td class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select name="js-car-ed-lot-mod-hist-mod-popup-type" id="js-car-ed-lot-mod-hist-mod-popup-type" class="wp-wd300p" title="<spring:message code="TODO.KEY" text="항목 개수 설정" />">
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th class="wp-ar">LOT No.</th>
							<td><input type="text" id="js-car-ed-lot-mod-hist-mod-popup-lotno" title="내용입력" class="wp-wd100p" placeholder="입력" maxLength="10"></td>
						</tr>
						<tr>
							<th class="wp-ar">내용</th>
							<td><input type="text" id="js-car-ed-lot-mod-hist-mod-popup-injdescription" title="내용입력" class="wp-wd100p" placeholder="입력"></td>
						</tr>
						<tr>
							<th class="wp-ar">비고</th>
							<td><input type="text" id="js-car-ed-lot-mod-hist-mod-popup-injreason" title="내용입력" class="wp-wd100p" placeholder="입력"></td>
						</tr>
					</tbody>
				</table>
	            </div>
			<!-- // scroll Area -->
			</div>
		
			<div class="wp-btn-area">
				<button type="button" id="js-car-ed-lot-mod-hist-mod-popup-save-button"   class="wp-btn big blue1 cr3 wp-pl18 wp-pr18">저장</button>
				<!-- <button type="button" id="js-car-ed-lot-mod-hist-mod-popup-delete-button" class="wp-btn big gray cr3 wp-pl18 wp-pr18">삭제</button> -->
			</div>
			<input type="hidden" id="js-car-ed-lot-mod-hist-mod-popup-seq">
	        </div>
	    </div>
	</div>
	
	<script type="text/javascript">

	//------------------------------------------------
	// 초기화
	//------------------------------------------------
	var initCarEdLotModHistModPopup = function(seq) {
		
		// 구분 combo setting
		retrieveLotPartType.request();
		
		// 파라미터 Set.
		if(seq == undefined || app.utils.isEmpty(seq)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="시퀀스가 없습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-ed-lot-mod-hist-mod-popup-close-button").click();
					}
				}
			});
			return;
		}
		
		$("#js-car-ed-lot-mod-hist-mod-popup-seq").val(seq);
		
		// 조회
		retrieveCarProdInspEdLotMobile.request();
		
		//change 이벤트
		$("#js-car-ed-lot-mod-hist-mod-popup-lotno").off().on('keyup', function(){
			
			$(this).val($(this).val().replace(/[^a-z0-9]/gi,'').toUpperCase());
			
			var lotNo = $(this).val();
			if(lotNo.length == 10){
				retrieveCarEdStatusInfoRegDetail('', lotNo);
			}

		});
		
		// 저장 버튼 클릭 Event 
		$('#js-car-ed-lot-mod-hist-mod-popup-save-button').off().on('click', function(){
			
			var date    = $("#js-car-ed-lot-mod-hist-mod-popup-date").val().replace(/-/gi, "");
			var lotNo   = $("#js-car-ed-lot-mod-hist-mod-popup-lotno").val();
			var type    = $("#js-car-ed-lot-mod-hist-mod-popup-type").val();
			
			if(app.utils.isEmpty(date)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="에러"/>'
					, message           : '<spring:message code="TODO.KEY" text="투입일자가 입력되지 않았습니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				});
				return;
			}
			if(app.utils.isEmpty(lotNo)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="에러"/>'
					, message           : '<spring:message code="TODO.KEY" text="LOT No가 입력되지 않았습니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				});
				return;
			}
			if(app.utils.isEmpty(type)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="에러"/>'
					, message           : '<spring:message code="TODO.KEY" text="구분이 입력되지 않았습니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				});
				return;
			}
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						$("#js-car-ed-lot-mod-hist-mod-popup-close-button").click();
						// Lot 변경 이력 저장
						saveCarProdInspEdLotMobile.request();
					}
				}
			});
		});
		
		// 삭제 버튼 클릭 Event 
		$('#js-car-ed-lot-mod-hist-mod-popup-delete-button').off().on('click', function(){
			app.message.confirm({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="삭제하시겠습니까?"/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
				, callback          : {
					confirm: function() {
						// Lot 변경 이력 삭제
						deleteCarProdInspEdLot.carEdLotModHistModPopup.request();
					}
				}
			});
		});	
	};
	
	
	//-------------------------------------------------
	// Lot 변경 이력 저장
	//-------------------------------------------------
	var saveCarProdInspEdLotMobile = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {
					
					app.message.alert({
						  title             : '<spring:message code="TODO.KEY" text="에러"/>'
						, message           : '<spring:message code="TODO.KEY" text="저장되었습니다."/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					});
					
					// 재조회
					retrieveMainCarProdInspEdLot.request();
					retrieveCarProdInspEdLotMobile.request();
					
				} else 	{
					// 서비스 요청 처리 오류 발생 메시지
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
				  service              	: 'car.prodInspEd'
				, method               	: 'saveCarProdInspEdLotMobile'
				, carPlant             	: $("#js-car-header-car-plant").val()
				, boothId              	: $("#js-car-ed-status-info-detail-boothid").val()
				, injDate              	: $("#js-car-ed-lot-mod-hist-mod-popup-date").val().replace(/-/gi, "")
				, lotNo                	: $("#js-car-ed-lot-mod-hist-mod-popup-lotno").val()
				, partType             	: $("#js-car-ed-lot-mod-hist-mod-popup-type").val()
				, injDescription       	: $("#js-car-ed-lot-mod-hist-mod-popup-injdescription").val()
				, injRemark            	: $("#js-car-ed-lot-mod-hist-mod-popup-injreason").val()
				, seqCarProdInspEdLot  	: $("#js-car-ed-lot-mod-hist-mod-popup-seq").val() || 0
				, workType  		   	: 'PC'
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: true});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};	
	
	//-------------------------------------------------
	// 데이타 조회
	//-------------------------------------------------
	var retrieveCarProdInspEdLotMobile = {
		success: function(response, status, jqueryXHR) {
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {							
					
					$("#js-car-ed-lot-mod-hist-mod-popup-date").val("");
					$("#js-car-ed-lot-mod-hist-mod-popup-lotno").val("");
					$("#js-car-ed-lot-mod-hist-mod-popup-type").val("");
					$("#js-car-ed-lot-mod-hist-mod-popup-injdescription").val("");
					$("#js-car-ed-lot-mod-hist-mod-popup-injreason").val("");
					
					if(response.rs.length > 0){
						$("#js-car-ed-lot-mod-hist-mod-popup-date").val(response.rs[0].injDate);
						$("#js-car-ed-lot-mod-hist-mod-popup-lotno").val(response.rs[0].lotNo);
						$("#js-car-ed-lot-mod-hist-mod-popup-type").val(response.rs[0].partType);
						$("#js-car-ed-lot-mod-hist-mod-popup-injdescription").val(response.rs[0].injDescription);
						$("#js-car-ed-lot-mod-hist-mod-popup-injreason").val(response.rs[0].injRemark);
					}
						
				} else 	{
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
				  service  : 'car.prodInspEd'
				, method   : 'retrieveCarProdInspEdLotMobile'
				, seqCarProdInspEdLot    : $("#js-car-ed-lot-mod-hist-mod-popup-seq").val()
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	</script>
	<!-- Lot 변경 이력 수정 팝업 - [END] -->	
	
	
	</tiles:putAttribute>
	<!-- 팝업 콘텐츠 E -->
</tiles:insertDefinition>
