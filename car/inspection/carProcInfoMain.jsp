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
				<h1><spring:message code="TODO.KEY" text="거래선 공정정보"/></h1>
				<div class="wp-location"><span><spring:message code="TODO.KEY" text="도장공정정보"/></span><span class="wp-fc-54"><spring:message code="TODO.KEY" text="거래선 공정정보"/></span></div>
			</header>
			<div class="wp-table-width">
				<!-- tab -->
				<ul class="wp-prod-tab wp-two">
					<li><a href="/car/inspection/carProcInfoMain.do" class="active"><spring:message code="TODO.KEY" text="공정정보"/></a></li>
					<li><a href="/car/inspection/carProcUpgradeInfo.do"><spring:message code="TODO.KEY" text="공정 개선 정보"/></a></li>
				</ul>
				<!-- //tab -->
				<!-- title-section -->
				<div class="wp-title-section wp-no-line">
					<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="공정정보 조회"/></h2>
				</div>
				<!-- //title-section -->
				<!-- contents tab -->
				<div class="wp-sub-process" id="js-car-proc-info-main-proc-group-list">
				</div>
				<!-- //contents tab -->
				<!-- 상단 버튼 -->
				<div class="wp-clearfix">
					<div class="wp-fl">
						<span class="wp-fl wp-title-22"><spring:message code="TODO.KEY" text="부스 선택"/></span>
						<div class="wp-ui-btn-switch wp-clearfix noborder-switch wp-fl">
							<ul id="js-car-proc-info-main-booth-list">
							</ul>
						</div>
					</div>
					<div class="wp-btn-area wp-fr">
						<button type="button" class="wp-btn small bdarkgray cr3 white" id="js-car-proc-info-main-data-modify-button" data-link="js-car-proc-info-insp-reg-popup" data-depth="1"><spring:message code="TODO.KEY" text="항목 수정"/></button>
						<button type="button" class="wp-btn small grayblue cr3" id="js-car-proc-info-main-image-modify-button" data-link="js-proc-info-insp-img-reg-popup" data-depth="1"><spring:message code="TODO.KEY" text="공정 이미지/특이사항 수정"/></button>
					</div>
				</div>
				<!-- //상단 버튼 -->
				
				<!--########################## -->
				<!--#####  PRETREATMENT  ##### -->
				<!--########################## -->
				<div name="js-car-proc-info-main-detail-area" procName="PRETREATMENT" style="display:none;">
					<!-- title-section -->
					<div class="wp-title-section">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="PRETREATMENT"/></h2>
					</div>
					<!-- //title-section -->
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="공정도"/></h2>
					<div class="wp-img-area"><img src="" id="js-car-proc-info-main-pretreatment-image" class="wp-wd100p"></div>
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="전처리 및 철판 정보"/></h2>
					<div class="wp-table-st1 h-center">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:14%">
								<col style="width:19%">
								<col style="width:13%">
								<col style="width:20%">
								<col style="width:14%">
								<col style="width:20%">
							</colgroup>
							<tbody>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="UPH"/></th>
									<td class="wp-al" name="js-car-proc-info-main-pretreatment-result-data" id="js-car-proc-info-main-pretreatment-uph"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="C / SPEED(m/min)"/></th>
									<td class="wp-al" name="js-car-proc-info-main-pretreatment-result-data" id="js-car-proc-info-main-pretreatment-speed"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="탈지제품명"/></th>
									<td class="wp-al" name="js-car-proc-info-main-pretreatment-result-data" id="js-car-proc-info-main-pretreatment-rmv-product"></td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="탈지 온도"/></th>
									<td class="wp-al" name="js-car-proc-info-main-pretreatment-result-data" id="js-car-proc-info-main-pretreatment-rmv-temp"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="표면조정제품명"/></th>
									<td class="wp-al" name="js-car-proc-info-main-pretreatment-result-data" id="js-car-proc-info-main-pretreatment-surf-product"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="전처리 제품명<br>(인산아연 or 지르코늄)"/></th>
									<td class="wp-al" name="js-car-proc-info-main-pretreatment-result-data" id="js-car-proc-info-main-pretreatment-pre-product"></td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="전처리 온도"/><br><spring:message code="TODO.KEY" text="(인산아연 or 지르코늄)"/></th>
									<td class="wp-al" name="js-car-proc-info-main-pretreatment-result-data" id="js-car-proc-info-main-pretreatment-pre-temp"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="전처리 업체"/></th>
									<td class="wp-al" name="js-car-proc-info-main-pretreatment-result-data" id="js-car-proc-info-main-pretreatment-pre-company"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="HOOD 소재"/></th>
									<td class="wp-al" name="js-car-proc-info-main-pretreatment-result-data" id="js-car-proc-info-main-pretreatment-hood"></td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="ROOF 소재"/></th>
									<td class="wp-al" name="js-car-proc-info-main-pretreatment-result-data" id="js-car-proc-info-main-pretreatment-roof"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="기타 소재"/> 1</th>
									<td class="wp-al" name="js-car-proc-info-main-pretreatment-result-data" id="js-car-proc-info-main-pretreatment-etc1"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="기타 소재"/> 2</th>
									<td class="wp-al" name="js-car-proc-info-main-pretreatment-result-data" id="js-car-proc-info-main-pretreatment-etc2"></td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="특이사항"/></th>
									<td class="wp-al" colspan="5" name="js-car-proc-info-main-pretreatment-result-data" id="js-car-proc-info-main-pretreatment-spacial-note"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="기타"/></h2>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:13%">
								<col style="width:87%">
							</colgroup>
							<tbody>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="특이사항"/></th>
									<td class="wp-al" name="js-car-proc-info-main-pretreatment-result-data" id="js-car-proc-info-main-pretreatment-remark"></td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="첨부파일"/></th>
									<td class="wp-al">
										<div class="wp-form-writer">
											<div class="wp-upload wp-mt0">
												<div class="wp-upload-top">
													<button type="button" class="wp-spr-btn wp-btn-wl-fold" id="js-car-proc-info-main-pretreatment-fold-button"><span><spring:message code="TODO.KEY" text="접기펴기"/></span></button>
													<button type="button" class="wp-btn-wl-text wp-file" id="js-car-proc-info-main-pretreatment-file-upload-button"><spring:message code="TODO.KEY" text="내 PC"/></button>
													<button type="button" id="js-car-proc-info-main-pretreatment-file-save-button" name="js-car-proc-info-main-common-file-save-button" class="wp-btn-wl-text wp-file"><spring:message code="TODO.KEY" text="업로드"/></button>
													<input type="file" id="js-car-proc-info-main-pretreatment-file-upload-target" style="display: none;" multiple>
													<div class="subcont" name="js-car-proc-info-main-pretreatment-result-data" id="js-car-proc-info-main-pretreatment-file-size"></div>
												</div>
												<div class="wp-upload-list">
													<table>
														<colgroup>
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
														<tbody id="js-car-proc-info-main-pretreatment-file-list">
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
				</div>
				
				

				<!--########################## -->
				<!--#####       ED       ##### -->
				<!--########################## -->
				<div name="js-car-proc-info-main-detail-area" procName="ED" style="display:none;">
	
					<!-- title-section -->
					<div class="wp-title-section">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="ED"/></h2>
					</div>
					<!-- //title-section -->
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="공정도"/></h2>
					<div class="wp-img-area"><img src="" id="js-car-proc-info-main-ed-image" class="wp-wd100p"></div>
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="CAPA. 정보"/></h2>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:10%">
								<col style="width:10%">
								<col style="width:10%">
								<col style="width:10%">
								<col style="width:10%">
								<col style="width:10%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:14%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="구분"/></th>
									<th><spring:message code="TODO.KEY" text="본조"/></th>
									<th><spring:message code="TODO.KEY" text="UF1"/></th>
									<th><spring:message code="TODO.KEY" text="UF2"/></th>
									<th><spring:message code="TODO.KEY" text="UF3"/></th>
									<th><spring:message code="TODO.KEY" text="UF4"/></th>
									<th><spring:message code="TODO.KEY" text="순수세1"/></th>
									<th><spring:message code="TODO.KEY" text="순수세2"/></th>
									<th><spring:message code="TODO.KEY" text="최종순수세"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><spring:message code="TODO.KEY" text="CAPA 정보(톤)"/></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-capa-info-item0"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-capa-info-item1"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-capa-info-item2"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-capa-info-item3"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-capa-info-item4"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-capa-info-item5"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-capa-info-item6"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-capa-info-item7"></td>
								</tr>
								<tr>
									<td><spring:message code="TODO.KEY" text="방식"/></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-type-item0"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-type-item1"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-type-item2"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-type-item3"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-type-item4"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-type-item5"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-type-item6"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-type-item7"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="오븐 설비 정보"/></h2>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:15%">
								<col style="width:15%">
								<col style="width:15%">
								<col style="width:15%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:14%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="오븐 NO."/></th>
									<th><spring:message code="TODO.KEY" text="AIRBLOW (MANUAL)"/></th>
									<th><spring:message code="TODO.KEY" text="AIRBLOW (열풍)"/></th>
									<th><spring:message code="TODO.KEY" text="LONG NOZZLE"/></th>
									<th><spring:message code="TODO.KEY" text="SETTING TIME"/></th>
									<th><spring:message code="TODO.KEY" text="IR RAMP 길이"/></th>
									<th><spring:message code="TODO.KEY" text="IR RAMP 개수"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-oven1-item0"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-oven1-item1"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-oven1-item2"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-oven1-item3"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-oven1-item4"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-oven1-item5"></td>
								</tr>
								<tr>
									<td>2</td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-oven2-item0"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-oven2-item1"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-oven2-item2"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-oven2-item3"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-oven2-item4"></td>
									<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-oven2-item5"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="전착 도장 정보"/></h2>
					<!-- round-box -->
					<div class="wp-round-box">
						<h2><spring:message code="TODO.KEY" text="도장"/><br><spring:message code="TODO.KEY" text="PARAMETER"/><br><spring:message code="TODO.KEY" text="정보"/></h2>
						<div class="wp-table-st1">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:auto;">
									<col style="width:16.5%">
									<col style="width:16.5%">
									<col style="width:16.5%">
									<col style="width:16.5%">
									<col style="width:16.5%">
								</colgroup>
								<thead>
									<tr>
										<th><spring:message code="TODO.KEY" text="1차 전압(V)"/></th>
										<th><spring:message code="TODO.KEY" text="2차 전압(V)"/></th>
										<th><spring:message code="TODO.KEY" text="3차 전압(V)"/></th>
										<th><spring:message code="TODO.KEY" text="1차 전류(A)"/></th>
										<th><spring:message code="TODO.KEY" text="2차 전류(A)"/></th>
										<th><spring:message code="TODO.KEY" text="3차 전류(A)"/></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info1-voltage1"></td>
										<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info1-voltage2"></td>
										<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info1-voltage3"></td>
										<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info1-ecurrent1"></td>
										<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info1-ecurrent2"></td>
										<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info1-ecurrent3"></td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- table -->
						<div class="wp-table-st1">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:auto;">
									<col style="width:20%">
									<col style="width:20%">
									<col style="width:20%">
									<col style="width:20%">
								</colgroup>
								<thead>
									<tr>
										<th><spring:message code="TODO.KEY" text="통전시간 1차"/></th>
										<th><spring:message code="TODO.KEY" text="Ramping"/></th>
										<th><spring:message code="TODO.KEY" text="통전시간 2차"/></th>
										<th><spring:message code="TODO.KEY" text="Ramping"/></th>
										<th><spring:message code="TODO.KEY" text="통전시간 3차"/></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info1-time1"></td>
										<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info1-ramping1"></td>
										<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info1-time2"></td>
										<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info1-ramping2"></td>
										<td name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info1-time3"></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- //round-box -->
	
					<!-- round-box -->
					<div class="wp-round-box">
						<h2><spring:message code="TODO.KEY" text="양극 정보"/></h2>
						<div class="wp-table-st3">
							<table>
								<caption></caption>
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
										<th><spring:message code="TODO.KEY" text="격막 개수"/></th>
										<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info2-count"></td>
										<th><spring:message code="TODO.KEY" text="격막 종류(TYPE)"/></th>
										<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info2-type"></td>
										<th><spring:message code="TODO.KEY" text="격막 제조사"/></th>
										<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info2-company"></td>
									</tr>
									<tr>
										<th><spring:message code="TODO.KEY" text="극비"/></th>
										<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info2-cost"></td>
										<th><spring:message code="TODO.KEY" text="양극액 전도도(㎛/㎝)"/></th>
										<td class="wp-al" colspan="3" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info2-conductivity"></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- //round-box -->
	
					<!-- round-box -->
					<div class="wp-round-box">
						<h2><spring:message code="TODO.KEY" text="UF 모듈 정보"/></h2>
						<div class="wp-table-st3">
							<table>
								<caption></caption>
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
										<th><spring:message code="TODO.KEY" text="UF 모듈 종류"/></th>
										<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info3-type"></td>
										<th><spring:message code="TODO.KEY" text="UF 개수"/></th>
										<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info3-count"></td>
										<th><spring:message code="TODO.KEY" text="UF 모듈 산 세정 주기"/></th>
										<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info3-term1"></td>
									</tr>
									<tr>
										<th><spring:message code="TODO.KEY" text="필터 교체주기"/></th>
										<td class="wp-al" colspan="5" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info3-term2"></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- //round-box -->
	
					<!-- round-box -->
					<div class="wp-round-box">
					<h2><spring:message code="TODO.KEY" text="순수세 정보"/></h2>
					<div class="wp-table-st3">
						<table>
							<caption></caption>
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
									<th><spring:message code="TODO.KEY" text="순수세 Tank NV"/></th>
									<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info4-tank-nv"></td>
									<th><spring:message code="TODO.KEY" text="순수세 Tank pH"/></th>
									<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info4-tank-ph"></td>
									<th><spring:message code="TODO.KEY" text="재생순수 전도도(us/cm)"/></th>
									<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info4-conductivity"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="펌프 유량/유압(t/min)"/></th>
									<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info4-pump"></td>
									<th><spring:message code="TODO.KEY" text="ECS 순환장치 개수"/></th>
									<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info4-ecs-count"></td>
									<th><spring:message code="TODO.KEY" text="순수 재생 시스템"/></th>
									<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info4-system"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="순환필터 1 교환주기"/></th>
									<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info4-term1"></td>
									<th><spring:message code="TODO.KEY" text="순환필터 2 교환주기"/></th>
									<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info4-term2"></td>
									<th><spring:message code="TODO.KEY" text="순환필터 3 교환주기"/></th>
									<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info4-term3"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="순환필터 1 사이즈"/></th>
									<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info4-size1"></td>
									<th><spring:message code="TODO.KEY" text="순환필터 2 사이즈"/></th>
									<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info4-size2"></td>
									<th><spring:message code="TODO.KEY" text="순환필터 3 사이즈"/></th>
									<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info4-size3"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="필터 개수"/></th>
									<td class="wp-al" colspan="5" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info4-filter-count"></td>
								</tr>
							</tbody>
						</table>
					</div>
					</div>
					<!-- //round-box -->
	
					<!-- round-box -->
					<div class="wp-round-box">
						<h2><spring:message code="TODO.KEY" text="UF 수세 정보"/></h2>
						<div class="wp-table-st3">
							<table>
								<caption></caption>
								<colgroup>
									<col style="width:18%">
									<col style="width:82%">
								</colgroup>
								<tbody>
									<tr>
										<th><spring:message code="TODO.KEY" text="UF 스프레이 압력"/><br>(kgf/㎠)</th>
										<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-paint-info5-spray"></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- //round-box -->
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="기타"/></h2>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:13%">
								<col style="width:87%">
							</colgroup>
							<tbody>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="특이사항"/></th>
									<td class="wp-al" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-etc-remark"></td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="첨부파일"/></th>
									<td class="wp-al">
										<div class="wp-form-writer">
											<div class="wp-upload wp-mt0">
												<div class="wp-upload-top">
													<button type="button" class="wp-spr-btn wp-btn-wl-fold" id="js-car-proc-info-main-ed-fold-button"><span><spring:message code="TODO.KEY" text="접기펴기"/></span></button>
													<button type="button" class="wp-btn-wl-text wp-file" id="js-car-proc-info-main-ed-file-upload-button"><spring:message code="TODO.KEY" text="내 PC"/></button>
													<button type="button" id="js-car-proc-info-main-ed-file-save-button" name="js-car-proc-info-main-common-file-save-button" class="wp-btn-wl-text wp-file"><spring:message code="TODO.KEY" text="업로드"/></button>
													<input type="file" id="js-car-proc-info-main-ed-file-upload-target" style="display: none;" multiple>
													<div class="subcont" name="js-car-proc-info-main-ed-result-data" id="js-car-proc-info-main-ed-file-size"></div>
												</div>
												<div class="wp-upload-list">
													<table>
														<colgroup>
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
														<tbody id="js-car-proc-info-main-ed-file-list">
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
				</div>
				
				<!--########################## -->
				<!--##### SEALER/DEADNER ##### -->
				<!--########################## -->
				<div name="js-car-proc-info-main-detail-area" procName="SEALER/DEADNER" style="display:none;">

					<!-- title-section -->
					<div class="wp-title-section wp-mt20">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="SEALER"/>&amp;<spring:message code="TODO.KEY" text="DEADER"/></h2>
					</div>
					<!-- //title-section -->
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="공정도"/></h2>
					<div class="wp-img-area"><img src="" id="js-car-proc-info-main-sealerdeadner-image" class="wp-wd100p"></div>
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="샌딩장 정보"/></h2>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:16.5%">
								<col style="width:16.5%">
								<col style="width:16.5%">
								<col style="width:16.5%">
								<col style="width:16.5%">
								<col style="width:auto">
							</colgroup>
							<thead>
								<tr>
									<th rowspan="2"><spring:message code="TODO.KEY" text="구분"/></th>
									<th colspan="2"><spring:message code="TODO.KEY" text="Sand Paper"/></th>
									<th rowspan="2"><spring:message code="TODO.KEY" text="수연마 여부"/></th>
									<th rowspan="2"><spring:message code="TODO.KEY" text="작업 TOOL"/></th>
									<th rowspan="2"><spring:message code="TODO.KEY" text="비고"/></th>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="NO"/></th>
									<th><spring:message code="TODO.KEY" text="제조사"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><spring:message code="TODO.KEY" text="샌딩 1"/></td>
									<td name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sending-sending1-paper-no"></td>
									<td name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sending-sending1-campany"></td>
									<td name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sending-sending1-yn"></td>
									<td name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sending-sending1-tool"></td>
									<td name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sending-sending1-etc"></td>
								</tr>
								<tr>
									<td><spring:message code="TODO.KEY" text="샌딩 2"/>"</td>
									<td name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sending-sending2-paper-no"></td>
									<td name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sending-sending2-campany"></td>
									<td name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sending-sending2-yn"></td>
									<td name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sending-sending2-tool"></td>
									<td name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sending-sending2-etc"></td>
								</tr>
								<tr>
									<td><spring:message code="TODO.KEY" text="샌딩 3"/>"</td>
									<td name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sending-sending3-paper-no"></td>
									<td name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sending-sending3-campany"></td>
									<td name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sending-sending3-yn"></td>
									<td name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sending-sending3-tool"></td>
									<td name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sending-sending3-etc"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
					<!-- table -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="실러 및 데드너 정보"/></h2>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
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
									<th class="wp-ar"><spring:message code="TODO.KEY" text="UPH"/></th>
									<td class="wp-al" name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sealer-uph"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="C / SPEED(m/min)"/></th>
									<td class="wp-al" name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sealer-speed"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="통합실러 제조사"/></th>
									<td class="wp-al" name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sealer-company1"></td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="오일실러 제조사"/></th>
									<td class="wp-al" name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sealer-company2"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="UBS 제조사"/></th>
									<td class="wp-al" name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sealer-company3"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="데드너 제조사"/></th>
									<td class="wp-al" name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sealer-compan4"></td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="통합실러 제품명"/></th>
									<td class="wp-al" name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sealer-name1"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="오일실러 제품명"/></th>
									<td class="wp-al" name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sealer-name2"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="UBS 제품명"/></th>
									<td class="wp-al" name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sealer-name3"></td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="데드너 제품명"/></th>
									<td class="wp-al" name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sealer-name4"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="건조조건"/></th>
									<td class="wp-al" colspan="3" name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-sealer-condition"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="기타"/></h2>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:13%">
								<col style="width:87%">
							</colgroup>
							<tbody>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="특이사항"/></th>
									<td class="wp-al" name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-etc-remark"></td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="첨부파일"/></th>
									<td class="wp-al">
										<div class="wp-form-writer">
											<div class="wp-upload wp-mt0">
												<div class="wp-upload-top">
													<button type="button" class="wp-spr-btn wp-btn-wl-fold" id="js-car-proc-info-main-sealerdeadner-fold-button"><span><spring:message code="TODO.KEY" text="접기펴기"/></span></button>
													<button type="button" class="wp-btn-wl-text wp-file" id="js-car-proc-info-main-sealerdeadner-file-upload-button"><spring:message code="TODO.KEY" text="내 PC"/></button>
													<button type="button" id="js-car-proc-info-main-sealerdeadner-file-save-button" name="js-car-proc-info-main-common-file-save-button" class="wp-btn-wl-text wp-file"><spring:message code="TODO.KEY" text="업로드"/></button>
													<input type="file" id="js-car-proc-info-main-sealerdeadner-file-upload-target" style="display: none;" multiple>
													<div class="subcont" name="js-car-proc-info-main-sealerdeadner-result-data" id="js-car-proc-info-main-sealerdeadner-file-size"></div>
												</div>
												<div class="wp-upload-list">
													<table>
														<colgroup>
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
														<tbody id="js-car-proc-info-main-sealerdeadner-file-list">
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
				</div>				
				
				
				<!--########################## -->
				<!--#####     PRIMER     ##### -->
				<!--########################## -->
				<div name="js-car-proc-info-main-detail-area" procName="PRIMER" style="display:none;">

					<!-- title-section -->
					<div class="wp-title-section wp-mt20">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="PRIMER"/></h2>
					</div>
					<!-- //title-section -->
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="공정도"/></h2>
					<div class="wp-img-area"><img src="" id="js-car-proc-info-main-primer-image" class="wp-wd100p"></div>
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="내부 부스 정보"/></h2>
					<!-- HMC1 공장 -->
					<div name="js-car-proc-info-primer-inner-booth-table" carPlantName="HMC1" class="wp-table-st1 wp-vertical-line" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="IN Hood / Tunk"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="IN 보정"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( min )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-wiping-hmc1">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-indoor-hmc1">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-ft1-hmc1">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-inhood-hmc1">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-ft2-hmc1">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-inrevision-hmc1">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-st-hmc1">-</td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="Total 시간(min)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-totaltime-wiping-hmc1">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-totaltime-indoor-ft-hmc1" colspan="2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-totaltime-inhood-ft-hmc1" colspan="2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-totaltime-inrevision-st-hmc1" colspan="2">-</td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-wiping-hmc1">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-indoor-ft-hmc1" colspan="2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-inhood-ft-hmc1" colspan="2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-st-hmc1" colspan="2">-</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC2 공장 -->
					<div name="js-car-proc-info-primer-inner-booth-table" carPlantName="HMC2" class="wp-table-st1 wp-vertical-line" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="IN Hood / Tunk"/></th>
									<th><spring:message code="TODO.KEY" text="IN 보정"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( min )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-wiping-hmc2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-indoor-hmc2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-ft1-hmc2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-inhood-hmc2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-inrevision-hmc2">-</td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-wiping-hmc2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-indoor-hmc2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-ft1-hmc2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-inhood-hmc2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-inrevision-hmc2">-</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC3 공장 -->
					<div name="js-car-proc-info-primer-inner-booth-table" carPlantName="HMC3" class="wp-table-st1 wp-vertical-line" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:14%">
								<col style="width:14%">
								<col style="width:14%">
								<col style="width:14%">
								<col style="width:14%">
								<col style="width:14%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="IN Hood / Tunk"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="IN 보정"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-wiping-hmc3">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-indoor-hmc3">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-ft1-hmc3">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-inhood-hmc3">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-ft2-hmc3">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-inrevision-hmc3">-</td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-wiping-hmc3">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-indoor-hmc3">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-ft1-hmc3">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-inhood-ft2-hmc3" colspan="2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-inrevision-hmc3">-</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC41 공장 -->
					<div name="js-car-proc-info-primer-inner-booth-table" carPlantName="HMC41" class="wp-table-st1 wp-vertical-line" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Hood / Tunk"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="IN 보정"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-wiping-hmc41">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-inhood-hmc41">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-indoor-hmc41">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-inrevision-hmc41">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-st-hmc41">-</td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-wiping-hmc41">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-inhood-hmc41">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-indoor-hmc41">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-inrevision-st-hmc41" colspan="2">-</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC51 공장 -->
					<div name="js-car-proc-info-primer-inner-booth-table" carPlantName="HMC51" class="wp-table-st1 wp-vertical-line" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="IN Hood / Tunk"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="IN 보정"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-wiping-hmc51">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-indoor-hmc51">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-ft1-hmc51">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-inhood-hmc51">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-ft2-hmc51">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-inrevision-hmc51">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-st-hmc51">-</td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-wiping-hmc51">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-indoor-ft1-hmc51" colspan="2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-inhood-ft2-hmc51" colspan="2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-inrevision-st-hmc51" colspan="2">-</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC52 공장 -->
					<div name="js-car-proc-info-primer-inner-booth-table" carPlantName="HMC52" class="wp-table-st1 wp-vertical-line" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Hood / Trunk"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-wiping-hmc52">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-inhood-hmc52">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-ft1-hmc52">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-indoor-hmc52">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-ft2-hmc52">-</td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-wiping-hmc52">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-inhood-ft1-hmc52" colspan="2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-indoor-ft2-hmc52" colspan="2">-</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC아산 공장 -->
					<div name="js-car-proc-info-primer-inner-booth-table" carPlantName="HMCAS" class="wp-table-st1 wp-vertical-line" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="IN Hood / Tunk"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="IN 보정"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-wiping-hmcas">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-indoor-hmcas">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-ft1-hmcas">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-inhood-hmcas">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-ft2-hmcas">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-inrevision-hmcas">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-st-hmcas">-</td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-wiping-hmcas">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-indoor-ft1-hmcas" colspan="2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-inhood-ft2-hmcas" colspan="2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-inrevision-st-hmcas" colspan="2">-</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC전주버스 공장 -->
					<div name="js-car-proc-info-primer-inner-booth-table" carPlantName="HMCJB" class="wp-table-st1 wp-vertical-line" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
									<th><spring:message code="TODO.KEY" text="IN Hood"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-wiping-hmcjb">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-indoor-hmcjb">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-st1-hmcjb">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-inhood-hmcjb">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-st2-hmcjb">-</td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-wiping-hmcjb">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-indoor-st1-hmcjb" colspan="2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-inhood-st2-hmcjb" colspan="2">-</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC전주트럭 공장 -->
					<div name="js-car-proc-info-primer-inner-booth-table" carPlantName="HMCJT" class="wp-table-st1 wp-vertical-line" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="내부보정"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-wiping-hmcjt">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-indoor-hmcjt">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-ft1-hmcjt">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-inrevision-hmcjt">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-st1-hmcjt">-</td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-wiping-hmcjt">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-indoor-ft1-hmcjt" colspan="2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-inrevision-st1-hmcjt" colspan="2">-</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC남양연구소 공장 -->
					<div name="js-car-proc-info-primer-inner-booth-table" carPlantName="HMCLAP1" class="wp-table-st1 wp-vertical-line" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
									<th><spring:message code="TODO.KEY" text="IN Hood"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-wiping-hmclap1">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-indoor-hmclap1">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-st1-hmclap1">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-inhood-hmclap1">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-st2-hmclap1">-</td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-wiping-hmclap1">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-indoor-st1-hmclap1" colspan="2">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-inhood-st2-hmclap1" colspan="2">-</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- 동희오토 공장 -->
					<div name="js-car-proc-info-primer-inner-booth-table" carPlantName="SHA" class="wp-table-st1 wp-vertical-line" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:35%">
								<col style="width:35%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="IN 보정"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-inrevision-sha">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-st1-sha">-</td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-inrevision-sha">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-st1-sha">-</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- KMC3 공장 -->
					<div name="js-car-proc-info-primer-inner-booth-table" carPlantName="KMC3" class="wp-table-st1 wp-vertical-line" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="IN Hood / Tunk"/></th>
									<th><spring:message code="TODO.KEY" text="IN 보정"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-wiping-kmc3">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-indoor-kmc3">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-inhood-kmc3">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-inrevision-kmc3">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-time-st1-kmc3">-</td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-wiping-kmc3">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-indoor-kmc3">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-inhood-kmc3">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-inrevision-kmc3">-</td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-inner-length-st1-kmc3">-</td>
								</tr>
							</tbody>
						</table>
					</div>
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="외부 부스 정보"/></h2>
					<!-- HMC1 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMC1" name="js-car-proc-info-primer-outer-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
									<th><spring:message code="TODO.KEY" text="Total"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( min )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-out1-hmc1"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-ft-hmc1"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-out2-hmc1"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-st-hmc1"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-oven-hmc1"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-total-hmc1"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="Total 시간(min)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-totaltime-out1-ft-out2-hmc1" colspan="3"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-totaltime-st-hmc1"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-totaltime-oven-hmc1"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-totaltime-total-hmc1"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-out1-ft-out2-hmc1" colspan="3"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-st-hmc1"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-oven-hmc1"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-total-hmc1"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC2 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMC2" name="js-car-proc-info-primer-outer-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:20%">
								<col style="width:20%">
								<col style="width:20%">
								<col style="width:20%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
									<th><spring:message code="TODO.KEY" text="Total"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( min )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-out1-hmc2"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-st-hmc2"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-oven-hmc2"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-total-hmc2"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-out1-hmc2"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-st-hmc2"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-oven-hmc2"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-total-hmc2"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC3 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMC3" name="js-car-proc-info-primer-outer-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
									<th><spring:message code="TODO.KEY" text="Total"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-out1-hmc3"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-ft-hmc3"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-out2-hmc3"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-st-hmc3"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-oven-hmc3"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-total-hmc3"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-out1-ft-out2-hmc3" colspan="3"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-st-hmc3"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-oven-hmc3"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-total-hmc3"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC41 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMC41" name="js-car-proc-info-primer-outer-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
									<th><spring:message code="TODO.KEY" text="Total"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-out1-hmc41"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-out2-hmc41"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-st-hmc41"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-oven-hmc41"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-total-hmc41"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-out1-out2-hmc41" colspan="2"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-st-hmc41"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-oven-hmc41"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-total-hmc41"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC51 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMC51" name="js-car-proc-info-primer-outer-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
									<th><spring:message code="TODO.KEY" text="Total"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( min )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-out1-hmc51"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-ft-hmc51"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-out2-hmc51"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-st-hmc51"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-oven-hmc51"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-total-hmc51"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-out1-ft-out2-hmc51" colspan="3"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-st-hmc51"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-oven-hmc51"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-total-hmc51"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC52 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMC52" name="js-car-proc-info-primer-outer-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
									<th><spring:message code="TODO.KEY" text="Total"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-out1-hmc52"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-ft-hmc52"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-st-hmc52"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-oven-hmc52"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-total-hmc52"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-out1-ft-hmc52" colspan="2"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-st-hmc52"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-oven-hmc52"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-total-hmc52"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC아산 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMCAS" name="js-car-proc-info-primer-outer-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
									<th><spring:message code="TODO.KEY" text="Total"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( min )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-out1-hmcas"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-ft-hmcas"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-out2-hmcas"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-st-hmcas"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-oven-hmcas"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-total-hmcas"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-out1-ft-out2-hmcas" colspan="3"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-st-hmcas"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-oven-hmcas"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-total-hmcas"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC전주버스 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMCJB" name="js-car-proc-info-primer-outer-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="수평"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="수직"/></th>
									<th><spring:message code="TODO.KEY" text="매뉴얼(띠칼라)"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
									<th><spring:message code="TODO.KEY" text="Total"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( min )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-horizontal-hmcjb"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-ft-hmcjb"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-vertical-hmcjb"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-line-color-hmcjb"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-st-hmcjb"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-oven-hmcjb"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-total-hmcjb"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-horizontal-ft-vertical-hmcjb" colspan="3"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-line-color-hmcjb"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-st-hmcjb"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-oven-hmcjb"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-total-hmcjb"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC전주트럭 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMCJT" name="js-car-proc-info-primer-outer-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="수평"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="수직"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
									<th><spring:message code="TODO.KEY" text="Total"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( min )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-horizontal-hmcjt"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-ft-hmcjt"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-vertical-hmcjt"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-st-hmcjt"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-oven-hmcjt"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-total-hmcjt"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-horizontal-ft-vertical-hmcjt" colspan="3"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-st-hmcjt"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-oven-hmcjt"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-total-hmcjt"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC남양연구소 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMCLAP1" name="js-car-proc-info-primer-outer-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="매뉴얼(띠칼라)"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
									<th><spring:message code="TODO.KEY" text="Total"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( min )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-out1-hmclap1"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-ft-hmclap1"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-out2-hmclap1"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-line-color-hmclap1"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-st-hmclap1"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-oven-hmclap1"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-total-hmclap1"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-out1-out2-hmclap1" colspan="3"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-line-color-hmclap1"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-st-hmclap1"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-oven-hmclap1"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-total-hmclap1"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- 동희오토 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="SHA" name="js-car-proc-info-primer-outer-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:25%">
								<col style="width:25%">
								<col style="width:25%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="Total"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( min )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-wiping-sha"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-out1-sha"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-total-sha"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-wiping-sha"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-out1-sha"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-total-sha"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- KMC3 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="KMC3" name="js-car-proc-info-primer-outer-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:25%">
								<col style="width:25%">
								<col style="width:25%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
									<th><spring:message code="TODO.KEY" text="Total"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( min )"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-out1-kmc3"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-oven-kmc3"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-time-total-kmc3"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-out1-kmc3"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-oven-kmc3"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-outer-length-total-kmc3"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="샌딩장 정보"/></h2>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:25%">
								<col style="width:25%">
								<col style="width:25%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="일반샌딩"/></th>
									<th><spring:message code="TODO.KEY" text="Heavy  샌딩"/></th>
									<th><spring:message code="TODO.KEY" text="기타"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="Sand Paper No."/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-sanding-sandpaper-no-general"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-sanding-sandpaper-no-heavy"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-sanding-sandpaper-no-etc"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="Sand Paper 제조사"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-sanding-sandpaper-co-general"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-sanding-sandpaper-co-heavy"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-sanding-sandpaper-co-etc"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="수연마 여부"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-sanding-yn-general"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-sanding-yn-heavy"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-sanding-yn-etc"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="세정 주기"/></h2>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:10%">
								<col style="width:10%">
								<col style="width:10%">
								<col style="width:15%">
								<col style="width:10%">
								<col style="width:15%">
								<col style="width:auto">
								<col style="width:10%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="구분"/></th>
									<th><spring:message code="TODO.KEY" text="상세구분"/></th>
									<th><spring:message code="TODO.KEY" text="SHORT 시간"/></th>
									<th><spring:message code="TODO.KEY" text="SHORT 주기"/></th>
									<th><spring:message code="TODO.KEY" text="LONG 시간"/></th>
									<th><spring:message code="TODO.KEY" text="LONG 주기"/></th>
									<th><spring:message code="TODO.KEY" text="벨컵/전극봉 주기"/></th>
									<th><spring:message code="TODO.KEY" text="세정신너 제품"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="내부"/></th>
									<th><spring:message code="TODO.KEY" text="DOOR"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-clean-indoor-short-time"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-clean-indoor-short-term"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-clean-indoor-long-time"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-clean-indoor-long-term"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-clean-indoor-bellcup"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-clean-indoor-product"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="내부"/></th>
									<th><spring:message code="TODO.KEY" text="HOOD"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-clean-inhood-short-time"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-clean-inhood-short-term"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-clean-inhood-long-time"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-clean-inhood-long-term"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-clean-inhood-bellcup"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-clean-inhood-product"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="외부"/></th>
									<th></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-clean-out-short-time"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-clean-out-short-term"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-clean-out-long-time"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-clean-out-long-term"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-clean-out-bellcup"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-clean-out-product"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="도장기 정보"/></h2>
					<h3 class="wp-title-blue"><spring:message code="TODO.KEY" text="PRIMER 일반 정보"/></h3>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
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
									<th class="wp-ar"><spring:message code="TODO.KEY" text="UPH"/></th>
									<td class="wp-al" name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerinfo-uph"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="C / SPEED(m/min)"/></th>
									<td class="wp-al" name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerinfo-speed"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="TAG-RAG"/></th>
									<td class="wp-al" name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerinfo-tag"></td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="Air Balance"/></th>
									<td class="wp-al" name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerinfo-balance"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="와이핑 머신 유무"/></th>
									<td class="wp-al" name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerinfo-yn"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="보정(제조사/Air CAP)"/></th>
									<td class="wp-al" name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerinfo-company"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
					<!-- title -->
					<h3 class="wp-title-blue"><spring:message code="TODO.KEY" text="PRIMER  도장기 정보"/></h3>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:16.5%">
								<col style="width:16.5%">
								<col style="width:16.5%">
								<col style="width:16.5%">
								<col style="width:16.5%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="구분"/></th>
									<th><spring:message code="TODO.KEY" text="도장기 Type"/></th>
									<th><spring:message code="TODO.KEY" text="전하부과방식"/></th>
									<th><spring:message code="TODO.KEY" text="도장기제조사"/></th>
									<th><spring:message code="TODO.KEY" text="도장기 대수"/></th>
									<th><spring:message code="TODO.KEY" text="Air CAP 및 BELL Model"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="IN DOOR"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo1-indoor-type"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo1-indoor-method"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo1-indoor-company"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo1-indoor-count"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo1-indoor-aircap"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="IN HOOD / TRUNK"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo1-inhood-type"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo1-inhood-method"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo1-inhood-company"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo1-inhood-count"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo1-inhood-aircap"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="OUT ALL BODY"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo1-out-type"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo1-out-method"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo1-out-company"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo1-out-count"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo1-out-aircap"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
					<!-- title -->
					<h3 class="wp-title-blue"><spring:message code="TODO.KEY" text="PRIMER  도장기 정보"/></h3>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:25%">
								<col style="width:25%">
								<col style="width:25%">
								<col style="width:auto">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="구분"/></th>
									<th><spring:message code="TODO.KEY" text="토출량(cc/min)"/></th>
									<th><spring:message code="TODO.KEY" text="적용전압(KV)"/></th>
									<th><spring:message code="TODO.KEY" text="RPM"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="IN DOOR"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo2-indoor-output"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo2-indoor-voltage"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo2-indoor-rpm"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="IN HOOD"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo2-inhood-output"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo2-inhood-voltage"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo2-inhood-rpm"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="IN TRUNK"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo2-intrunk-output"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo2-intrunk-voltage"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo2-intrunk-rpm"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="OUT HOOD"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo2-outhood-output"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo2-outhood-voltage"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo2-outhood-rpm"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="OUT DOOR"/></th>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo2-outdoor-output"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo2-outdoor-voltage"></td>
									<td name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-primerpaintinfo2-outdoor-rpm"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="기타"/></h2>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:13%">
								<col style="width:87%">
							</colgroup>
							<tbody>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="특이사항"/></th>
									<td class="wp-al" name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-etc-remark"></td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="첨부파일"/></th>
									<td class="wp-al">
										<div class="wp-form-writer">
											<div class="wp-upload wp-mt0">
												<div class="wp-upload-top">
													<button type="button" class="wp-spr-btn wp-btn-wl-fold" id="js-car-proc-info-main-primer-fold-button"><span><spring:message code="TODO.KEY" text="접기펴기"/></span></button>
													<button type="button" class="wp-btn-wl-text wp-file" id="js-car-proc-info-main-primer-file-upload-button"><spring:message code="TODO.KEY" text="내 PC"/></button>
													<button type="button" id="js-car-proc-info-main-primer-file-save-button" name="js-car-proc-info-main-common-file-save-button" class="wp-btn-wl-text wp-file"><spring:message code="TODO.KEY" text="업로드"/></button>
													<input type="file" id="js-car-proc-info-main-primer-file-upload-target" style="display: none;" multiple>
													<div class="subcont" name="js-car-proc-info-main-primer-result-data" id="js-car-proc-info-main-primer-file-size"></div>
												</div>
												<div class="wp-upload-list">
													<table>
														<colgroup>
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
														<tbody id="js-car-proc-info-main-primer-file-list">
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
				</div>				
				
				
				<!--########################## -->
				<!--#####  BASE/CLEAR    ##### -->
				<!--########################## -->
				<div name="js-car-proc-info-main-detail-area" procName="BASE/CLEAR" style="display:none;">
				
					<!-- title-section -->
					<div class="wp-title-section wp-mt20">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="BASE&amp;CLEAR"/></h2>
					</div>
					<!-- //title-section -->
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="공정도"/></h2>
					<div class="wp-img-area"><img src="" id="js-car-proc-info-main-baseclear-image" class="wp-wd100p"></div>
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="BASE 부스정보"/></h2>
					<!-- HMC1 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMC1" name="js-car-proc-info-base-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="승온장치"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( min )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-device-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out1-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft2-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out2-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmc1"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="Total 시간(min)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-totaltime-device-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-totaltime-wiping-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-totaltime-indoor-ft1-hmc1" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-totaltime-out1-ft2-out2-st-hmc1" colspan="4"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-device-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-ft1-hmc1" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-out1-ft2-out2-st-hmc1" colspan="4"></td>
								</tr>
							</tbody>
						</table>
					</div>

					<!-- HMC2 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMC2" name="js-car-proc-info-base-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="승온장치"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( min )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-device-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out1-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out2-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmc2"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-device-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-out1-out2-hmc2" colspan="3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-st-hmc2"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC3 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMC3" name="js-car-proc-info-base-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-hmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-hmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-hmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out1-hmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft2-hmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out2-hmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmc3"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-hmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-ft1-hmc3" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-out1-ft2-out2-st-hmc3" colspan="4"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC41 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMC41" name="js-car-proc-info-base-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="승온장치"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-device-hmc41"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-hmc41"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-hmc41"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-hmc41"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out1-hmc41"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft2-hmc41"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out2-hmc41"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmc41"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-device-hmc41"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-hmc41"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-ft1-hmc41" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-out1-ft2-out2-st-hmc41" colspan="4"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC42 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMC42" name="js-car-proc-info-base-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="승온장치"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-device-hmc42"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-hmc42"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-hmc42"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-hmc42"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out1-hmc42"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft2-hmc42"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out2-hmc42"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmc42"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-device-hmc42"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-hmc42"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-ft1-hmc42" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-out1-ft2-out2-st-hmc42" colspan="4"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC51 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMC51" name="js-car-proc-info-base-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:9.5%">
								<col style="width:9.5%">
								<col style="width:9.5%">
								<col style="width:9.5%">
								<col style="width:9.5%">
								<col style="width:9.5%">
								<col style="width:9.5%">
								<col style="width:9.5%">
								<col style="width:9.5%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door 확인"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 확인"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-confirm-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out1-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft2-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out2-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out-confirm-hmc51"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-ft1-hmc51" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-confirm-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-out1-ft2-out2-st-hmc51" colspan="4"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-out-confirm-hmc51"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC52 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMC52" name="js-car-proc-info-base-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-hmc52"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-hmc52"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-hmc52"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out1-hmc52"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft2-hmc52"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out2-hmc52"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmc52"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-hmc52"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-ft1-hmc52" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-out1-st-hmc52" colspan="4"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC아산 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMCAS" name="js-car-proc-info-base-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="승온장치"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-device-hmcas"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-hmcas"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-hmcas"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-hmcas"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out1-hmcas"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft2-hmcas"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out2-hmcas"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmcas"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-device-hmcas"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-hmcas"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-ft1-hmcas" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-out1-ft2-out2-st-hmcas" colspan="4"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC전주버스 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMCJB" name="js-car-proc-info-base-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
								<col style="width:11.1%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="수평"/></th>
									<th><spring:message code="TODO.KEY" text="수직"/></th>
									<th><spring:message code="TODO.KEY" text="띠칼라"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-hmcjb"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-hmcjb"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-hmcjb"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-horizontal-hmcjb"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-vertical-hmcjb"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-line-color-hmcjb"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmcjb"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-oven-hmcjb"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-hmcjb"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-ft1-hmcjb" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-horizontal-vertical-hmcjb" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-line-color-hmcjb"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-st-hmcjb"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-oven-hmcjb"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC전주트럭 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMCJT" name="js-car-proc-info-base-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:12%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="1st"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="2nd"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-hmcjt"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-hmcjt"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-hmcjt"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-1st-hmcjt"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft2-hmcjt"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-2nd-hmcjt"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmcjt"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-hmcjt"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-ft1-hmcjt" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-1st-st-hmcjt" colspan="4"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC남양연구소 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMCLAP1" name="js-car-proc-info-base-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:17%">
								<col style="width:17%">
								<col style="width:17%">
								<col style="width:17%">
								<col style="width:17%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
									<th><spring:message code="TODO.KEY" text="매뉴얼 도장"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out1-hmclap1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft-hmclap1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out2-hmclap1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmclap1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-manual-hmclap1"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-out1-st-hmclap1" colspan="4"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-manual-hmclap1"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- 동희오토 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="SHA" name="js-car-proc-info-base-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:9.5%">
								<col style="width:9.5%">
								<col style="width:9.5%">
								<col style="width:9.5%">
								<col style="width:9.5%">
								<col style="width:9.5%">
								<col style="width:9.5%">
								<col style="width:9.5%">
								<col style="width:9.5%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="IN TRUNK/HOOD"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="F / T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door 보정"/></th>
									<th><spring:message code="TODO.KEY" text="S / T"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-intrunk-sha"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-sha"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-sha"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-st1-sha"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out1-sha"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-ft2-sha"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out2-sha"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-inrevision-sha"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-st3-sha"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-intrunk-ft1-sha" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-st1-sha" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-out1-out2-sha" colspan="3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-inrevision-st3-sha" colspan="2"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- KMC3 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="KMC3" name="js-car-proc-info-base-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:21%">
								<col style="width:21%">
								<col style="width:21%">
								<col style="width:21%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-kmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-kmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out1-kmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-time-out2-kmc3"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-kmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-kmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseboothinfo-length-out1-out2-kmc3" colspan="2"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="CLEAR 부스정보"/></h2>
					<!-- HMC1 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMC1" name="js-car-proc-info-clear-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:7%">
								<col style="width:7%">
								<col style="width:7%">
								<col style="width:7%">
								<col style="width:7%">
								<col style="width:7%">
								<col style="width:7%">
								<col style="width:7%">
								<col style="width:7%">
								<col style="width:8%">
								<col style="width:7%">
								<col style="width:7%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="PRE<br>HEATING"/></th>
									<th><spring:message code="TODO.KEY" text="HAB"/></th>
									<th><spring:message code="TODO.KEY" text="CAB"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="Door"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="F/T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2st"/></th>
									<th><spring:message code="TODO.KEY" text="보정 및 검사"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( min )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-preheating-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-hab-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-cab-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st1-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-door-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st2-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-out1-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-ft-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-out2-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-inspect-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st3-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-oven-hmc1"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="Total 시간(min)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-totaltime-preheating-hab-cab-st1-hmc1" colspan="4"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-totaltime-door-st2-hmc1" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-totaltime-out1-ft-out2-hmc1" colspan="3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-totaltime-inspect-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-totaltime-st3-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-totaltime-oven-hmc1"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-preheating-hab-cab-st1-hmc1" colspan="4"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-door-st2-hmc1" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-out1-ft-out2-hmc1" colspan="3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-inspect-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-st3-hmc1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-oven-hmc1"></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- HMC2 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMC2" name="js-car-proc-info-clear-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:8.5%">
								<col style="width:8.5%">
								<col style="width:8.5%">
								<col style="width:8.5%">
								<col style="width:8.5%">
								<col style="width:8.5%">
								<col style="width:8.5%">
								<col style="width:8.5%">
								<col style="width:8.5%">
								<col style="width:8.5%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="PRE<br>HEATING"/></th>
									<th><spring:message code="TODO.KEY" text="HAB"/></th>
									<th><spring:message code="TODO.KEY" text="CAB"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="보정 및 검사"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( min )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-preheating-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-hab-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-cab-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st1-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-indoor-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st2-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-out1-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-inspect-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st3-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-oven-hmc2"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-preheating-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-hab-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-cab-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-st1-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-st2-hmc2" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-out1-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-inspect-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-st3-hmc2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-oven-hmc2"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC3 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMC3" name="js-car-proc-info-clear-booth-table" style="display:none;">
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
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="PRE<br>HEATING"/></th>
									<th><spring:message code="TODO.KEY" text="HAB"/></th>
									<th><spring:message code="TODO.KEY" text="CAB"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-preheating-hmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-hab-hmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-cab-hmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st1-hmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-indoor-hmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st2-hmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-out1-hmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st3-hmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-oven-hmc3"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-preheating-st1-hmc3" colspan="4"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-st2-hmc3" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-out1-hmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-st3-hmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-oven-hmc3"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC41 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMC41" name="js-car-proc-info-clear-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
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
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-indoor1-hmc41"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st1-hmc41"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-out1-hmc41"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-out2-hmc41"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-indoor2-hmc41"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st2-hmc41"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-oven-hmc41"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-indoor1-st1-hmc41" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-out1-out2-hmc41" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-indoor2-st2-hmc41" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-oven-hmc41"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC42 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMC42" name="js-car-proc-info-clear-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
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
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-indoor1-hmc42"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st1-hmc42"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-out1-hmc42"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-out2-hmc42"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-indoor2-hmc42"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st2-hmc42"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-oven-hmc42"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-indoor1-st1-hmc42" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-out1-out2-hmc42" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-indoor2-st2-hmc42" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-oven-hmc42"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC51 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMC51" name="js-car-proc-info-clear-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:7.4%">
								<col style="width:7.4%">
								<col style="width:7.4%">
								<col style="width:7.4%">
								<col style="width:7.4%">
								<col style="width:7.4%">
								<col style="width:7.4%">
								<col style="width:7.4%">
								<col style="width:7.4%">
								<col style="width:7.4%">
								<col style="width:7.4%">
								<col style="width:7.4%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="PRE<br>HEATING"/></th>
									<th><spring:message code="TODO.KEY" text="HAB"/></th>
									<th><spring:message code="TODO.KEY" text="CAB"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door<br>확인"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="F/T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="보정 및<br>검사"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-preheating-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-hab-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-cab-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st1-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-indoor-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st2-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-indoor-confirm-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-out1-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-ft1-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-out2-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-inspect-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-oven-hmc51"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-preheating-st1-hmc51" colspan="4"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-st2-hmc51" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-confirm-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-out1-out2-hmc51" colspan="3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-inspect-hmc51"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-oven-hmc51"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC52 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMC52" name="js-car-proc-info-clear-booth-table" style="display:none;">
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
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="PRE<br>HEATING"/></th>
									<th><spring:message code="TODO.KEY" text="HAB"/></th>
									<th><spring:message code="TODO.KEY" text="CAB"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-preheating-hmc52"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-hab-hmc52"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-cab-hmc52"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st1-hmc52"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-indoor-hmc52"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st2-hmc52"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-out1-hmc52"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st3-hmc52"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-oven-hmc52"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-preheating-st1-hmc52" colspan="4"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-st2-hmc52" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-out1-st3-hmc52" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-oven-hmc52"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC아산 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMCAS" name="js-car-proc-info-clear-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:8%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="PRE<br>HEATING"/></th>
									<th><spring:message code="TODO.KEY" text="HAB"/></th>
									<th><spring:message code="TODO.KEY" text="CAB"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="F/T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-preheating-hmcas"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-hab-hmcas"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-cab-hmcas"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st1-hmcas"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-indoor-hmcas"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st2-hmcas"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-out1-hmcas"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-ft1-hmcas"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-out2-hmcas"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st3-hmcas"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-oven-hmcas"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-preheating-st1-hmcas" colspan="4"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-st2-hmcas" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-out1-out2-hmcas" colspan="3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-st3-hmcas"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-oven-hmcas"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC전주트럭 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMCJT" name="js-car-proc-info-clear-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
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
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="1st"/></th>
									<th><spring:message code="TODO.KEY" text="F/T"/></th>
									<th><spring:message code="TODO.KEY" text="2nd"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-indoor-hmcjt"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st1-hmcjt"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-1st-hmcjt"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-ft1-hmcjt"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-2nd-hmcjt"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st2-hmcjt"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-oven-hmcjt"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-st1-hmcjt" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-1st-2nd-hmcjt" colspan="3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-st2-hmcjt"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-oven-hmcjt"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- HMC남양연구소 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="HMCLAP1" name="js-car-proc-info-clear-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:8%">
								<col style="width:8%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="PRE<br>HEATING"/></th>
									<th><spring:message code="TODO.KEY" text="HAB"/></th>
									<th><spring:message code="TODO.KEY" text="CAB"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="F/T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 2nd"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-preheating-hmclap1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-hab-hmclap1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-cab-hmclap1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st1-hmclap1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-indoor-hmclap1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st2-hmclap1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-out1-hmclap1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-ft1-hmclap1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-out2-hmclap1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st3-hmclap1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-oven-hmclap1"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-preheating-st1-hmclap1" colspan="4"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-st2-hmclap1" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-out1-out2-hmclap1" colspan="3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-st3-hmclap1"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-oven-hmclap1"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- 동희오토 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="SHA" name="js-car-proc-info-clear-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:17%">
								<col style="width:17%">
								<col style="width:17%">
								<col style="width:17%">
								<col style="width:17%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="보정 및 검사"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-indoor-sha"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st1-sha"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-out1-sha"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-inspect-sha"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-oven-sha"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-st1-sha" colspan="2"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-out1-sha"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-inspect-sha"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-oven-sha"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- KMC3 공장 -->
					<div class="wp-table-st1 wp-vertical-line" carPlantName="KMC3" name="js-car-proc-info-clear-booth-table" style="display:none;">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:10.5%">
								<col style="width:10.5%">
								<col style="width:10.5%">
								<col style="width:10.5%">
								<col style="width:10.5%">
								<col style="width:10.5%">
								<col style="width:10.5%">
								<col style="width:10.5%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="측정부위"/></th>
									<th><spring:message code="TODO.KEY" text="PRE<br>HEATING"/></th>
									<th><spring:message code="TODO.KEY" text="HAB"/></th>
									<th><spring:message code="TODO.KEY" text="CAB"/></th>
									<th><spring:message code="TODO.KEY" text="IN Door"/></th>
									<th><spring:message code="TODO.KEY" text="OUT 1st"/></th>
									<th><spring:message code="TODO.KEY" text="보정 및 검사"/></th>
									<th><spring:message code="TODO.KEY" text="S/T"/></th>
									<th><spring:message code="TODO.KEY" text="오븐"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="시간( sec )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-preheating-kmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-hab-kmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-cab-kmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-indoor-kmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-out1-kmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-inspect-kmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-st-kmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-time-oven-kmc3"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-preheating-cab-kmc3" colspan="3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-kmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-out1-kmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-inspect-kmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-st-kmc3"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearboothinfo-length-oven-kmc3"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="BASE &amp; CLEAR Total"/></h2>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:25%">
								<col style="width:25%">
								<col style="width:25%">
								<col style="width:25%">
							</colgroup>
							<tbody>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="시간( min )"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-basecleartotal-time" class="wp-al"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="길이(m)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-basecleartotal-length" class="wp-al"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="BASE 세정 주기"/></h2>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:9%">
								<col style="width:9%">
								<col style="width:9%">
								<col style="width:18%">
								<col style="width:9%">
								<col style="width:18%">
								<col style="width:auto">
								<col style="width:9%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="구분"/></th>
									<th><spring:message code="TODO.KEY" text="상세구분"/></th>
									<th><spring:message code="TODO.KEY" text="SHORT 시간"/></th>
									<th><spring:message code="TODO.KEY" text="SHORT 주기"/></th>
									<th><spring:message code="TODO.KEY" text="Long 시간"/></th>
									<th><spring:message code="TODO.KEY" text="Long 주기"/></th>
									<th><spring:message code="TODO.KEY" text="벨컵/전극봉 주기"/></th>
									<th><spring:message code="TODO.KEY" text="세정신너 제품"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="내부"/></th>
									<th><spring:message code="TODO.KEY" text="DOOR"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-base-period-in-short-time"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-base-period-in-short-term"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-base-period-in-long-time"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-base-period-in-long-term"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-base-period-in-bellcup"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-base-period-in-product"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="외부"/></th>
									<th></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-base-period-out-short-time"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-base-period-out-short-term"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-base-period-out-long-time"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-base-period-out-long-term"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-base-period-out-bellcup"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-base-period-out-product"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="CLEAR 세정 주기"/></h2>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:9%">
								<col style="width:9%">
								<col style="width:9%">
								<col style="width:18%">
								<col style="width:9%">
								<col style="width:18%">
								<col style="width:auto">
								<col style="width:9%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="구분"/></th>
									<th><spring:message code="TODO.KEY" text="상세구분"/></th>
									<th><spring:message code="TODO.KEY" text="SHORT 시간"/></th>
									<th><spring:message code="TODO.KEY" text="SHORT 주기"/></th>
									<th><spring:message code="TODO.KEY" text="Long 시간"/></th>
									<th><spring:message code="TODO.KEY" text="Long 주기"/></th>
									<th><spring:message code="TODO.KEY" text="벨컵/전극봉 주기"/></th>
									<th><spring:message code="TODO.KEY" text="세정신너 제품"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="내부"/></th>
									<th><spring:message code="TODO.KEY" text="DOOR"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clear-period-in-short-time"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clear-period-in-short-term"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clear-period-in-long-time"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clear-period-in-long-term"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clear-period-in-bellcup"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clear-period-in-product"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="외부"/></th>
									<th></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clear-period-out-short-time"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clear-period-out-short-term"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clear-period-out-long-time"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clear-period-out-long-term"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clear-period-out-bellcup"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clear-period-out-product"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="도장기 정보"/></h2>
					<h3 class="wp-title-blue"><spring:message code="TODO.KEY" text="BASE &amp; CLEAR 일반 정보"/></h3>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:16%">
								<col style="width:17%">
								<col style="width:16%">
								<col style="width:17%">
								<col style="width:17%">
								<col style="width:17%">
							</colgroup>
							<tbody>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="UPH"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseclearinfo-uph" class="wp-al"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="C / SPEED(m/min)"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseclearinfo-speed" class="wp-al"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="TAG-RAG"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseclearinfo-tag" class="wp-al"></td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="Air Balance"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseclearinfo-air" class="wp-al"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="와이핑 머신 유무"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseclearinfo-yn" class="wp-al"></td>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="보정 제조사/AIR CAP"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseclearinfo-company" class="wp-al"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
	
	
					<!-- title -->
					<h3 class="wp-title-blue"><spring:message code="TODO.KEY" text="BASE  도장기 정보"/></h3>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:auto">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="구분"/></th>
									<th><spring:message code="TODO.KEY" text="도장기 Type"/></th>
									<th><spring:message code="TODO.KEY" text="전하부과방식"/></th>
									<th><spring:message code="TODO.KEY" text="도장기제조사"/></th>
									<th><spring:message code="TODO.KEY" text="도장기 대수"/></th>
									<th><spring:message code="TODO.KEY" text="Air CAP 및 BELL Model"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="IN DOOR"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-basepaintinfo-indoor-type"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-basepaintinfo-indoor-method"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-basepaintinfo-indoor-company"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-basepaintinfo-indoor-count"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-basepaintinfo-indoor-aircap"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="OUT ALL BODY"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-basepaintinfo-outallbody-type"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-basepaintinfo-outallbody-method"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-basepaintinfo-outallbody-company"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-basepaintinfo-outallbody-count"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-basepaintinfo-outallbody-aircap"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
	
					<!-- title -->
					<h3 class="wp-title-blue"><spring:message code="TODO.KEY" text="BASE PARAMETER 정보"/></h3>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:20%">
								<col style="width:30%">
								<col style="width:30%">
								<col style="width:auto">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="구분"/></th>
									<th><spring:message code="TODO.KEY" text="토출량"/></th>
									<th><spring:message code="TODO.KEY" text="적용전압"/></th>
									<th><spring:message code="TODO.KEY" text="도막 구성비율"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="IN DOOR"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseparameter-indoor-amount"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseparameter-indoor-voltage"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseparameter-indoor-rate"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="OUT HOOD"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseparameter-outhood-amount"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseparameter-outhood-voltage"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseparameter-outhood-rate"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="OUT DOOR"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseparameter-outdoor-amount"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseparameter-outdoor-voltage"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-baseparameter-outdoor-rate"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
					
					<!-- title -->
					<h3 class="wp-title-blue"><spring:message code="TODO.KEY" text="CLEAR  도장기 정보"/></h3>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:16%">
								<col style="width:auto">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="구분"/></th>
									<th><spring:message code="TODO.KEY" text="도장기 Type"/></th>
									<th><spring:message code="TODO.KEY" text="전하부과방식"/></th>
									<th><spring:message code="TODO.KEY" text="도장기제조사"/></th>
									<th><spring:message code="TODO.KEY" text="도장기 대수"/></th>
									<th><spring:message code="TODO.KEY" text="Air CAP 및 BELL Model"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="IN DOOR"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearpaintinfo-indoor-type"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearpaintinfo-indoor-method"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearpaintinfo-indoor-company"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearpaintinfo-indoor-count"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearpaintinfo-indoor-aircap"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="OUT ALL BODY"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearpaintinfo-outallbody-type"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearpaintinfo-outallbody-method"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearpaintinfo-outallbody-company"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearpaintinfo-outallbody-count"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearpaintinfo-outallbody-aircap"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
	
					<!-- title -->
					<h3 class="wp-title-blue"><spring:message code="TODO.KEY" text="CLEAR PARAMETER 정보"/></h3>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:20%">
								<col style="width:30%">
								<col style="width:30%">
								<col style="width:auto">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="구분"/></th>
									<th><spring:message code="TODO.KEY" text="토출량"/></th>
									<th><spring:message code="TODO.KEY" text="적용전압"/></th>
									<th><spring:message code="TODO.KEY" text="도막 구성비율"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="IN DOOR"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearparameter-indoor-amount"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearparameter-indoor-voltage"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearparameter-indoor-rate"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="OUT HOOD"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearparameter-outhood-amount"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearparameter-outhood-voltage"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearparameter-outhood-rate"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="OUT DOOR"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearparameter-outdoor-amount"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearparameter-outdoor-voltage"></td>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-clearparameter-outdoor-rate"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="기타"/></h2>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:13%">
								<col style="width:87%">
							</colgroup>
							<tbody>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="특이사항"/></th>
									<td name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-etc-remark" class="wp-al"></td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="첨부파일"/></th>
									<td class="wp-al">
										<div class="wp-form-writer">
											<div class="wp-upload wp-mt0">
												<div class="wp-upload-top">
													<button type="button" class="wp-spr-btn wp-btn-wl-fold" id="js-car-proc-info-main-baseclear-fold-button"><span><spring:message code="TODO.KEY" text="접기펴기"/></span></button>
													<button type="button" class="wp-btn-wl-text wp-file" id="js-car-proc-info-main-baseclear-file-upload-button"><spring:message code="TODO.KEY" text="내 PC"/></button>
													<button type="button" id="js-car-proc-info-main-baseclear-file-save-button" name="js-car-proc-info-main-common-file-save-button" class="wp-btn-wl-text wp-file"><spring:message code="TODO.KEY" text="업로드"/></button>
													<input type="file" id="js-car-proc-info-main-baseclear-file-upload-target" style="display: none;" multiple>
													<div class="subcont" name="js-car-proc-info-main-baseclear-result-data" id="js-car-proc-info-main-baseclear-file-size"></div>
												</div>
												<div class="wp-upload-list">
													<table>
														<colgroup>
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
														<tbody id="js-car-proc-info-main-baseclear-file-list">
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
				</div>				
				

				<!--########################## -->
				<!--#####  INSPECTION    ##### -->
				<!--########################## -->
				<div name="js-car-proc-info-main-detail-area" procName="INSPECTION" style="display:none;">
				
					<!-- title-section -->
					<div class="wp-title-section wp-mt20">
						<h2 class="wp-section-title"><spring:message code="TODO.KEY" text="INSPECTION"/></h2>
					</div>
					<!-- //title-section -->
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="공정도"/></h2>
					<div class="wp-img-area"><img src="" id="js-car-proc-info-main-inspection-image" class="wp-wd100p"></div>
	
					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="수정 정보"/></h2>
					<div class="wp-table-st1 wp-vertical-line">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:13%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="구분"/></th>
									<th><spring:message code="TODO.KEY" text="샌딩1"/></th>
									<th><spring:message code="TODO.KEY" text="샌딩2"/></th>
									<th><spring:message code="TODO.KEY" text="와이핑"/></th>
									<th><spring:message code="TODO.KEY" text="글래이징"/></th>
									<th><spring:message code="TODO.KEY" text="우레탄 T/UP"/></th>
									<th><spring:message code="TODO.KEY" text="에나멜 T/UP"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="Sand Paper NO."/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-sandpaperno-sanding1"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-sandpaperno-sanding2"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-sandpaperno-wiping"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-sandpaperno-glazing"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-sandpaperno-urethane"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-sandpaperno-enamel"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="Sand Paper 제조사"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-sandpaperco-sanding1"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-sandpaperco-sanding2"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-sandpaperco-wiping"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-sandpaperco-glazing"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-sandpaperco-urethane"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-sandpaperco-enamel"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="수연마 여부"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-yn-sanding1"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-yn-sanding2"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-yn-wiping"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-yn-glazing"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-yn-urethane"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-yn-enamel"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="작업 TOOL"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-tool-sanding1"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-tool-sanding2"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-tool-wiping"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-tool-glazing"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-tool-urethane"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-tool-enamel"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="연마제 NO"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-abradant-no-sanding1"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-abradant-no-sanding2"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-abradant-no-wiping"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-abradant-no-glazing"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-abradant-no-urethane"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-abradant-no-enamel"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="연마제 제조사"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-abradant-co-sanding1"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-abradant-co-sanding2"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-abradant-co-wiping"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-abradant-co-glazing"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-abradant-co-urethane"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-inspinfo-abradant-co-enamel"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
					<!-- table -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="T/UP 정보(도장)"/></h2>
					<div class="wp-table-st1 wp-vertical-line">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:20%">
								<col style="width:20%">
								<col style="width:20%">
								<col style="width:20%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="구분"/></th>
									<th><spring:message code="TODO.KEY" text="우레탄 BASE"/></th>
									<th><spring:message code="TODO.KEY" text="우레탄 CLEAR"/></th>
									<th><spring:message code="TODO.KEY" text="에나멜 BASE"/></th>
									<th><spring:message code="TODO.KEY" text="에나멜 CLEAR"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="매뉴얼건 제조사"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-ma-co-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-ma-co-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-ma-co-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-ma-co-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="매뉴얼건 Aircap"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-ma-aircpap-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-ma-aircpap-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-ma-aircpap-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-ma-aircpap-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="KCC 제품명"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-kcc-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-kcc-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-kcc-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-kcc-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="NAC 제품명"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-nac-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-nac-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-nac-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-nac-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="PPG 제품명"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-ppg-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-ppg-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-ppg-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-ppg-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="기타 경쟁사 제품명"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-etc-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-etc-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-etc-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-etc-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="KCC 주제:경화제 혼합비"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-kcc-rate-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-kcc-rate-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-kcc-rate-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-kcc-rate-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="NAC 주제:경화제 혼합비"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-nac-rate-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-nac-rate-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-nac-rate-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-nac-rate-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="PPG 주제:경화제 혼합비"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-ppg-rate-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-ppg-rate-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-ppg-rate-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-ppg-rate-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="기타 경쟁사 주제:경화제 혼합비"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-etc-rate-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-etc-rate-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-etc-rate-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-etc-rate-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="비고"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-remark-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-remark-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-remark-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup1-remark-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="WASH PRIMER 제조사"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-washprimer-co" colspan="4"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="WASH PRIMER 혼합비"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-washprimer-rate" colspan="4"></td>
								</tr>
							</tbody>
						</table>
					</div>
	
					<!-- table -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="T/UP 정보(의장)"/></h2>
					<div class="wp-table-st1 wp-vertical-line">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:20%">
								<col style="width:20%">
								<col style="width:20%">
								<col style="width:20%">
							</colgroup>
							<thead>
								<tr>
									<th><spring:message code="TODO.KEY" text="구분"/></th>
									<th><spring:message code="TODO.KEY" text="우레탄 BASE"/></th>
									<th><spring:message code="TODO.KEY" text="우레탄 CLEAR"/></th>
									<th><spring:message code="TODO.KEY" text="에나멜 BASE"/></th>
									<th><spring:message code="TODO.KEY" text="에나멜 CLEAR"/></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><spring:message code="TODO.KEY" text="매뉴얼건 제조사"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-ma-co-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-ma-co-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-ma-co-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-ma-co-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="매뉴얼건 Aircap"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-ma-aircpap-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-ma-aircpap-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-ma-aircpap-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-ma-aircpap-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="KCC 제품명"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-kcc-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-kcc-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-kcc-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-kcc-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="NAC 제품명"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-nac-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-nac-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-nac-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-nac-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="PPG 제품명"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-ppg-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-ppg-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-ppg-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-ppg-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="기타 경쟁사 제품명"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-etc-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-etc-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-etc-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-etc-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="KCC 주제:경화제 혼합비"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-kcc-rate-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-kcc-rate-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-kcc-rate-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-kcc-rate-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="NAC 주제:경화제 혼합비"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-nac-rate-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-nac-rate-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-nac-rate-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-nac-rate-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="PPG 주제:경화제 혼합비"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-ppg-rate-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-ppg-rate-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-ppg-rate-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-ppg-rate-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="기타 경쟁사 주제:경화제 혼합비"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-etc-rate-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-etc-rate-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-etc-rate-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-etc-rate-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="비고"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-remark-urethane-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-remark-urethane-clear"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-remark-enamel-base"></td>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-tup2-remark-enamel-clear"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="WASH PRIMER 제조사"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-washprimer2-co" colspan="4"></td>
								</tr>
								<tr>
									<th><spring:message code="TODO.KEY" text="WASH PRIMER 혼합비"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-washprimer2-rate" colspan="4"></td>
								</tr>
							</tbody>
						</table>
					</div>	
					

					<!-- title -->
					<h2 class="wp-title-content"><spring:message code="TODO.KEY" text="기타"/></h2>
					<div class="wp-table-st1">
						<table>
							<caption></caption>
							<colgroup>
								<col style="width:13%">
								<col style="width:87%">
							</colgroup>
							<tbody>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="특이사항"/></th>
									<td name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-etc-remark" class="wp-al"></td>
								</tr>
								<tr>
									<th class="wp-ar"><spring:message code="TODO.KEY" text="첨부파일"/></th>
									<td class="wp-al">
										<div class="wp-form-writer">
											<div class="wp-upload wp-mt0">
												<div class="wp-upload-top">
													<button type="button" class="wp-spr-btn wp-btn-wl-fold" id="js-car-proc-info-main-inspection-fold-button"><span><spring:message code="TODO.KEY" text="접기펴기"/></span></button>
													<button type="button" class="wp-btn-wl-text wp-file" id="js-car-proc-info-main-inspection-file-upload-button"><spring:message code="TODO.KEY" text="내 PC"/></button>
													<button type="button" id="js-car-proc-info-main-inspection-file-save-button" name="js-car-proc-info-main-common-file-save-button" class="wp-btn-wl-text wp-file"><spring:message code="TODO.KEY" text="업로드"/></button>
													<input type="file" id="js-car-proc-info-main-inspection-file-upload-target" style="display: none;" multiple>
													<div class="subcont" name="js-car-proc-info-main-inspection-result-data" id="js-car-proc-info-main-inspection-file-size"></div>
												</div>
												<div class="wp-upload-list">
													<table>
														<colgroup>
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
														<tbody id="js-car-proc-info-main-inspection-file-list">
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
	
				</div>
			</div>
			<!-- //content end -->
		</div>
	</section>
	</tiles:putAttribute>
	<!-- 메인 콘텐츠 E -->
	
	
	<!-- 페이지 레벨 스크립트 S -->
	<tiles:putAttribute name="page-level-js">
		
		<!-- 공정별 공정도 - 스크립트-->
		<script id="js-template-car-proc-info-main-proc-group-list" type="text/x-handlebars-template">		
			{{#rows}}
				<div class="{{setStepClass @index}}"><a procId="{{code}}" procName="{{setProcName codeNm}}" name="js-car-proc-info-main-proc-group" style="cursor:pointer;"><span>{{setProcName codeNm}}</span></a></div>
			{{/rows}}
		</script>

		<!-- 공정별 부스 - 스크립트-->
		<script id="js-template-car-proc-info-main-booth-list" type="text/x-handlebars-template">		
			{{#rows}}
				<li><button type="button" boothId="{{code}}" name="js-car-proc-info-main-booth">{{codeNm}}</button></li>
			{{/rows}}
		</script>		

		<!-- 첨부파일 - 스크립트-->
		<script id="js-template-car-proc-info-main-common-file-list" type="text/x-handlebars-template">
			{{#if items.length}}
				{{#each items}}
					<tr name="js-car-proc-info-main-{{procName}}-file-item" data-item-id="{{itemId}}" data-upload-completed="{{uploadCompleted}}" data-seq-file="{{seqFile}}" >
						<td class="wp-al" name="js-car-proc-info-main-file-name">{{name}}</td>
						<td>{{displaySize}}</td>
						<td><button type="button" name="js-car-proc-info-main-{{procName}}-file-remove-button"   class="wp-btn small darkgray cr3"><spring:message code="TODO.KEY" text="삭제"/></button></td>
					{{#uploadYn uploadCompleted}}
						<td><button type="button" name="js-car-proc-info-main-{{procName}}-file-show-button"     class="wp-btn small white bdarkgray cr3" data-seq-file="{{seqFile}}" data-file-path="{{filePath}}" data-trans-file-name="{{transFilename}}" data-is-convert-completed="{{isConvertCompleted}}" data-web-office-path="{{webOfficePath}}" data-web-office-name="{{webOfficeName}}"><spring:message code="TODO.KEY" text="보기"/></button></td>
						<td><button type="button" name="js-car-proc-info-main-{{procName}}-file-download-button" class="wp-btn small white bdarkgray cr3" data-file-path="{{filePath}}" data-trans-file-name="{{transFilename}}" data-origin-file-name="{{name}}"><spring:message code="TODO.KEY" text="다운로드"/></button></td>
					{{else}}
						<td></td>
						<td></td>
					{{/uploadYn}}
					</tr>
				{{/each}}
			{{/if}}
		</script>
		
		
		<script type="text/javascript">
		
			//메시지 파라미터 정의함수
			var messageParam = {
				title: '<spring:message code="TODO.KEY" text="에러"/>',
				message: '',
				confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>'				
			};
			
			var carProcInfoMainProcGroupListTemplate;
			var carProcInfoMainBoothListTemplate;
			var gvTempNumber = Number('1e'+2);
			
			$(document).ready(function() {

				// Handlebar 초기화
				initCarProcInfoMainHandlebarsTemplate();
				
				// [항목 수정] 버튼 클릭
				$("#js-car-proc-info-main-data-modify-button").off().on('click', function(){
					var procId  = $('a[name=js-car-proc-info-main-proc-group][class=active]').attr("procId");
					var boothId = $('button[name=js-car-proc-info-main-booth][class=on]').attr("boothId");
					
					var param = {
							procId  : procId
						  , boothId : boothId
					};
					fn_openPop($(this));
					initCarProcInfoInspRegPopup(param);
				});
				
				// [이미지 수정] 버튼 클릭
				$("#js-car-proc-info-main-image-modify-button").off().on('click', function(){
					var procId  = $('a[name=js-car-proc-info-main-proc-group][class=active]').attr("procId");
					var boothId = $('button[name=js-car-proc-info-main-booth][class=on]').attr("boothId");
					
					var param = {
							procId  : procId
						  , boothId : boothId
					};
					fn_openPop($(this));
					initCarProcInfoInspImgRegPopup(param);
				});
				
				// 첨부파일 [저장] 버튼 클릭
				$("[name=js-car-proc-info-main-common-file-save-button").off().on('click', function(){
					app.message.confirm({
						  title             : '<spring:message code="TODO.KEY" text="저장"/>'
						, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
						, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
						, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
						, callback          : {
							confirm: function() {
								// 첨부파일 저장 처리
								carProcInfoMainFileHandler.save();
							}
						}
					});
				});
			});

			// ------------------------------------------------
			// 화면 전체 재조회
			// ------------------------------------------------
			var retrieveCarProcInfoMainAll = function() {

				// 공정별 공정도 조회
				retrieveCarProcIdGroup.request();
			};
				
			// ------------------------------------------------
			// Handlebar 초기화
			// ------------------------------------------------
			var initCarProcInfoMainHandlebarsTemplate = function() {
				
				// 공정별 공정도
				var source = $('#js-template-car-proc-info-main-proc-group-list').html();
				carProcInfoMainProcGroupListTemplate = Handlebars.compile(source);
				
				// 공정별 공정도 이미지 표시 클래스
				Handlebars.registerHelper('setStepClass', function(index) {
					return "wp-step" + addZeros(Number(index)+1, 2);
				});			
				
				// 공정별 공정도 명 대문자로
				Handlebars.registerHelper('setProcName', function(name) {
					return name.toUpperCase().replace(/ /gi, "");
				});
				
				// 공정별 부스
				var source = $('#js-template-car-proc-info-main-booth-list').html();
				carProcInfoMainBoothListTemplate = Handlebars.compile(source);
				
				// 보기, 다운로드 버튼 처리
				Handlebars.registerHelper('uploadYn', function(v1, options) {
					
					if(v1 == "Y"){
						return options.fn(this);
					} else {
						return options.inverse(this);
					}
				});
			};
			
			//-------------------------------------------------
			// 공정별 공정도 클릭
			//-------------------------------------------------
			var carProcInfoMainProcClick = function(procId, procName){
				
				// 선택한 공정도 이미지 활성화
				$('a[name=js-car-proc-info-main-proc-group]').removeClass("active");
				$('a[name=js-car-proc-info-main-proc-group][procId=' + procId + ']').addClass("active");
				
				// 선택한 공정도 상세영역 표시
				$('div[name=js-car-proc-info-main-detail-area]').css("display", "none");
				$('div[name=js-car-proc-info-main-detail-area][procName="' + procName + '"]').css("display", "block");
				
				$('div[name=js-car-proc-info-primer-inner-booth-table]').css("display", "none");
				$('div[name=js-car-proc-info-primer-inner-booth-table][carPlantName="' + $('#js-car-header-car-plant').val() + '"]').css("display", "block");
				
				$('div[name=js-car-proc-info-primer-outer-booth-table]').css("display", "none");
				$('div[name=js-car-proc-info-primer-outer-booth-table][carPlantName="' + $('#js-car-header-car-plant').val() + '"]').css("display", "block");
				
				$('div[name=js-car-proc-info-base-booth-table]').css("display", "none");
				$('div[name=js-car-proc-info-base-booth-table][carPlantName="' + $('#js-car-header-car-plant').val() + '"]').css("display", "block");
				
				$('div[name=js-car-proc-info-clear-booth-table]').css("display", "none");
				$('div[name=js-car-proc-info-clear-booth-table][carPlantName="' + $('#js-car-header-car-plant').val() + '"]').css("display", "block");
				
				// 공정별 부스 조회
				retrieveCarLineBooth.request(procId);
			};
			
			
			//-------------------------------------------------
			// 공정별 부스 클릭
			//-------------------------------------------------
			var carProcInfoMainBoothClick = function(boothId){
								
				// 선택한 부스 버튼 활성화
				$('button[name=js-car-proc-info-main-booth]').removeClass("on");
				$('button[name=js-car-proc-info-main-booth][boothId=' + boothId + ']').addClass("on");
				
				
				var procName = $('a[name=js-car-proc-info-main-proc-group].active').attr("procName")
				
				// 첨부파일 handler 초기화
				carProcInfoMainFileHandler.init(procName.replace(/\//gi, "").toLowerCase());
				
				// 공정도 별 상세조회
				if(procName == "PRETREATMENT"){
					// 전처리 및 철판 정보 조회
					retrieveCarProcPretreatment.request();
				} else if(procName == "ED"){
					// CAPA, 오븐설비, 전착도장 정보 조회
					retrieveCarProcEd.request();
				} else if(procName == "SEALER/DEADNER"){
					// SEALER & DEADER 정보 조회
					retrieveCarProcSealerDeader.request();
				} else if(procName == "PRIMER"){
					// 내부 부스 정보, 외부 부스 정보 조회
					retrieveCarProcPrimer.request();
				} else if(procName == "BASE/CLEAR"){
					// BASE & CLEAR 정보 조회
					retrieveCarProcBaseClear.request();
				} else if(procName == "INSPECTION"){
					// INSPECTION 정보 조회
					retrieveCarProcInspection.request();
				}
			};

			//-------------------------------------------------
			// INSPECTION 정보 조회
			//-------------------------------------------------
			var retrieveCarProcInspection = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							
							// 수정 정보 Set
							var inspInfo = response.rs.inspInfo;
							for(var i=0 ; i<inspInfo.length ; i++){
								
								var procItemNm    = app.utils.trim(inspInfo[i].procItemNm);
								var procTypeId2Nm = app.utils.trim(inspInfo[i].procTypeId2Nm);
								var procItemValue = inspInfo[i].procItemValue;

								if(procItemNm == "Sand Paper NO."){
									if     (procTypeId2Nm == "샌딩1"      ){$("#js-car-proc-info-main-inspection-inspinfo-sandpaperno-sanding1").text(procItemValue);}
									else if(procTypeId2Nm == "샌딩2"      ){$("#js-car-proc-info-main-inspection-inspinfo-sandpaperno-sanding2").text(procItemValue);}
									else if(procTypeId2Nm == "와이핑"     ){$("#js-car-proc-info-main-inspection-inspinfo-sandpaperno-wiping").text(procItemValue);}
									else if(procTypeId2Nm == "글래이징"   ){$("#js-car-proc-info-main-inspection-inspinfo-sandpaperno-glazing").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 T/UP"){$("#js-car-proc-info-main-inspection-inspinfo-sandpaperno-urethane").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 T/UP"){$("#js-car-proc-info-main-inspection-inspinfo-sandpaperno-enamel").text(procItemValue);}
								} 
								else if(procItemNm == "Sand Paper 제조사"){
									if     (procTypeId2Nm == "샌딩1"      ){$("#js-car-proc-info-main-inspection-inspinfo-sandpaperco-sanding1").text(procItemValue);}
									else if(procTypeId2Nm == "샌딩2"      ){$("#js-car-proc-info-main-inspection-inspinfo-sandpaperco-sanding2").text(procItemValue);}
									else if(procTypeId2Nm == "와이핑"     ){$("#js-car-proc-info-main-inspection-inspinfo-sandpaperco-wiping").text(procItemValue);}
									else if(procTypeId2Nm == "글래이징"   ){$("#js-car-proc-info-main-inspection-inspinfo-sandpaperco-glazing").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 T/UP"){$("#js-car-proc-info-main-inspection-inspinfo-sandpaperco-urethane").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 T/UP"){$("#js-car-proc-info-main-inspection-inspinfo-sandpaperco-enamel").text(procItemValue);}
								}
								else if(procItemNm == "수연마 여부"){
									if     (procTypeId2Nm == "샌딩1"      ){$("#js-car-proc-info-main-inspection-inspinfo-yn-sanding1").text(procItemValue);}
									else if(procTypeId2Nm == "샌딩2"      ){$("#js-car-proc-info-main-inspection-inspinfo-yn-sanding2").text(procItemValue);}
									else if(procTypeId2Nm == "와이핑"     ){$("#js-car-proc-info-main-inspection-inspinfo-yn-wiping").text(procItemValue);}
									else if(procTypeId2Nm == "글래이징"   ){$("#js-car-proc-info-main-inspection-inspinfo-yn-glazing").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 T/UP"){$("#js-car-proc-info-main-inspection-inspinfo-yn-urethane").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 T/UP"){$("#js-car-proc-info-main-inspection-inspinfo-yn-enamel").text(procItemValue);}
								}
								else if(procItemNm == "작업 TOOL"){
									if     (procTypeId2Nm == "샌딩1"      ){$("#js-car-proc-info-main-inspection-inspinfo-tool-sanding1").text(procItemValue);}
									else if(procTypeId2Nm == "샌딩2"      ){$("#js-car-proc-info-main-inspection-inspinfo-tool-sanding2").text(procItemValue);}
									else if(procTypeId2Nm == "와이핑"     ){$("#js-car-proc-info-main-inspection-inspinfo-tool-wiping").text(procItemValue);}
									else if(procTypeId2Nm == "글래이징"   ){$("#js-car-proc-info-main-inspection-inspinfo-tool-glazing").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 T/UP"){$("#js-car-proc-info-main-inspection-inspinfo-tool-urethane").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 T/UP"){$("#js-car-proc-info-main-inspection-inspinfo-tool-enamel").text(procItemValue);}
								}
								else if(procItemNm == "연마제 NO"){
									if     (procTypeId2Nm == "샌딩1"      ){$("#js-car-proc-info-main-inspection-inspinfo-abradant-no-sanding1").text(procItemValue);}
									else if(procTypeId2Nm == "샌딩2"      ){$("#js-car-proc-info-main-inspection-inspinfo-abradant-no-sanding2").text(procItemValue);}
									else if(procTypeId2Nm == "와이핑"     ){$("#js-car-proc-info-main-inspection-inspinfo-abradant-no-wiping").text(procItemValue);}
									else if(procTypeId2Nm == "글래이징"   ){$("#js-car-proc-info-main-inspection-inspinfo-abradant-no-glazing").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 T/UP"){$("#js-car-proc-info-main-inspection-inspinfo-abradant-no-urethane").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 T/UP"){$("#js-car-proc-info-main-inspection-inspinfo-abradant-no-enamel").text(procItemValue);}
								}
								else if(procItemNm == "연마제 제조사"){
									if     (procTypeId2Nm == "샌딩1"      ){$("#js-car-proc-info-main-inspection-inspinfo-abradant-co-sanding1").text(procItemValue);}
									else if(procTypeId2Nm == "샌딩2"      ){$("#js-car-proc-info-main-inspection-inspinfo-abradant-co-sanding2").text(procItemValue);}
									else if(procTypeId2Nm == "와이핑"     ){$("#js-car-proc-info-main-inspection-inspinfo-abradant-co-wiping").text(procItemValue);}
									else if(procTypeId2Nm == "글래이징"   ){$("#js-car-proc-info-main-inspection-inspinfo-abradant-co-glazing").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 T/UP"){$("#js-car-proc-info-main-inspection-inspinfo-abradant-co-urethane").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 T/UP"){$("#js-car-proc-info-main-inspection-inspinfo-abradant-co-enamel").text(procItemValue);}
								}
							}
							
							// T/UP 정보1(도장) Set
							var tup1 = response.rs.tup1;
							for(var i=0 ; i<tup1.length ; i++){
								
								var procItemNm    = app.utils.trim(tup1[i].procItemNm);
								var procTypeId2Nm = app.utils.trim(tup1[i].procTypeId2Nm);
								var procItemValue = tup1[i].procItemValue;

								if(procItemNm == "매뉴얼건 제조사"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup1-ma-co-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-ma-co-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup1-ma-co-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-ma-co-enamel-clear").text(procItemValue);}
								}
								else if(procItemNm == "매뉴얼건 aircpap"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup1-ma-aircpap-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-ma-aircpap-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup1-ma-aircpap-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-ma-aircpap-enamel-clear").text(procItemValue);}
								}
								else if(procItemNm == "KCC 제품명"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup1-kcc-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-kcc-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup1-kcc-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-kcc-enamel-clear").text(procItemValue);}
								}
								else if(procItemNm == "NAC 제품명"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup1-nac-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-nac-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup1-nac-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-nac-enamel-clear").text(procItemValue);}
								}
								else if(procItemNm == "PPG 제품명"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup1-ppg-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-ppg-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup1-ppg-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-ppg-enamel-clear").text(procItemValue);}
								}
								else if(procItemNm == "기타 경쟁사 제품명"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup1-etc-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-etc-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup1-etc-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-etc-enamel-clear").text(procItemValue);}
								}
								else if(procItemNm == "KCC 주제:경화제 혼합비"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup1-kcc-rate-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-kcc-rate-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup1-kcc-rate-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-kcc-rate-enamel-clear").text(procItemValue);}
								}
								else if(procItemNm == "NAC 주제:경화제 혼합비"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup1-nac-rate-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-nac-rate-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup1-nac-rate-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-nac-rate-enamel-clear").text(procItemValue);}
								}
								else if(procItemNm == "PPG 주제:경화제 혼합비"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup1-ppg-rate-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-ppg-rate-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup1-ppg-rate-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-ppg-rate-enamel-clear").text(procItemValue);}
								}
								else if(procItemNm == "기타 경쟁사 주제:경화제 혼합비"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup1-etc-rate-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-etc-rate-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup1-etc-rate-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-etc-rate-enamel-clear").text(procItemValue);}
								}
								else if(procItemNm == "비고"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup1-remark-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-remark-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup1-remark-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup1-remark-enamel-clear").text(procItemValue);}
								}
							}
							

							// T/UP 정보1(도장) - WASH PRIMER Set
							var washPrimer1 = response.rs.washPrimer1;
							for(var i=0 ; i<washPrimer1.length ; i++){
								var procItemNm    = app.utils.trim(washPrimer1[i].procItemNm);
								var procTypeId2Nm = app.utils.trim(washPrimer1[i].procTypeId2Nm);
								var procItemValue = washPrimer1[i].procItemValue;
								
								if     (procTypeId2Nm == "WASH PRIMER 제조사"){$("#js-car-proc-info-main-inspection-washprimer-co").text(procItemValue);}
								else if(procTypeId2Nm == "WASH PRIMER 혼합비"){$("#js-car-proc-info-main-inspection-washprimer-rate").text(procItemValue);}
							}
							

							// T/UP 정보2(도장) Set
							var tup2 = response.rs.tup2;
							for(var i=0 ; i<tup2.length ; i++){
								
								var procItemNm    = app.utils.trim(tup2[i].procItemNm);
								var procTypeId2Nm = app.utils.trim(tup2[i].procTypeId2Nm);
								var procItemValue = tup2[i].procItemValue;

								if(procItemNm == "매뉴얼건 제조사"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup2-ma-co-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-ma-co-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup2-ma-co-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-ma-co-enamel-clear").text(procItemValue);}
								}
								else if(procItemNm == "매뉴얼건 aircpap"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup2-ma-aircpap-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-ma-aircpap-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup2-ma-aircpap-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-ma-aircpap-enamel-clear").text(procItemValue);}
								}
								else if(procItemNm == "KCC 제품명"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup2-kcc-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-kcc-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup2-kcc-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-kcc-enamel-clear").text(procItemValue);}
								}
								else if(procItemNm == "NAC 제품명"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup2-nac-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-nac-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup2-nac-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-nac-enamel-clear").text(procItemValue);}
								}
								else if(procItemNm == "PPG 제품명"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup2-ppg-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-ppg-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup2-ppg-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-ppg-enamel-clear").text(procItemValue);}
								}
								else if(procItemNm == "기타 경쟁사 제품명"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup2-etc-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-etc-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup2-etc-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-etc-enamel-clear").text(procItemValue);}
								}
								else if(procItemNm == "KCC 주제:경화제 혼합비"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup2-kcc-rate-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-kcc-rate-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup2-kcc-rate-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-kcc-rate-enamel-clear").text(procItemValue);}
								}
								else if(procItemNm == "NAC 주제:경화제 혼합비"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup2-nac-rate-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-nac-rate-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup2-nac-rate-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-nac-rate-enamel-clear").text(procItemValue);}
								}
								else if(procItemNm == "PPG 주제:경화제 혼합비"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup2-ppg-rate-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-ppg-rate-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup2-ppg-rate-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-ppg-rate-enamel-clear").text(procItemValue);}
								}
								else if(procItemNm == "기타 경쟁사 주제:경화제 혼합비"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup2-etc-rate-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-etc-rate-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup2-etc-rate-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-etc-rate-enamel-clear").text(procItemValue);}
								}
								else if(procItemNm == "비고"){
									if     (procTypeId2Nm == "우레탄 BASE" ){$("#js-car-proc-info-main-inspection-tup2-remark-urethane-base").text(procItemValue);}
									else if(procTypeId2Nm == "우레탄 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-remark-urethane-clear").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 BASE" ){$("#js-car-proc-info-main-inspection-tup2-remark-enamel-base").text(procItemValue);}
									else if(procTypeId2Nm == "에나멜 CLEAR"){$("#js-car-proc-info-main-inspection-tup2-remark-enamel-clear").text(procItemValue);}
								}
							}
							

							// T/UP 정보2(도장) - WASH PRIMER Set
							var washPrimer2 = response.rs.washPrimer2;
							for(var i=0 ; i<washPrimer2.length ; i++){
								var procItemNm    = app.utils.trim(washPrimer2[i].procItemNm);
								var procTypeId2Nm = app.utils.trim(washPrimer2[i].procTypeId2Nm);
								var procItemValue = washPrimer2[i].procItemValue;
								
								if     (procTypeId2Nm == "WASH PRIMER 제조사"){$("#js-car-proc-info-main-inspection-washprimer2-co").text(procItemValue);}
								else if(procTypeId2Nm == "WASH PRIMER 혼합비"){$("#js-car-proc-info-main-inspection-washprimer2-rate").text(procItemValue);}
							}
							
							// 기타 Set
							var etc = response.rs.etc;
							if(etc.length > 0){
								$("#js-car-proc-info-main-inspection-etc-remark").text(etc[0].remark);
							}
							
							// 이미지 Set
							var image = response.rs.image;
							if(image.length > 0){
								$("#js-car-proc-info-main-inspection-image").attr("src", image[0].procItemImg);
							}
							
							// 첨부파일 Set
							var file = response.rs.file;
							carProcInfoMainFileHandler.attachFileHandler.setItems(file || []);
							
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
					
					//  결과 정보 초기화 
					$("[name=js-car-proc-info-main-inspection-result-data]").text("");
					$("#js-car-proc-info-main-inspection-image").attr("src", "");
					
					var params = {
						  service  : 'car.procItem'
						, method   : 'retrieveCarProcInspection'
						, carPlant : $('#js-car-header-car-plant').val()
						, procId   : $('a[name=js-car-proc-info-main-proc-group].active').attr("procId")
						, boothId  : $('button[name=js-car-proc-info-main-booth].on').attr("boothId")
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//-------------------------------------------------
			// BASE & CLEAR 정보 조회
			//-------------------------------------------------
			var retrieveCarProcBaseClear = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							
							// BASE 부스 정보 Set
							var baseTotalInDoorFt1     = 0;
							var baseTotalOut1Ft2Out2St = 0;
							var baseBoothInfo = response.rs.baseBoothInfo;
							if($('#js-car-header-car-plant').val() == "HMC1") {
								for(var i=0 ; i<baseBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(baseBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(baseBoothInfo[i].procTypeId2Nm);
									var procItemValue = baseBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(procTypeId2Nm == "승온 장치"){
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-device-hmc1").text(procItemValue);
											$("#js-car-proc-info-main-baseclear-baseboothinfo-totaltime-device-hmc1").text(procItemValue);
										}
										else if(procTypeId2Nm == "WIPING"){
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-hmc1").text(procItemValue);
											$("#js-car-proc-info-main-baseclear-baseboothinfo-totaltime-wiping-hmc1").text(procItemValue);
										}
										else if(procTypeId2Nm == "IN Door"){
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-hmc1").text(procItemValue);
											baseTotalInDoorFt1 = Math.round((baseTotalInDoorFt1 + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25004"){		// F/T 첫번째
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-hmc1").text(procItemValue);
											baseTotalInDoorFt1 = Math.round((baseTotalInDoorFt1 + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(procTypeId2Nm == "OUT 1st"){
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out1-hmc1").text(procItemValue);
											baseTotalOut1Ft2Out2St = Math.round((baseTotalOut1Ft2Out2St + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25007"){		// F/T 두번째
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft2-hmc1").text(procItemValue);
											baseTotalOut1Ft2Out2St = Math.round((baseTotalOut1Ft2Out2St + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(procTypeId2Nm == "OUT 2nd"){
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out2-hmc1").text(procItemValue);
											baseTotalOut1Ft2Out2St = Math.round((baseTotalOut1Ft2Out2St + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(procTypeId2Nm == "S/T"){
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmc1").text(procItemValue);
											baseTotalOut1Ft2Out2St = Math.round((baseTotalOut1Ft2Out2St + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
									} 
									else if(procItemNm == "길이"){
										if     (procTypeId2Nm == "승온 장치"        ){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-device-hmc1").text(procItemValue);}
										else if(procTypeId2Nm == "WIPING"           ){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-hmc1").text(procItemValue);}
										else if(procTypeId2Nm == "IN Door And F/T"  ){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-ft1-hmc1").text(procItemValue);}
										else if(procTypeId2Nm == "OUT 1st ~ OUT 2nd"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-out1-ft2-out2-st-hmc1").text(procItemValue);}
									}
								}
								// BASE 부스정보 Total 시간
								$("#js-car-proc-info-main-baseclear-baseboothinfo-totaltime-indoor-ft1-hmc1").text(baseTotalInDoorFt1);
								$("#js-car-proc-info-main-baseclear-baseboothinfo-totaltime-out1-ft2-out2-st-hmc1").text(baseTotalOut1Ft2Out2St);
							} else if($('#js-car-header-car-plant').val() == "HMC2") {
								for(var i=0 ; i<baseBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(baseBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(baseBoothInfo[i].procTypeId2Nm);
									var procItemValue = baseBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(baseBoothInfo[i].procTypeId2 == "T25001"){			// 승온장치
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-device-hmc2").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25002"){		// WIPING
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-hmc2").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25003"){		// IN Door
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-hmc2").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25006"){		// OUT 1st
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out1-hmc2").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25007"){		// F/T
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-hmc2").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25008"){		// OUT 2nd
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out2-hmc2").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25009"){		// S/T
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmc2").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (baseBoothInfo[i].procTypeId2 == "T25001"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-device-hmc2").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25002"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-hmc2").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25003"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-hmc2").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25010"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-out1-out2-hmc2").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25009"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-st-hmc2").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMC3") {
								for(var i=0 ; i<baseBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(baseBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(baseBoothInfo[i].procTypeId2Nm);
									var procItemValue = baseBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(baseBoothInfo[i].procTypeId2 == "T25002"){			// WIPING
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-hmc3").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25003"){		// IN Door 
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-hmc3").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25004"){		// F/T 첫번째
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-hmc3").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25006"){		// OUT 1st
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out1-hmc3").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25007"){		// F/T 두번째
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft2-hmc3").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25008"){		// OUT 2nd
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out2-hmc3").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25009"){		// S/T
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmc3").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (baseBoothInfo[i].procTypeId2 == "T25002"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-hmc3").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25005"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-ft1-hmc3").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25010"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-out1-ft2-out2-st-hmc3").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMC41") {
								for(var i=0 ; i<baseBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(baseBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(baseBoothInfo[i].procTypeId2Nm);
									var procItemValue = baseBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(baseBoothInfo[i].procTypeId2 == "T25001"){			// 승온 장치
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-device-hmc41").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25002"){		// WIPING
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-hmc41").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25003"){		// IN Door 
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-hmc41").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25004"){		// F/T 첫번째
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-hmc41").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25006"){		// OUT 1st
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out1-hmc41").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25007"){		// F/T 두번째
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft2-hmc41").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25008"){		// OUT 2nd
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out2-hmc41").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25009"){		// S/T
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmc41").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (baseBoothInfo[i].procTypeId2 == "T25001"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-device-hmc41").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25002"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-hmc41").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25005"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-ft1-hmc41").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25010"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-out1-ft2-out2-st-hmc41").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMC42") {
								for(var i=0 ; i<baseBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(baseBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(baseBoothInfo[i].procTypeId2Nm);
									var procItemValue = baseBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(baseBoothInfo[i].procTypeId2 == "T25001"){			// 승온 장치
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-device-hmc42").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25002"){		// WIPING
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-hmc42").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25003"){		// IN Door 
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-hmc42").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25004"){		// F/T 첫번째
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-hmc42").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25006"){		// OUT 1st
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out1-hmc42").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25007"){		// F/T 두번째
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft2-hmc42").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25008"){		// OUT 2nd
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out2-hmc42").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25009"){		// S/T
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmc42").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (baseBoothInfo[i].procTypeId2 == "T25001"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-device-hmc42").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25002"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-hmc42").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25005"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-ft1-hmc42").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25010"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-out1-ft2-out2-st-hmc42").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMC51") {
								for(var i=0 ; i<baseBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(baseBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(baseBoothInfo[i].procTypeId2Nm);
									var procItemValue = baseBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(baseBoothInfo[i].procTypeId2 == "T25002"){			// WIPING
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-hmc51").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25003"){		// IN Door 
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-hmc51").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25004"){		// F/T 첫번째
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-hmc51").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25062"){		// IN Door 확인
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-confirm-hmc51").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25006"){		// OUT 1st
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out1-hmc51").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25007"){		// F/T 두번째
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft2-hmc51").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25008"){		// OUT 2nd
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out2-hmc51").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25009"){		// S/T
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmc51").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25063"){		// OUT 확인
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out-confirm-hmc51").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (baseBoothInfo[i].procTypeId2 == "T25002"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-hmc51").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25005"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-ft1-hmc51").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25062"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-confirm-hmc51").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25010"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-out1-ft2-out2-st-hmc51").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25063"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-out-confirm-hmc51").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMC52") {
								for(var i=0 ; i<baseBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(baseBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(baseBoothInfo[i].procTypeId2Nm);
									var procItemValue = baseBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(baseBoothInfo[i].procTypeId2 == "T25002"){			// WIPING
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-hmc52").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25003"){		// IN Door 
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-hmc52").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25004"){		// F/T 첫번째
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-hmc52").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25006"){		// OUT 1st
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out1-hmc52").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25007"){		// F/T 두번째
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft2-hmc52").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25008"){		// OUT 2nd
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out2-hmc52").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25009"){		// S/T
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmc52").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (baseBoothInfo[i].procTypeId2 == "T25002"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-hmc52").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25005"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-ft1-hmc52").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25010"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-out1-st-hmc52").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMCAS") {
								for(var i=0 ; i<baseBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(baseBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(baseBoothInfo[i].procTypeId2Nm);
									var procItemValue = baseBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(baseBoothInfo[i].procTypeId2 == "T25001"){			// 승온장치
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-device-hmcas").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25002"){			// WIPING
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-hmcas").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25003"){		// IN Door 
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-hmcas").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25004"){		// F/T 첫번째
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-hmcas").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25006"){		// OUT 1st
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out1-hmcas").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25007"){		// F/T 두번째
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft2-hmcas").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25008"){		// OUT 2nd
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out2-hmcas").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25009"){		// S/T
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmcas").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (baseBoothInfo[i].procTypeId2 == "T25001"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-device-hmcas").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25002"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-hmcas").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25005"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-ft1-hmcas").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25010"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-out1-ft2-out2-st-hmcas").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMCJB") {
								for(var i=0 ; i<baseBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(baseBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(baseBoothInfo[i].procTypeId2Nm);
									var procItemValue = baseBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(baseBoothInfo[i].procTypeId2 == "T25002"){			// WIPING
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-hmcjb").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25003"){		// IN Door 
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-hmcjb").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25004"){		// F/T 첫번째
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-hmcjb").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25066"){		// 수평
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-horizontal-hmcjb").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25067"){		// 수직
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-vertical-hmcjb").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25069"){		// 띠칼라
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-line-color-hmcjb").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25009"){		// S/T
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmcjb").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25061"){		// 오븐
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-oven-hmcjb").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if(baseBoothInfo[i].procTypeId2 == "T25002"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-hmcjb").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25005"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-ft1-hmcjb").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25068"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-horizontal-vertical-hmcjb").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25069"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-line-color-hmcjb").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25009"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-st-hmcjb").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25061"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-oven-hmcjb").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMCJT") {
								for(var i=0 ; i<baseBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(baseBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(baseBoothInfo[i].procTypeId2Nm);
									var procItemValue = baseBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(baseBoothInfo[i].procTypeId2 == "T25002"){			// WIPING
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-hmcjt").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25003"){		// IN Door 
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-hmcjt").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25004"){		// F/T 첫번째
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-hmcjt").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25070"){		// 1st
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-1st-hmcjt").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25007"){		// F/T 두번째
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft2-hmcjt").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25071"){		// 2nd
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-2nd-hmcjt").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25009"){		// S/T
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmcjt").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if(baseBoothInfo[i].procTypeId2 == "T25002"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-hmcjt").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25005"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-ft1-hmcjt").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25072"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-1st-st-hmcjt").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMCLAP1") {
								for(var i=0 ; i<baseBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(baseBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(baseBoothInfo[i].procTypeId2Nm);
									var procItemValue = baseBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(baseBoothInfo[i].procTypeId2 == "T25006"){			// OUT 1st
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out1-hmclap1").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25006"){		// F/T
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft-hmclap1").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25008"){		// OUT 2nd
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out2-hmclap1").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25009"){		// S/T
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-st-hmclap1").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25076"){		// 매뉴얼 도장
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-manual-hmclap1").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if(baseBoothInfo[i].procTypeId2 == "T25002"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-out1-st-hmclap1").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25005"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-manual-hmclap1").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "SHA") {
								for(var i=0 ; i<baseBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(baseBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(baseBoothInfo[i].procTypeId2Nm);
									var procItemValue = baseBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(baseBoothInfo[i].procTypeId2 == "T25077"){			// IN TRUNK/HOOD
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-intrunk-sha").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25004"){		// F/T 첫번째
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft1-sha").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25003"){		// IN Door 
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-sha").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25009"){		// S/T 첫번째
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-st1-sha").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25006"){		// OUT 1st
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out1-sha").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25007"){		// F/T 두번째
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-ft2-sha").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25008"){		// OUT 2nd
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-2nd-sha").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25080"){		// IN Door 보정
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-inrevision-sha").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25081"){		// S/T
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-st-sha").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if(baseBoothInfo[i].procTypeId2 == "T25078"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-intrunk-ft1-sha").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25079"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-st1-sha").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25010"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-out1-out2-sha").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25082"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-inrevision-st3-sha").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "KMC3") {
								for(var i=0 ; i<baseBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(baseBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(baseBoothInfo[i].procTypeId2Nm);
									var procItemValue = baseBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(baseBoothInfo[i].procTypeId2 == "T25002"){			// WIPING
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-wiping-kmc3").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25003"){		// IN Door
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-indoor-kmc3").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25006"){		// OUT 1st
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out1-kmc3").text(procItemValue);
										}
										else if(baseBoothInfo[i].procTypeId2 == "T25008"){		// OUT 2nd
											$("#js-car-proc-info-main-baseclear-baseboothinfo-time-out2-kmc3").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if(baseBoothInfo[i].procTypeId2 == "T25002"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-wiping-kmc3").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25003"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-indoor-kmc3").text(procItemValue);}
										else if(baseBoothInfo[i].procTypeId2 == "T25010"){$("#js-car-proc-info-main-baseclear-baseboothinfo-length-out1-out2-kmc3").text(procItemValue);}
									}
								}
							}
							
							// CLEAR 부스 정보 Set
							var clearBoothInfoTotal1 = 0;
							var clearBoothInfoTotal2 = 0;
							var clearBoothInfoTotal3 = 0;
							var clearBoothInfo = response.rs.clearBoothInfo;
							if($('#js-car-header-car-plant').val() == "HMC1") {
								for(var i=0 ; i<clearBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(clearBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(clearBoothInfo[i].procTypeId2Nm);
									var procItemValue = clearBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(procTypeId2Nm == "PRE HEATING"){
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-preheating-hmc1").text(procItemValue);
											clearBoothInfoTotal1 = Math.round((clearBoothInfoTotal1 + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(procTypeId2Nm == "HAB"){
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-hab-hmc1").text(procItemValue);
											clearBoothInfoTotal1 = Math.round((clearBoothInfoTotal1 + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(procTypeId2Nm == "CAB"){
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-cab-hmc1").text(procItemValue);
											clearBoothInfoTotal1 = Math.round((clearBoothInfoTotal1 + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25014"){		// S/T 첫번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st1-hmc1").text(procItemValue);
											clearBoothInfoTotal1 = Math.round((clearBoothInfoTotal1 + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(procTypeId2Nm == "IN Door"){
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-door-hmc1").text(procItemValue);
											clearBoothInfoTotal2 = Math.round((clearBoothInfoTotal2 + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25017"){		// S/T 두번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st2-hmc1").text(procItemValue);
											clearBoothInfoTotal2 = Math.round((clearBoothInfoTotal2 + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(procTypeId2Nm == "OUT 1st"){
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-out1-hmc1").text(procItemValue);
											clearBoothInfoTotal3 = Math.round((clearBoothInfoTotal3 + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(procTypeId2Nm == "F/T"){
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-ft-hmc1").text(procItemValue);
											clearBoothInfoTotal3 = Math.round((clearBoothInfoTotal3 + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(procTypeId2Nm == "OUT 2st"){
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-out2-hmc1").text(procItemValue);
											clearBoothInfoTotal3 = Math.round((clearBoothInfoTotal3 + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(procTypeId2Nm == "보정 및 검사"){
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-inspect-hmc1").text(procItemValue);
											$("#js-car-proc-info-main-baseclear-clearboothinfo-totaltime-inspect-hmc1").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25024"){		// S/T 세번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st-hmc13").text(procItemValue);
											$("#js-car-proc-info-main-baseclear-clearboothinfo-totaltime-st3-hmc1").text(procItemValue);
										}
										else if(procTypeId2Nm == "오븐"){
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-oven-hmc1").text(procItemValue);
											$("#js-car-proc-info-main-baseclear-clearboothinfo-totaltime-oven-hmc1").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (procTypeId2Nm == "PRE HEATING ~ ST" ){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-preheating-hab-cab-st1-hmc1").text(procItemValue);}
										else if(procTypeId2Nm == "IN Door And S/T"  ){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-door-st2-hmc1").text(procItemValue);}
										else if(procTypeId2Nm == "OUT 1st ~ OUT 2nd"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-out1-ft-out2-hmc1").text(procItemValue);}
										else if(procTypeId2Nm == "보정 및 검사"     ){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-inspect-hmc1").text(procItemValue);}
										else if(procTypeId2Nm == "ST"               ){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-st3-hmc1").text(procItemValue);}
										else if(procTypeId2Nm == "오븐"             ){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-oven-hmc1").text(procItemValue);}
									}
								}
								// CLEAR 부스정보 Total 시간
								$("#js-car-proc-info-main-baseclear-clearboothinfo-totaltime-preheating-hab-cab-st1-hmc1").text(clearBoothInfoTotal1);
								$("#js-car-proc-info-main-baseclear-clearboothinfo-totaltime-door-st2-hmc1").text(clearBoothInfoTotal2);
								$("#js-car-proc-info-main-baseclear-clearboothinfo-totaltime-out1-ft-out2-hmc1").text(clearBoothInfoTotal3);
							} else if($('#js-car-header-car-plant').val() == "HMC2") {
								for(var i=0 ; i<clearBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(clearBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(clearBoothInfo[i].procTypeId2Nm);
									var procItemValue = clearBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(clearBoothInfo[i].procTypeId2 == "T25011"){			// PRE HEATING
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-preheating-hmc2").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25012"){		// HAB
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-hab-hmc2").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25013"){		// CAB
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-cab-hmc2").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25014"){		// S/T 첫번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st1-hmc2").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25016"){		// IN Door
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-indoor-hmc2").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25017"){		// S/T 두번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st2-hmc2").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25019"){		// OUT 1st
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-out1-hmc2").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25023"){		// 보정 및 검사
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-inspect-hmc2").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25024"){		// S/T 세번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st3-hmc2").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){		// 오븐
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-oven-hmc2").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (clearBoothInfo[i].procTypeId2 == "T25011"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-preheating-hmc2").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25012"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-hab-hmc2").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25013"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-cab-hmc2").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25014"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-st1-hmc2").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25018"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-st2-hmc2").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25019"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-out1-hmc2").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25023"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-inspect-hmc2").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25024"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-st3-hmc2").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-oven-hmc2").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMC3") {
								for(var i=0 ; i<clearBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(clearBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(clearBoothInfo[i].procTypeId2Nm);
									var procItemValue = clearBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(clearBoothInfo[i].procTypeId2 == "T25011"){			// PRE HEATING
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-preheating-hmc3").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25012"){		// HAB
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-hab-hmc3").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25013"){		// CAB
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-cab-hmc3").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25014"){		// S/T 첫번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st1-hmc3").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25016"){		// IN Door
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-indoor-hmc3").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25017"){		// S/T 두번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st2-hmc3").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25019"){		// OUT 1st
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-out1-hmc3").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25024"){		// S/T 세번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st3-hmc3").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){		// 오븐
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-oven-hmc3").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (clearBoothInfo[i].procTypeId2 == "T25015"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-preheating-st1-hmc3").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25018"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-st2-hmc3").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25019"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-out1-hmc3").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25024"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-st3-hmc3").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-oven-hmc3").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMC41") {
								for(var i=0 ; i<clearBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(clearBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(clearBoothInfo[i].procTypeId2Nm);
									var procItemValue = clearBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(clearBoothInfo[i].procTypeId2 == "T25016"){			// IN Door
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-indoor1-hmc41").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25017"){		// S/T 첫번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st1-hmc41").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25019"){		// OUT 1st
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-out1-hmc41").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25021"){		// OUT 2nd
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-out2-hmc41").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25058"){		// IN Door 두번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-indoor2-hmc41").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25059"){		// S/T 두번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st2-hmc41").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){		// 오븐
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-oven-hmc41").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (clearBoothInfo[i].procTypeId2 == "T25018"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-indoor1-st1-hmc41").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25022"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-out1-out2-hmc41").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25060"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-indoor2-st2-hmc41").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-oven-hmc41").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMC42") {
								for(var i=0 ; i<clearBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(clearBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(clearBoothInfo[i].procTypeId2Nm);
									var procItemValue = clearBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(clearBoothInfo[i].procTypeId2 == "T25016"){			// IN Door
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-indoor1-hmc42").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25017"){		// S/T 첫번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st1-hmc42").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25019"){		// OUT 1st
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-out1-hmc42").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25021"){		// OUT 2nd
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-out2-hmc42").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25058"){		// IN Door 두번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-indoor2-hmc42").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25059"){		// S/T 두번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st2-hmc42").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){		// 오븐
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-oven-hmc42").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (clearBoothInfo[i].procTypeId2 == "T25018"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-indoor1-st1-hmc42").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25022"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-out1-out2-hmc42").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25060"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-indoor2-st2-hmc42").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-oven-hmc42").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMC51") {
								for(var i=0 ; i<clearBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(clearBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(clearBoothInfo[i].procTypeId2Nm);
									var procItemValue = clearBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(clearBoothInfo[i].procTypeId2 == "T25011"){			// PRE HEATING
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-preheating-hmc51").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25012"){		// HAB
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-hab-hmc51").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25013"){		// CAB
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-cab-hmc51").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25014"){		// S/T 첫번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st1-hmc51").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25016"){		// IN Door
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-indoor-hmc51").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25017"){		// S/T 두번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st2-hmc51").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25064"){		// IN Door 확인
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-indoor-confirm-hmc51").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25019"){		// OUT 1st
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-out1-hmc51").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25020"){		// F/T
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-ft1-hmc51").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25021"){		// OUT 2nd
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-out2-hmc51").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25023"){		// 보정 및 검사
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-inspect-hmc51").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){		// 오븐
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-oven-hmc51").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (clearBoothInfo[i].procTypeId2 == "T25015"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-preheating-st1-hmc51").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25018"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-st2-hmc51").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25064"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-confirm-hmc51").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25022"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-out1-out2-hmc51").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25023"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-inspect-hmc51").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-oven-hmc51").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMC52") {
								for(var i=0 ; i<clearBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(clearBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(clearBoothInfo[i].procTypeId2Nm);
									var procItemValue = clearBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(clearBoothInfo[i].procTypeId2 == "T25011"){			// PRE HEATING
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-preheating-hmc52").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25012"){		// HAB
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-hab-hmc52").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25013"){		// CAB
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-cab-hmc52").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25014"){		// S/T 첫번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st1-hmc52").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25016"){		// IN Door
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-indoor-hmc52").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25017"){		// S/T 두번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st2-hmc52").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25019"){		// OUT 1st
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-out1-hmc52").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25059"){		// S/T
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st3-hmc52").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){		// 오븐
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-oven-hmc52").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (clearBoothInfo[i].procTypeId2 == "T25015"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-preheating-st1-hmc52").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25018"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-st2-hmc52").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25065"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-out1-st3-hmc52").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-oven-hmc52").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMCAS") {
								for(var i=0 ; i<clearBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(clearBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(clearBoothInfo[i].procTypeId2Nm);
									var procItemValue = clearBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(clearBoothInfo[i].procTypeId2 == "T25011"){			// PRE HEATING
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-preheating-hmcas").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25012"){		// HAB
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-hab-hmcas").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25013"){		// CAB
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-cab-hmcas").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25014"){		// S/T 첫번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st1-hmcas").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25016"){		// IN Door
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-indoor-hmcas").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25017"){		// S/T 두번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st2-hmcas").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25019"){		// OUT 1st
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-out1-hmcas").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25020"){		// F/T
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-ft1-hmcas").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25021"){		// OUT 2nd
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-out2-hmcas").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25024"){		// S/T 세번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st3-hmcas").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){		// 오븐
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-oven-hmcas").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (clearBoothInfo[i].procTypeId2 == "T25015"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-preheating-st1-hmcas").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25018"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-st2-hmcas").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25022"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-out1-out2-hmcas").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25024"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-st3-hmcas").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-oven-hmcas").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMCJT") {
								for(var i=0 ; i<clearBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(clearBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(clearBoothInfo[i].procTypeId2Nm);
									var procItemValue = clearBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(clearBoothInfo[i].procTypeId2 == "T25016"){		// IN Door
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-indoor-hmcjt").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25017"){		// S/T 첫번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st1-hmcjt").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25073"){		// OUT 1st
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-1st-hmcjt").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25020"){		// F/T
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-ft1-hmcjt").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25074"){		// OUT 2nd
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-2nd-hmcjt").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25024"){		// S/T 두번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st2-hmcjt").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){		// 오븐
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-oven-hmcjt").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if(clearBoothInfo[i].procTypeId2 == "T25018"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-st1-hmcjt").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25075"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-1st-2nd-hmcjt").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25024"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-st2-hmcjt").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-oven-hmcjt").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMCLAP1") {
								for(var i=0 ; i<clearBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(clearBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(clearBoothInfo[i].procTypeId2Nm);
									var procItemValue = clearBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(clearBoothInfo[i].procTypeId2 == "T25011"){			// PRE HEATING
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-preheating-hmclap1").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25012"){		// HAB
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-hab-hmclap1").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25013"){		// CAB
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-cab-hmclap1").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25014"){		// S/T 첫번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st1-hmclap1").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25016"){		// IN Door
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-indoor-hmclap1").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25017"){		// S/T 두번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st2-hmclap1").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25019"){		// OUT 1st
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-out1-hmclap1").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25020"){		// F/T
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-ft1-hmclap1").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25021"){		// OUT 2nd
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-out2-hmclap1").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25024"){		// S/T 세번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st3-hmclap1").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){		// 오븐
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-oven-hmclap1").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (clearBoothInfo[i].procTypeId2 == "T25015"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-preheating-st1-hmclap1").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25018"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-st2-hmclap1").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25022"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-out1-out2-hmclap1").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25024"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-st3-hmclap1").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-oven-hmclap1").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "SHA") {
								for(var i=0 ; i<clearBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(clearBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(clearBoothInfo[i].procTypeId2Nm);
									var procItemValue = clearBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(clearBoothInfo[i].procTypeId2 == "T25016"){		// IN Door
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-indoor-sha").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25017"){		// S/T 첫번째
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st1-sha").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25019"){		// OUT 1st
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-out1-sha").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25023"){		// 보정 및 검사
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-inspect-sha").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){		// 오븐
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-oven-sha").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if(clearBoothInfo[i].procTypeId2 == "T25018"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-st1-sha").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25019"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-out1-sha").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25023"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-inspect-sha").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-oven-sha").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "KMC3") {
								for(var i=0 ; i<clearBoothInfo.length ; i++){
									var procItemNm    = app.utils.trim(clearBoothInfo[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(clearBoothInfo[i].procTypeId2Nm);
									var procItemValue = clearBoothInfo[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(clearBoothInfo[i].procTypeId2 == "T25011"){			// PRE HEATING
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-preheating-kmc3").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25012"){		// HAB
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-hab-kmc3").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25013"){		// CAB
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-cab-kmc3").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25016"){		// IN Door
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-indoor-kmc3").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25019"){		// OUT 1st
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-out1-kmc3").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25023"){		// 보정 및 검사
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-inspect-kmc3").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25024"){		// S/T
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-st-kmc3").text(procItemValue);
										}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){		// 오븐
											$("#js-car-proc-info-main-baseclear-clearboothinfo-time-oven-kmc3").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (clearBoothInfo[i].procTypeId2 == "T25015"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-preheating-cab-kmc3").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25016"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-indoor-kmc3").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25019"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-out1-kmc3").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25023"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-inspect-kmc3").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25024"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-st-kmc3").text(procItemValue);}
										else if(clearBoothInfo[i].procTypeId2 == "T25025"){$("#js-car-proc-info-main-baseclear-clearboothinfo-length-oven-kmc3").text(procItemValue);}
									}
								}
							}
							
							// BASE & CLEAR Total Set
							var baseClearTotal = response.rs.baseClearTotal;
							for(var i=0 ; i<baseClearTotal.length ; i++){
								var procItemNm    = app.utils.trim(baseClearTotal[i].procItemNm);
								var procItemValue = baseClearTotal[i].procItemValue;
								
								if     (procItemNm == "시간"){$("#js-car-proc-info-main-baseclear-basecleartotal-time").text(procItemValue);}
								else if(procItemNm == "길이"){$("#js-car-proc-info-main-baseclear-basecleartotal-length").text(procItemValue);}
							}
							
							// BASE 세정 주기 Set
							var basePeriod = response.rs.basePeriod;
							for(var i=0 ; i<basePeriod.length ; i++){
								
								var procItemNm    = app.utils.trim(basePeriod[i].procItemNm);
								var procTypeId2Nm = app.utils.trim(basePeriod[i].procTypeId2Nm);
								var procItemValue = basePeriod[i].procItemValue;
								
								if(procItemNm == "IN DOOR"){
									if     (procTypeId2Nm == "SHORT 시간"      ){$("#js-car-proc-info-main-baseclear-base-period-in-short-time").text(procItemValue);}
									else if(procTypeId2Nm == "SHORT 주기"      ){$("#js-car-proc-info-main-baseclear-base-period-in-short-term").text(procItemValue);}
									else if(procTypeId2Nm == "LONG 시간"       ){$("#js-car-proc-info-main-baseclear-base-period-in-long-time").text(procItemValue);}
									else if(procTypeId2Nm == "LONG 주기"       ){$("#js-car-proc-info-main-baseclear-base-period-in-long-term").text(procItemValue);}
									else if(procTypeId2Nm == "벨컵 전극봉 주기"){$("#js-car-proc-info-main-baseclear-base-period-in-bellcup").text(procItemValue);}
									else if(procTypeId2Nm == "세정 신너 제품"  ){$("#js-car-proc-info-main-baseclear-base-period-in-product").text(procItemValue);}
								} 
								else if(procItemNm == "OUT"){
									if     (procTypeId2Nm == "SHORT 시간"      ){$("#js-car-proc-info-main-baseclear-base-period-out-short-time").text(procItemValue);}
									else if(procTypeId2Nm == "SHORT 주기"      ){$("#js-car-proc-info-main-baseclear-base-period-out-short-term").text(procItemValue);}
									else if(procTypeId2Nm == "LONG 시간"       ){$("#js-car-proc-info-main-baseclear-base-period-out-long-time").text(procItemValue);}
									else if(procTypeId2Nm == "LONG 주기"       ){$("#js-car-proc-info-main-baseclear-base-period-out-long-term").text(procItemValue);}
									else if(procTypeId2Nm == "벨컵 전극봉 주기"){$("#js-car-proc-info-main-baseclear-base-period-out-bellcup").text(procItemValue);}
									else if(procTypeId2Nm == "세정 신너 제품"  ){$("#js-car-proc-info-main-baseclear-base-period-out-product").text(procItemValue);}
								}
							}
							
							// CLEAR 세정 주기 Set
							var clearPeriod = response.rs.clearPeriod;
							for(var i=0 ; i<clearPeriod.length ; i++){
								
								var procItemNm    = app.utils.trim(clearPeriod[i].procItemNm);
								var procTypeId2Nm = app.utils.trim(clearPeriod[i].procTypeId2Nm);
								var procItemValue = clearPeriod[i].procItemValue;

								if(procItemNm == "IN DOOR"){
									if     (procTypeId2Nm == "SHORT 시간"      ){$("#js-car-proc-info-main-baseclear-clear-period-in-short-time").text(procItemValue);}
									else if(procTypeId2Nm == "SHORT 주기"      ){$("#js-car-proc-info-main-baseclear-clear-period-in-short-term").text(procItemValue);}
									else if(procTypeId2Nm == "LONG 시간"       ){$("#js-car-proc-info-main-baseclear-clear-period-in-long-time").text(procItemValue);}
									else if(procTypeId2Nm == "LONG 주기"       ){$("#js-car-proc-info-main-baseclear-clear-period-in-long-term").text(procItemValue);}
									else if(procTypeId2Nm == "벨컵 전극봉 주기"){$("#js-car-proc-info-main-baseclear-clear-period-in-bellcup").text(procItemValue);}
									else if(procTypeId2Nm == "세정 신너 제품"  ){$("#js-car-proc-info-main-baseclear-clear-period-in-product").text(procItemValue);}
								} 
								else if(procItemNm == "OUT"){
									if     (procTypeId2Nm == "SHORT 시간"      ){$("#js-car-proc-info-main-baseclear-clear-period-out-short-time").text(procItemValue);}
									else if(procTypeId2Nm == "SHORT 주기"      ){$("#js-car-proc-info-main-baseclear-clear-period-out-short-term").text(procItemValue);}
									else if(procTypeId2Nm == "LONG 시간"       ){$("#js-car-proc-info-main-baseclear-clear-period-out-long-time").text(procItemValue);}
									else if(procTypeId2Nm == "LONG 주기"       ){$("#js-car-proc-info-main-baseclear-clear-period-out-long-term").text(procItemValue);}
									else if(procTypeId2Nm == "벨컵 전극봉 주기"){$("#js-car-proc-info-main-baseclear-clear-period-out-bellcup").text(procItemValue);}
									else if(procTypeId2Nm == "세정 신너 제품"  ){$("#js-car-proc-info-main-baseclear-clear-period-out-product").text(procItemValue);}
								}
							}
							
							// BASE & CLEAR 일반정보 Set
							var baseClearInfo = response.rs.baseClearInfo;
							for(var i=0 ; i<baseClearInfo.length ; i++){
								var procItemNm    = app.utils.trim(baseClearInfo[i].procItemNm);
								var procItemValue = baseClearInfo[i].procItemValue;
								
								if     (procItemNm == "UPH"                ){$("#js-car-proc-info-main-baseclear-baseclearinfo-uph").text(procItemValue);}
								else if(procItemNm == "C/SPEED"            ){$("#js-car-proc-info-main-baseclear-baseclearinfo-speed").text(procItemValue);}
								else if(procItemNm == "TAG-RAG"            ){$("#js-car-proc-info-main-baseclear-baseclearinfo-tag").text(procItemValue);}
								else if(procItemNm == "AIR BALANCE"        ){$("#js-car-proc-info-main-baseclear-baseclearinfo-air").text(procItemValue);}
								else if(procItemNm == "와이핑 머신유무"    ){$("#js-car-proc-info-main-baseclear-baseclearinfo-yn").text(procItemValue);}
								else if(procItemNm == "보정 제조사/AIR CAP"){$("#js-car-proc-info-main-baseclear-baseclearinfo-company").text(procItemValue);}
							}
							
							// BASE 도장기 정보 Set
							var basePaintInfo = response.rs.basePaintInfo;
							for(var i=0 ; i<basePaintInfo.length ; i++){
								
								var procItemNm    = app.utils.trim(basePaintInfo[i].procItemNm);
								var procTypeId2Nm = app.utils.trim(basePaintInfo[i].procTypeId2Nm);
								var procItemValue = basePaintInfo[i].procItemValue;

								if(procItemNm == "IN DOOR"){
									if     (procTypeId2Nm == "도장기 TYPE"          ){$("#js-car-proc-info-main-baseclear-basepaintinfo-indoor-type").text(procItemValue);}
									else if(procTypeId2Nm == "전하부과 방식"        ){$("#js-car-proc-info-main-baseclear-basepaintinfo-indoor-method").text(procItemValue);}
									else if(procTypeId2Nm == "도장기 제조사"        ){$("#js-car-proc-info-main-baseclear-basepaintinfo-indoor-company").text(procItemValue);}
									else if(procTypeId2Nm == "도장기 대수"          ){$("#js-car-proc-info-main-baseclear-basepaintinfo-indoor-count").text(procItemValue);}
									else if(procTypeId2Nm == "AIR CAP 및 BELL MODEL"){$("#js-car-proc-info-main-baseclear-basepaintinfo-indoor-aircap").text(procItemValue);}
									
								} 
								else if(procItemNm == "OUT ALL BODY"){
									if     (procTypeId2Nm == "도장기 TYPE"          ){$("#js-car-proc-info-main-baseclear-basepaintinfo-outallbody-type").text(procItemValue);}
									else if(procTypeId2Nm == "전하부과 방식"        ){$("#js-car-proc-info-main-baseclear-basepaintinfo-outallbody-method").text(procItemValue);}
									else if(procTypeId2Nm == "도장기 제조사"        ){$("#js-car-proc-info-main-baseclear-basepaintinfo-outallbody-company").text(procItemValue);}
									else if(procTypeId2Nm == "도장기 대수"          ){$("#js-car-proc-info-main-baseclear-basepaintinfo-outallbody-count").text(procItemValue);}
									else if(procTypeId2Nm == "AIR CAP 및 BELL MODEL"){$("#js-car-proc-info-main-baseclear-basepaintinfo-outallbody-aircap").text(procItemValue);}
								}
							}
							
							

							// CLEAR 도장기 정보 Set
							var clearPaintInfo = response.rs.clearPaintInfo;
							for(var i=0 ; i<clearPaintInfo.length ; i++){
								
								var procItemNm    = app.utils.trim(clearPaintInfo[i].procItemNm);
								var procTypeId2Nm = app.utils.trim(clearPaintInfo[i].procTypeId2Nm);
								var procItemValue = clearPaintInfo[i].procItemValue;

								if(procItemNm == "IN DOOR"){
									if     (procTypeId2Nm == "도장기 TYPE"          ){$("#js-car-proc-info-main-baseclear-clearpaintinfo-indoor-type").text(procItemValue);}
									else if(procTypeId2Nm == "전하부과 방식"        ){$("#js-car-proc-info-main-baseclear-clearpaintinfo-indoor-method").text(procItemValue);}
									else if(procTypeId2Nm == "도장기 제조사"        ){$("#js-car-proc-info-main-baseclear-clearpaintinfo-indoor-company").text(procItemValue);}
									else if(procTypeId2Nm == "도장기 대수"          ){$("#js-car-proc-info-main-baseclear-clearpaintinfo-indoor-count").text(procItemValue);}
									else if(procTypeId2Nm == "AIR CAP 및 BELL MODEL"){$("#js-car-proc-info-main-baseclear-clearpaintinfo-indoor-aircap").text(procItemValue);}
									
								} 
								else if(procItemNm == "OUT ALL BODY"){
									if     (procTypeId2Nm == "도장기 TYPE"          ){$("#js-car-proc-info-main-baseclear-clearpaintinfo-outallbody-type").text(procItemValue);}
									else if(procTypeId2Nm == "전하부과 방식"        ){$("#js-car-proc-info-main-baseclear-clearpaintinfo-outallbody-method").text(procItemValue);}
									else if(procTypeId2Nm == "도장기 제조사"        ){$("#js-car-proc-info-main-baseclear-clearpaintinfo-outallbody-company").text(procItemValue);}
									else if(procTypeId2Nm == "도장기 대수"          ){$("#js-car-proc-info-main-baseclear-clearpaintinfo-outallbody-count").text(procItemValue);}
									else if(procTypeId2Nm == "AIR CAP 및 BELL MODEL"){$("#js-car-proc-info-main-baseclear-clearpaintinfo-outallbody-aircap").text(procItemValue);}
								}
							}
							
							// BASE PARAMETER 정보 Set
							var baseParameterInfo = response.rs.baseParameterInfo;
							for(var i=0 ; i<baseParameterInfo.length ; i++){
								
								var procItemNm    = app.utils.trim(baseParameterInfo[i].procItemNm);
								var procTypeId2Nm = app.utils.trim(baseParameterInfo[i].procTypeId2Nm);
								var procItemValue = baseParameterInfo[i].procItemValue;

								if(procItemNm == "IN DOOR"){
									if     (procTypeId2Nm == "토출량"      ){$("#js-car-proc-info-main-baseclear-baseparameter-indoor-amount").text(procItemValue);}
									else if(procTypeId2Nm == "적용전압"    ){$("#js-car-proc-info-main-baseclear-baseparameter-indoor-voltage").text(procItemValue);}
									else if(procTypeId2Nm == "도막구성비율"){$("#js-car-proc-info-main-baseclear-baseparameter-indoor-rate").text(procItemValue);}
								} 
								else if(procItemNm == "HOOD"){
									if     (procTypeId2Nm == "토출량"      ){$("#js-car-proc-info-main-baseclear-baseparameter-outhood-amount").text(procItemValue);}
									else if(procTypeId2Nm == "적용전압"    ){$("#js-car-proc-info-main-baseclear-baseparameter-outhood-voltage").text(procItemValue);}
									else if(procTypeId2Nm == "도막구성비율"){$("#js-car-proc-info-main-baseclear-baseparameter-outhood-rate").text(procItemValue);}
								}
								else if(procItemNm == "DOOR"){
									if     (procTypeId2Nm == "토출량"      ){$("#js-car-proc-info-main-baseclear-baseparameter-outdoor-amount").text(procItemValue);}
									else if(procTypeId2Nm == "적용전압"    ){$("#js-car-proc-info-main-baseclear-baseparameter-outdoor-voltage").text(procItemValue);}
									else if(procTypeId2Nm == "도막구성비율"){$("#js-car-proc-info-main-baseclear-baseparameter-outdoor-rate").text(procItemValue);}
								}
							}
							

							// CLEAR PARAMETER 정보 Set
							var clearParameterInfo = response.rs.clearParameterInfo;
							for(var i=0 ; i<clearParameterInfo.length ; i++){
								
								var procItemNm    = app.utils.trim(clearParameterInfo[i].procItemNm);
								var procTypeId2Nm = app.utils.trim(clearParameterInfo[i].procTypeId2Nm);
								var procItemValue = clearParameterInfo[i].procItemValue;

								if(procItemNm == "IN DOOR"){
									if     (procTypeId2Nm == "토출량"      ){$("#js-car-proc-info-main-baseclear-clearparameter-indoor-amount").text(procItemValue);}
									else if(procTypeId2Nm == "적용전압"    ){$("#js-car-proc-info-main-baseclear-clearparameter-indoor-voltage").text(procItemValue);}
									else if(procTypeId2Nm == "도막구성비율"){$("#js-car-proc-info-main-baseclear-clearparameter-indoor-rate").text(procItemValue);}
								} 
								else if(procItemNm == "HOOD"){
									if     (procTypeId2Nm == "토출량"      ){$("#js-car-proc-info-main-baseclear-clearparameter-outhood-amount").text(procItemValue);}
									else if(procTypeId2Nm == "적용전압"    ){$("#js-car-proc-info-main-baseclear-clearparameter-outhood-voltage").text(procItemValue);}
									else if(procTypeId2Nm == "도막구성비율"){$("#js-car-proc-info-main-baseclear-clearparameter-outhood-rate").text(procItemValue);}
								}
								else if(procItemNm == "DOOR"){
									if     (procTypeId2Nm == "토출량"      ){$("#js-car-proc-info-main-baseclear-clearparameter-outdoor-amount").text(procItemValue);}
									else if(procTypeId2Nm == "적용전압"    ){$("#js-car-proc-info-main-baseclear-clearparameter-outdoor-voltage").text(procItemValue);}
									else if(procTypeId2Nm == "도막구성비율"){$("#js-car-proc-info-main-baseclear-clearparameter-outdoor-rate").text(procItemValue);}
								}
							}
							
							// 기타 Set
							var etc = response.rs.etc;
							if(etc.length > 0){
								$("#js-car-proc-info-main-baseclear-etc-remark").text(etc[0].remark);
							}
							
							// 이미지 Set
							var image = response.rs.image;
							if(image.length > 0){
								$("#js-car-proc-info-main-baseclear-image").attr("src", image[0].procItemImg);
							}
							
							// 첨부파일 Set
							var file = response.rs.file;
							carProcInfoMainFileHandler.attachFileHandler.setItems(file || []);
							
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
					
					//  결과 정보 초기화 
					$("[name=js-car-proc-info-main-baseclear-result-data]").text("");
					$("#js-car-proc-info-main-baseclear-image").attr("src", "");
					
					var params = {
						  service  : 'car.procItem'
						, method   : 'retrieveCarProcBaseClear'
						, carPlant : $('#js-car-header-car-plant').val()
						, procId   : $('a[name=js-car-proc-info-main-proc-group].active').attr("procId")
						, boothId  : $('button[name=js-car-proc-info-main-booth].on').attr("boothId")
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//-------------------------------------------------
			// 내부 부스 정보, 외부 부스 정보 조회
			//-------------------------------------------------
			var retrieveCarProcPrimer = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							// 내부 부스 정보 Set
							var innerTotalInDoorFt = 0;
							var innerTotalInHoodFt = 0;
							var innerTotalInSt     = 0;
							var inner         = response.rs.inner;
							if($('#js-car-header-car-plant').val() == "HMC1") {
								for(var i=0 ; i<inner.length ; i++){
									var procItemNm    = app.utils.trim(inner[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(inner[i].procTypeId2Nm);
									var procItemValue = inner[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(procTypeId2Nm == "WIPING"){
											$("#js-car-proc-info-main-primer-inner-time-wiping-hmc1").text(procItemValue);
											$("#js-car-proc-info-main-primer-inner-totaltime-wiping-hmc1").text(procItemValue);
										}
										else if(procTypeId2Nm == "IN Door"){
											$("#js-car-proc-info-main-primer-inner-time-indoor-hmc1").text(procItemValue);
											innerTotalInDoorFt = Math.round((innerTotalInDoorFt + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(inner[i].procTypeId2 == "T24003"){		// F/T 첫번째
											$("#js-car-proc-info-main-primer-inner-time-ft1-hmc1").text(procItemValue);
											innerTotalInDoorFt = Math.round((innerTotalInDoorFt + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(procTypeId2Nm == "IN HOOD/TRUNK"){
											$("#js-car-proc-info-main-primer-inner-time-inhood-hmc1").text(procItemValue);
											innerTotalInHoodFt = Math.round((innerTotalInHoodFt + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(inner[i].procTypeId2 == "T24006"){		// F/T 두번째
											$("#js-car-proc-info-main-primer-inner-time-ft2-hmc1").text(procItemValue);
											innerTotalInHoodFt = Math.round((innerTotalInHoodFt + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(procTypeId2Nm == "IN 보정"){
											$("#js-car-proc-info-main-primer-inner-time-inrevision-hmc1").text(procItemValue);
											innerTotalInSt = Math.round((innerTotalInSt + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(procTypeId2Nm == "IN 보정 And ST"){
											$("#js-car-proc-info-main-primer-inner-time-st-hmc1").text(procItemValue);
											innerTotalInSt = Math.round((innerTotalInSt + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
									} 
									else if(procItemNm == "길이"){
										if     (procTypeId2Nm == "WIPING"               ){$("#js-car-proc-info-main-primer-inner-length-wiping-hmc1").text(procItemValue);}
										else if(procTypeId2Nm == "IN Door And F/T"      ){$("#js-car-proc-info-main-primer-inner-length-indoor-ft-hmc1").text(procItemValue);}
										else if(procTypeId2Nm == "IN HOOD/TRUNK And F/T"){$("#js-car-proc-info-main-primer-inner-length-inhood-ft-hmc1").text(procItemValue);}
										else if(procTypeId2Nm == "ST"                   ){$("#js-car-proc-info-main-primer-inner-length-st-hmc1").text(procItemValue);}
									}
								}
								// 내부 Total 시간
								$("#js-car-proc-info-main-primer-inner-totaltime-indoor-ft-hmc1").text(innerTotalInDoorFt);
								$("#js-car-proc-info-main-primer-inner-totaltime-inhood-ft-hmc1").text(innerTotalInHoodFt);
								$("#js-car-proc-info-main-primer-inner-totaltime-inrevision-st-hmc1").text(innerTotalInSt);
							} else if($('#js-car-header-car-plant').val() == "HMC2") {
								for(var i=0 ; i<inner.length ; i++){
									var procItemNm    = app.utils.trim(inner[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(inner[i].procTypeId2Nm);
									var procItemValue = inner[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(inner[i].procTypeId2 == "T24001"){
											$("#js-car-proc-info-main-primer-inner-time-wiping-hmc2").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24002"){
											$("#js-car-proc-info-main-primer-inner-time-indoor-hmc2").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24003"){		// F/T 첫번째
											$("#js-car-proc-info-main-primer-inner-time-ft1-hmc2").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24005"){
											$("#js-car-proc-info-main-primer-inner-time-inhood-hmc2").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24009"){
											$("#js-car-proc-info-main-primer-inner-time-inrevision-hmc2").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (inner[i].procTypeId2 == "T24001"     ){$("#js-car-proc-info-main-primer-inner-length-wiping-hmc2").text(procItemValue);}
										if     (inner[i].procTypeId2 == "T24002"     ){$("#js-car-proc-info-main-primer-inner-length-indoor-hmc2").text(procItemValue);}
										if     (inner[i].procTypeId2 == "T24003"     ){$("#js-car-proc-info-main-primer-inner-length-ft1-hmc2").text(procItemValue);}
										if     (inner[i].procTypeId2 == "T24005"     ){$("#js-car-proc-info-main-primer-inner-length-inhood-hmc2").text(procItemValue);}
										if     (inner[i].procTypeId2 == "T24009"     ){$("#js-car-proc-info-main-primer-inner-length-inrevision-hmc2").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMC3") {
								for(var i=0 ; i<inner.length ; i++){
									var procItemNm    = app.utils.trim(inner[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(inner[i].procTypeId2Nm);
									var procItemValue = inner[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(inner[i].procTypeId2 == "T24001"){			// WIPING
											$("#js-car-proc-info-main-primer-inner-time-wiping-hmc3").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24002"){		// IN Door
											$("#js-car-proc-info-main-primer-inner-time-indoor-hmc3").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24003"){		// F/T 첫번째
											$("#js-car-proc-info-main-primer-inner-time-ft1-hmc3").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24005"){		// IN HOOD/TRUNK
											$("#js-car-proc-info-main-primer-inner-time-inhood-hmc3").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24006"){		// F/T 두번째
											$("#js-car-proc-info-main-primer-inner-time-ft2-hmc3").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24008"){		// IN 보정
											$("#js-car-proc-info-main-primer-inner-time-inrevision-hmc3").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (inner[i].procTypeId2 == "T24001"){$("#js-car-proc-info-main-primer-inner-length-wiping-hmc3").text(procItemValue);}
										else if(inner[i].procTypeId2 == "T24002"){$("#js-car-proc-info-main-primer-inner-length-indoor-hmc3").text(procItemValue);}
										else if(inner[i].procTypeId2 == "T24003"){$("#js-car-proc-info-main-primer-inner-length-ft1-hmc3").text(procItemValue);}
										else if(inner[i].procTypeId2 == "T24007"){$("#js-car-proc-info-main-primer-inner-length-inhood-ft2-hmc3").text(procItemValue);}
										else if(inner[i].procTypeId2 == "T24010"){$("#js-car-proc-info-main-primer-inner-length-inrevision-hmc3").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMC41") {
								for(var i=0 ; i<inner.length ; i++){
									var procItemNm    = app.utils.trim(inner[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(inner[i].procTypeId2Nm);
									var procItemValue = inner[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(inner[i].procTypeId2 == "T24001"){			// WIPING
											$("#js-car-proc-info-main-primer-inner-time-wiping-hmc41").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24005"){		// IN HOOD/TRUNK
											$("#js-car-proc-info-main-primer-inner-time-inhood-hmc41").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24002"){		// IN Door
											$("#js-car-proc-info-main-primer-inner-time-indoor-hmc41").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24008"){		// IN 보정
											$("#js-car-proc-info-main-primer-inner-time-inrevision-hmc41").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24009"){		// IN 보정 And ST
											$("#js-car-proc-info-main-primer-inner-time-st-hmc41").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (inner[i].procTypeId2 == "T24001"){$("#js-car-proc-info-main-primer-inner-length-wiping-hmc41").text(procItemValue);}
										else if(inner[i].procTypeId2 == "T24005"){$("#js-car-proc-info-main-primer-inner-length-inhood-hmc41").text(procItemValue);}
										else if(inner[i].procTypeId2 == "T24002"){$("#js-car-proc-info-main-primer-inner-length-indoor-hmc41").text(procItemValue);}
										else if(inner[i].procTypeId2 == "T24010"){$("#js-car-proc-info-main-primer-inner-length-inrevision-st-hmc41").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMC51") {
								for(var i=0 ; i<inner.length ; i++){
									var procItemNm    = app.utils.trim(inner[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(inner[i].procTypeId2Nm);
									var procItemValue = inner[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(inner[i].procTypeId2 == "T24001"){			// WIPING
											$("#js-car-proc-info-main-primer-inner-time-wiping-hmc51").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24002"){		// IN Door
											$("#js-car-proc-info-main-primer-inner-time-indoor-hmc51").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24003"){		// F/T 첫번째
											$("#js-car-proc-info-main-primer-inner-time-ft1-hmc51").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24005"){		// IN HOOD/TRUNK
											$("#js-car-proc-info-main-primer-inner-time-inhood-hmc51").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24006"){		// F/T 두번째
											$("#js-car-proc-info-main-primer-inner-time-ft2-hmc51").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24008"){		// IN 보정
											$("#js-car-proc-info-main-primer-inner-time-inrevision-hmc51").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24009"){		// S/T
											$("#js-car-proc-info-main-primer-inner-time-st-hmc51").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (inner[i].procTypeId2 == "T24001"){$("#js-car-proc-info-main-primer-inner-length-wiping-hmc51").text(procItemValue);}
										if     (inner[i].procTypeId2 == "T24004"){$("#js-car-proc-info-main-primer-inner-length-indoor-ft1-hmc51").text(procItemValue);}
										if     (inner[i].procTypeId2 == "T24007"){$("#js-car-proc-info-main-primer-inner-length-inhood-ft2-hmc51").text(procItemValue);}
										if     (inner[i].procTypeId2 == "T24010"){$("#js-car-proc-info-main-primer-inner-length-inrevision-st-hmc51").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMC52") {
								for(var i=0 ; i<inner.length ; i++){
									var procItemNm    = app.utils.trim(inner[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(inner[i].procTypeId2Nm);
									var procItemValue = inner[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(inner[i].procTypeId2 == "T24001"){			// WIPING
											$("#js-car-proc-info-main-primer-inner-time-wiping-hmc52").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24005"){		// IN HOOD/TRUNK
											$("#js-car-proc-info-main-primer-inner-time-inhood-hmc52").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24006"){		// F/T 첫번째
											$("#js-car-proc-info-main-primer-inner-time-ft1-hmc52").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24002"){		// IN Door
											$("#js-car-proc-info-main-primer-inner-time-indoor-hmc52").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24003"){		// F/T 두번째
											$("#js-car-proc-info-main-primer-inner-time-ft2-hmc52").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (inner[i].procTypeId2 == "T24001"){$("#js-car-proc-info-main-primer-inner-length-wiping-hmc52").text(procItemValue);}
										if     (inner[i].procTypeId2 == "T24007"){$("#js-car-proc-info-main-primer-inner-length-inhood-ft1-hmc52").text(procItemValue);}
										if     (inner[i].procTypeId2 == "T24004"){$("#js-car-proc-info-main-primer-inner-length-indoor-ft2-hmc52").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMCAS") {
								for(var i=0 ; i<inner.length ; i++){
									var procItemNm    = app.utils.trim(inner[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(inner[i].procTypeId2Nm);
									var procItemValue = inner[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(inner[i].procTypeId2 == "T24001"){			// WIPING
											$("#js-car-proc-info-main-primer-inner-time-wiping-hmcas").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24002"){		// IN Door
											$("#js-car-proc-info-main-primer-inner-time-indoor-hmcas").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24003"){		// F/T 첫번째
											$("#js-car-proc-info-main-primer-inner-time-ft1-hmcas").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24005"){		// IN HOOD/TRUNK
											$("#js-car-proc-info-main-primer-inner-time-inhood-hmcas").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24006"){		// F/T 두번째
											$("#js-car-proc-info-main-primer-inner-time-ft2-hmcas").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24008"){		// IN 보정
											$("#js-car-proc-info-main-primer-inner-time-inrevision-hmcas").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24009"){		// S/T
											$("#js-car-proc-info-main-primer-inner-time-st-hmcas").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (inner[i].procTypeId2 == "T24001"){$("#js-car-proc-info-main-primer-inner-length-wiping-hmcas").text(procItemValue);}
										if     (inner[i].procTypeId2 == "T24004"){$("#js-car-proc-info-main-primer-inner-length-indoor-ft1-hmcas").text(procItemValue);}
										if     (inner[i].procTypeId2 == "T24007"){$("#js-car-proc-info-main-primer-inner-length-inhood-ft2-hmcas").text(procItemValue);}
										if     (inner[i].procTypeId2 == "T24010"){$("#js-car-proc-info-main-primer-inner-length-inrevision-st-hmcas").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMCJB") {
								for(var i=0 ; i<inner.length ; i++){
									var procItemNm    = app.utils.trim(inner[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(inner[i].procTypeId2Nm);
									var procItemValue = inner[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(inner[i].procTypeId2 == "T24001"){			// WIPING
											$("#js-car-proc-info-main-primer-inner-time-wiping-hmcjb").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24002"){		// IN Door
											$("#js-car-proc-info-main-primer-inner-time-indoor-hmcjb").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24010"){		// S/T 첫번째
											$("#js-car-proc-info-main-primer-inner-time-st1-hmcjb").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24005"){		// IN HOOD/TRUNK
											$("#js-car-proc-info-main-primer-inner-time-inhood-hmcjb").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24042"){		// S/T 두번째
											$("#js-car-proc-info-main-primer-inner-time-st2-hmcjb").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (inner[i].procTypeId2 == "T24001"){$("#js-car-proc-info-main-primer-inner-length-wiping-hmcjb").text(procItemValue);}
										else if(inner[i].procTypeId2 == "T24047"){$("#js-car-proc-info-main-primer-inner-length-indoor-st1-hmcjb").text(procItemValue);}
										else if(inner[i].procTypeId2 == "T24043"){$("#js-car-proc-info-main-primer-inner-length-inhood-st2-hmcjb").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMCJT") {
								for(var i=0 ; i<inner.length ; i++){
									var procItemNm    = app.utils.trim(inner[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(inner[i].procTypeId2Nm);
									var procItemValue = inner[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(inner[i].procTypeId2 == "T24001"){			// WIPING
											$("#js-car-proc-info-main-primer-inner-time-wiping-hmcjt").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24002"){		// IN Door
											$("#js-car-proc-info-main-primer-inner-time-indoor-hmcjt").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24003"){		// F/T 첫번째
											$("#js-car-proc-info-main-primer-inner-time-ft1-hmcjt").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24049"){		// 내부보정
											$("#js-car-proc-info-main-primer-inner-time-inrevision-hmcjt").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24010"){		// S/T 첫번째
											$("#js-car-proc-info-main-primer-inner-time-st1-hmcjt").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (inner[i].procTypeId2 == "T24001"){$("#js-car-proc-info-main-primer-inner-length-wiping-hmcjt").text(procItemValue);}
										else if(inner[i].procTypeId2 == "T24004"){$("#js-car-proc-info-main-primer-inner-length-indoor-ft1-hmcjt").text(procItemValue);}
										else if(inner[i].procTypeId2 == "T24050"){$("#js-car-proc-info-main-primer-inner-length-inrevision-st1-hmcjt").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMCLAP1") {
								for(var i=0 ; i<inner.length ; i++){
									var procItemNm    = app.utils.trim(inner[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(inner[i].procTypeId2Nm);
									var procItemValue = inner[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(inner[i].procTypeId2 == "T24001"){			// WIPING
											$("#js-car-proc-info-main-primer-inner-time-wiping-hmclap1").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24002"){		// IN Door
											$("#js-car-proc-info-main-primer-inner-time-indoor-hmclap1").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24010"){		// S/T 첫번째
											$("#js-car-proc-info-main-primer-inner-time-st1-hmclap1").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24005"){		// IN HOOD/TRUNK
											$("#js-car-proc-info-main-primer-inner-time-inhood-hmclap1").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24042"){		// S/T 첫번째
											$("#js-car-proc-info-main-primer-inner-time-st2-hmclap1").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (inner[i].procTypeId2 == "T24001"){$("#js-car-proc-info-main-primer-inner-length-wiping-hmclap1").text(procItemValue);}
										else if(inner[i].procTypeId2 == "T24047"){$("#js-car-proc-info-main-primer-inner-length-indoor-st1-hmclap1").text(procItemValue);}
										else if(inner[i].procTypeId2 == "T24043"){$("#js-car-proc-info-main-primer-inner-length-inhood-st2-hmclap1").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "SHA") {
								for(var i=0 ; i<inner.length ; i++){
									var procItemNm    = app.utils.trim(inner[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(inner[i].procTypeId2Nm);
									var procItemValue = inner[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(inner[i].procTypeId2 == "T24008"){			// IN 보정
											$("#js-car-proc-info-main-primer-inner-time-inrevision-sha").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24010"){		// S/T 첫번째
											$("#js-car-proc-info-main-primer-inner-time-st1-sha").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (inner[i].procTypeId2 == "T24008"){$("#js-car-proc-info-main-primer-inner-length-inrevision-sha").text(procItemValue);}
										else if(inner[i].procTypeId2 == "T24010"){$("#js-car-proc-info-main-primer-inner-length-st1-sha").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "KMC3") {
								for(var i=0 ; i<inner.length ; i++){
									var procItemNm    = app.utils.trim(inner[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(inner[i].procTypeId2Nm);
									var procItemValue = inner[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(inner[i].procTypeId2 == "T24001"){			// WIPING
											$("#js-car-proc-info-main-primer-inner-time-wiping-kmc3").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24002"){		// IN Door
											$("#js-car-proc-info-main-primer-inner-time-indoor-kmc3").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24005"){		// IN HOOD/TRUNK
											$("#js-car-proc-info-main-primer-inner-time-inhood-kmc3").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24008"){		// IN 보정
											$("#js-car-proc-info-main-primer-inner-time-inrevision-kmc3").text(procItemValue);
										}
										else if(inner[i].procTypeId2 == "T24010"){		// S/T 첫번째
											$("#js-car-proc-info-main-primer-inner-time-st1-kmc3").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (inner[i].procTypeId2 == "T24001"){$("#js-car-proc-info-main-primer-inner-length-wiping-kmc3").text(procItemValue);}
										else if(inner[i].procTypeId2 == "T24002"){$("#js-car-proc-info-main-primer-inner-length-indoor-kmc3").text(procItemValue);}
										else if(inner[i].procTypeId2 == "T24005"){$("#js-car-proc-info-main-primer-inner-length-inhood-kmc3").text(procItemValue);}
										else if(inner[i].procTypeId2 == "T24008"){$("#js-car-proc-info-main-primer-inner-length-inrevision-kmc3").text(procItemValue);}
										else if(inner[i].procTypeId2 == "T24010"){$("#js-car-proc-info-main-primer-inner-length-st1-kmc3").text(procItemValue);}
									}
								}
							}
							
							// 외부 부스 정보 Set
							var outerTotalOut1FtOut2 = 0;
							var outer         = response.rs.outer;
							if($('#js-car-header-car-plant').val() == "HMC1") {
								for(var i=0 ; i<outer.length ; i++){
									var procItemNm    = app.utils.trim(outer[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(outer[i].procTypeId2Nm);
									var procItemValue = outer[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(procTypeId2Nm == "OUT 1st"){
											$("#js-car-proc-info-main-primer-outer-time-out1-hmc1").text(procItemValue);
											outerTotalOut1FtOut2 = Math.round((outerTotalOut1FtOut2 + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(procTypeId2Nm == "F/T"){
											$("#js-car-proc-info-main-primer-outer-time-ft-hmc1").text(procItemValue);
											outerTotalOut1FtOut2 = Math.round((outerTotalOut1FtOut2 + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(procTypeId2Nm == "OUT 2nd"){
											$("#js-car-proc-info-main-primer-outer-time-out2-hmc1").text(procItemValue);
											outerTotalOut1FtOut2 = Math.round((outerTotalOut1FtOut2 + Number(procItemValue)) * gvTempNumber) / gvTempNumber;
										}
										else if(procTypeId2Nm == "S/T"){
											$("#js-car-proc-info-main-primer-outer-time-st-hmc1").text(procItemValue);
											$("#js-car-proc-info-main-primer-outer-totaltime-st-hmc1").text(procItemValue);
										}
										else if(procTypeId2Nm == "OVEN"){
											$("#js-car-proc-info-main-primer-outer-time-oven-hmc1").text(procItemValue);
											$("#js-car-proc-info-main-primer-outer-totaltime-oven-hmc1").text(procItemValue);
										}
										else if(procTypeId2Nm == "TOTAL"){
											$("#js-car-proc-info-main-primer-outer-time-total-hmc1").text(procItemValue);
											$("#js-car-proc-info-main-primer-outer-totaltime-total-hmc1").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (procTypeId2Nm == "OUT 1st And F/T And OUT 2nd"){$("#js-car-proc-info-main-primer-outer-length-out1-ft-out2-hmc1").text(procItemValue);}
										else if(procTypeId2Nm == "S/T"                        ){$("#js-car-proc-info-main-primer-outer-length-st-hmc1").text(procItemValue);}
										else if(procTypeId2Nm == "OVEN"                       ){$("#js-car-proc-info-main-primer-outer-length-oven-hmc1").text(procItemValue);}
										else if(procTypeId2Nm == "TOTAL"                      ){$("#js-car-proc-info-main-primer-outer-length-total-hmc1").text(procItemValue);}
									}
									
								}
								// Total 시간
								$("#js-car-proc-info-main-primer-outer-totaltime-out1-ft-out2-hmc1").text(outerTotalOut1FtOut2);
							} else if($('#js-car-header-car-plant').val() == "HMC2"){
								for(var i=0 ; i<outer.length ; i++){
									var procItemNm    = app.utils.trim(outer[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(outer[i].procTypeId2Nm);
									var procItemValue = outer[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(outer[i].procTypeId2 == "T24011"){
											$("#js-car-proc-info-main-primer-outer-time-out1-hmc2").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24015"){
											$("#js-car-proc-info-main-primer-outer-time-st-hmc2").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24016"){
											$("#js-car-proc-info-main-primer-outer-time-oven-hmc2").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24017"){
											$("#js-car-proc-info-main-primer-outer-time-total-hmc2").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (outer[i].procTypeId2 == "T24011"){$("#js-car-proc-info-main-primer-outer-length-out1-hmc2").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24015"){$("#js-car-proc-info-main-primer-outer-length-st-hmc2").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24016"){$("#js-car-proc-info-main-primer-outer-length-oven-hmc2").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24017"){$("#js-car-proc-info-main-primer-outer-length-total-hmc2").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMC3"){
								for(var i=0 ; i<outer.length ; i++){
									var procItemNm    = app.utils.trim(outer[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(outer[i].procTypeId2Nm);
									var procItemValue = outer[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(outer[i].procTypeId2 == "T24011"){			// OUT 1st
											$("#js-car-proc-info-main-primer-outer-time-out1-hmc3").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24012"){		// F/T 첫번째
											$("#js-car-proc-info-main-primer-outer-time-ft-hmc3").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24013"){		// OUT 2nd
											$("#js-car-proc-info-main-primer-outer-time-out2-hmc3").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24015"){		// S/T		
											$("#js-car-proc-info-main-primer-outer-time-st-hmc3").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24016"){		// OVEN
											$("#js-car-proc-info-main-primer-outer-time-oven-hmc3").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24017"){		// TOTAL
											$("#js-car-proc-info-main-primer-outer-time-total-hmc3").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (outer[i].procTypeId2 == "T24014"){$("#js-car-proc-info-main-primer-outer-length-out1-ft-out2-hmc3").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24015"){$("#js-car-proc-info-main-primer-outer-length-st-hmc3").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24016"){$("#js-car-proc-info-main-primer-outer-length-oven-hmc3").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24017"){$("#js-car-proc-info-main-primer-outer-length-total-hmc3").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMC41"){
								for(var i=0 ; i<outer.length ; i++){
									var procItemNm    = app.utils.trim(outer[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(outer[i].procTypeId2Nm);
									var procItemValue = outer[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(outer[i].procTypeId2 == "T24011"){			// OUT 1st
											$("#js-car-proc-info-main-primer-outer-time-out1-hmc41").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24013"){		// OUT 2nd
											$("#js-car-proc-info-main-primer-outer-time-out2-hmc41").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24015"){		// S/T		
											$("#js-car-proc-info-main-primer-outer-time-st-hmc41").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24016"){		// OVEN
											$("#js-car-proc-info-main-primer-outer-time-oven-hmc41").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24017"){		// TOTAL
											$("#js-car-proc-info-main-primer-outer-time-total-hmc41").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (outer[i].procTypeId2 == "T24014"){$("#js-car-proc-info-main-primer-outer-length-out1-out2-hmc41").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24015"){$("#js-car-proc-info-main-primer-outer-length-st-hmc41").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24016"){$("#js-car-proc-info-main-primer-outer-length-oven-hmc41").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24017"){$("#js-car-proc-info-main-primer-outer-length-total-hmc41").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMC51"){
								for(var i=0 ; i<outer.length ; i++){
									var procItemNm    = app.utils.trim(outer[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(outer[i].procTypeId2Nm);
									var procItemValue = outer[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(outer[i].procTypeId2 == "T24011"){			// OUT 1st
											$("#js-car-proc-info-main-primer-outer-time-out1-hmc51").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24012"){		// F/T 첫번째
											$("#js-car-proc-info-main-primer-outer-time-ft-hmc51").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24013"){		// OUT 2nd
											$("#js-car-proc-info-main-primer-outer-time-out2-hmc51").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24015"){		// S/T		
											$("#js-car-proc-info-main-primer-outer-time-st-hmc51").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24016"){		// OVEN
											$("#js-car-proc-info-main-primer-outer-time-oven-hmc51").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24017"){		// TOTAL
											$("#js-car-proc-info-main-primer-outer-time-total-hmc51").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (outer[i].procTypeId2 == "T24014"){$("#js-car-proc-info-main-primer-outer-length-out1-ft-out2-hmc51").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24015"){$("#js-car-proc-info-main-primer-outer-length-st-hmc51").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24016"){$("#js-car-proc-info-main-primer-outer-length-oven-hmc51").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24017"){$("#js-car-proc-info-main-primer-outer-length-total-hmc51").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMC52"){
								for(var i=0 ; i<outer.length ; i++){
									var procItemNm    = app.utils.trim(outer[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(outer[i].procTypeId2Nm);
									var procItemValue = outer[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(outer[i].procTypeId2 == "T24011"){			// OUT 1st
											$("#js-car-proc-info-main-primer-outer-time-out1-hmc52").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24012"){		// F/T 첫번째
											$("#js-car-proc-info-main-primer-outer-time-ft-hmc52").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24015"){		// S/T		
											$("#js-car-proc-info-main-primer-outer-time-st-hmc52").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24016"){		// OVEN
											$("#js-car-proc-info-main-primer-outer-time-oven-hmc52").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24017"){		// TOTAL
											$("#js-car-proc-info-main-primer-outer-time-total-hmc52").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (outer[i].procTypeId2 == "T24041"){$("#js-car-proc-info-main-primer-outer-length-out1-ft-hmc52").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24015"){$("#js-car-proc-info-main-primer-outer-length-st-hmc52").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24016"){$("#js-car-proc-info-main-primer-outer-length-oven-hmc52").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24017"){$("#js-car-proc-info-main-primer-outer-length-total-hmc52").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMCAS"){
								for(var i=0 ; i<outer.length ; i++){
									var procItemNm    = app.utils.trim(outer[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(outer[i].procTypeId2Nm);
									var procItemValue = outer[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(outer[i].procTypeId2 == "T24011"){			// OUT 1st
											$("#js-car-proc-info-main-primer-outer-time-out1-hmcas").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24012"){		// F/T 첫번째
											$("#js-car-proc-info-main-primer-outer-time-ft-hmcas").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24013"){		// OUT 2nd
											$("#js-car-proc-info-main-primer-outer-time-out2-hmcas").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24015"){		// S/T		
											$("#js-car-proc-info-main-primer-outer-time-st-hmcas").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24016"){		// OVEN
											$("#js-car-proc-info-main-primer-outer-time-oven-hmcas").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24017"){		// TOTAL
											$("#js-car-proc-info-main-primer-outer-time-total-hmcas").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (outer[i].procTypeId2 == "T24014"){$("#js-car-proc-info-main-primer-outer-length-out1-ft-out2-hmcas").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24015"){$("#js-car-proc-info-main-primer-outer-length-st-hmcas").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24016"){$("#js-car-proc-info-main-primer-outer-length-oven-hmcas").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24017"){$("#js-car-proc-info-main-primer-outer-length-total-hmcas").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMCJB"){
								for(var i=0 ; i<outer.length ; i++){
									var procItemNm    = app.utils.trim(outer[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(outer[i].procTypeId2Nm);
									var procItemValue = outer[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(outer[i].procTypeId2 == "T24044"){			// 수평
											$("#js-car-proc-info-main-primer-outer-time-horizontal-hmcjb").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24012"){		// F/T 첫번째
											$("#js-car-proc-info-main-primer-outer-time-ft-hmcjb").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24045"){		// 수직
											$("#js-car-proc-info-main-primer-outer-time-vertical-hmcjb").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24046"){		// 매뉴얼(띠칼라)
											$("#js-car-proc-info-main-primer-outer-time-line-color-hmcjb").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24015"){		// S/T		
											$("#js-car-proc-info-main-primer-outer-time-st-hmcjb").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24016"){		// OVEN
											$("#js-car-proc-info-main-primer-outer-time-oven-hmcjb").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24017"){		// TOTAL
											$("#js-car-proc-info-main-primer-outer-time-total-hmcjb").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (outer[i].procTypeId2 == "T24048"){$("#js-car-proc-info-main-primer-outer-length-horizontal-ft-vertical-hmcjb").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24046"){$("#js-car-proc-info-main-primer-outer-length-line-color-hmcjb").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24015"){$("#js-car-proc-info-main-primer-outer-length-st-hmcjb").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24016"){$("#js-car-proc-info-main-primer-outer-length-oven-hmcjb").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24017"){$("#js-car-proc-info-main-primer-outer-length-total-hmcjb").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMCJT"){
								for(var i=0 ; i<outer.length ; i++){
									var procItemNm    = app.utils.trim(outer[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(outer[i].procTypeId2Nm);
									var procItemValue = outer[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(outer[i].procTypeId2 == "T24044"){			// 수평
											$("#js-car-proc-info-main-primer-outer-time-horizontal-hmcjt").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24012"){		// F/T 첫번째
											$("#js-car-proc-info-main-primer-outer-time-ft-hmcjt").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24045"){		// 수직
											$("#js-car-proc-info-main-primer-outer-time-vertical-hmcjt").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24015"){		// S/T		
											$("#js-car-proc-info-main-primer-outer-time-st-hmcjt").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24016"){		// OVEN
											$("#js-car-proc-info-main-primer-outer-time-oven-hmcjt").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24017"){		// TOTAL
											$("#js-car-proc-info-main-primer-outer-time-total-hmcjt").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (outer[i].procTypeId2 == "T24048"){$("#js-car-proc-info-main-primer-outer-length-horizontal-ft-vertical-hmcjt").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24015"){$("#js-car-proc-info-main-primer-outer-length-st-hmcjt").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24016"){$("#js-car-proc-info-main-primer-outer-length-oven-hmcjt").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24017"){$("#js-car-proc-info-main-primer-outer-length-total-hmcjt").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "HMCLAP1"){
								for(var i=0 ; i<outer.length ; i++){
									var procItemNm    = app.utils.trim(outer[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(outer[i].procTypeId2Nm);
									var procItemValue = outer[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(outer[i].procTypeId2 == "T24011"){			// OUT 1st
											$("#js-car-proc-info-main-primer-outer-time-out1-hmclap1").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24012"){		// F/T 첫번째
											$("#js-car-proc-info-main-primer-outer-time-ft-hmclap1").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24013"){		// OUT 2nd
											$("#js-car-proc-info-main-primer-outer-time-out2-hmclap1").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24046"){		// 매뉴얼(띠칼라)		
											$("#js-car-proc-info-main-primer-outer-time-line-color-hmclap1").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24015"){		// S/T		
											$("#js-car-proc-info-main-primer-outer-time-st-hmclap1").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24016"){		// OVEN
											$("#js-car-proc-info-main-primer-outer-time-oven-hmclap1").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24017"){		// TOTAL
											$("#js-car-proc-info-main-primer-outer-time-total-hmclap1").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (outer[i].procTypeId2 == "T24014"){$("#js-car-proc-info-main-primer-outer-length-out1-out2-hmclap1").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24046"){$("#js-car-proc-info-main-primer-outer-length-line-color-hmclap1").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24015"){$("#js-car-proc-info-main-primer-outer-length-st-hmclap1").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24016"){$("#js-car-proc-info-main-primer-outer-length-oven-hmclap1").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24017"){$("#js-car-proc-info-main-primer-outer-length-total-hmclap1").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "SHA"){
								for(var i=0 ; i<outer.length ; i++){
									var procItemNm    = app.utils.trim(outer[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(outer[i].procTypeId2Nm);
									var procItemValue = outer[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(outer[i].procTypeId2 == "T24051"){			// WIPING
											$("#js-car-proc-info-main-primer-outer-time-wiping-sha").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24011"){		// F/T 첫번째
											$("#js-car-proc-info-main-primer-outer-time-out1-sha").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24017"){		// TOTAL
											$("#js-car-proc-info-main-primer-outer-time-total-sha").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (outer[i].procTypeId2 == "T24051"){$("#js-car-proc-info-main-primer-outer-length-wiping-sha").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24011"){$("#js-car-proc-info-main-primer-outer-length-out1-sha").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24017"){$("#js-car-proc-info-main-primer-outer-length-total-sha").text(procItemValue);}
									}
								}
							} else if($('#js-car-header-car-plant').val() == "KMC3"){
								for(var i=0 ; i<outer.length ; i++){
									var procItemNm    = app.utils.trim(outer[i].procItemNm);
									var procTypeId2Nm = app.utils.trim(outer[i].procTypeId2Nm);
									var procItemValue = outer[i].procItemValue;
									
									if(procItemNm == "시간"){
										if(outer[i].procTypeId2 == "T24011"){			// OUT 1st
											$("#js-car-proc-info-main-primer-outer-time-out1-kmc3").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24016"){		// OVEN
											$("#js-car-proc-info-main-primer-outer-time-oven-kmc3").text(procItemValue);
										}
										else if(outer[i].procTypeId2 == "T24017"){		// TOTAL
											$("#js-car-proc-info-main-primer-outer-time-total-kmc3").text(procItemValue);
										}
									} 
									else if(procItemNm == "길이"){
										if     (outer[i].procTypeId2 == "T24011"){$("#js-car-proc-info-main-primer-outer-length-out1-kmc3").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24016"){$("#js-car-proc-info-main-primer-outer-length-oven-kmc3").text(procItemValue);}
										else if(outer[i].procTypeId2 == "T24017"){$("#js-car-proc-info-main-primer-outer-length-total-kmc3").text(procItemValue);}
									}
								}
							}
							
							// 샌딩장 정보 Set
							var sanding = response.rs.sanding;
							for(var i=0 ; i<sanding.length ; i++){
								
								var procItemNm    = app.utils.trim(sanding[i].procItemNm);
								var procTypeId2Nm = app.utils.trim(sanding[i].procTypeId2Nm);
								var procItemValue = sanding[i].procItemValue;
								
								if(procItemNm == "SAND PAPER NO"){
									if     (procTypeId2Nm == "일반샌딩"  ){$("#js-car-proc-info-main-primer-sanding-sandpaper-no-general").text(procItemValue);}
									else if(procTypeId2Nm == "Heavy 샌딩"){$("#js-car-proc-info-main-primer-sanding-sandpaper-no-heavy").text(procItemValue);}
									else if(procTypeId2Nm == "기타"      ){$("#js-car-proc-info-main-primer-sanding-sandpaper-no-etc").text(procItemValue);}
								} 
								else if(procItemNm == "SAND PAPER 제조사"){
									if     (procTypeId2Nm == "일반샌딩"  ){$("#js-car-proc-info-main-primer-sanding-sandpaper-co-general").text(procItemValue);}
									else if(procTypeId2Nm == "Heavy 샌딩"){$("#js-car-proc-info-main-primer-sanding-sandpaper-co-heavy").text(procItemValue);}
									else if(procTypeId2Nm == "기타"      ){$("#js-car-proc-info-main-primer-sanding-sandpaper-co-etc").text(procItemValue);}
								}
								else if(procItemNm == "수연마 여부"){
									if     (procTypeId2Nm == "일반샌딩"  ){$("#js-car-proc-info-main-primer-sanding-yn-general").text(procItemValue);}
									else if(procTypeId2Nm == "Heavy 샌딩"){$("#js-car-proc-info-main-primer-sanding-yn-heavy").text(procItemValue);}
									else if(procTypeId2Nm == "기타"      ){$("#js-car-proc-info-main-primer-sanding-yn-etc").text(procItemValue);}
								}
							}
							
							// 세정 주기 Set
							var clean = response.rs.clean;
							for(var i=0 ; i<clean.length ; i++){
								
								var procItemNm    = app.utils.trim(clean[i].procItemNm);
								var procTypeId2Nm = app.utils.trim(clean[i].procTypeId2Nm);
								var procItemValue = clean[i].procItemValue;
								
								if(procItemNm == "IN DOOR"){
									if     (procTypeId2Nm == "SHORT 시간"      ){$("#js-car-proc-info-main-primer-clean-indoor-short-time").text(procItemValue);}
									else if(procTypeId2Nm == "SHORT 주기"      ){$("#js-car-proc-info-main-primer-clean-indoor-short-term").text(procItemValue);}
									else if(procTypeId2Nm == "LONG 시간"       ){$("#js-car-proc-info-main-primer-clean-indoor-long-time").text(procItemValue);}
									else if(procTypeId2Nm == "LONG 주기"       ){$("#js-car-proc-info-main-primer-clean-indoor-long-term").text(procItemValue);}
									else if(procTypeId2Nm == "벨컵 전극봉 주기"){$("#js-car-proc-info-main-primer-clean-indoor-bellcup").text(procItemValue);}
									else if(procTypeId2Nm == "세정 신너 제품"  ){$("#js-car-proc-info-main-primer-clean-indoor-product").text(procItemValue);}
								} 
								else if(procItemNm == "IN HOOD"){
									if     (procTypeId2Nm == "SHORT 시간"      ){$("#js-car-proc-info-main-primer-clean-inhood-short-time").text(procItemValue);}
									else if(procTypeId2Nm == "SHORT 주기"      ){$("#js-car-proc-info-main-primer-clean-inhood-short-term").text(procItemValue);}
									else if(procTypeId2Nm == "LONG 시간"       ){$("#js-car-proc-info-main-primer-clean-inhood-long-time").text(procItemValue);}
									else if(procTypeId2Nm == "LONG 주기"       ){$("#js-car-proc-info-main-primer-clean-inhood-long-term").text(procItemValue);}
									else if(procTypeId2Nm == "벨컵 전극봉 주기"){$("#js-car-proc-info-main-primer-clean-inhood-bellcup").text(procItemValue);}
									else if(procTypeId2Nm == "세정 신너 제품"  ){$("#js-car-proc-info-main-primer-clean-inhood-product").text(procItemValue);}
								}
								else if(procItemNm == "OUT"){
									if     (procTypeId2Nm == "SHORT 시간"      ){$("#js-car-proc-info-main-primer-clean-out-short-time").text(procItemValue);}
									else if(procTypeId2Nm == "SHORT 주기"      ){$("#js-car-proc-info-main-primer-clean-out-short-term").text(procItemValue);}
									else if(procTypeId2Nm == "LONG 시간"       ){$("#js-car-proc-info-main-primer-clean-out-long-time").text(procItemValue);}
									else if(procTypeId2Nm == "LONG 주기"       ){$("#js-car-proc-info-main-primer-clean-out-long-term").text(procItemValue);}
									else if(procTypeId2Nm == "벨컵 전극봉 주기"){$("#js-car-proc-info-main-primer-clean-out-bellcup").text(procItemValue);}
									else if(procTypeId2Nm == "세정 신너 제품"  ){$("#js-car-proc-info-main-primer-clean-out-product").text(procItemValue);}
								}
							}
							
							// PRIMER 일반 정보 Set
							var primerInfo = response.rs.primerInfo;
							for(var i=0 ; i<primerInfo.length ; i++){
								var procItemNm    = app.utils.trim(primerInfo[i].procItemNm);
								var procItemValue = primerInfo[i].procItemValue;
								
								if     (procItemNm == "UPH"                ){$("#js-car-proc-info-main-primer-primerinfo-uph").text(procItemValue);}
								else if(procItemNm == "C/SPEED"            ){$("#js-car-proc-info-main-primer-primerinfo-speed").text(procItemValue);}
								else if(procItemNm == "TAG-RAG"            ){$("#js-car-proc-info-main-primer-primerinfo-tag").text(procItemValue);}
								else if(procItemNm == "AIR BALANCE"        ){$("#js-car-proc-info-main-primer-primerinfo-balance").text(procItemValue);}
								else if(procItemNm == "와이핑 머신유무"    ){$("#js-car-proc-info-main-primer-primerinfo-yn").text(procItemValue);}
								else if(procItemNm == "보정 제조사/AIR CAP"){$("#js-car-proc-info-main-primer-primerinfo-company").text(procItemValue);}
							}
							
							// PRIMER 도장기 정보1 Set
							var primerPaintInfo = response.rs.primerPaintInfo;
							for(var i=0 ; i<primerPaintInfo.length ; i++){
								
								var procItemNm    = app.utils.trim(primerPaintInfo[i].procItemNm);
								var procTypeId2Nm = app.utils.trim(primerPaintInfo[i].procTypeId2Nm);
								var procItemValue = primerPaintInfo[i].procItemValue;
								
								if(procItemNm == "IN DOOR"){
									if     (procTypeId2Nm == "도장기 TYPE"          ){$("#js-car-proc-info-main-primer-primerpaintinfo1-indoor-type").text(procItemValue);}
									else if(procTypeId2Nm == "전하부과 방식"        ){$("#js-car-proc-info-main-primer-primerpaintinfo1-indoor-method").text(procItemValue);}
									else if(procTypeId2Nm == "도장기 제조사"        ){$("#js-car-proc-info-main-primer-primerpaintinfo1-indoor-company").text(procItemValue);}
									else if(procTypeId2Nm == "도장기 대수"          ){$("#js-car-proc-info-main-primer-primerpaintinfo1-indoor-count").text(procItemValue);}
									else if(procTypeId2Nm == "AIR CAP 및 BELL MODEL"){$("#js-car-proc-info-main-primer-primerpaintinfo1-indoor-aircap").text(procItemValue);}
								}
								else if(procItemNm == "IN HOOD/TRUNK"){
									if     (procTypeId2Nm == "도장기 TYPE"          ){$("#js-car-proc-info-main-primer-primerpaintinfo1-inhood-type").text(procItemValue);}
									else if(procTypeId2Nm == "전하부과 방식"        ){$("#js-car-proc-info-main-primer-primerpaintinfo1-inhood-method").text(procItemValue);}
									else if(procTypeId2Nm == "도장기 제조사"        ){$("#js-car-proc-info-main-primer-primerpaintinfo1-inhood-company").text(procItemValue);}
									else if(procTypeId2Nm == "도장기 대수"          ){$("#js-car-proc-info-main-primer-primerpaintinfo1-inhood-count").text(procItemValue);}
									else if(procTypeId2Nm == "AIR CAP 및 BELL MODEL"){$("#js-car-proc-info-main-primer-primerpaintinfo1-inhood-aircap").text(procItemValue);}
								}
								else if(procItemNm == "WHOLE BODY"){
									if     (procTypeId2Nm == "도장기 TYPE"          ){$("#js-car-proc-info-main-primer-primerpaintinfo1-out-type").text(procItemValue);}
									else if(procTypeId2Nm == "전하부과 방식"        ){$("#js-car-proc-info-main-primer-primerpaintinfo1-out-method").text(procItemValue);}
									else if(procTypeId2Nm == "도장기 제조사"        ){$("#js-car-proc-info-main-primer-primerpaintinfo1-out-company").text(procItemValue);}
									else if(procTypeId2Nm == "도장기 대수"          ){$("#js-car-proc-info-main-primer-primerpaintinfo1-out-count").text(procItemValue);}
									else if(procTypeId2Nm == "AIR CAP 및 BELL MODEL"){$("#js-car-proc-info-main-primer-primerpaintinfo1-out-aircap").text(procItemValue);}
								}
							}
							
							// PRIMER 도장기 정보2 Set
							var primerPaintInfo2 = response.rs.primerPaintInfo2;
							for(var i=0 ; i<primerPaintInfo2.length ; i++){
								
								var procItemNm    = app.utils.trim(primerPaintInfo2[i].procItemNm);
								var procTypeId2Nm = app.utils.trim(primerPaintInfo2[i].procTypeId2Nm);
								var procItemValue = primerPaintInfo2[i].procItemValue;
								
								if(procItemNm == "IN DOOR"){
									if     (procTypeId2Nm == "토출량"  ){$("#js-car-proc-info-main-primer-primerpaintinfo2-indoor-output").text(procItemValue);}
									else if(procTypeId2Nm == "적용전압"){$("#js-car-proc-info-main-primer-primerpaintinfo2-indoor-voltage").text(procItemValue);}
									else if(procTypeId2Nm == "RPM"     ){$("#js-car-proc-info-main-primer-primerpaintinfo2-indoor-rpm").text(procItemValue);}
								}
								else if(procItemNm == "IN HOOD"){
									if     (procTypeId2Nm == "토출량"  ){$("#js-car-proc-info-main-primer-primerpaintinfo2-inhood-output").text(procItemValue);}
									else if(procTypeId2Nm == "적용전압"){$("#js-car-proc-info-main-primer-primerpaintinfo2-inhood-voltage").text(procItemValue);}
									else if(procTypeId2Nm == "RPM"     ){$("#js-car-proc-info-main-primer-primerpaintinfo2-inhood-rpm").text(procItemValue);}
								}
								else if(procItemNm == "IN TRUNK"){
									if     (procTypeId2Nm == "토출량"  ){$("#js-car-proc-info-main-primer-primerpaintinfo2-intrunk-output").text(procItemValue);}
									else if(procTypeId2Nm == "적용전압"){$("#js-car-proc-info-main-primer-primerpaintinfo2-intrunk-voltage").text(procItemValue);}
									else if(procTypeId2Nm == "RPM"     ){$("#js-car-proc-info-main-primer-primerpaintinfo2-intrunk-rpm").text(procItemValue);}
								}
								else if(procItemNm == "OUT HOOD"){
									if     (procTypeId2Nm == "토출량"  ){$("#js-car-proc-info-main-primer-primerpaintinfo2-outhood-output").text(procItemValue);}
									else if(procTypeId2Nm == "적용전압"){$("#js-car-proc-info-main-primer-primerpaintinfo2-outhood-voltage").text(procItemValue);}
									else if(procTypeId2Nm == "RPM"     ){$("#js-car-proc-info-main-primer-primerpaintinfo2-outhood-rpm").text(procItemValue);}
								}
								else if(procItemNm == "OUT DOOR"){
									if     (procTypeId2Nm == "토출량"  ){$("#js-car-proc-info-main-primer-primerpaintinfo2-outdoor-output").text(procItemValue);}
									else if(procTypeId2Nm == "적용전압"){$("#js-car-proc-info-main-primer-primerpaintinfo2-outdoor-voltage").text(procItemValue);}
									else if(procTypeId2Nm == "RPM"     ){$("#js-car-proc-info-main-primer-primerpaintinfo2-outdoor-rpm").text(procItemValue);}
								}
							}
							
							// 기타 Set
							var etc = response.rs.etc;
							if(etc.length > 0){
								$("#js-car-proc-info-main-primer-etc-remark").text(etc[0].remark);
							}
							
							// 이미지 Set
							var image = response.rs.image;
							if(image.length > 0){
								$("#js-car-proc-info-main-primer-image").attr("src", image[0].procItemImg);
							}
							
							// 첨부파일 Set
							var file = response.rs.file;
							carProcInfoMainFileHandler.attachFileHandler.setItems(file || []);
							
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
					
					//  결과 정보 초기화 
					$("[name=js-car-proc-info-main-primer-result-data]").text("");
					$("#js-car-proc-info-main-primer-image").attr("src", "");
					
					var params = {
						  service  : 'car.procItem'
						, method   : 'retrieveCarProcPrimer'
						, carPlant : $('#js-car-header-car-plant').val()
						, procId   : $('a[name=js-car-proc-info-main-proc-group].active').attr("procId")
						, boothId  : $('button[name=js-car-proc-info-main-booth].on').attr("boothId")
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//-------------------------------------------------
			// SEALER & DEADER 정보 조회
			//-------------------------------------------------
			var retrieveCarProcSealerDeader = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							// 샌딩장 정보 Set
							var sanding = response.rs.sanding;
							for(var i=0 ; i<sanding.length ; i++){
								
								var procItemNm    = app.utils.trim(sanding[i].procItemNm);
								var procTypeId2Nm = app.utils.trim(sanding[i].procTypeId2Nm);
								var procItemValue = sanding[i].procItemValue;
								
								if(procItemNm == "샌딩1"){
									if     (procTypeId2Nm == "SAND PAPER NO"    ){$("#js-car-proc-info-main-sealerdeadner-sending-sending1-paper-no").text(procItemValue);}
									else if(procTypeId2Nm == "SAND PAPER 제조사"){$("#js-car-proc-info-main-sealerdeadner-sending-sending1-campany").text(procItemValue);}
									else if(procTypeId2Nm == "수연마 여부"      ){$("#js-car-proc-info-main-sealerdeadner-sending-sending1-yn").text(procItemValue);}
									else if(procTypeId2Nm == "작업 TOOL"        ){$("#js-car-proc-info-main-sealerdeadner-sending-sending1-tool").text(procItemValue);}
									else if(procTypeId2Nm == "비고"             ){$("#js-car-proc-info-main-sealerdeadner-sending-sending1-etc").text(procItemValue);}
								} 
								else if(procItemNm == "샌딩2"){
									if     (procTypeId2Nm == "SAND PAPER NO"    ){$("#js-car-proc-info-main-sealerdeadner-sending-sending2-paper-no").text(procItemValue);}
									else if(procTypeId2Nm == "SAND PAPER 제조사"){$("#js-car-proc-info-main-sealerdeadner-sending-sending2-campany").text(procItemValue);}
									else if(procTypeId2Nm == "수연마 여부"      ){$("#js-car-proc-info-main-sealerdeadner-sending-sending2-yn").text(procItemValue);}
									else if(procTypeId2Nm == "작업 TOOL"        ){$("#js-car-proc-info-main-sealerdeadner-sending-sending2-tool").text(procItemValue);}
									else if(procTypeId2Nm == "비고"             ){$("#js-car-proc-info-main-sealerdeadner-sending-sending2-etc").text(procItemValue);}
								}
								else if(procItemNm == "샌딩3"){
									if     (procTypeId2Nm == "SAND PAPER NO"    ){$("#js-car-proc-info-main-sealerdeadner-sending-sending3-paper-no").text(procItemValue);}
									else if(procTypeId2Nm == "SAND PAPER 제조사"){$("#js-car-proc-info-main-sealerdeadner-sending-sending3-campany").text(procItemValue);}
									else if(procTypeId2Nm == "수연마 여부"      ){$("#js-car-proc-info-main-sealerdeadner-sending-sending3-yn").text(procItemValue);}
									else if(procTypeId2Nm == "작업 TOOL"        ){$("#js-car-proc-info-main-sealerdeadner-sending-sending3-tool").text(procItemValue);}
									else if(procTypeId2Nm == "비고"             ){$("#js-car-proc-info-main-sealerdeadner-sending-sending3-etc").text(procItemValue);}
								}
							}
							
							// 실러 데드너 Set
							var sealerDeadner = response.rs.sealerDeadner;
							for(var i=0 ; i<sealerDeadner.length ; i++){
								
								var procItemNm    = app.utils.trim(sealerDeadner[i].procItemNm);
								var procItemValue = sealerDeadner[i].procItemValue;
								
								if     (procItemNm == "UPH"            ){$("#js-car-proc-info-main-sealerdeadner-sealer-uph").text(procItemValue);}
								else if(procItemNm == "C/SPEED"        ){$("#js-car-proc-info-main-sealerdeadner-sealer-speed").text(procItemValue);}
								else if(procItemNm == "통합실러 제조사"){$("#js-car-proc-info-main-sealerdeadner-sealer-company1").text(procItemValue);}
								else if(procItemNm == "오일실러 제조사"){$("#js-car-proc-info-main-sealerdeadner-sealer-company2").text(procItemValue);}
								else if(procItemNm == "UBS제조사"      ){$("#js-car-proc-info-main-sealerdeadner-sealer-company3").text(procItemValue);}
								else if(procItemNm == "데드너 제조사"  ){$("#js-car-proc-info-main-sealerdeadner-sealer-company4").text(procItemValue);}
								else if(procItemNm == "통합실러 제품명"){$("#js-car-proc-info-main-sealerdeadner-sealer-name1").text(procItemValue);}
								else if(procItemNm == "오일실러 제품명"){$("#js-car-proc-info-main-sealerdeadner-sealer-name2").text(procItemValue);}
								else if(procItemNm == "UBS제품명"      ){$("#js-car-proc-info-main-sealerdeadner-sealer-name3").text(procItemValue);}
								else if(procItemNm == "데드너 제품명"  ){$("#js-car-proc-info-main-sealerdeadner-sealer-name4").text(procItemValue);}
								else if(procItemNm == "건조조건"       ){$("#js-car-proc-info-main-sealerdeadner-sealer-condition").text(procItemValue);}
								
							}
							
							// 이미지 Set
							var image = response.rs.image;
							if(image.length > 0){
								$("#js-car-proc-info-main-sealerdeadner-image").attr("src", image[0].procItemImg);
							}
							
							// 기타 Set
							var etc = response.rs.etc;
							if(etc.length > 0){
								$("#js-car-proc-info-main-sealerdeadner-etc-remark").text(etc[0].remark);
							}
							
							// 첨부파일 Set
							var file = response.rs.file;
							carProcInfoMainFileHandler.attachFileHandler.setItems(file || []);
							
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
					
					//  결과 정보 초기화 
					$("[name=js-car-proc-info-main-sealerdeadner-result-data]").text("");
					$("#js-car-proc-info-main-sealerdeadner-image").attr("src", "");
					
					var params = {
						  service  : 'car.procItem'
						, method   : 'retrieveCarProcSealerDeader'
						, carPlant : $('#js-car-header-car-plant').val()
						, procId   : $('a[name=js-car-proc-info-main-proc-group].active').attr("procId")
						, boothId  : $('button[name=js-car-proc-info-main-booth].on').attr("boothId")
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};

			//-------------------------------------------------
			// CAPA, 오븐설비, 전착도장 정보 조회
			//-------------------------------------------------
			var retrieveCarProcEd = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							// CAPA 정보 Set
							var capa = response.rs.capa;
							for(var i=0 ; i<capa.length ; i++){
								
								var procItemNm    = app.utils.trim(capa[i].procItemNm);
								var procTypeId2Nm = app.utils.trim(capa[i].procTypeId2Nm);
								var procItemValue = capa[i].procItemValue;
								
								if(procItemNm == "CAPA 정보"){
									if     (procTypeId2Nm == "본조"      ){$("#js-car-proc-info-main-ed-capa-info-item0").text(procItemValue);}
									else if(procTypeId2Nm == "UF1"       ){$("#js-car-proc-info-main-ed-capa-info-item1").text(procItemValue);}
									else if(procTypeId2Nm == "UF2"       ){$("#js-car-proc-info-main-ed-capa-info-item2").text(procItemValue);}
									else if(procTypeId2Nm == "UF3"       ){$("#js-car-proc-info-main-ed-capa-info-item3").text(procItemValue);}
									else if(procTypeId2Nm == "UF4"       ){$("#js-car-proc-info-main-ed-capa-info-item4").text(procItemValue);}
									else if(procTypeId2Nm == "순수세1"   ){$("#js-car-proc-info-main-ed-capa-info-item5").text(procItemValue);}
									else if(procTypeId2Nm == "순수세2"   ){$("#js-car-proc-info-main-ed-capa-info-item6").text(procItemValue);}
									else if(procTypeId2Nm == "최종순수세"){$("#js-car-proc-info-main-ed-capa-info-item7").text(procItemValue);}
								} 
								else if(procItemNm == "방식"){
									if     (procTypeId2Nm == "본조"      ){$("#js-car-proc-info-main-ed-type-item0").text(procItemValue);}
									else if(procTypeId2Nm == "UF1"       ){$("#js-car-proc-info-main-ed-type-item1").text(procItemValue);}
									else if(procTypeId2Nm == "UF2"       ){$("#js-car-proc-info-main-ed-type-item2").text(procItemValue);}
									else if(procTypeId2Nm == "UF3"       ){$("#js-car-proc-info-main-ed-type-item3").text(procItemValue);}
									else if(procTypeId2Nm == "UF4"       ){$("#js-car-proc-info-main-ed-type-item4").text(procItemValue);}
									else if(procTypeId2Nm == "순수세1"   ){$("#js-car-proc-info-main-ed-type-item5").text(procItemValue);}
									else if(procTypeId2Nm == "순수세2"   ){$("#js-car-proc-info-main-ed-type-item6").text(procItemValue);}
									else if(procTypeId2Nm == "최종순수세"){$("#js-car-proc-info-main-ed-type-item7").text(procItemValue);}
								}
							}
							
							// 오븐 설비정보 Set
							var oven = response.rs.oven;
							for(var i=0 ; i<oven.length ; i++){
								
								var procItemNm    = app.utils.trim(oven[i].procItemNm);
								var procTypeId2Nm = app.utils.trim(oven[i].procTypeId2Nm);
								var procItemValue = oven[i].procItemValue;
								
								if(procItemNm == "오븐 NO #1"){
									if     (procTypeId2Nm == "AIRBLOW (MANUAL)"){$("#js-car-proc-info-main-ed-oven1-item0").text(procItemValue);}
									else if(procTypeId2Nm == "AIRBLOW (열풍)"  ){$("#js-car-proc-info-main-ed-oven1-item1").text(procItemValue);}
									else if(procTypeId2Nm == "LONG NOZZLE"     ){$("#js-car-proc-info-main-ed-oven1-item2").text(procItemValue);}
									else if(procTypeId2Nm == "SETTING TIME"    ){$("#js-car-proc-info-main-ed-oven1-item3").text(procItemValue);}
									else if(procTypeId2Nm == "IR RAMP 길이"    ){$("#js-car-proc-info-main-ed-oven1-item4").text(procItemValue);}
									else if(procTypeId2Nm == "IR RAMP 개수"    ){$("#js-car-proc-info-main-ed-oven1-item5").text(procItemValue);}
								} 
								else if(procItemNm == "오븐 NO #2"){
									if     (procTypeId2Nm == "AIRBLOW (MANUAL)"){$("#js-car-proc-info-main-ed-oven2-item0").text(procItemValue);}
									else if(procTypeId2Nm == "AIRBLOW (열풍)"  ){$("#js-car-proc-info-main-ed-oven2-item1").text(procItemValue);}
									else if(procTypeId2Nm == "LONG NOZZLE"     ){$("#js-car-proc-info-main-ed-oven2-item2").text(procItemValue);}
									else if(procTypeId2Nm == "SETTING TIME"    ){$("#js-car-proc-info-main-ed-oven2-item3").text(procItemValue);}
									else if(procTypeId2Nm == "IR RAMP 길이"    ){$("#js-car-proc-info-main-ed-oven2-item4").text(procItemValue);}
									else if(procTypeId2Nm == "IR RAMP 개수"    ){$("#js-car-proc-info-main-ed-oven2-item5").text(procItemValue);}
								}
							}
							
							// 전착 도장 정보 Set
							var list = response.rs.list;
							for(var i=0 ; i<list.length ; i++){
								
								var procItemNm    = app.utils.trim(list[i].procItemNm);
								var procTypeId2Nm = app.utils.trim(list[i].procTypeId2Nm);
								var procItemValue = list[i].procItemValue;
								
								// 도장 PARAMETER 정보 Set
								if(procTypeId2Nm == "도장 PARAMETER"){
									if     (procItemNm == "1차 전압"        ){$("#js-car-proc-info-main-ed-paint-info1-voltage1").text(procItemValue);}
									else if(procItemNm == "2차 전압"        ){$("#js-car-proc-info-main-ed-paint-info1-voltage2").text(procItemValue);}
									else if(procItemNm == "3차 전압"        ){$("#js-car-proc-info-main-ed-paint-info1-voltage3").text(procItemValue);}
									else if(procItemNm == "1차 전류"        ){$("#js-car-proc-info-main-ed-paint-info1-ecurrent1").text(procItemValue);}
									else if(procItemNm == "2차 전류"        ){$("#js-car-proc-info-main-ed-paint-info1-ecurrent2").text(procItemValue);}
									else if(procItemNm == "3차 전류"        ){$("#js-car-proc-info-main-ed-paint-info1-ecurrent3").text(procItemValue);}
									else if(procItemNm == "통전시간 1차"    ){$("#js-car-proc-info-main-ed-paint-info1-time1").text(procItemValue);}
									else if(procItemNm == "통전시간 2차"    ){$("#js-car-proc-info-main-ed-paint-info1-time2").text(procItemValue);}
									else if(procItemNm == "통전시간 3차"    ){$("#js-car-proc-info-main-ed-paint-info1-time3").text(procItemValue);}
									else if(list[i].procItemId == "CPI20036"){$("#js-car-proc-info-main-ed-paint-info1-ramping1").text(procItemValue);}
									else if(list[i].procItemId == "CPI20038"){$("#js-car-proc-info-main-ed-paint-info1-ramping2").text(procItemValue);}
								}
								
								// 양극 정보 Set
								else if(procTypeId2Nm == "양극 정보"){
									if     (procItemNm == "격막개수 "      ){$("#js-car-proc-info-main-ed-paint-info2-count").text(procItemValue);}
									else if(procItemNm == "격막 종류(TYPE)"){$("#js-car-proc-info-main-ed-paint-info2-type").text(procItemValue);}
									else if(procItemNm == "격막제조사"     ){$("#js-car-proc-info-main-ed-paint-info2-company").text(procItemValue);}
									else if(procItemNm == "극비"           ){$("#js-car-proc-info-main-ed-paint-info2-cost").text(procItemValue);}
									else if(procItemNm == "양극액 전도도"  ){$("#js-car-proc-info-main-ed-paint-info2-conductivity").text(procItemValue);}
								}
								
								// UF 모듈정보 Set
								else if(procTypeId2Nm == "UF 모듈정보"){
									if     (procItemNm == "UF 모듈 종류"       ){$("#js-car-proc-info-main-ed-paint-info3-type").text(procItemValue);}
									else if(procItemNm == "UF 개수"            ){$("#js-car-proc-info-main-ed-paint-info3-count").text(procItemValue);}
									else if(procItemNm == "UF 모듈 산세정 주기"){$("#js-car-proc-info-main-ed-paint-info3-term1").text(procItemValue);}
									else if(procItemNm == "필터 교체 주기"      ){$("#js-car-proc-info-main-ed-paint-info3-term2").text(procItemValue);}
								}
								
								// 순수세 정보 Set
								else if(procTypeId2Nm == "순수세 정보"){
									if     (procItemNm == "TANK NV"           ){$("#js-car-proc-info-main-ed-paint-info4-tank-nv").text(procItemValue);}
									else if(procItemNm == "TANK pH"           ){$("#js-car-proc-info-main-ed-paint-info4-tank-ph").text(procItemValue);}
									else if(procItemNm == "재생 순수 전도도"  ){$("#js-car-proc-info-main-ed-paint-info4-conductivity").text(procItemValue);}
									else if(procItemNm == "펌프 유량/유압"    ){$("#js-car-proc-info-main-ed-paint-info4-pump").text(procItemValue);}
									else if(procItemNm == "ECS 순환 장치 개수"){$("#js-car-proc-info-main-ed-paint-info4-ecs-count").text(procItemValue);}
									else if(procItemNm == "순수 재생 시스템"  ){$("#js-car-proc-info-main-ed-paint-info4-system").text(procItemValue);}
									else if(procItemNm == "순환필터1 교환주기"){$("#js-car-proc-info-main-ed-paint-info4-term1").text(procItemValue);}
									else if(procItemNm == "순환필터2 교환주기"){$("#js-car-proc-info-main-ed-paint-info4-term2").text(procItemValue);}
									else if(procItemNm == "순환필터3 교환주기"){$("#js-car-proc-info-main-ed-paint-info4-term3").text(procItemValue);}
									else if(procItemNm == "순환필터1 사이즈"  ){$("#js-car-proc-info-main-ed-paint-info4-size1").text(procItemValue);}
									else if(procItemNm == "순환필터2 사이즈"  ){$("#js-car-proc-info-main-ed-paint-info4-size2").text(procItemValue);}
									else if(procItemNm == "순환필터3 사이즈"  ){$("#js-car-proc-info-main-ed-paint-info4-size3").text(procItemValue);}
									else if(procItemNm == "필터개수"          ){$("#js-car-proc-info-main-ed-paint-info4-filter-count").text(procItemValue);}
								}
								
								// UF 수세 정보 Set
								else if(procTypeId2Nm == "UF 수세 정보"){
									if(procItemNm == "UF 스프레이 압력"){$("#js-car-proc-info-main-ed-paint-info5-spray").text(procItemValue);}
								}
							}
							
							// 기타 Set
							var etc = response.rs.etc;
							if(etc.length > 0){
								$("#js-car-proc-info-main-ed-etc-remark").text(etc[0].remark);
							}
							
							// 이미지 Set
							var image = response.rs.image;
							if(image.length > 0){
								$("#js-car-proc-info-main-ed-image").attr("src", image[0].procItemImg);
							}

							// 첨부파일 Set
							var file = response.rs.file;
							carProcInfoMainFileHandler.attachFileHandler.setItems(file || []);
							
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
					
					// 결과 초기화
					$("[name=js-car-proc-info-main-ed-result-data]").text("");
					$("#js-car-proc-info-main-ed-image").attr("src", "");
					
					var params = {
						  service  : 'car.procItem'
						, method   : 'retrieveCarProcEd'
						, carPlant : $('#js-car-header-car-plant').val()
						, procId   : $('a[name=js-car-proc-info-main-proc-group].active').attr("procId")
						, boothId  : $('button[name=js-car-proc-info-main-booth].on').attr("boothId")
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				}
			};
			
			//------------------------------------
			//나모 CrossEditor 첨부파일 저장
			//------------------------------------
			//issue : firefox will fire the event even if it is the same file
			//issue : IE 9 does not support file api
			//------------------------------------
			var carProcInfoMainFileHandler = {
				procName : "",
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
						var files = this.files || null;
						
						if (files != null) {
							// ------------------------------------
							// data.attachment.htmlTemplate	: 첨부파일 HTML 엘리먼트 추가 Handlebars 템플릿
							// data.attachment.files		: 첨부파일 목록
							// ------------------------------------
							var data = e.data || {}, attachment = data.attachment || {}, $el = $(this);
							
							if (typeof attachment.files !== 'undefined') {
								var htmlTemplate = attachment.htmlTemplate || null;
								
								if (htmlTemplate != null) {
									var file = null, isExistFilename = false, itemId = null;
									var items = [];

									var procName = carProcInfoMainFileHandler.procName;
									
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
												items.push({uploadCompleted: 'N', itemId: itemId, name: file.name, type: file.type, size: file.size, displaySize: convFileSize(file.size), procName: procName });
											}
										}
									}
									// ------------------------------------
									// 첨부파일 HTML 엘리먼트 추가
									// ------------------------------------
									var $htmlTemplateContainer = attachment.$htmlTemplateContainer || null;
									
									if (($htmlTemplateContainer != null) && ($htmlTemplateContainer.length)) {
										$htmlTemplateContainer.append(htmlTemplate({items: items}));

										// ------------------------------------
										// 파일 다운로드 이벤트 바인딩
										// ------------------------------------
										//$('#js-car-proc-info-main-' + procName + '-file-list').off().on('click', 'a[name=js-template-car-proc-info-main-' + procName + '-file-download-button]', carProcInfoMainFileHandler.downloadHandler.request);
										
										// ------------------------------------
										// 파일 삭제 이벤트 바인딩
										// ------------------------------------
										$('[name=js-car-proc-info-main-' + procName + '-file-remove-button]').off().on('click', {classTarget: '[name=js-car-proc-info-main-' + procName + '-file-item]', attachment: carProcInfoMainFileHandler.attachFileHandler.attachment, removeFileHandler: carProcInfoMainFileHandler.removeFileHandler}, carProcInfoMainFileHandler.attachFileHandler.remove);
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
							// ------------------------------------
							// INPUT 엘리먼트 초기화 수행
							// ------------------------------------
							// 파일 삭제후 동일 파일 선택시 change 이벤트 발생 안함
							// ------------------------------------
							$el.replaceWith($el.clone(true));
						}else
						{
							// ------------------------------------
							// OLD Browser or IE9 Lower 
							// ------------------------------------
							console.log('------------------------------------');
							console.log('You are browser does not support file api');
							console.log('------------------------------------');
						}
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
										var count = $("#js-car-proc-info-main-" + carProcInfoMainFileHandler.procName + "-file-list").find("li").length;
										$("#js-car-proc-info-main-" + carProcInfoMainFileHandler.procName + "-file-count").text(count + '<spring:message code="TODO.KEY" text="개"/>');
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
												// ------------------------------------
												// 첨부파일 삭제 요청
												// ------------------------------------
												var fileName = $el.find("[name=js-car-proc-info-main-file-name]").text();
												app.message.confirm({
													  title             : '<spring:message code="TODO.KEY" text="첨부파일 삭제"/>'
													, message           : '<spring:message code="TODO.KEY" text="' + fileName + ' 파일을 삭제하시겠습니까?"/>'
													, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
													, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
													, callback          : {
														confirm: function() {
															// 선택한 첨부파일 삭제
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
						
						// 초기화
						/* 
						var attachment =  this.attachFileHandler.attachment;
						$.each(attachment.files, function(key, file) {
							delete attachment.files[key];
						});
						 */
						
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
						var procName = carProcInfoMainFileHandler.procName;
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
								seqFile: data[i].seqCarAttachFile,
								docNo: data[i].docNo,
								filePath: data[i].filePath,
								transFilename: data[i].transFile,
								isConvertCompleted: data[i].webOfficeConvYn,
								webOfficePath: data[i].webOfficePath,
								webOfficeName: data[i].webOfficeName,
								procName: procName
							});
							sumFileSize += parseInt(data[i].fileSize);
						}
						$("#js-car-proc-info-main-" + procName + "-file-size").html('<spring:message code="TODO.KEY" text="첨부파일크기 : "/>' + convFileSize(sumFileSize));
						this.attachment.$htmlTemplateContainer.empty().append(this.attachment.htmlTemplate({items: items}));
						
						// ------------------------------------
						// 파일 다운로드 이벤트 바인딩
						// ------------------------------------
						$('[name=js-car-proc-info-main-' + procName + '-file-download-button]').off().on('click', carProcInfoMainFileHandler.downloadHandler.request);
						

						// ------------------------------------
						// 파일 보기 이벤트 바인딩
						// ------------------------------------
						$('[name=js-car-proc-info-main-' + procName + '-file-show-button]').off().on('click', {showFileHandler: carProcInfoMainFileHandler.showFileHandler}, carProcInfoMainFileHandler.attachFileHandler.show);
						
						
						// ------------------------------------
						// 파일 삭제 이벤트 바인딩
						// ------------------------------------
						$('[name=js-car-proc-info-main-' + procName + '-file-remove-button]').off().on('click', {classTarget: '[name=js-car-proc-info-main-' + procName + '-file-item]', attachment: carProcInfoMainFileHandler.attachFileHandler.attachment, removeFileHandler: carProcInfoMainFileHandler.removeFileHandler}, carProcInfoMainFileHandler.attachFileHandler.remove);
						
						// 파일 있을 경우, 펼치기
						if(items.length > 0 && !$('#js-car-proc-info-main-' + procName + '-fold-button').hasClass("on")){
							$('#js-car-proc-info-main-' + procName + '-fold-button').click();
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
									//console.log(message);
									fn_alertInfo('E', message);

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
						//console.log(errorText);
						fn_alertInfo('E', errorText);
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
							service: 'ship.common',
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
										var count = $("#js-car-proc-info-main-" + carProcInfoMainFileHandler.procName + "-file-list").find("li").length;
										$("#js-car-proc-info-main-" + carProcInfoMainFileHandler.procName + "-file-count").text(count + '<spring:message code="TODO.KEY" text="개"/>');
										app.message.alert({
											  title             : '<spring:message code="TODO.KEY" text="에러"/>'
											, message           : '<spring:message code="TODO.KEY" text="정상적으로 삭제되었습니다."/>'
											, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
											, callback          : {
												confirm: function() {
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
										, message           : '<spring:message code="TODO.KEY" text="' + message + '"/>'
										, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
										, callback          : {
											confirm: function() {
											}
										}
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
							  title             : '<spring:message code="TODO.KEY" text="알림"/>'
							, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
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
							service: 'car.procItem',
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
									// 업로드 요청 첨부파일 초기화
									// ------------------------------------
									$.each(attachment.files, function(key, file) {
										delete attachment.files[key];
									});
									
									app.message.alert({
										  title             : '<spring:message code="TODO.KEY" text="알림"/>'
										, message           : '<spring:message code="TODO.KEY" text="저장되었습니다."/>'
										, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
										, callback          : {
											confirm: function() {
											}
										}
									});
									
									var procName = carProcInfoMainFileHandler.procName;

									// 화면 재조회
									if(procName == "pretreatment"){
										// 전처리 및 철판 정보 조회
										retrieveCarProcPretreatment.request();
									} else if(procName == "ed"){
										// CAPA, 오븐설비, 전착도장 정보 조회
										retrieveCarProcEd.request();
									} else if(procName == "sealerdeadner"){
										// SEALER & DEADER 정보 조회
										retrieveCarProcSealerDeader.request();
									} else if(procName == "primer"){
										// 내부 부스 정보, 외부 부스 정보 조회
										retrieveCarProcPrimer.request();
									} else if(procName == "baseclear"){
										// BASE & CLEAR 정보 조회
										retrieveCarProcBaseClear.request();
									} else if(procName == "inspection"){
										// INSPECTION 정보 조회
										retrieveCarProcInspection.request();
									}
								}else
								{
									// ------------------------------------
									// 서비스 요청 처리 오류 발생 메시지
									// ------------------------------------
									
									app.message.alert({
										  title             : '<spring:message code="TODO.KEY" text="알림"/>'
										, message           : '<spring:message code="TODO.KEY" text="' + message + '"/>'
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
							  title             : '<spring:message code="TODO.KEY" text="알림"/>'
							, message           : '<spring:message code="TODO.KEY" text="' + errorText + '"/>'
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
				save: function() {
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
						// 서비스 호출 파라미터
						// ------------------------------------
						formData.append('service', 'car.procItem');
						formData.append('method',  'saveCarProcFile');
						
						// ------------------------------------
						// 파라미터
						// ------------------------------------
						formData.append('carPlant'   , $('#js-car-header-car-plant').val());
						formData.append('procId'     , $('a[name=js-car-proc-info-main-proc-group].active').attr("procId"));
						formData.append('boothId'    , $('button[name=js-car-proc-info-main-booth].on').attr("boothId"));
						
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
				init: function(procName) {
					
					// 초기화
					var attachment =  this.attachFileHandler.attachment;
					$.each(attachment.files, function(key, file) {
						delete attachment.files[key];
					});
					this.procName = procName;

					// ------------------------------------
					// 파일 추가 이벤트 바인딩
					// ------------------------------------
					$('#js-car-proc-info-main-' + procName + '-file-upload-target').off().on('change', {attachment: this.attachFileHandler.attachment}, this.attachFileHandler.selected);
					$('#js-car-proc-info-main-' + procName + '-file-upload-button').off().on('click', {selectorTarget: '#js-car-proc-info-main-' + procName + '-file-upload-target'}, this.attachFileHandler.click);
					
					
					// ------------------------------------
					// Handlebars 템플릿 초기화
					// ------------------------------------
					try {
						var $source = $('#js-template-car-proc-info-main-common-file-list');
						
						if ($source.length) {
							this.attachFileHandler.attachment.$htmlTemplateContainer = $('#js-car-proc-info-main-' + procName + '-file-list');
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
			
			//-------------------------------------------------
			// 공정별 공정도 조회
			//-------------------------------------------------
			var retrieveCarProcIdGroup = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							var result = carProcInfoMainProcGroupListTemplate({rows : response.rs});
							$("#js-car-proc-info-main-proc-group-list").empty().append(result);

							// 공정도 버튼 클릭
							$('a[name=js-car-proc-info-main-proc-group]').off().on('click', function(e) {
								e.preventDefault();
								e.stopPropagation();
								
								var procId   = $(this).attr("procId");
								var procName = $(this).attr("procName");
								carProcInfoMainProcClick(procId, procName);
							});

							var procId   = $('a[name=js-car-proc-info-main-proc-group]:first').attr("procId");
							var procName = $('a[name=js-car-proc-info-main-proc-group]:first').attr("procName");
							carProcInfoMainProcClick(procId, procName);
							
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
						  service : 'car.common'
						, method  : 'retrieveCarProcIdGroup'
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				},
				carProcInfoInspRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								gvCarProcInfoInspRegProcIdGroupRs = response.rs;
								
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
						//app.mask.pageUnlock();
					},
					request: function() {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						var params = {
							  service : 'car.common'
							, method  : 'retrieveCarProcIdGroup'
						};
						//app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carProcInfoInspImgRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								var result = carProcInfoInspRegOptionListTemplate({rows : response.rs});
								$("#js-proc-info-insp-img-reg-popup-procId-combo").empty().append(result);
								
								// 공정콤보 change 이벤트
								$("#js-proc-info-insp-img-reg-popup-procId-combo").off().on('change', function(){
									
									// 부스 콤보 조회
									retrieveCarLineBooth.carProcInfoInspImgRegPopup.request();
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
						//app.mask.pageUnlock();
					},
					request: function() {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						var params = {
							  service : 'car.common'
							, method  : 'retrieveCarProcIdGroup'
						};
						//app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				}
			};
			
			//-------------------------------------------------
			// 공정별 부스 조회
			//-------------------------------------------------
			var retrieveCarLineBooth = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							var result = carProcInfoMainBoothListTemplate({rows : response.rs});
							$("#js-car-proc-info-main-booth-list").empty().append(result);

							// 부스 버튼 클릭
							$('button[name=js-car-proc-info-main-booth]').off().on('click', function(e) {
								var boothId = $(this).attr("boothId");
								carProcInfoMainBoothClick(boothId);
							});
							var boothId = $('button[name=js-car-proc-info-main-booth]:first').attr("boothId");
							carProcInfoMainBoothClick(boothId);
							
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
				request: function(procId) {
					// ------------------------------------
					// ajax request
					// ------------------------------------
					var params = {
						  service  : 'car.common'
						, method   : 'retrieveCarLineBooth'
						, carPlant : $('#js-car-header-car-plant').val()
						, procId   : procId
					};
					app.mask.pageLock();
					var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
					ajax.done(this.success);
					ajax.fail(this.error);
					ajax.always(this.complete);
				},
				carProcInfoInspRegPopup : {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								gvCarProcInfoInspRegBoothRs = response.rs;
								
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
						//app.mask.pageUnlock();
					},
					request: function(procId) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						var params = {
							  service  : 'car.common'
							, method   : 'retrieveCarLineBooth'
							, carPlant : $('#js-car-header-car-plant').val()
							, procId   : procId
						};
						//app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				},
				carProcInfoInspImgRegPopup : {
					boothId: "",
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
							
							if (message === 'OK') {							
								
								var result = carProcInfoInspRegOptionListTemplate({rows : response.rs});
								$("#js-proc-info-insp-img-reg-popup-booth-combo").empty().append(result);
								
								// 부스 콤보 change 이벤트
								$("#js-proc-info-insp-img-reg-popup-booth-combo").off().on('change', function(){
									
									// 이미지 조회
									retrieveCarProcImage.request();
									
									// 비고 조회
									retrieveCarProcPretreatmentEtc.request();
								});
								
								if(retrieveCarLineBooth.carProcInfoInspImgRegPopup.boothId != ""){
									$("#js-proc-info-insp-img-reg-popup-booth-combo").val(retrieveCarLineBooth.carProcInfoInspImgRegPopup.boothId);
								}
								
								// 이미지 조회
								retrieveCarProcImage.request();
								
								// 비고 조회
								retrieveCarProcPretreatmentEtc.request();
								
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
						//app.mask.pageUnlock();
					},
					request: function(boothId) {
						
						retrieveCarLineBooth.carProcInfoInspImgRegPopup.boothId = "";
						if(boothId != undefined && boothId != ""){
							retrieveCarLineBooth.carProcInfoInspImgRegPopup.boothId = boothId;
						}
						
						// ------------------------------------
						// ajax request
						// ------------------------------------
						var params = {
							  service  : 'car.common'
							, method   : 'retrieveCarLineBooth'
							, carPlant : $('#js-car-header-car-plant').val()
							, procId   : $("#js-proc-info-insp-img-reg-popup-procId-combo").val()
						};
						//app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
				}
			};
			
			//-------------------------------------------------
			// 전처리 및 철판 정보 조회
			//-------------------------------------------------
			var retrieveCarProcPretreatment = {
				success: function(response, status, jqueryXHR) {
					// ------------------------------------
					// response json structure - {message: '', error: '' rs: null}
					// ------------------------------------
					if (typeof response.message !== 'undefined') {
						var message = response.message || '';
						
						if (message === 'OK') {							
							
							console.log("pretreatment");
							console.log(response);
							
							// 전처리 및 철판정보 Set
							var item = response.rs.item;
							for(var i=0 ; i<item.length ; i++){
								
								var procItemNm    = app.utils.trim(item[i].procItemNm);
								var procItemValue = item[i].procItemValue;
								
								if     (procItemNm == "C/SPEED"        ){$("#js-car-proc-info-main-pretreatment-speed").text(procItemValue);}
								else if(procItemNm == "탈지제품명"     ){$("#js-car-proc-info-main-pretreatment-rmv-product").text(procItemValue);}
								else if(procItemNm == "탈지온도"       ){$("#js-car-proc-info-main-pretreatment-rmv-temp").text(item[i].procItemValue);}
								else if(procItemNm == "표면조정제품명" ){$("#js-car-proc-info-main-pretreatment-surf-product").text(item[i].procItemValue);}
								else if(procItemNm == "전처리 제품명(이산 아연 or 지르코늄)" ){$("#js-car-proc-info-main-pretreatment-pre-product").text(item[i].procItemValue);}
								else if(procItemNm == "전처리 온도(이산 아연 or 지르코늄)" ){$("#js-car-proc-info-main-pretreatment-pre-temp").text(item[i].procItemValue);}
								else if(procItemNm == "전처리 업체" ){$("#js-car-proc-info-main-pretreatment-pre-company").text(item[i].procItemValue);}
								else if(procItemNm == "HOOD 소재" ){$("#js-car-proc-info-main-pretreatment-hood").text(item[i].procItemValue);}
								else if(procItemNm == "ROOF 소재" ){$("#js-car-proc-info-main-pretreatment-roof").text(item[i].procItemValue);}
								else if(procItemNm == "기타 소재 1" ){$("#js-car-proc-info-main-pretreatment-etc1").text(item[i].procItemValue);}
								else if(procItemNm == "기타 소재 2" ){$("#js-car-proc-info-main-pretreatment-etc2").text(item[i].procItemValue);}
								else if(procItemNm == "특이사항" ){$("#js-car-proc-info-main-pretreatment-spacial-note").text(item[i].procItemValue);}
								else if(procItemNm == "UPH" ){$("#js-car-proc-info-main-pretreatment-uph").text(item[i].procItemValue);}
							}
							
							// 기타 Set
							var etc = response.rs.etc;
							if(etc.length > 0){
								$("#js-car-proc-info-main-pretreatment-remark").text(etc[0].remark);
							}
							
							// 이미지 Set
							var image = response.rs.image;
							if(image.length > 0){
								$("#js-car-proc-info-main-pretreatment-image").attr("src", image[0].procItemImg);
							}
							
							// 첨부파일 Set
							var file = response.rs.file;
							carProcInfoMainFileHandler.attachFileHandler.setItems(file || []);
							
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
					
					// 결과 정보 초기화
					$("[name=js-car-proc-info-main-pretreatment-result-data]").text("");
					$("#js-car-proc-info-main-pretreatment-image").attr("src", "");
					
					
					var params = {
						  service  : 'car.procItem'
						, method   : 'retrieveCarProcPretreatment'
						, carPlant : $('#js-car-header-car-plant').val()
						, procId   : $('a[name=js-car-proc-info-main-proc-group].active').attr("procId")
						, boothId  : $('button[name=js-car-proc-info-main-booth].on').attr("boothId")
						, procType : "T11001"	// 고정값
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
	
	<!-- 공정 항목 수정 팝업  [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-car-proc-info-insp-reg-popup" class="wp-pop-layer wp-pop-w940 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="공정 항목 관리"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-car-proc-info-insp-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
	    	</div>
	        <div class="wp-pop-conts">
			<!-- scroll Area -->
			<div class="wp-pop-cont-scrollable">
	            <!--content //-->
			<!-- 기본 정보 -->
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption><spring:message code="TODO.KEY" text="공정 항목 관리"/></caption>
					<colgroup>
						<col style="width:14%">
						<col style="width:86%;">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="수정일자"/></th>
							<td class="wp-al"><input type="text" id="js-car-proc-info-insp-reg-popup-date" title="내용입력" class="wp-inp-datepicker" placeholder="<spring:message code='TODO.KEY' text='날짜입력'/>"></td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="등록자"/></th>
							<td  class="wp-al wp-vm">
								<input type="text" id="js-car-proc-info-insp-reg-popup-emp-name" title="내용입력" class="wp-wd108" disabled="disabled">
								<input type="hidden" id="js-car-proc-info-insp-reg-popup-emp">
								<button type="button" class="wp-btn small gray cr3" id="js-car-proc-info-insp-reg-popup-emp-retrieve-button" data-link="js-car-emp-popup" data-depth="2"><spring:message code="TODO.KEY" text="조회"/></button>
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="공정 개선 정보"/></th>
							<td  class="wp-al wp-vm">
								<div class="wp-ui-select wp-wd100p">
									<select title="항목 개수 설정" id="js-car-proc-info-insp-reg-popup-proc-imprv-info-combo">
									</select>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="wp-clearfix"><button type="button" class="wp-btn small white bgray plus wp-mb5 wp-fr" id="js-car-proc-info-insp-reg-popup-add-button"><spring:message code="TODO.KEY" text="추가"/></button></div>
			<!-- 기본 정보 -->
			<div class="wp-table-st1">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:15%">
						<col style="width:10%">
						<col style="width:15%">
						<col style="width:15%">
						<col style="width:15%">
						<col style="width:15%">
						<col style="width:15%">
					</colgroup>
					<thead>
						<tr>
							<th><spring:message code="TODO.KEY" text="공정"/></th>
							<th><spring:message code="TODO.KEY" text="부스"/></th>
							<th><spring:message code="TODO.KEY" text="분류(대)"/></th>
							<th><spring:message code="TODO.KEY" text="분류(소)"/></th>
							<th><spring:message code="TODO.KEY" text="항목"/></th>
							<th><spring:message code="TODO.KEY" text="변경 전"/></th>
							<th><spring:message code="TODO.KEY" text="변경 후"/></th>
						</tr>
					</thead>
					<tbody id="js-car-proc-info-insp-reg-popup-list">
					</tbody>
				</table>
			</div>
		<!-- // scroll Area -->
		</div>
		<input type="hidden" id="js-car-proc-info-insp-reg-popup-procid" >
		<input type="hidden" id="js-car-proc-info-insp-reg-popup-boothid">
		<div class="wp-btn-area">
			<button type="button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18" id="js-car-proc-info-insp-reg-popup-save-button"><spring:message code="TODO.KEY" text="저장"/></button>
		</div>
		</div>
		</div>
	</div>
	<!-- 공정 항목 수정 팝업  [END] -->
	
	
	<!-- 항목 리스트 - 스크립트-->
	<script id="js-template-car-proc-info-insp-reg-popup-list" type="text/x-handlebars-template">		
		{{#rows}}
			<tr>
				<td>
					<div class="wp-ui-select wp-wd100p">
						<select title="항목 개수 설정" name="js-car-proc-info-insp-reg-popup-proc-group-combo" data-index="{{index}}">
						</select>
					</div>
				</td>
				<td>
					<div class="wp-ui-select wp-wd100p">
						<select title="항목 개수 설정" name="js-car-proc-info-insp-reg-popup-booth-combo" data-index="{{index}}">
						</select>
					</div>
				</td>
				<td>
					<div class="wp-ui-select wp-wd100p">
						<select title="항목 개수 설정" name="js-car-proc-info-insp-reg-popup-type-large-combo" data-index="{{index}}">
						</select>
					</div>
				</td>
				<td>
					<div class="wp-ui-select wp-wd100p">
						<select title="항목 개수 설정" name="js-car-proc-info-insp-reg-popup-type-small-combo" data-index="{{index}}">
						</select>
					</div>
				</td>
				<td>
					<div class="wp-ui-select wp-wd100p">
						<select title="항목 개수 설정" name="js-car-proc-info-insp-reg-popup-item-combo" data-index="{{index}}">
						</select>
					</div>
				</td>
				<td><input type="text" name="js-car-proc-info-insp-reg-popup-modify-before" title="내용입력" class="wp-wd100p" data-index="{{index}}" procItemNm="" procItemUnit="" procItemValueType="" disabled="disabled"></td>
				<td><input type="text" name="js-car-proc-info-insp-reg-popup-modify-after"  title="내용입력" class="wp-wd100p" data-index="{{index}}"></td>
			</tr>
		{{/rows}}
	</script>
	
	<!-- Combo Option 리스트 - 스크립트-->
	<script id="js-template-car-proc-info-insp-reg-popup-list-option-list" type="text/x-handlebars-template">		
		{{#rows}}
			<option value="{{code}}">{{codeNm}}</option>
		{{/rows}}
	</script>
	
		
	<!-- 공정 항목 수정 팝업 - 스크립트 [START] -->
	<script type="text/javascript">
	
	//메시지 파라미터 정의함수
	var messageParam = {
		title: '<spring:message code="TODO.KEY" text="에러"/>',
		message: '',
		confirmButtonText: '<spring:message code="TODO.KEY" text="확인"/>'				
	};
	
	var carProcInfoInspRegDataListTemplate;
	var carProcInfoInspRegOptionListTemplate;
	
	var gvCarProcInfoInspRegProcIdGroupRs;	// 공정 코드 rs
	var gvCarProcInfoInspRegBoothRs;		// 부스 코드 rs
	var gvCarProcInfoInspRegTypeLargeRs;	// 분류(대) 코드 rs
	var gvCarProcInfoInspRegTypeSmallRs;	// 분류(소) 코드 rs
	var gvCarProcInfoInspRegItemRs;			// 항목 코드 rs
	
	//------------------------------------------------
	// 초기화
	// ------------------------------------------------
	var initCarProcInfoInspRegPopup = function(param) {
		
		// 입력값 초기화
		var date = app.utils.formatDate(new Date(), "YYYYMMDD");
		$("#js-car-proc-info-insp-reg-popup-date").val(date);
		$("#js-car-proc-info-insp-reg-popup-date").mask('9999-99-99');
		$("#js-car-proc-info-insp-reg-popup-emp-name").val("${sessionScope.LoginUserInfo.empName} ${sessionScope.LoginUserInfo.empRank}");
		$("#js-car-proc-info-insp-reg-popup-emp").val("${sessionScope.LoginUserInfo.empNum}");
		$("#js-car-proc-info-insp-reg-popup-list").empty();
		gvCarProcInfoInspRegProcIdGroupRs = null;
		gvCarProcInfoInspRegBoothRs       = null;
		gvCarProcInfoInspRegTypeLargeRs   = null;
		gvCarProcInfoInspRegTypeSmallRs   = null;
		gvCarProcInfoInspRegItemRs        = null;
		
		// Handlebar 초기화
		initCarProcInfoInspRegPopupHandlebarsTemplate();
		
		// 공정 개선 정보 조회(콤보)
		retrieveCarProcTitle.request();
		
		// 공정 콤보 조회
		retrieveCarProcIdGroup.carProcInfoInspRegPopup.request();
		
		// Parameter Set
		$("#js-car-proc-info-insp-reg-popup-procid").val("");
		$("#js-car-proc-info-insp-reg-popup-boothid").val("");
		if(param != undefined){
			if(param.procId != undefined && param.boothId != undefined){
				$("#js-car-proc-info-insp-reg-popup-procid").val(param.procId);
				$("#js-car-proc-info-insp-reg-popup-boothid").val(param.boothId);
			}
		}
		
		// 공정 항목 관리 조회
		retrieveCarProcItem.request();
		
		// [추가] 버튼 클릭
		$("#js-car-proc-info-insp-reg-popup-add-button").off().on('click', function(){
			carProcInfoInspRegPopupAddRow();
		});
		
		// 등록자 조회 버튼 클릭
		$('#js-car-proc-info-insp-reg-popup-emp-retrieve-button').off().on('click', function(){
			fn_openPop($(this));
			initCarEmpPopup("js-car-proc-info-insp-reg-popup");
		});
		
		// 저장 버튼 클릭
		$('#js-car-proc-info-insp-reg-popup-save-button').off().on('click', function(){
			saveCarProcInfoInspRegPopup();
		});
	};
	
	// ------------------------------------------------
	// 담당자 Data 적용
	// ------------------------------------------------
	var applyCarProcInfoInspRegPopupEmpData = function(data) {
		$("#js-car-proc-info-insp-reg-popup-emp-name").val(data.empNm);
		$("#js-car-proc-info-insp-reg-popup-emp").val(data.emp);
	};
	
	// ------------------------------------------------
	// 저장 처리
	// ------------------------------------------------
	var saveCarProcInfoInspRegPopup = function() {
		
		var carPlant = $('#js-car-header-car-plant').val();
		var date     = $("#js-car-proc-info-insp-reg-popup-date").val();
		var emp      = $('#js-car-proc-info-insp-reg-popup-emp').val();
		
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
			return;
		}
		if(app.utils.isEmpty(date)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="수정일자는 필수입력 항목입니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$('#js-car-proc-info-insp-reg-popup-date').focus();
					}
				}
			});
			return;
		}
		if(app.utils.isEmpty(emp)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="등록자는 필수입력 항목입니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$('#js-car-proc-info-insp-reg-popup-emp').focus();
					}
				}
			});
			return;
		}
		var objLength = $("#js-car-proc-info-insp-reg-popup-list").find("tr").length;
		for(var i=0 ; i<objLength ; i++){
			procId            = $("[name=js-car-proc-info-insp-reg-popup-proc-group-combo][data-index=" + i + "]").val();
			boothId           = $("[name=js-car-proc-info-insp-reg-popup-booth-combo][data-index=" + i + "]").val();
			procTypeId1       = $("[name=js-car-proc-info-insp-reg-popup-type-large-combo][data-index=" + i + "]").val();
			procTypeId2       = $("[name=js-car-proc-info-insp-reg-popup-type-small-combo][data-index=" + i + "]").val();
			procItemId        = $("[name=js-car-proc-info-insp-reg-popup-item-combo][data-index=" + i + "]").val();
			procItemNm        = $("[name=js-car-proc-info-insp-reg-popup-modify-before][data-index=" + i + "]").attr("procItemNm");
			procItemUnit      = $("[name=js-car-proc-info-insp-reg-popup-modify-before][data-index=" + i + "]").attr("procItemUnit");
			procItemValueType = $("[name=js-car-proc-info-insp-reg-popup-modify-before][data-index=" + i + "]").attr("procItemValueType");
			procItemValue     = $("[name=js-car-proc-info-insp-reg-popup-modify-after][data-index=" + i + "]").val();
			
			if(app.utils.isEmpty(procId)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="공정코드가 없습니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$("[name=js-car-proc-info-insp-reg-popup-proc-group-combo][data-index=" + i + "]").focus();
						}
					}
				});
				return;
			}
			if(app.utils.isEmpty(boothId)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="부스코드가 없습니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$("[name=js-car-proc-info-insp-reg-popup-booth-combo][data-index=" + i + "]").focus();
						}
					}
				});
				return;
			}
			if(app.utils.isEmpty(procTypeId1)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="분류(대) 코드가 없습니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$("[name=js-car-proc-info-insp-reg-popup-type-large-combo][data-index=" + i + "]").focus();
						}
					}
				});
				return;
			}
			if(app.utils.isEmpty(procTypeId2)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="분류(소) 코드가 없습니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$("[name=js-car-proc-info-insp-reg-popup-type-small-combo][data-index=" + i + "]").focus();
						}
					}
				});
				return;
			}
			if(app.utils.isEmpty(procItemId)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="항목 코드가 없습니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$("[name=js-car-proc-info-insp-reg-popup-item-combo][data-index=" + i + "]").focus();
						}
					}
				});
				return;
			}
			if(app.utils.isEmpty(procItemNm)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="변경전 항목명이 없습니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
						}
					}
				});
				return;
			}
			if(app.utils.isEmpty(procItemValueType)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="변경전 항목타입이 없습니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
						}
					}
				});
				return;
			}
			if(app.utils.isEmpty(procItemValue)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="입력된 변경 후 값이 없습니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
					, callback          : {
						confirm: function() {
							$("[name=js-car-proc-info-insp-reg-popup-modify-after][data-index=" + i + "]").focus();
						}
					}
				});
				return;
			}
			
		}
		app.message.confirm({
			  title             : '<spring:message code="TODO.KEY" text="알림"/>'
			, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
			, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
			, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
			, callback          : {
				confirm: function() {
					// 저장
					saveCarProc.request();
				}
			}
		});
	};
	
	// ------------------------------------------------
	// 항목 Row 추가
	// ------------------------------------------------
	var carProcInfoInspRegPopupAddRow = function() {
		
		var index = $("[name=js-car-proc-info-insp-reg-popup-proc-group-combo]:last").attr("data-index");
		
		index = index != undefined ? Number(index)+1 : 0;
		
		// Row 추가
		var param = [{
				index : index 
		}];
		var result = carProcInfoInspRegDataListTemplate({rows : param});
		$("#js-car-proc-info-insp-reg-popup-list").append(result);
		
		// 공정 콤보 Set
		carProcInfoInspRegPopupProcComboSet();
		
		// 부스 콤보 set
		carProcInfoInspRegPopupBoothComboSet();
		
		// 분류(대) 콤보 set
		carProcInfoInspRegPopupTypeLargeComboSet();
		
		// 분류(소) 콤보 set
		carProcInfoInspRegPopupTypeSmallComboSet();
		
		// 항목 콤보 set
		carProcInfoInspRegPopupItemComboSet();
		
		// 변경 전 데이터 조회
		retrieveCarProcBefValue.request();
	};
	
	// ------------------------------------------------
	// 공정 콤보 Set
	// ------------------------------------------------
	var carProcInfoInspRegPopupProcComboSet = function() {

		// 공정콤보 set
		var result = carProcInfoInspRegOptionListTemplate({rows : gvCarProcInfoInspRegProcIdGroupRs});
		$("[name=js-car-proc-info-insp-reg-popup-proc-group-combo]:last").empty().append(result);
		
		// 공정콤보 change 이벤트
		$("[name=js-car-proc-info-insp-reg-popup-proc-group-combo]").off().on('change', function(){
			var index = $(this).attr("data-index");
			
			// 부스 콤보 set
			carProcInfoInspRegPopupBoothComboSet(index);
			
			// 분류(대) 콤보 set
			carProcInfoInspRegPopupTypeLargeComboSet(index);
			
			// 분류(소) 콤보 set
			carProcInfoInspRegPopupTypeSmallComboSet(index);
			
			// 항목 콤보 set
			carProcInfoInspRegPopupItemComboSet(index);
			
			// 변경 전 데이터 조회
			retrieveCarProcBefValue.request(index);
		});
	};

	// ------------------------------------------------
	// 부스 콤보 Set
	// ------------------------------------------------
	var carProcInfoInspRegPopupBoothComboSet = function(index) {
		var groupComboLast = null;
		var $boothCombo    = null;
		
		if(typeof index == "undefined"){
			groupComboLast = $("[name=js-car-proc-info-insp-reg-popup-proc-group-combo]:last").val();
			$boothCombo = $("[name=js-car-proc-info-insp-reg-popup-booth-combo]:last");
		} else {
			groupComboLast = $("[name=js-car-proc-info-insp-reg-popup-proc-group-combo][data-index=" + index + "]").val();
			$boothCombo = $("[name=js-car-proc-info-insp-reg-popup-booth-combo][data-index=" + index + "]");
		}
		retrieveCarLineBooth.carProcInfoInspRegPopup.request(groupComboLast);
		var result = carProcInfoInspRegOptionListTemplate({rows : gvCarProcInfoInspRegBoothRs});
		$boothCombo.empty().append(result);
		
		// 부스 콤보 change 이벤트
		$("[name=js-car-proc-info-insp-reg-popup-booth-combo]").off().on('change', function(){
			var index = $(this).attr("data-index");
			
			// 항목 콤보 set
			carProcInfoInspRegPopupItemComboSet(index);
			
			// 변경 전 데이터 조회
			retrieveCarProcBefValue.request(index);
		});
	};
	
	// ------------------------------------------------
	// 분류(대) 콤보 Set
	// ------------------------------------------------
	var carProcInfoInspRegPopupTypeLargeComboSet = function(index) {
		var groupComboLast  = null;
		var $typeLargeCombo = null;
		
		if(typeof index == "undefined"){
			groupComboLast = $("[name=js-car-proc-info-insp-reg-popup-proc-group-combo]:last").val();
			$typeLargeCombo = $("[name=js-car-proc-info-insp-reg-popup-type-large-combo]:last");
		} else {
			groupComboLast = $("[name=js-car-proc-info-insp-reg-popup-proc-group-combo][data-index=" + index + "]").val();
			$typeLargeCombo = $("[name=js-car-proc-info-insp-reg-popup-type-large-combo][data-index=" + index + "]");
		}
		retrieveCarProcInfoType1.request(groupComboLast);
		var result = carProcInfoInspRegOptionListTemplate({rows : gvCarProcInfoInspRegTypeLargeRs});
		$typeLargeCombo.empty().append(result);
		
		// 분류(대)콤보 change 이벤트
		$("[name=js-car-proc-info-insp-reg-popup-type-large-combo]").off().on('change', function(){
			var index = $(this).attr("data-index");
			
			// 분류(소) 콤보 set
			carProcInfoInspRegPopupTypeSmallComboSet(index);
			
			// 항목 콤보 set
			carProcInfoInspRegPopupItemComboSet(index);
			
			// 변경 전 데이터 조회
			retrieveCarProcBefValue.request(index);
		});
	};

	// ------------------------------------------------
	// 분류(소) 콤보 Set
	// ------------------------------------------------
	var carProcInfoInspRegPopupTypeSmallComboSet = function(index) {
		var groupComboLast     = null;
		var typeLargeComboLast = null;
		var $typeSmallCombo    = null;
		
		if(typeof index == "undefined"){
			groupComboLast = $("[name=js-car-proc-info-insp-reg-popup-proc-group-combo]:last").val();
			typeLargeComboLast = $("[name=js-car-proc-info-insp-reg-popup-type-large-combo]:last").val();
			$typeSmallCombo = $("[name=js-car-proc-info-insp-reg-popup-type-small-combo]:last");
		} else {
			groupComboLast = $("[name=js-car-proc-info-insp-reg-popup-proc-group-combo][data-index=" + index + "]").val();
			typeLargeComboLast = $("[name=js-car-proc-info-insp-reg-popup-type-large-combo][data-index=" + index + "]").val();
			$typeSmallCombo = $("[name=js-car-proc-info-insp-reg-popup-type-small-combo][data-index=" + index + "]");
		}
		retrieveCarProcInfoType2.request(groupComboLast, typeLargeComboLast);
		var result = carProcInfoInspRegOptionListTemplate({rows : gvCarProcInfoInspRegTypeSmallRs});
		$typeSmallCombo.empty().append(result);
		
		// 분류(소)콤보 change 이벤트
		$("[name=js-car-proc-info-insp-reg-popup-type-small-combo]").off().on('change', function(){
			var index = $(this).attr("data-index");
			
			// 항목 콤보 set
			carProcInfoInspRegPopupItemComboSet(index);
			
			// 변경 전 데이터 조회
			retrieveCarProcBefValue.request(index);
		});
	};
	
	// ------------------------------------------------
	// 항목 콤보 Set
	// ------------------------------------------------
	var carProcInfoInspRegPopupItemComboSet = function(index) {
		var groupComboLast     = null;
		var boothComboLast     = null;
		var typeLargeComboLast = null;
		var typeSmallComboLast = null;
		var $itemCombo         = null;
		
		if(typeof index == "undefined"){
			groupComboLast     = $("[name=js-car-proc-info-insp-reg-popup-proc-group-combo]:last").val();
			boothComboLast     = $("[name=js-car-proc-info-insp-reg-popup-booth-combo]:last").val();
			typeLargeComboLast = $("[name=js-car-proc-info-insp-reg-popup-type-large-combo]:last").val();
			typeSmallComboLast = $("[name=js-car-proc-info-insp-reg-popup-type-small-combo]:last").val();
			$itemCombo         = $("[name=js-car-proc-info-insp-reg-popup-item-combo]:last");
		} else {
			groupComboLast     = $("[name=js-car-proc-info-insp-reg-popup-proc-group-combo][data-index=" + index + "]").val();
			boothComboLast     = $("[name=js-car-proc-info-insp-reg-popup-booth-combo][data-index=" + index + "]").val();
			typeLargeComboLast = $("[name=js-car-proc-info-insp-reg-popup-type-large-combo][data-index=" + index + "]").val();
			typeSmallComboLast = $("[name=js-car-proc-info-insp-reg-popup-type-small-combo][data-index=" + index + "]").val();
			$itemCombo         = $("[name=js-car-proc-info-insp-reg-popup-item-combo][data-index=" + index + "]");
		}
		retrieveCarProcItemId.request(groupComboLast, boothComboLast, typeLargeComboLast, typeSmallComboLast);
		var result = carProcInfoInspRegOptionListTemplate({rows : gvCarProcInfoInspRegItemRs});
		$itemCombo.empty().append(result);
		
		// 항목 콤보 change 이벤트
		$("[name=js-car-proc-info-insp-reg-popup-item-combo]").off().on('change', function(){
			var index = $(this).attr("data-index");
			
			// 변경 전 데이터 조회
			retrieveCarProcBefValue.request(index);
		});
	};
	
	// ------------------------------------------------
	// Handlebar 초기화
	// ------------------------------------------------
	var initCarProcInfoInspRegPopupHandlebarsTemplate = function() {
		
		// 데이터 리스트
		var source = $('#js-template-car-proc-info-insp-reg-popup-list').html();
		carProcInfoInspRegDataListTemplate = Handlebars.compile(source);
		
		// 콤보 option 리스트
		var source = $('#js-template-car-proc-info-insp-reg-popup-list-option-list').html();
		carProcInfoInspRegOptionListTemplate = Handlebars.compile(source);
	};
	
	//-------------------------------------------------
	// 공정 항목 관리 조회
	//-------------------------------------------------
	var retrieveCarProcItem = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {							
					
					for(var i=0 ; i<response.rs.length ; i++){
						carProcInfoInspRegPopupAddRow();
						$("[name=js-car-proc-info-insp-reg-popup-proc-group-combo]:last").val(response.rs[i].procId);
						$("[name=js-car-proc-info-insp-reg-popup-booth-combo]:last").val(response.rs[i].boothId);
						$("[name=js-car-proc-info-insp-reg-popup-type-large-combo]:last").val(response.rs[i].procTypeId1);
						$("[name=js-car-proc-info-insp-reg-popup-type-small-combo]:last").val(response.rs[i].procTypeId2);
						$("[name=js-car-proc-info-insp-reg-popup-item-combo]:last").val(response.rs[i].procItemId);
						$("[name=js-car-proc-info-insp-reg-popup-modify-before]:last").val(response.rs[i].prevValue);
						$("[name=js-car-proc-info-insp-reg-popup-modify-after]:last").val(response.rs[i].currentValue);
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
			$("#js-car-proc-info-insp-reg-popup-list").empty();
			
			var procId   = $("#js-car-proc-info-insp-reg-popup-procid").val();
			var boothId  = $("#js-car-proc-info-insp-reg-popup-boothid").val();
			var docNo    = $("#js-car-proc-info-insp-reg-popup-proc-imprv-info-combo").val();
			
			if(app.utils.isEmpty(procId)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="공정코드가 없습니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				});
				return;
			}
			if(app.utils.isEmpty(boothId)){
				app.message.alert({
					  title             : '<spring:message code="TODO.KEY" text="알림"/>'
					, message           : '<spring:message code="TODO.KEY" text="부스코드가 없습니다."/>'
					, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				});
				return;
			}
			var params = {
				  service  : 'car.procItem'
				, method   : 'retrieveCarProcItem'
				, carPlant : $('#js-car-header-car-plant').val()
				, procId   : procId
				, boothId  : boothId
				, docNo    : docNo
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: true});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	//-------------------------------------------------
	// 분류(대) 조회
	//-------------------------------------------------
	var retrieveCarProcInfoType1 = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				
				if (message === 'OK') {							
					gvCarProcInfoInspRegTypeLargeRs = response.rs;
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
			//app.mask.pageUnlock();
		},
		request: function(procId) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var params = {
				  service  : 'car.common'
				, method   : 'retrieveCarProcInfoType1'
				, carPlant : $('#js-car-header-car-plant').val()
				, procId   : procId
			};
			//app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};

	//-------------------------------------------------
	// 분류(소) 조회
	//-------------------------------------------------
	var retrieveCarProcInfoType2 = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				if (message === 'OK') {							
					gvCarProcInfoInspRegTypeSmallRs = response.rs;
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
			//app.mask.pageUnlock();
		},
		request: function(procId, type1) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var params = {
				  service  : 'car.common'
				, method   : 'retrieveCarProcInfoType2'
				, carPlant : $('#js-car-header-car-plant').val()
				, procId   : procId
				, type1    : type1
			};
			//app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};

	//-------------------------------------------------
	// 항목 콤보 조회
	//-------------------------------------------------
	var retrieveCarProcItemId = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				if (message === 'OK') {							
					var resultRs = [];
					$.each(response.rs, function(index, item){
						resultRs.push({
							  code   : item.procItemId
							, codeNm : item.procItemNm
						});
					});
					gvCarProcInfoInspRegItemRs = resultRs;
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
			//app.mask.pageUnlock();
		},
		request: function(procId, boothId, type1, type2) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var params = {
				  service  : 'car.procItem'
				, method   : 'retrieveCarProcItemId'
				, carPlant : $('#js-car-header-car-plant').val()
				, procId   : procId
				, boothId  : boothId
				, type1    : type1
				, type2    : type2
			};
			//app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};

	//-------------------------------------------------
	// 변경 전 데이터 조회
	//-------------------------------------------------
	var retrieveCarProcBefValue = {
		index : 0,
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				if (message === 'OK') {							
					
					$("[name=js-car-proc-info-insp-reg-popup-modify-after][data-index=" + retrieveCarProcBefValue.index + "]").val("");
					var $beforeObj = $("[name=js-car-proc-info-insp-reg-popup-modify-before][data-index=" + retrieveCarProcBefValue.index + "]");
					$beforeObj.attr("procItemNm",        "");
					$beforeObj.attr("procItemUnit",      "");
					$beforeObj.attr("procItemValueType", "");
					$beforeObj.val("");
					
					if(response.rs.length > 0){
						$beforeObj.attr("procItemNm",        response.rs[0].procItemNm);
						$beforeObj.attr("procItemUnit",      response.rs[0].procItemUnit);
						$beforeObj.attr("procItemValueType", response.rs[0].procItemValueType);
						$beforeObj.val(response.rs[0].procItemValue);
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
			//app.mask.pageUnlock();
		},
		request: function(index) {
			// ------------------------------------
			// ajax request
			// ------------------------------------
			var procId  = "";
			var boothId = "";
			var type1   = "";
			var type2   = "";
			var itemId  = "";
			if(typeof index == "undefined"){
				procId  = $("[name=js-car-proc-info-insp-reg-popup-proc-group-combo]:last").val();
				boothId = $("[name=js-car-proc-info-insp-reg-popup-booth-combo]:last").val();
				type1   = $("[name=js-car-proc-info-insp-reg-popup-type-large-combo]:last").val();
				type2   = $("[name=js-car-proc-info-insp-reg-popup-type-small-combo]:last").val();
				itemId  = $("[name=js-car-proc-info-insp-reg-popup-item-combo]:last").val();
				retrieveCarProcBefValue.index = $("[name=js-car-proc-info-insp-reg-popup-item-combo]:last").attr("data-index");
			} else {
				procId  = $("[name=js-car-proc-info-insp-reg-popup-proc-group-combo][data-index=" + index + "]").val();
				boothId = $("[name=js-car-proc-info-insp-reg-popup-booth-combo][data-index=" + index + "]").val();
				type1   = $("[name=js-car-proc-info-insp-reg-popup-type-large-combo][data-index=" + index + "]").val();
				type2   = $("[name=js-car-proc-info-insp-reg-popup-type-small-combo][data-index=" + index + "]").val();
				itemId  = $("[name=js-car-proc-info-insp-reg-popup-item-combo][data-index=" + index + "]").val();
				retrieveCarProcBefValue.index = index;
			}
			var params = {
				  service  : 'car.procItem'
				, method   : 'retrieveCarProcBefValue'
				, carPlant : $('#js-car-header-car-plant').val()
				, procId   : procId
				, boothId  : boothId
				, type1    : type1
				, type2    : type2
				, itemId   : itemId
			};
			//app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async:false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	//-------------------------------------------------
	// 공정 개선 정보 콤보 조회
	//-------------------------------------------------
	var retrieveCarProcTitle = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				if (message === 'OK') {							
					var resultRs = [];
					$.each(response.rs, function(index, item){
						resultRs.push({
							  code   : item.docNo
							, codeNm : item.title
						});
					});
					
					$("#js-car-proc-info-insp-reg-popup-proc-imprv-info-combo").empty();
					$("#js-car-proc-info-insp-reg-popup-proc-imprv-info-combo").append("<option value=''>[ 전체 ]</option>");
					
					var result = carProcInfoInspRegOptionListTemplate({rows : resultRs});
					$("#js-car-proc-info-insp-reg-popup-proc-imprv-info-combo").append(result);
					
					
					$("#js-car-proc-info-insp-reg-popup-proc-imprv-info-combo").off().on('change', function(){
						// 공정 항목 관리 조회
						retrieveCarProcItem.request();
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
				  service  : 'car.procItem'
				, method   : 'retrieveCarProcTitle'
				, carPlant : $('#js-car-header-car-plant').val()
				, docNo    : ""
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async:false});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	//-------------------------------------------------
	// 공정 항목 관리 저장
	//-------------------------------------------------
	var saveCarProc = {
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
					
					// 저장 후 재조회
					retrieveCarProcItem.request();
					
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
			
			var procInfo = [];
			var carPlant  = $('#js-car-header-car-plant').val();
			var objLength = $("#js-car-proc-info-insp-reg-popup-list").find("tr").length;
			for(var i=0 ; i<objLength ; i++){
				procId            = $("[name=js-car-proc-info-insp-reg-popup-proc-group-combo][data-index=" + i + "]").val();
				boothId           = $("[name=js-car-proc-info-insp-reg-popup-booth-combo][data-index=" + i + "]").val();
				procTypeId1       = $("[name=js-car-proc-info-insp-reg-popup-type-large-combo][data-index=" + i + "]").val();
				procTypeId2       = $("[name=js-car-proc-info-insp-reg-popup-type-small-combo][data-index=" + i + "]").val();
				procItemId        = $("[name=js-car-proc-info-insp-reg-popup-item-combo][data-index=" + i + "]").val();
				procItemNm        = $("[name=js-car-proc-info-insp-reg-popup-modify-before][data-index=" + i + "]").attr("procItemNm");
				procItemUnit      = $("[name=js-car-proc-info-insp-reg-popup-modify-before][data-index=" + i + "]").attr("procItemUnit");
				procItemValueType = $("[name=js-car-proc-info-insp-reg-popup-modify-before][data-index=" + i + "]").attr("procItemValueType");
				procItemValue     = $("[name=js-car-proc-info-insp-reg-popup-modify-after][data-index=" + i + "]").val();
				
				procInfo.push({
					  carPlant          : carPlant
					, procId            : procId      
					, boothId           : boothId    
					, procTypeId1       : procTypeId1
					, procTypeId2       : procTypeId2
					, procItemId        : procItemId
					, procItemNm        : procItemNm       
					, procItemUnit      : procItemUnit     
					, procItemValueType : procItemValueType
					, procItemValue     : procItemValue        
				});
			}
			var params = {
				  service  : 'car.procItem'
				, method   : 'saveCarProc'
				, date     : $("#js-car-proc-info-insp-reg-popup-date").val().replace(/-/gi, "")
				, emp      : $('#js-car-proc-info-insp-reg-popup-emp').val()
				, docNo    : $("#js-car-proc-info-insp-reg-popup-proc-imprv-info-combo").val()
				, procInfo : JSON.stringify(procInfo)
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	</script>
	<!-- 공정 항목 수정 팝업 - 스크립트 [END] -->
	
	
		
	<!-- 이미지 등록 팝업 [START] -->
	<div class="wp-dim-layer">
	    <div class="wp-dimBg"></div>
	    <div id="js-proc-info-insp-img-reg-popup" class="wp-pop-layer wp-pop-w800 wp-box-sizing wp-car-popup">
	    	<div class="wp-pop-title">
	    		<h1><spring:message code="TODO.KEY" text="공정 이미지/특이사항 관리"/></h1>
	    		<button type="button" class="wp-btn-close-layer wp-spr-btn" id="js-proc-info-insp-img-reg-popup-close-button"><span><spring:message code="TODO.KEY" text="닫기"/></span></button>
	    	</div>
	        <div class="wp-pop-conts">
		<!-- scroll Area -->
		<div class="wp-pop-cont-scrollable">
	            <!--content //-->
			<!-- 기본 정보 -->
			<div class="wp-ui-select wp-wd190">
				<select title="항목 개수 설정" id="js-proc-info-insp-img-reg-popup-procId-combo">
				</select>
			</div>
			<div class="wp-ui-select wp-wd190">
				<select title="항목 개수 설정" id="js-proc-info-insp-img-reg-popup-booth-combo">
				</select>
			</div>
			<h2 class="wp-cont-title wp-mt20"><spring:message code="TODO.KEY" text="공정도"/></h2>
			<div class="wp-picture">
				<img src="" id="js-proc-info-insp-img-reg-popup-image" class="wp-wd100p wp-h300">
			</div>
			<div class="wp-table-st1 wp-issue-apply">
				<table>
					<caption><spring:message code="TODO.KEY" text="공정 이미지"/></caption>
					<colgroup>
						<col style="width:14%">
						<col style="width:86%;">
					</colgroup>
					<tbody>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="공정 이미지"/></th>
							<td  class="wp-al wp-vm">
								<input type="text" id="js-proc-info-insp-img-reg-popup-image-path" class="wp-wd560" disabled="disabled">
								<button type="button" class="wp-btn small gray cr3" id="js-proc-info-insp-img-reg-popup-image-find-button"><spring:message code="TODO.KEY" text="찾기"/></button>
								<input type="file" id="js-proc-info-insp-img-reg-popup-image-target" style="display: none;">
							</td>
						</tr>
						<tr>
							<th class="wp-ar"><spring:message code="TODO.KEY" text="특이사항"/></th>
							<td  class="wp-al wp-vm">
								<input type="text" id="js-proc-info-insp-img-reg-popup-remark" class="wp-wd560">
							</td>
						</tr>
					</tbody>
				</table>
	            </div>
	
		<!-- // scroll Area -->
		</div>
	
		<div class="wp-btn-area">
			<button type="button" id="js-proc-info-insp-img-reg-popup-cancel-button" class="wp-btn big gray cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="취소"/></button>
			<button type="button" id="js-proc-info-insp-img-reg-popup-save-button" class="wp-btn big blue1 cr3 wp-pl18 wp-pr18"><spring:message code="TODO.KEY" text="저장"/></button>
		</div>
		
	        </div>
	    </div>
	</div>	
	<!-- 이미지 등록 팝업 [END] -->
	
	
	<!-- 이미지 등록 팝업 - 스크립트 [START] -->
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
	var initCarProcInfoInspImgRegPopup = function(param) {
		
		// 초기화
		$("#js-proc-info-insp-img-reg-popup-image").attr("src", "");
		$("#js-proc-info-insp-img-reg-popup-image-path").val("");
		$("#js-proc-info-insp-img-reg-popup-image-target").val("");
		
		// Handlebar 초기화
		initCarProcInfoInspRegPopupHandlebarsTemplate();
		
		// 이미지 업로드 handler 초기화
		carProcInfoInspImgRegPopupHandler.init();
		
		// 공정 콤보 조회
		retrieveCarProcIdGroup.carProcInfoInspImgRegPopup.request();
		
		if(param != undefined){
			if(param.procId != undefined){
				$("#js-proc-info-insp-img-reg-popup-procId-combo").val(param.procId);
			}
		}
		
		var boothId = "";
		if(param != undefined){
			if(param.boothId != undefined){
				//$("#js-proc-info-insp-img-reg-popup-booth-combo").val(param.boothId);
				boothId = param.boothId;
			}
		}
		
		// 부스 콤보 조회
		retrieveCarLineBooth.carProcInfoInspImgRegPopup.request(boothId);
		
		
		
		// [취소] 버튼 클릭
		$("#js-proc-info-insp-img-reg-popup-cancel-button").off().on('click', function(){
			$("#js-proc-info-insp-img-reg-popup-close-button").click();
		});
		
		// [저장] 버튼 클릭
		$("#js-proc-info-insp-img-reg-popup-save-button").off().on('click', function(){
			saveCarProcInfoInspImgRegPopup();
		});
	};
	
	//-------------------------------------------------
	// 이미지 저장
	//-------------------------------------------------
	var saveCarProcInfoInspImgRegPopup = function(){
		var carPlant    = $('#js-car-header-car-plant').val();
		var procId      = $("#js-proc-info-insp-img-reg-popup-procId-combo").val();
		var boothId     = $("#js-proc-info-insp-img-reg-popup-booth-combo").val();
		var procItemImg = $("#js-proc-info-insp-img-reg-popup-image").attr("src");
		var imgPath     = $("#js-proc-info-insp-img-reg-popup-image-path").val();
		
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
			return;
		}
		if(app.utils.isEmpty(procId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="공정코드는 필수입력 항목입니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$('#js-proc-info-insp-img-reg-popup-procId-combo').focus();
					}
				}
			});
			return;
		}
		if(app.utils.isEmpty(boothId)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="부스코드는 필수입력 항목입니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
						$('#js-proc-info-insp-img-reg-popup-booth-combo').focus();
					}
				}
			});
			return;
		}
		if(app.utils.isEmpty(procItemImg)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="이미지가 선택되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		/* 
		if(app.utils.isEmpty(imgPath)){
			app.message.alert({
				  title             : '<spring:message code="TODO.KEY" text="알림"/>'
				, message           : '<spring:message code="TODO.KEY" text="이미지가 선택되지 않았습니다."/>'
				, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
				, callback          : {
					confirm: function() {
					}
				}
			});
			return;
		}
		*/
		app.message.confirm({
			  title             : '<spring:message code="TODO.KEY" text="알림"/>'
			, message           : '<spring:message code="TODO.KEY" text="저장하시겠습니까?"/>'
			, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
			, cancelButtonText  : '<spring:message code="TODO.KEY" text="취소"/>'
			, callback          : {
				confirm: function() {
					// 저장
					saveCarProcImage.request();
				}
			}
		});
	};
	
	//-------------------------------------------------
	// 비고 조회
	//-------------------------------------------------
	var retrieveCarProcPretreatmentEtc = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				if (message === 'OK') {							
					
					console.log(response);
					
					$("#js-proc-info-insp-img-reg-popup-remark").val("");
					
					if(response.rs.length > 0){
						$("#js-proc-info-insp-img-reg-popup-remark").val(response.rs[0].remark);
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
				  service     : 'car.procItem'
				, method      : 'retrieveCarProcPretreatmentEtc'
				, carPlant    : $('#js-car-header-car-plant').val()
				, procId      : $("#js-proc-info-insp-img-reg-popup-procId-combo").val()
				, boothId     : $("#js-proc-info-insp-img-reg-popup-booth-combo").val()
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	//-------------------------------------------------
	// 이미지 저장
	//-------------------------------------------------
	var saveCarProcImage = {
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
					
					$("#js-proc-info-insp-img-reg-popup-close-button").click();
					
					// 재조회
					carProcInfoMainBoothClick($("#js-proc-info-insp-img-reg-popup-booth-combo").val());
					
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
				  service     : 'car.procItem'
				, method      : 'saveCarProcImage'
				, carPlant    : $('#js-car-header-car-plant').val()
				, procId      : $("#js-proc-info-insp-img-reg-popup-procId-combo").val()
				, boothId     : $("#js-proc-info-insp-img-reg-popup-booth-combo").val()
				, date        : app.utils.formatDate(new Date(), "YYYYMMDD")
				, procItemImg : $("#js-proc-info-insp-img-reg-popup-image").attr("src")
				, remark      : $("#js-proc-info-insp-img-reg-popup-remark").val()
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};

	//-------------------------------------------------
	// 이미지 조회
	//-------------------------------------------------
	var retrieveCarProcImage = {
		success: function(response, status, jqueryXHR) {
			// ------------------------------------
			// response json structure - {message: '', error: '' rs: null}
			// ------------------------------------
			if (typeof response.message !== 'undefined') {
				var message = response.message || '';
				if (message === 'OK') {							
					
					$("#js-proc-info-insp-img-reg-popup-image").attr("src", "");
					$("#js-proc-info-insp-img-reg-popup-image-path").val("");
					$("#js-proc-info-insp-img-reg-popup-image-target").val("");
					
					if(response.rs.length){
						$("#js-proc-info-insp-img-reg-popup-image").attr("src", response.rs[0].procItemImg);
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
				  service  : 'car.procItem'
				, method   : 'retrieveCarProcImage'
				, carPlant : $('#js-car-header-car-plant').val()
				, procId   : $("#js-proc-info-insp-img-reg-popup-procId-combo").val()
				, boothId  : $("#js-proc-info-insp-img-reg-popup-booth-combo").val()
			};
			app.mask.pageLock();
			var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
			ajax.done(this.success);
			ajax.fail(this.error);
			ajax.always(this.complete);
		}
	};
	
	//------------------------------------------------
	// 이미지 파일 등록 
	//------------------------------------------------
	var carProcInfoInspImgRegPopupHandler = {
		selected: function(e) {
			// ------------------------------------
			// 파일 선택 이벤트 핸들러
			// ------------------------------------
			// Chrome, FireFox, Safari 5.1.7+, IE 10+
			// ------------------------------------
			var files = this.files || null;

			if (files != null) {
				var file = files[0] || null;
				var $el = $(this);
				
				if (file != null) {
					// ------------------------------------
					// 이미지 파일을 Base64 형식으로 변경
					// ------------------------------------
					var callbackHandler = function(image) {
						// ------------------------------------
						// image.isOK		: 성공 (true)
						// image.name		: 파일명
						// image.size		: 파일크기 (바이트)
						// image.type		: 파일형식 (image/png)
						// image.src		: 이미지소드 (Base64 인코딩)
						// ------------------------------------
						if((image.isOK === false) && (image.isInvalidImageType === true)){
							app.message.alert({
								  title             : '<spring:message code="TODO.KEY" text="알림"/>'
								, message           : '<spring:message code="TODO.KEY" text="파일 형식(이미지) 위반입니다.<br>jp(e)g, gif, png, bmp, svg 형식만 가능합니다."/>'
								, confirmButtonText : '<spring:message code="TODO.KEY" text="확인"/>'
							});
							return;
						}
						
						if (image.isOK) {
							$('#js-proc-info-insp-img-reg-popup-image').attr('src', image.src);
							$("#js-proc-info-insp-img-reg-popup-image-path").val(image.name);
						}
						
					};
					
					app.file.convertImage2Base64(file, callbackHandler,'N');
				}
				
				// ------------------------------------
				// INPUT 엘리먼트 초기화 수행
				// ------------------------------------
				$el.replaceWith($el.clone(true));
			}else
			{
				console.log('[debug] you are browser does not support file api');
			}
		},
		click: function(e) {
			// ------------------------------------
			// 파일 추가 이벤트 핸들러
			// ------------------------------------
			var data = e.data || {}, selectorTarget = data.selectorTarget || null;

			if (selectorTarget != null) {
				$(selectorTarget).trigger('click');
			}else
			{
				console.log('[debug] missing selectorTarget property');
			}
		},
		init: function() {
			// ------------------------------------
			// 파일 추가 이벤트 바인딩
			// ------------------------------------
			$('#js-proc-info-insp-img-reg-popup-image-target').off().on('change',this.selected);
			$('#js-proc-info-insp-img-reg-popup-image-find-button').off().on('click', {selectorTarget: '#js-proc-info-insp-img-reg-popup-image-target'}, this.click);
		}
	};
	
	</script>
	<!-- 이미지 등록 팝업 - 스크립트 [END] -->
	
	
	
	
	
	</tiles:putAttribute>
	<!-- 팝업 콘텐츠 E -->
</tiles:insertDefinition>
