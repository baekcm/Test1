<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.02.03] ship 제품정보-제품 출고 이력 정보" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.car">

	<!-- 메인 콘텐츠 S -->
	<tiles:putAttribute name="page-content">
	
		<section class="wp-stat">
			<div class="wp-cont wp-car-main">
			<!-- contents -->
				<!-- 지도 공장 리스트 -->
				<div class="wp-map-section">
					<div class="wp-map-area">
						<!-- 월별 선택 -->
						<input type="hidden" id="js-car-main-manage-today" value="">
						<div class="wp-month">
							<button type="button" class="wp-btn small white bgray prev" id="js-car-main-manage-year-prev-month"><span>이전</span></button>
							<div class="wp-btn-paging" id="js-car-main-manage-year-month"></div>
							<button type="button" class="wp-btn small white bgray next" id="js-car-main-manage-year-next-month"><span>다음</span></button>
							<button type="button" class="wp-btn small white bgray" id="js-car-main-manage-to-year-month">이번달</button>
						</div>
						<!-- 공장 지도 -->
						<div class="wp-stat-map domestic">
							<ul class="wp-factory-list" id="js-car-main-manage-map-factory-list">
								<li code="HMC1"><span>울산</span></li>
								<li code="HMCAS"><span>아산</span></li>
								<li code="HMCJB"><span>전주</span></li>
								<li code="SHA"><span>서산</span></li>
								<li code="KMC3"><span>화성</span></li>
							</ul>
							<!-- 발생현황요약 -->
							<div class="wp-stat-summary">
								<h2>공장리스트</h2>
								<div class="wp-stat-area">
								<ul>
								
									<li class="wp-area"><div>울산</div>
										<ul>
											<li>
												<div class="wp-ui-label">
													<span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" name="HMC1" id="wp-area01" value="HMC1"></span>
													<label for="wp-area01" class="wp-ui-label">HMC1</label>
												</div>
											</li>
											<li>
												<div class="wp-ui-label">
													<span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" name="HMC1" id="wp-area02" value="HMC2"></span>
													<label for="wp-area02" class="wp-ui-label">HMC2</label>
												</div>
											</li>
											<li>
												<div class="wp-ui-label">
													<span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" name="HMC1" id="wp-area03" value="HMC3"></span>
													<label for="wp-area03" class="wp-ui-label">HMC3</label>
												</div>
											</li>
											<li>
												<div class="wp-ui-label">
													<span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" name="HMC1" id="wp-area04" value="HMC41"></span>
													<label for="wp-area04" class="wp-ui-label">HMC41</label>
												</div>
											</li>
											<li>
												<div class="wp-ui-label">
													<span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" name="HMC1" id="wp-area05" value="HMC42"></span>
													<label for="wp-area05" class="wp-ui-label">HMC42</label>
												</div>
											</li>
											<li>
												<div class="wp-ui-label">
													<span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" name="HMC1" id="wp-area06" value="HMC51"></span>
													<label for="wp-area06" class="wp-ui-label">HMC51</label>
												</div>
											</li>
											<li>
												<div class="wp-ui-label">
													<span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" name="HMC1" id="wp-area07" value="HMC52"></span>
													<label for="wp-area07" class="wp-ui-label">HMC52</label>
												</div>
											</li>
										</ul>
									</li>
									
									<li class="wp-area"><div>아산</div>
										<ul>
											<li>
												<div class="wp-ui-label">
													<span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" name="HMCAS" id="wp-area08" value="HMCAS"></span>
													<label for="wp-area08" class="wp-ui-label">HMC 아산</label>
												</div>
											</li>
										</ul>
									</li>
									
									<li class="wp-area"><div>전주</div>
										<ul>
											<li>
												<div class="wp-ui-label">
													<span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" name="HMCJB" id="wp-area09" value="HMCJB"></span>
													<label for="wp-area09" class="wp-ui-label">전주 버스</label>
												</div>
											</li>
											<li>
												<div class="wp-ui-label">
													<span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" name="HMCJB" id="wp-area10" value="HMCJT"></span>
													<label for="wp-area10" class="wp-ui-label">전주 상용</label>
												</div>
											</li>
										</ul>
									</li>
									
									<li class="wp-area"><div>서산</div>
										<ul>
											<li>
												<div class="wp-ui-label">
													<span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" name="SHA" id="wp-area11" value="SHA"></span>
													<label for="wp-area11" class="wp-ui-label">서산 동희 오토</label>
												</div>
											</li>
										</ul>
									</li>
									
									<li class="wp-area"><div>화성</div>
										<ul>
											<li>
												<div class="wp-ui-label">
													<span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" name="KMC3" id="wp-area12" value="KMC3"></span>
													<label for="wp-area12" class="wp-ui-label">KMC3</label>
												</div>
											</li>
											<li>
												<div class="wp-ui-label">
													<span class="wp-ui-checkbox"><input type="checkbox" class="wp-inp-checkbox" name="KMC3" id="wp-area13" value="HMCLAP1"></span>
													<label for="wp-area13" class="wp-ui-label">남양 연구소</label>
												</div>
											</li>
										</ul>
									</li>
									
								</ul></div>
							</div>
						</div>
						<!-- //공장 지도 -->
					</div>
					<div class="wp-list-area">
						<div class="wp-blockinfo-area">
							<span class="wp-point-block wp-produce">생산특이사항</span>
							<span class="wp-point-block wp-competitor">경쟁사제품정보</span>
							<span class="wp-point-block wp-testinfo">제품테스트정보</span>
						</div>
					
						<!-- 타임라인 -->
						<div class="wp-main-timeline" id="js-car-main-manage-issue-info-list">
						</div>
						<!-- //타임라인 -->
						
					</div>
				</div>
				<!-- //지도 공장 리스트 -->
	
				<!-- 공장별 외관 -->
				<div class="wp-table-width">
					<h2 class="wp-ship-table-title">공장별 외관</h2>
					<div class="wp-fc-red bold" id="js-hichart-car-main-manage-issue-info-list">그래프 영역</div>
					
					<!-- table -->
					<div class="wp-table-st1 wp-vertical-line">
						<table id="js-car-main-manage-table-issue-info-list">
							<caption></caption>
							<colgroup>
								<col style="width:7%;">
								<col style="width:7%;">
								<col style="width:7%;">
								<col style="width:7%;">
								<col style="width:7%;">
								<col style="width:7%;">
								<col style="width:7%;">
								<col style="width:7%;">
								<col style="width:7%;">
								<col style="width:7%;">
								<col style="width:9%;">
								<col style="width:7%;">
							</colgroup>
							<thead>
								<th code="HMC1">HMC1</th>
								<th code="HMC2">HMC2</th>
								<th code="HMC3">HMC3</th>
								<th code="HMC41">HMC41</th>
								<th code="HMC42">HMC42</th>
								<th code="HMC51">HMC51</th>
								<th code="HMC52">HMC52</th>
								<th code="HMCAS">HMC아산</th>
								<th code="HMCJB">전주버스</th>
								<th code="HMCJT">전주상용</th>
								<th code="SHA">서산동희오토</th>
								<th code="HMCLAP1">남양연구소</th>
							</thead>
							<tbody>
								<tr>
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
									<td></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //table -->
				</div>
				<!-- //공장별 외관 -->
	
				<!-- 점유율 -->
				<div class="wp-table-width">
					<h2 class="wp-ship-table-title wp-pb10">점유율</h2>
					<div class="wp-fc-red bold" id="js-hichart-car-main-manage-share-rate-chart-info-list">그래프 영역</div>
					
					<!-- table -->
					<div class="wp-table-st1 wp-vertical-line">
						<table id="js-car-main-manage-table-share-rate-list">
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:7.3%;">
								<col style="width:7.3%;">
								<col style="width:7.3%;">
								<col style="width:7.3%;">
								<col style="width:7.3%;">
								<col style="width:7.3%;">
								<col style="width:7.3%;">
								<col style="width:7.3%;">
								<col style="width:7.3%;">
								<col style="width:7.3%;">
								<col style="width:9%;">
								<col style="width:7.3%;">
							</colgroup>
							<thead>
								<th>구분</th>
								<th code="HMC1">HMC1</th>
								<th code="HMC2">HMC2</th>
								<th code="HMC3">HMC3</th>
								<th code="HMC41">HMC41</th>
								<th code="HMC42">HMC42</th>
								<th code="HMC51">HMC51</th>
								<th code="HMC52">HMC52</th>
								<th code="HMCAS">HMC아산</th>
								<th code="HMCJB">전주버스</th>
								<th code="HMCJT">전주상용</th>
								<th code="SHA">서산동희오토</th>
								<th code="HMCLAP1">남양연구소</th>
							</thead>
							<tbody>
								<tr>
									<th>년간 생산 대수</th>
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
									<td></td>
									<td></td>
								</tr>
								<tr>
									<th>KCC 점유율</th>
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
									<td></td>
									<td></td>
								</tr>
								<tr>
									<th>경쟁사 점유율</th>
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
									<td></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //table -->
					
				</div>
				
				<!-- //점유율 -->
	
				<!-- 생산현황 -->
				<div class="wp-table-width">
					<h2 class="wp-ship-table-title">생산현황</h2>
					<div class="wp-fc-red bold" id="js-hichart-car-main-manage-prod-chart-info-list">그래프 영역</div>

					<!-- table -->
					<div class="wp-table-st1 wp-vertical-line">
						<table id="js-car-main-manage-table-prod-list">
							<caption></caption>
							<colgroup>
								<col style="width:auto">
								<col style="width:7.3%;">
								<col style="width:7.3%;">
								<col style="width:7.3%;">
								<col style="width:7.3%;">
								<col style="width:7.3%;">
								<col style="width:7.3%;">
								<col style="width:7.3%;">
								<col style="width:7.3%;">
								<col style="width:7.3%;">
								<col style="width:7.3%;">
								<col style="width:9%;">
								<col style="width:7.3%;">
							</colgroup>
							<thead>
								<th>구분</th>
								<th code="HMC1">HMC1</th>
								<th code="HMC2">HMC2</th>
								<th code="HMC3">HMC3</th>
								<th code="HMC41">HMC41</th>
								<th code="HMC42">HMC42</th>
								<th code="HMC51">HMC51</th>
								<th code="HMC52">HMC52</th>
								<th code="HMCAS">HMC아산</th>
								<th code="HMCJB">전주버스</th>
								<th code="HMCJT">전주상용</th>
								<th code="SHA">서산동희오토</th>
								<th code="HMCLAP1">남양연구소</th>
							</thead>
							<tbody>
								<tr>
									<th>가동률</th>
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
									<td></td>
									<td></td>
								</tr>
								<tr>
									<th>직행률</th>
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
									<td></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //table -->
				</div>
				<!-- //생산현황 -->
	
			<!-- //contents -->
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
	
	
	<!-- 경쟁사 제품 정보 원글 리스트 - 스크립트 -->
	<script id="js-template-car-main-manage-issue-parent-info-list" type="text/x-handlebars-template">
		<div class="wp-division {{setDivisionType titleType}}" id="js-car-main-manage-issue-parent-{{docNo}}">
			<h4>{{histTitle}}</h4>
			<span class="wp-day">등록일: {{inputDatetime}}</span>
		</div>
	</script>
	
	
	<!-- 경쟁사 제품 정보 연관글 리스트 - 스크립트 -->
	<script id="js-template-car-main-manage-issue-children-info-list" type="text/x-handlebars-template">
		<div class="wp-list-section">
			<div>{{histTitle}}</div>
		</div>
	</script>
	
		
	<script type="text/javascript">
	
		// 공장 코드 리스트 - Chart 에서 공장 코드를 사용하기 위함.
		var carPlantList = new Array();
		
		var yearMonth;
	
		var formatYearMonth = 'YYYY-MM';
	
		// 경쟁사 제품 정보 원글 리스트 template
		var carMainManageIssueParentInfoListTemplate;
		
		// 경쟁사 제품 정보 연관글 리스트 template
		var carMainManageIssueChildrenInfoListTemplate;
	
		$(document).ready(function(){
			
			// 헤더 공장 선택 숨김처리
			$("#js-car-header-car-plant").parent().css( "display", "none" );
			
			// 오늘 날짜 셋팅
			$("#js-car-main-manage-today").val(fn_getTodayDate().replace(/-/gi,"").substring(0, 6));
			
			var toDate = fn_getTodayDate().replace(/-/gi,"");
			
			// init
			initCarMainManage();
			
			// 이전 월
			$("#js-car-main-manage-year-prev-month").on("click", function(){
				clickPrevMonth();
			});
			
			// 다음 월
			$("#js-car-main-manage-year-next-month").on("click", function(){
				clickNextMonth();
			});
			
			// 이번 달
			$("#js-car-main-manage-to-year-month").on("click", function(){
				clickThisMonth();
			});
			
			
			// 공장 리스트에서 지역 checkbox 선택 시 전체 checkbox 처리.
			$(".wp-ui-checkbox").on("change", function(){
				
				var $el = $(this).children("input").attr("name");
				
				if($(this).hasClass("checked")){
					$(this).parent().parent().siblings().find("span").addClass("checked");
					$(this).parent().parent().siblings().find("input:checkbox").attr("checked", true);
					$("#js-car-main-manage-map-factory-list li").each(function(){
						if($el == $(this).attr("code")){
							$(this).addClass("on");
						}
					});
				}
				else
				{
					$(this).parent().parent().siblings().find("span").removeClass("checked");
					$(this).parent().parent().siblings().find("input:checkbox").attr("checked", false);
					$("#js-car-main-manage-map-factory-list li").each(function(){
						if($el == $(this).attr("code")){
							$(this).removeClass("on");
						}
					});
				}
				
				// 데이터 조회
				retrieveCarMainManageInfoData();
				
			});
			
			
		});
		
		
		var initCarMainManage = function(){
			
			// 경쟁사 제품 정보 원글 리스트
			source = $('#js-template-car-main-manage-issue-parent-info-list').html();
			carMainManageIssueParentInfoListTemplate = Handlebars.compile(source);
			
			// 경쟁사 제품 정보 연관글 리스트
			source = $('#js-template-car-main-manage-issue-children-info-list').html();
			carMainManageIssueChildrenInfoListTemplate = Handlebars.compile(source);
			
			// 연월 셋팅
			$("#js-car-main-manage-year-month").text($("#js-car-main-manage-today").val().substring(0, 4) + '-' + $("#js-car-main-manage-today").val().substring(4, 6));
			
			// 지도 위치 클릭
			$('#js-car-main-manage-map-factory-list > li').off().on('click', function(e){
				
				if($(this).hasClass('on')){
					// 공장에 해당하는 전체 체크 박스 체크 해제
					$(this).removeClass('on');
					var code = $(this).attr('code');
					$("input:checkbox[name='"+ code +"']").parent().parent().find("span").removeClass('checked');
					$("input:checkbox[name='"+ code +"']").attr("checked", false);
				} else {
					// 공장에 해당하는 전체 체크 박스 체크
					$(this).addClass('on');
					var code = $(this).attr('code');
					$("input:checkbox[name='"+ code +"']").parent().parent().find("span").addClass('checked');
					$("input:checkbox[name='"+ code +"']").attr("checked", true);
				}
				
				// 데이터 조회
				retrieveCarMainManageInfoData();
				
		    });
			
			
			// default 전체
			$('#js-car-main-manage-map-factory-list > li').addClass('on');
			
			var plantList = getYardList();
			
			$('input:checkbox').each(function(){
				$(this).click();
			});
			
			// 자동차 공장 조회 - Chart 에서 공장 코드를 사용하기 위함.
			retrieveCarPlantList.request();
			
			// 데이터 조회
			retrieveCarMainManageInfoData();
			
			// 경쟁사 제품, 생산특이사항, 제품테스트정보 구분
			Handlebars.registerHelper("setDivisionType", function(value) {
				if(value == "ISSUE"){       return "wp-competitor"; }   
				else if(value == "COMPET"){ return "wp-produce"; }
				else if(value == "TEST"){   return "wp-testinfo"; }
				else{ 						return "wp-competitor"; }
			});
			
		}
		
		// 데이터 조회
		var retrieveCarMainManageInfoData = function(){
		
			var plantList = getYardList();
			//var yyyymm = $("#js-car-main-manage-today").val().substring(0, 6);
			var yyyymm = $("#js-car-main-manage-year-month").text().replace(/-/gi,"");
			
			console.log('plantList : '+ plantList);
			console.log('yyyymm : '+ yyyymm);
			
			// 경쟁사 제품 정보 조회
			retrieveMainManageIssueInfo.request(yyyymm, plantList);
			
			// 공장별 외관 테이블 리스트 및 그래프 조회
			retrieveMainManageExtChartInfo.request(yyyymm, plantList);
			
			// 점유율 테이블 리스트 조회
			retrieveMainManageShareRateInfo.request(yyyymm);
			
			// 점유율 그래프 조회
			retrieveMainManageShareRateChartInfo.request(yyyymm);

			// 생산현황 테이블 리스트 조회
			retrieveMainManageProdInfo.request(yyyymm);
			
			// 생산현황 그래프 조회
			retrieveMainManageProdChartInfo.request(yyyymm);
			
		}
		
		
		//yardList 가져오기 
		var getYardList = function(){
			var yardList = "";
			var yardOnList = [];
			var yardOffList = [];
			
			$('#js-car-main-manage-map-factory-list > li').each(function(){
				if($(this).hasClass('on')){
					yardOnList.push({plantCode: $(this).attr('code')});				
				} else {				
					yardOffList.push({plantCode: $(this).attr('code')});
				}
			});
			
			//선택된 지역 없으면 모두 선택된 지역 있으면 선택된 지역만
			if(yardOnList.length == 0){
				yardOnList = "";
				yardList = JSON.stringify(yardOffList);
			} else {
				yardOffList = "";
				yardList = JSON.stringify(yardOnList);
			}
			
			return yardList; 
		}
		
		
		// ------------------------------------------------
		// 경쟁사 제품 정보 조회
		// ------------------------------------------------
		var retrieveMainManageIssueInfo = {
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
						
						$("#js-car-main-manage-issue-info-list").empty();
						
						var lvl1Arr = new Array();
						var lvl2Arr = new Array();
						
						// lvl1 : 원글 / lvl2 : 연관글 구분. 원글과 연관글을 구분하기 위함.
						for(var i=0; i < data.rows.length; i++){
							if(data.rows[i].lvl == '1'){
								lvl1Arr.push(data.rows[i]);
							}
							else if(data.rows[i].lvl == '2')
							{
								lvl2Arr.push(data.rows[i]);
							}
						}
						
						
						for(var i=0; i < lvl1Arr.length; i++){
							var result = carMainManageIssueParentInfoListTemplate(lvl1Arr[i]);
							$("#js-car-main-manage-issue-info-list").append(result);
							
							for(var j=0; j < lvl2Arr.length; j++){
								if(lvl1Arr[i].docNo == lvl2Arr[j].orgDocNo){
									// 연관글 삽입
									var result = carMainManageIssueChildrenInfoListTemplate(lvl2Arr[j]);
									$("#js-car-main-manage-issue-parent-"+ lvl2Arr[j].orgDocNo).append(result);
								}
							}
						}
						
					}
					else
					{
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
			request: function(yyyymm, plantList) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					service: 'car.mainManage',
					method: 'retrieveMainManageIssueInfo',
					yyyymm: yyyymm,
					plantList: plantList
				};
				
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		
		
		// ------------------------------------------------
		// 공장별 외관 그래프 조회
		// ------------------------------------------------
		var retrieveMainManageExtChartInfo = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {

						console.log('공장별 외관 테이블 리스트 및 그래프 조회 retrieveMainManageExtChartInfo response.rs : ' + response.rs);
						
						var data = response.rs || {};
						
						var tempDataArr 	= new Array();
						var dateArr 		= new Array();
						var seriesArr 		= new Array();
						
						var carPlantArr 	= new Array();
						var cfValueArr 		= new Array();
						
						var hmc1Arr 		= new Array();
						var hmc2Arr 		= new Array();
						var hmc3Arr 		= new Array();
						var hmc41Arr 		= new Array();
						var hmc42Arr 		= new Array();
						var hmc51Arr 		= new Array();
						var hmc52Arr 		= new Array();
						var hmcasArr 		= new Array();
						var hmcjbArr 		= new Array();
						var hmcjtArr 		= new Array();
						var shaArr 			= new Array();
						var hmclap1Arr 		= new Array();
						
						tempDataArr.push({
							"inspYn" 	: "2017-05",
							"carPlant" 	: "HMC1",
							"cfValue" 	: 15
						});
						
						tempDataArr.push({
							"inspYn" 	: "2017-05",
							"carPlant" 	: "HMC41",
							"cfValue" 	: 23
						});
						
						tempDataArr.push({
							"inspYn" 	: "2017-05",
							"carPlant" 	: "HMC2",
							"cfValue" 	: 20
						});
						
						tempDataArr.push({
							"inspYn" 	: "2017-05",
							"carPlant" 	: "HMC3",
							"cfValue" 	: 17
						});
						
						
						if(data.length > 0){
							
							console.log("DB 에 Data 가 있는 경우 정상적인 데이터 출력 !!!!!!!!!!!!!!!!!!!!!");
							
							for(var i=0 ; i < data.length ; i++){
						
								dateArr.push(data[i].inspYn);
								
								carPlantArr.push(tempDataArr[i].carPlant);
								cfValueArr.push(tempDataArr[i].cfValue);
								
								if(data[i].carPlant == "HMC1"){
									hmc1Arr.push(data[i].cfValue);
								}
								else if(data[i].carPlant == "HMC2"){
									hmc2Arr.push(data[i].cfValue);
								}
								else if(data[i].carPlant == "HMC3"){
									hmc3Arr.push(data[i].cfValue);
								}
								else if(data[i].carPlant == "HMC41"){
									hmc41Arr.push(data[i].cfValue);
								}
								else if(data[i].carPlant == "HMC42"){
									hmc42Arr.push(data[i].cfValue);
								}
								else if(data[i].carPlant == "HMC51"){
									hmc51Arr.push(data[i].cfValue);
								}
								else if(data[i].carPlant == "HMC52"){
									hmc52Arr.push(data[i].cfValue);
								}
								else if(data[i].carPlant == "HMCAS"){
									hmcasArr.push(data[i].cfValue);
								}
								else if(data[i].carPlant == "HMCJB"){
									hmcjbArr.push(data[i].cfValue);
								}
								else if(data[i].carPlant == "HMCJT"){
									hmcjtArr.push(data[i].cfValue);
								}
								else if(data[i].carPlant == "SHA"){
									hmcshaArr.push(data[i].cfValue);
								}
								else if(data[i].carPlant == "HMCLAP1"){
									hmclap1Arr.push(data[i].cfValue);
								}
								else{}
								
							}
							
							for(var i=0 ; i < data.length ; i++){
								
								// 공장별 외관 table data 삽입.
								$("#js-car-main-manage-table-issue-info-list th").each(function(index){
									if($(this).attr("code") == data[i].carPlant){
										$("#js-car-main-manage-table-issue-info-list td:eq("+ index +")").text(data[i].cfValue);
									}
								});
								
							};
							
							Highcharts.chart('js-hichart-car-main-manage-issue-info-list', {
							    chart: {
							        type: 'line'
							    },
							    title: {
							        text: ''
							    },
							    subtitle: {
							        text: ''
							    },
							    xAxis: {
							        categories: dateArr
							    },
							    yAxis: {
							        title: {
							            text: 'CF'
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
							    series: 
							    [
							     	{
							            name: 'HMC1',
							            data: hmc1Arr
							        }, 
							        {
							            name: 'HMC2',
							            data: hmc2Arr
							        }, 
							        {
							            name: 'HMC3',
							            data: hmc3Arr
							        },
							        {
							            name: 'HMC41',
							            data: hmc41Arr
							        },
							        {
							            name: 'HMC42',
							            data: hmc42Arr
							        },
							        {
							            name: 'HMC51',
							            data: hmc51Arr
							        },
							        {
							            name: 'HMC52',
							            data: hmc52Arr
							        },
							        {
							            name: 'HMCAS',
							            data: hmcasArr
							        },
							        {
							            name: 'HMCJB',
							            data: hmcjbArr
							        },
							        {
							            name: 'HMCJT',
							            data: hmcjtArr
							        },
							        {
							            name: 'SHA',
							            data: shaArr
							        },
							        {
							            name: 'HMCLAP1',
							            data: hmclap1Arr
							        }
							    ]
	
							});
							
						}
						else
						{
							console.log("DB 에 Data 가 없는 관계로 임시 데이터 테스트 !!!!!!!!!!!!!!!!!!!!!");
							
							for(var i=0 ; i < tempDataArr.length ; i++){
								
								dateArr.push(tempDataArr[i].inspYn);
								
								carPlantArr.push(tempDataArr[i].carPlant);
								cfValueArr.push(tempDataArr[i].cfValue);
								
								if(tempDataArr[i].carPlant == "HMC1"){
									hmc1Arr.push(tempDataArr[i].cfValue);
								}
								else if(tempDataArr[i].carPlant == "HMC2"){
									hmc2Arr.push(tempDataArr[i].cfValue);
								}
								else if(tempDataArr[i].carPlant == "HMC3"){
									hmc3Arr.push(tempDataArr[i].cfValue);
								}
								else if(tempDataArr[i].carPlant == "HMC41"){
									hmc41Arr.push(tempDataArr[i].cfValue);
								}
								else if(tempDataArr[i].carPlant == "HMC42"){
									hmc42Arr.push(tempDataArr[i].cfValue);
								}
								else if(tempDataArr[i].carPlant == "HMC51"){
									hmc51Arr.push(tempDataArr[i].cfValue);
								}
								else if(tempDataArr[i].carPlant == "HMC52"){
									hmc52Arr.push(tempDataArr[i].cfValue);
								}
								else if(tempDataArr[i].carPlant == "HMCAS"){
									hmcasArr.push(tempDataArr[i].cfValue);
								}
								else if(tempDataArr[i].carPlant == "HMCJB"){
									hmcjbArr.push(tempDataArr[i].cfValue);
								}
								else if(tempDataArr[i].carPlant == "HMCJT"){
									hmcjtArr.push(tempDataArr[i].cfValue);
								}
								else if(tempDataArr[i].carPlant == "SHA"){
									hmcshaArr.push(tempDataArr[i].cfValue);
								}
								else if(tempDataArr[i].carPlant == "HMCLAP1"){
									hmclap1Arr.push(tempDataArr[i].cfValue);
								}
								else{}
								
							}
							
							for(var i=0 ; i < tempDataArr.length ; i++){
								
								// 공장별 외관 table data 삽입.
								$("#js-car-main-manage-table-issue-info-list th").each(function(index){
									if($(this).attr("code") == tempDataArr[i].carPlant){
										$("#js-car-main-manage-table-issue-info-list td:eq("+ index +")").text(tempDataArr[i].cfValue);
									}
								});
								
							};
							
							Highcharts.chart('js-hichart-car-main-manage-issue-info-list', {
							    chart: {
							        type: 'line'
							    },
							    title: {
							        text: ''
							    },
							    subtitle: {
							        text: ''
							    },
							    xAxis: {
							        categories: dateArr
							    },
							    yAxis: {
							        title: {
							            text: 'CF'
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
							    series: 
							    [
							     	{
							            name: 'HMC1',
							            data: hmc1Arr
							        }, 
							        {
							            name: 'HMC2',
							            data: hmc2Arr
							        }, 
							        {
							            name: 'HMC3',
							            data: hmc3Arr
							        },
							        {
							            name: 'HMC41',
							            data: hmc41Arr
							        },
							        {
							            name: 'HMC42',
							            data: hmc42Arr
							        },
							        {
							            name: 'HMC51',
							            data: hmc51Arr
							        },
							        {
							            name: 'HMC52',
							            data: hmc52Arr
							        },
							        {
							            name: 'HMCAS',
							            data: hmcasArr
							        },
							        {
							            name: 'HMCJB',
							            data: hmcjbArr
							        },
							        {
							            name: 'HMCJT',
							            data: hmcjtArr
							        },
							        {
							            name: 'SHA',
							            data: shaArr
							        },
							        {
							            name: 'HMCLAP1',
							            data: hmclap1Arr
							        }
							    ]
	
							});
							
						}
						
						
					}
					else
					{
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
			request: function(yyyymm, plantList) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					service: 'car.mainManage',
					method: 'retrieveMainManageExtChartInfo',
					yyyymm: yyyymm,
					plantList: plantList
				};
				
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		
		// ------------------------------------------------
		// 점유율 리스트 조회
		// ------------------------------------------------
		var retrieveMainManageShareRateInfo = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {				

						console.log('점유율 리스트 조회 retrieveMainManageShareRateInfo response.rs : ' + response.rs);
						
						var data = response.rs || {};
						
						// 공장
						var carPlantArr		= new Array();
						
						// KCC 점유율
						var kccRate  		= new Array();
						var kccRateArr  	= new Array();
						
						// 경쟁사 점유율
						var rivalRate  		= new Array();
						var rivalRateArr  	= new Array();
						
						var tempDataArr 	= new Array();
						
						tempDataArr.push({
							"carPlant"		: "HMC2",
							"yearlyProd"	: "187,300 대",
							"kccRate" 		: 77,
							"rivalRate" 	: 80
						});
						
						tempDataArr.push({
							"carPlant"		: "HMC3",
							"yearlyProd"	: "266,600 대",
							"kccRate" 		: 100,
							"rivalRate" 	: 70
						});
						
						// DB 값이 존재할 경우 아래 실행
						if(data.length > 0) {
							for(var i=0 ; i < data.length ; i++){
								
								// 점유율 table data 삽입.
								$("#js-car-main-manage-table-share-rate-list th").each(function(index){
									if($(this).attr("code") == data[i].carPlant){
										// 년간 생산 대수
										$("#js-car-main-manage-table-share-rate-list tr:nth-child(1) td:eq("+ index +")").text(data[i].yearlyProd);
										// KCC 점유율
										$("#js-car-main-manage-table-share-rate-list tr:nth-child(2) td:eq("+ index +")").text(data[i].kccRate);
										// 경쟁사 점유율
										$("#js-car-main-manage-table-share-rate-list tr:nth-child(3) td:eq("+ index +")").text(data[i].rivalRate);
									}
								});
								
							}
						}
						// DB 값이 없는 경우 테스트 데이터로 아래 실행
						else
						{
							for(var i=0 ; i < tempDataArr.length ; i++){
								
								// 점유율 table data 삽입.
								$("#js-car-main-manage-table-share-rate-list th").each(function(index){
									if($(this).attr("code") == tempDataArr[i].carPlant){
										// 년간 생산 대수
										$("#js-car-main-manage-table-share-rate-list tr:nth-child(1) td:eq("+ (index - 1) +")").text(tempDataArr[i].yearlyProd);
										// KCC 점유율
										$("#js-car-main-manage-table-share-rate-list tr:nth-child(2) td:eq("+ (index - 1) +")").text(tempDataArr[i].kccRate + " %");
										// 경쟁사 점유율
										$("#js-car-main-manage-table-share-rate-list tr:nth-child(3) td:eq("+ (index - 1) +")").text(tempDataArr[i].rivalRate + " %");
									}
								});
								
							};
						}
 						
						
						
					}
					else
					{
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
			request: function(yyyymm) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					service: 'car.mainManage',
					method: 'retrieveMainManageShareRateInfo',
					yyyymm: yyyymm,
				};
				
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		
		
		// ------------------------------------------------
		// 점유율 그래프 조회
		// ------------------------------------------------
		var retrieveMainManageShareRateChartInfo = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {				

						console.log('점유율 그래프 조회 retrieveMainManageShareRateChartInfo response.rs : ' + response.rs);
						
						var data = response.rs || {};
						
						// 공장
						var carPlantArr		= new Array();
						
						// KCC 점유율
						var kccRate  		= new Array();
						var kccRateArr  	= new Array();
						
						// 경쟁사 점유율
						var rivalRate  		= new Array();
						var rivalRateArr  	= new Array();
						
						var tempDataArr = new Array();
						
						tempDataArr.push({
							"carPlant"		: "HMC2",
							"yearlyProd"	: "187,300 대",
							"kccRate" 		: 77,
							"rivalRate" 	: 80
						});
						
						tempDataArr.push({
							"carPlant"		: "HMC3",
							"yearlyProd"	: "266,600 대",
							"kccRate" 		: 100,
							"rivalRate" 	: 70
						});
						
						// DB 값이 존재할 경우 아래 실행
						if(data.length > 0) {
							for(var i=0; i < data.length; i++){
								carPlantArr.push(data[i].carPlant);
								kccRate.push(data[i].kccRate);
								rivalRate.push(data[i].rivalRate);
							}
						}
						// DB 값이 없는 경우 테스트 데이터로 아래 실행
						else
						{
							for(var i=0; i < tempDataArr.length; i++){
								carPlantArr.push(tempDataArr[i].carPlant);
								kccRateArr.push(tempDataArr[i].kccRate);
								rivalRateArr.push(tempDataArr[i].rivalRate);
							}
						}
						
						Highcharts.chart('js-hichart-car-main-manage-share-rate-chart-info-list', {
						    chart: {
						        type: 'column'
						    },
						    title: {
						        text: ''
						    },
						    subtitle: {
						        text: ''
						    },
						    xAxis: {
						        categories: carPlantArr,
						        crosshair: true
						    },
						    yAxis: 
					    	{
						        min: 0,
						        labels: {
					                format: '{value} %',
				            },
					            title: {
					                text: '점유율',
					            }
					    	},
						    tooltip: {
						        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
						        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
						            '<td style="padding:0"><b>{point.y:.1f} %</b></td></tr>',
						        footerFormat: '</table>',
						        shared: true,
						        useHTML: true
						    },
						    plotOptions: {
						        column: {
						            pointPadding: 0.2,
						            borderWidth: 0
						        }
						    },
						    series: 
						    [
						    	{
						        	name: 'KCC 점유율',
						        	data: kccRateArr
						    	}, {
						        	name: '경쟁사 점유율',
						        	data: rivalRateArr
						    	}
						    ]
						});
						
						
					}
					else
					{
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
			request: function(yyyymm, plantList) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					service: 'car.mainManage',
					method: 'retrieveMainManageShareRateChartInfo',
					yyyymm: yyyymm,
					plantList: plantList
				};
				
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		
		
		// ------------------------------------------------
		// 생산현황 리스트 조회
		// ------------------------------------------------
		var retrieveMainManageProdInfo = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {				

						console.log('생산현황 리스트 조회 retrieveMainManageProdInfo response.rs : ' + response.rs);
						
						var data = response.rs || {};
						
						var tempDataArr = new Array();
						
						// 공장
						var carPlantArr		= new Array();
						
						// 가동률
						var operRateArr  	= new Array();
						
						// 직행률
						var directRateArr  	= new Array();
						
						tempDataArr.push({
							"carPlant"		: "HMC51",
							"operRate" 		: 57,
							"directRate" 	: 72
						});

						tempDataArr.push({
							"carPlant"		: "HMC52",
							"operRate" 		: 71,
							"directRate" 	: 83
						});
						
						// DB 값이 존재할 경우 아래 실행
						if(data.length > 0) {
							for(var i=0 ; i < data.length ; i++){
								
								// 생산현황 table data 삽입.
								$("#js-car-main-manage-table-prod-list th").each(function(index){
									if($(this).attr("code") == data[i].carPlant){
										// 가동률
										$("#js-car-main-manage-table-prod-list tr:nth-child(1) td:eq("+ index +")").text(data[i].operRate);
										// 직행률
										$("#js-car-main-manage-table-prod-list tr:nth-child(2) td:eq("+ index +")").text(data[i].directRate);
									}
								});
								
							}
						}
						// DB 값이 없는 경우 테스트 데이터로 아래 실행
						else
						{
							for(var i=0 ; i < tempDataArr.length ; i++){
								
								// 생산현황 table data 삽입.
								$("#js-car-main-manage-table-prod-list th").each(function(index){
									if($(this).attr("code") == tempDataArr[i].carPlant){
										// 가동률
										$("#js-car-main-manage-table-prod-list tr:nth-child(1) td:eq("+ (index - 1) +")").text(tempDataArr[i].operRate + " %");
										// 직행률
										$("#js-car-main-manage-table-prod-list tr:nth-child(2) td:eq("+ (index - 1) +")").text(tempDataArr[i].directRate + " %");
									}
								});
								
							}
							
						}
						
					}
					else
					{
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
			request: function(yyyymm) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					service: 'car.mainManage',
					method: 'retrieveMainManageProdInfo',
					yyyymm: yyyymm,
				};
				
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		
		
		// ------------------------------------------------
		// 생산현황 그래프 조회
		// ------------------------------------------------
		var retrieveMainManageProdChartInfo = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';

					if (message === 'OK') {				

						console.log('생산현황 그래프 조회 retrieveMainManageProdChartInfo response.rs : ' + response.rs);
						
						var data = response.rs || {};
						
						// 공장
						var carPlantArr		= new Array();
						
						// 가동률
						var operRateArr  	= new Array();
						
						// 직행률
						var directRateArr  	= new Array();
						
						var tempDataArr = new Array();

						tempDataArr.push({
							"carPlant"		: "HMC51",
							"operRate" 		: 57,
							"directRate" 	: 72
						});

						tempDataArr.push({
							"carPlant"		: "HMC52",
							"operRate" 		: 71,
							"directRate" 	: 83
						});
						
						// DB 값이 존재할 경우 아래 실행
						if(data.length > 0) {
							for(var i=0; i < data.length; i++){
								carPlantArr.push(data[i].carPlant);
								operRateArr.push(data[i].operRate);
								directRateArr.push(data[i].directRate);
							}
						}
						// DB 값이 없는 경우 테스트 데이터로 아래 실행
						else
						{
							for(var i=0; i < tempDataArr.length; i++){
								carPlantArr.push(tempDataArr[i].carPlant);
								operRateArr.push(tempDataArr[i].operRate);
								directRateArr.push(tempDataArr[i].directRate);
							}
						}
						
						Highcharts.chart('js-hichart-car-main-manage-prod-chart-info-list', {
						    chart: {
						        type: 'column'
						    },
						    title: {
						        text: ''
						    },
						    subtitle: {
						        text: ''
						    },
						    xAxis: {
						        categories: carPlantArr,
						        crosshair: true
						    },
						    yAxis: {
						        min: 0,
						        title: {
						            text: ''
						        }
						    },
						    tooltip: {
						        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
						        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
						            '<td style="padding:0"><b>{point.y:.1f} %</b></td></tr>',
						        footerFormat: '</table>',
						        shared: true,
						        useHTML: true
						    },
						    plotOptions: {
						        column: {
						            pointPadding: 0.2,
						            borderWidth: 0
						        }
						    },
						    series: [{
						        name: '가동률',
						        data: operRateArr

						    }, {
						        name: '직행률',
						        data: directRateArr

						    }]
						});
						
						
					}
					else
					{
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
			request: function(yyyymm, plantList) {
				// ------------------------------------
				// ajax request
				// ------------------------------------
				var params = {
					service: 'car.mainManage',
					method: 'retrieveMainManageProdChartInfo',
					yyyymm: yyyymm,
					plantList: plantList
				};
				
				var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
				ajax.done(this.success);
				ajax.fail(this.error);
				ajax.always(this.complete);
			}
		};
		
		
		
		// ------------------------------------------------
		// 자동차 공장 콤보 조회
		// ------------------------------------------------
		var retrieveCarPlantList = {
			success: function(response, status, jqueryXHR) {
				// ------------------------------------
				// response json structure - {message: '', error: '' rs: null}
				// ------------------------------------
				if (typeof response.message !== 'undefined') {
					var message = response.message || '';
					
					if (message === 'OK') {
						
						for(var i=0; i < response.rs.length; i++)
						{
							carPlantList.push(response.rs[i].code);
						}
						
					}else
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
					service: 'car.common',
					method: 'retrieveCarPlantInfo'
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
	
	<script type="text/javascript">
	
	clickPrevMonth = function(e) {
		// ------------------------------------
		// 조회년월 이전달 클릭 이벤트
		// ------------------------------------
		$el = $('#js-car-main-manage-year-month');
		var yearMonth = $el.text().replace(/[^0-9]/g,'');
		var beforeMonth = Number(yearMonth.substr(4,2));
		var prevYearMonth = moment(yearMonth+'01').subtract(1, 'month').format('YYYYMM');
		var afterMonth =  Number(prevYearMonth.substr(4,2));
		yearMonth = prevYearMonth;
        //$('#js-car-main-manage-year-month').text(app.utils.formatDate(prevYearMonth, formatYearMonth));
        $('#js-car-main-manage-year-month').text(yearMonth.substring(0, 4) + "-" + yearMonth.substring(4));
		
		// 데이터 조회
		retrieveCarMainManageInfoData();
        
	};
	
	
	clickNextMonth = function(e) {
		// ------------------------------------
		// 조회년월 다음달 클릭 이벤트
		// ------------------------------------
		$el = $('#js-car-main-manage-year-month');
		var yearMonth = $el.text().replace(/[^0-9]/g,'');
		var beforeMonth = Number(yearMonth.substr(4,2));
		var nextYearMonth = moment(yearMonth+'01').add(1, 'month').format('YYYYMM');
		var afterMonth =  Number(nextYearMonth.substr(4,2));
		yearMonth = nextYearMonth;
        //$('#js-car-main-manage-year-month').text(app.utils.formatDate(nextYearMonth, formatYearMonth));
        $('#js-car-main-manage-year-month').text(yearMonth.substring(0, 4) + "-" + yearMonth.substring(4));
		
		// 데이터 조회
		retrieveCarMainManageInfoData();
        
	};
	
	
	clickThisMonth = function(e) {
		// ------------------------------------
		// 이번달 클릭 이벤트
		// ------------------------------------
		$el = $("#js-car-main-manage-today");
		var yearMonth = $el.val().replace(/[^0-9]/g,'');
        $('#js-car-main-manage-year-month').text(yearMonth.substring(0, 4) + "-" + yearMonth.substring(4));
		
		// 데이터 조회
		retrieveCarMainManageInfoData();
        
	};
	
	
	
	$(window).on('load', function(){

		$('.wp-main-timeline').mCustomScrollbar({
	        theme:"minimal-dark",
	        mouseWheelPixels: 100,
	    });

		$('.wp-stat-area').mCustomScrollbar({
	        theme:"minimal-dark",
	        mouseWheelPixels: 100,
	    });

	});
	
	
	
	</script>
	
	</tiles:putAttribute>
	<!-- 팝업 콘텐츠 E -->
	

</tiles:insertDefinition>