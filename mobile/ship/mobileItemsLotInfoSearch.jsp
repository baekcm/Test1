<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.04.07] ship mobile 도정 공정정보 현황" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.mobile">
	<!-- [s] 모바일 콘텐츠 -->
	<tiles:putAttribute name="page-content">
	<div class="wp-wrap">
		<!-- header -->
		<header class="wp-header">
			<button type="button" class="wp-btn wp-left wp-prev-white"><spring:message code="TODO.KEY" text="이전"/></button>
			<h1><spring:message code="TODO.KEY" text="검색"/></h1>
		</header>
		<!-- //header -->
		<!-- wp-container -->
		<section class="wp-container">
			<!-- content -->
			<div class="wp-cont-area">
				<div class="wp-table h-center wp-reg wp-noline">
				<table>
					<caption></caption>
					<colgroup>
						<col style="width:100%">
					</colgroup>
					<tbody>
						<tr>
							<th><spring:message code="TODO.KEY" text="제품명"/></th>
						</tr>
						<tr>
							<td>
								<div class="wp-input-btn">
									<input type="text" id="js-mobile-items-search-itemsNm" name="js-mobile-items-search-itemsNm" title="내용입력">
									<!-- button type="button" class="wp-btn wp-search wp-layerpop-btn"><spring:message code="TODO.KEY" text="검색"/></button-->
								</div>
							</td>
						</tr>
						<tr>
							<th><spring:message code="TODO.KEY" text="제품코드"/></th>
						</tr>
						<tr>
							<td><input type="text" id="js-mobile-items-search-items" name="js-mobile-items-search-items" title="내용입력"></td>
						</tr>
						<tr>
							<th><spring:message code="TODO.KEY" text="Lot No."/></th>
						</tr>
						<tr>
							<td><input type="text" id="js-mobile-items-search-lotNo" name="js-mobile-items-search-lotNo" title="내용입력"></td>
						</tr>
						<tr>
							<th><spring:message code="TODO.KEY" text="기간"/></th>
						</tr>
						<tr>
							<td>
								<div class="wp-ui-btn-switch">
									<ul>
										<li><button type="button" class="on" value="0"><spring:message code="TODO.KEY" text="당일"/></button></li>
										<li><button type="button" class="" value="3"><spring:message code="TODO.KEY" text="3일"/></button></li>
										<li><button type="button" class="" value="5"><spring:message code="TODO.KEY" text="5일"/></button></li>
										<li><button type="button" class="" value="6"><spring:message code="TODO.KEY" text="일주일"/></button></li>
									</ul>
								</div>
							</td>
						</tr>
						<tr>
							<td class="wp-ac wp-pt15 wp-pb15"><span class="wp-blue-comment"><spring:message code="TODO.KEY" text="최근 일주일 거래만 조회 가능합니다."/></span></td>
						</tr>
						<tr>
							<td>
								<div class="wp-ui-select wp-wd50p wp-fl">
									<input type="date" id="js-mobile-items-search-from-date" name="js-mobile-items-search-from-date" title="내용입력" placeholder="측정시간">
								</div>
								~
								<div class="wp-ui-select wp-wd50p wp-fr">
									<input type="date" id="js-mobile-items-search-to-date" name="js-mobile-items-search-to-date" title="내용입력" placeholder="측정시간">
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				</div>
				<button type="button" class="wp-option wp-btn" id="js-mobile-items-search-button">조회</button>
			</div>
			<!-- //content -->
		</section>
		<!-- //wp-container -->
	</div>
	</tiles:putAttribute>
	<!-- [e] 모바일 콘텐츠 -->
	
	<!-- [s] 페이지 레벨 스크립트 -->
	<tiles:putAttribute name="page-level-js">
		
		<script type="text/javascript">
			$(document).ready(function(){
				
				//검색날짜 세팅
				$('#js-mobile-items-search-from-date').val(fn_getTodayDate());
				$('#js-mobile-items-search-to-date').val(fn_getTodayDate());
				
				//뒤로가기 버튼
				$('.wp-prev-white').on('click', function() {
					var url = '/mobile/ship/mobileItemsLotInfo.do';
					
					var yardCode = getQuerystring('yardCode');
					var yardName = getQuerystring('yardName');
					
					url += '?yardCode='+yardCode+'&yardName='+yardName;
					
					window.location.href = url;
				});
				
				//기간 버튼 클릭 이벤트
				$('.wp-ui-btn-switch ul li').on('click', "button", function() {
					
					fn_setMobileItemsSearchDate($(this));
				});
				
				//조회 버튼 클릭 이벤트
				$('#js-mobile-items-search-button').on('click', function() {
					
					var fromDate = $('#js-mobile-items-search-from-date').val();		//기간 시작일자
					var toDate = $('#js-mobile-items-search-to-date').val();			//기간 종료일자
					var itemsNm = $('#js-mobile-items-search-itemsNm').val();			//제품명
					var items = $('#js-mobile-items-search-items').val();				//제품코드
					var lotNo = $('#js-mobile-items-search-lotNo').val();				//Lot No
										
					var cnt = fn_getDaysBetween(fromDate.replace(/-/gi,""), toDate.replace(/-/gi,""));
										
					//날짜 필수 입력체크
					if(fromDate == '')
					{
						fn_alertInfo('A', '<spring:message code="TODO.KEY" text="시작일은 필수입력 항목입니다."/>', function(){$('#js-mobile-items-search-from-date').focus();});
						return;
					}
					
					//날자 유효성 체크
					if(!chkDate(fromDate))
					{
						fn_alertInfo('A', '<spring:message code="TODO.KEY" text="유효하지 않은 날짜 형식입니다."/>', function(){$('#js-mobile-items-search-from-date').focus();});
						return;
					}
					
					//날짜 필수 입력체크
					if(toDate == '')
					{
						fn_alertInfo('A', '<spring:message code="TODO.KEY" text="종료일은 필수입력 항목입니다."/>', function(){$('#js-mobile-items-search-to-date').focus();});
						return;
					}
					
					//날자 유효성 체크
					if(!chkDate(toDate))
					{
						fn_alertInfo('A', '<spring:message code="TODO.KEY" text="유효하지 않은 날짜 형식입니다."/>', function(){$('#js-mobile-items-search-to-date').focus();});						
						return;
					}
					
					if(cnt > 6){
						fn_alertInfo('A', '<spring:message code="TODO.KEY" text="일주일 거래만 조회 가능합니다."/>');						
						return;
					}
					
					var url = '/mobile/ship/mobileItemsLotInfo.do';
					
					var yardCode = getQuerystring('yardCode');
					var yardName = getQuerystring('yardName');
					
					url += '?yardCode='+yardCode+'&yardName='+yardName+'&itemsNm='+itemsNm+'&items='+items+'&lotNo='+lotNo+'&fromDate='+fromDate+'&toDate='+toDate;
					
					window.location.href = url;
					
				});
				
				//기간 날짜 이벤트 처리
				var fn_setMobileItemsSearchDate = function(obj){
					var date = app.utils.formatDate(new Date(), "YYYYMMDD");
					var beforeDate =  fn_getBeforeDate(date, 0, 0, parseInt(obj.val()));
					
					$('#js-mobile-items-search-from-date').val(app.utils.formatDate(beforeDate, "YYYY-MM-DD"));
					$('#js-mobile-items-search-to-date').val(app.utils.formatDate(date, "YYYY-MM-DD"));
					
				}
				
			});
			
			
		</script>
		
	</tiles:putAttribute>
	<!-- [e] 페이지 레벨 스크립트 -->
</tiles:insertDefinition>
