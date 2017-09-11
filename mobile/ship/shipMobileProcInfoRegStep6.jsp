<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page info="[2017.03.08] ship mobile 도정 공정정보 등록" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="app.mobile">
	<!-- [s] 모바일 콘텐츠 -->
	<tiles:putAttribute name="page-content">
	<div class="wp-wrap">
		<form method="post" id="js-ship-mobile-proc-reg-form">
			<input type="hidden" id="js-ship-mobile-proc-reg-post-yn" name="js-ship-mobile-proc-reg-post-yn" value="${param['js-ship-mobile-proc-reg-post-yn']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-seq">
			<input type="hidden" id="js-ship-mobile-proc-reg-yard-code">
			<input type="hidden" id="js-ship-mobile-proc-reg-insp-date" name="js-ship-mobile-proc-reg-insp-date" value="${param['js-ship-mobile-proc-reg-insp-date']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-insp-emp" name="js-ship-mobile-proc-reg-insp-emp" value="${param['js-ship-mobile-proc-reg-insp-emp']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-insp-place" name="js-ship-mobile-proc-reg-insp-place" value="${param['js-ship-mobile-proc-reg-insp-place']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-insp-remark" name="js-ship-mobile-proc-reg-insp-remark" value="${param['js-ship-mobile-proc-reg-insp-remark']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-hull-no" name="js-ship-mobile-proc-reg-hull-no" value="${param['js-ship-mobile-proc-reg-hull-no']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-proc-id" name="js-ship-mobile-proc-reg-proc-id" value="${param['js-ship-mobile-proc-reg-proc-id']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-proc-section1" name="js-ship-mobile-proc-reg-proc-section1" value="${param['js-ship-mobile-proc-reg-proc-section1']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-proc-section2" name="js-ship-mobile-proc-reg-proc-section2" value="${param['js-ship-mobile-proc-reg-proc-section2']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-proc-section3" name="js-ship-mobile-proc-reg-proc-section3" value="${param['js-ship-mobile-proc-reg-proc-section3']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-proc-section4" name="js-ship-mobile-proc-reg-proc-section4" value="${param['js-ship-mobile-proc-reg-proc-section4']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-maker-code" name="js-ship-mobile-proc-reg-maker-code" value="${param['js-ship-mobile-proc-reg-maker-code']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-product-id" name="js-ship-mobile-proc-reg-product-id" value="${param['js-ship-mobile-proc-reg-product-id']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-color-name1" name="js-ship-mobile-proc-reg-color-name1" value="${param['js-ship-mobile-proc-reg-color-name1']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-pta-lot-no" name="js-ship-mobile-proc-reg-pta-lot-no" value="${param['js-ship-mobile-proc-reg-pta-lot-no']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-ptb-lot-no" name="js-ship-mobile-proc-reg-ptb-lot-no" value="${param['js-ship-mobile-proc-reg-ptb-lot-no']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-thinner-lot-no" name="js-ship-mobile-proc-reg-thinner-lot-no" value="${param['js-ship-mobile-proc-reg-thinner-lot-no']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-pta-ratio" name="js-ship-mobile-proc-reg-pta-ratio" value="${param['js-ship-mobile-proc-reg-pta-ratio']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-ptb-ratio" name="js-ship-mobile-proc-reg-ptb-ratio" value="${param['js-ship-mobile-proc-reg-ptb-ratio']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-thinner-ratio" name="js-ship-mobile-proc-reg-thinner-ratio" value="${param['js-ship-mobile-proc-reg-thinner-ratio']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-svr" name="js-ship-mobile-proc-reg-svr" value="${param['js-ship-mobile-proc-reg-svr']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-weather-condition" name="js-ship-mobile-proc-reg-weather-condition" value="${param['js-ship-mobile-proc-reg-weather-condition']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-dt" name="js-ship-mobile-proc-reg-dt" value="${param['js-ship-mobile-proc-reg-dt']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-wt" name="js-ship-mobile-proc-reg-wt" value="${param['js-ship-mobile-proc-reg-wt']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-st" name="js-ship-mobile-proc-reg-st" value="${param['js-ship-mobile-proc-reg-st']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-dp" name="js-ship-mobile-proc-reg-dp" value="${param['js-ship-mobile-proc-reg-dp']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-rh" name="js-ship-mobile-proc-reg-rh" value="${param['js-ship-mobile-proc-reg-rh']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-insp-time" name="js-ship-mobile-proc-reg-insp-time" value="${param['js-ship-mobile-proc-reg-insp-time']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-amine-yn" name="js-ship-mobile-proc-reg-amine-yn" value="${param['js-ship-mobile-proc-reg-amine-yn']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-sweat-icing-yn" name="js-ship-mobile-proc-reg-sweat-icing-yn" value="${param['js-ship-mobile-proc-reg-sweat-icing-yn']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-proc-cond-yn" name="js-ship-mobile-proc-reg-proc-cond-yn" value="${param['js-ship-mobile-proc-reg-proc-cond-yn']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-input-pressure" name="js-ship-mobile-proc-reg-input-pressure" value="${param['js-ship-mobile-proc-reg-input-pressure']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-pump-ratio-a" name="js-ship-mobile-proc-reg-pump-ratio-a" value="${param['js-ship-mobile-proc-reg-pump-ratio-a']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-pump-ratio-b" name="js-ship-mobile-proc-reg-pump-ratio-b" value="${param['js-ship-mobile-proc-reg-pump-ratio-b']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-valve-length" name="js-ship-mobile-proc-reg-valve-length" value="${param['js-ship-mobile-proc-reg-valve-length']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-tip-size" name="js-ship-mobile-proc-reg-tip-size" value="${param['js-ship-mobile-proc-reg-tip-size']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-tip-fault-id" name="js-ship-mobile-proc-reg-tip-fault-id" value="${param['js-ship-mobile-proc-reg-tip-fault-id']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-tip-fault-remark" name="js-ship-mobile-proc-reg-tip-fault-remark" value="${param['js-ship-mobile-proc-reg-tip-fault-remark']}">
			<input type="hidden" id="js-ship-mobile-proc-reg-blushing-yn" name="js-ship-mobile-proc-reg-blushing-yn">
			<input type="hidden" id="js-ship-mobile-proc-reg-flowability-yn" name="js-ship-mobile-proc-reg-flowability-yn">
			<input type="hidden" id="js-ship-mobile-proc-reg-atomization-yn" name="js-ship-mobile-proc-reg-atomization-yn">
			<input type="hidden" id="js-ship-mobile-proc-reg-smell-yn" name="js-ship-mobile-proc-reg-smell-yn">
			<input type="hidden" id="js-ship-mobile-proc-reg-skin-trouble-yn" name="js-ship-mobile-proc-reg-skin-trouble-yn">
			<!-- header -->
			<header class="wp-header wp-dark-shadow">
				<button type="button" class="wp-btn wp-left wp-prev-white"><spring:message code="TODO.KEY" text="이전"/></button>
				<h1><spring:message code="TODO.KEY" text="도장 공정정보 등록"/></h1>
			</header>
			<!-- //header -->
			<!-- step -->
			<div class="wp-step-area">
				<div class="wp-step wp-wd6"><!-- 번호 조정 class -->
					<div class="wp-depth1"></div>
					<div class="wp-depth2"></div>
					<div class="wp-depth3"></div>
					<ul>
						<li>1</li>
						<li>2</li>
						<li>3</li>
						<li>4</li>
						<li>5</li>
						<li>6</li>
						<li>7</li>
					</ul>
				</div>
			</div>
			<!-- //step -->
			<!-- wp-container -->
			<section class="wp-container wp-pb50 wp-bg-f">
				<div class="wp-cont-area">
				<h1 class="wp-section-title wp-border-none"><spring:message code="TODO.KEY" text="6단계.  결과값 입력"/></h1>
					<div class="wp-table h-center wp-reg wp-noline">
					<table>
						<caption></caption>
						<colgroup>
							<col style="width:50%">
							<col style="width:50%">
						</colgroup>
						<tbody>
							<tr>
								<td colspan="2">
									<div class="wp-ui-select wp-wd100p">
									<select id="js-ship-mobile-proc-reg-adhesive-id" name="js-ship-mobile-proc-reg-adhesive-id">
									</select>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2"><input type="text" id="js-ship-mobile-proc-reg-adhesive-remark" name="js-ship-mobile-proc-reg-adhesive-remark" title="<spring:message code='TODO.KEY' text='내용입력'/>" disabled=""></td>
							</tr>
							<tr>
								<td colspan="2"><input type="number" id="js-ship-mobile-proc-reg-pot-life" name="js-ship-mobile-proc-reg-pot-life" title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="<spring:message code='TODO.KEY' text='가사시간'/>(min)"></td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="wp-ui-select wp-wd100p">
									<select id="js-ship-mobile-proc-reg-tup-id" name="js-ship-mobile-proc-reg-tup-id">
									</select>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2"><input type="text" id="js-ship-mobile-proc-reg-tup-remark" name="js-ship-mobile-proc-reg-tup-remark" title="<spring:message code='TODO.KEY' text='내용입력'/>" disabled=""></td>
							</tr>
							<tr>
								<th><spring:message code="TODO.KEY" text="점도"/></th>
								<td>
									<div class="wp-ui-select wp-wd100p">
									<select id="js-ship-mobile-proc-reg-viscosity-maker" name="js-ship-mobile-proc-reg-viscosity-maker">
									</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><input type="number" id="js-ship-mobile-proc-reg-viscosity-rate" name="js-ship-mobile-proc-reg-viscosity-rate" title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="<spring:message code='TODO.KEY' text='퍼센트'/>(%)"></td>
								<td>
									<div class="wp-ui-select wp-wd100p">
									<select id="js-ship-mobile-proc-reg-viscosity-change" name="js-ship-mobile-proc-reg-viscosity-change">
									</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><input type="text" id="js-ship-mobile-proc-reg-gloss" name="js-ship-mobile-proc-reg-gloss" title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="<spring:message code='TODO.KEY' text='광택'/>"></td>
								<td><input type="number" id="js-ship-mobile-proc-reg-walk-on-dry" name="js-ship-mobile-proc-reg-walk-on-dry" title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="Walk on dry(h)"></td>
							</tr>
							<tr>
								<th><spring:message code="TODO.KEY" text="Blushing 발생"/></th>
								<td class="wp-toggle-area"><div id="js-ship-mobile-proc-reg-blushing-div" class="wp-toggle toggle-light"></div></td>
							</tr>
							<tr>
								<td><input type="text" id="js-ship-mobile-proc-reg-blushing-temp" name="js-ship-mobile-proc-reg-blushing-temp" title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="<spring:message code='TODO.KEY' text='온도'/>" disabled=""></td>
								<td><input type="number" id="js-ship-mobile-proc-reg-blushing-time" name="js-ship-mobile-proc-reg-blushing-time" title="<spring:message code='TODO.KEY' text='내용입력'/>" placeholder="<spring:message code='TODO.KEY' text='시간'/>" disabled=""></td>
							</tr>
							<tr>
								<th colspan="2"><spring:message code="TODO.KEY" text="흐름성"/></th>
							</tr>
							<tr>
								<td class="wp-fl"><div id="js-ship-mobile-proc-reg-flowability-div" class="wp-toggle toggle-light"></div></td>
								<td>
									<input type="number" id="js-ship-mobile-proc-reg-flowability-wft" name="js-ship-mobile-proc-reg-flowability-wft" title="<spring:message code='TODO.KEY' text='내용입력'/>" disabled="">
								</td>
							</tr>
							<tr>
								<th colspan="2"><spring:message code="TODO.KEY" text="무화정도"/>(%)</th>
							</tr>
							<tr>
								<td class="wp-fl"><div id="js-ship-mobile-proc-reg-atomization-div" class="wp-toggle toggle-light"></div></td>
								<td>
									<input type="number" id="js-ship-mobile-proc-reg-atomization-rate" name="js-ship-mobile-proc-reg-atomization-rate" title="<spring:message code='TODO.KEY' text='내용입력'/>" disabled="">
								</td>
							</tr>
							<tr>
								<th><spring:message code="TODO.KEY" text="냄새"/></th>
								<td class="wp-toggle-area"><div id="js-ship-mobile-proc-reg-smell-div" class="wp-toggle toggle-light"></div></td>
							</tr>
							<tr>
								<th><spring:message code="TODO.KEY" text="피부트러블"/></th>
								<td class="wp-toggle-area"><div id="js-ship-mobile-proc-reg-skin-trouble-div" class="wp-toggle toggle-light"></div></td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="wp-ui-select wp-wd100p wp-mb10">
									<select id="js-ship-mobile-proc-reg-leveling-id" name="js-ship-mobile-proc-reg-leveling-id">
									</select>
									</div>
									<input type="text" id="js-ship-mobile-proc-reg-leveling-remark" name="js-ship-mobile-proc-reg-leveling-remark" title="<spring:message code='TODO.KEY' text='내용입력'/>" disabled="">
								</td>
							</tr>
						</tbody>
					</table>
					</div>
				</div>
			</section>
			<!-- //wp-container -->
			<div class="wp-position-btn">
				<button type="button" id="js-ship-mobile-proc-reg-back" class="wp-btn"><spring:message code="TODO.KEY" text="이전"/></button>
				<button type="button" id="js-ship-mobile-proc-reg-next" class="wp-btn"><spring:message code="TODO.KEY" text="다음"/></button>
			</div>
		</form>
	</div>
	
	</tiles:putAttribute>
	<!-- [e] 모바일 콘텐츠 -->
	
	<!-- [s] 페이지 레벨 스크립트 -->
	<tiles:putAttribute name="page-level-js">
		
		<script type="text/javascript">
		
			$(document).ready(function(){
				
				var seqShipProcInfo = getQuerystring('seqShipProcInfo');
				
				if($('#js-ship-mobile-proc-reg-post-yn').val() != 'Y')
				{
					fn_alertInfo('A', '<spring:message code="TODO.KEY" text="1단계부터 입력해 주세요."/>', function(){
						var url = '/mobile/ship/shipMobileProcInfoRegStep1.do';
						
						var yardCode = getQuerystring('yardCode');
						var yardName = getQuerystring('yardName');
						
						url += '?yardCode='+yardCode+'&yardName='+yardName;
						
						if(!app.utils.isEmpty(seqShipProcInfo)) url += '&seqShipProcInfo='+seqShipProcInfo;
						
						window.location.href = url;
					});
					return;
				}
				
				//시퀀스 셋팅
				$('#js-ship-mobile-proc-reg-seq').val(seqShipProcInfo);
				
				var yardCode = getQuerystring('yardCode');
				
				//조선소 코드 셋팅
				$('#js-ship-mobile-proc-reg-yard-code').val(yardCode);
				
				//부착성 콤보 조회
				retrieveShipAdhesive.request();
				//T/UP 콤보 조회
				retrieveShipTup.request();
				//점도 Maker 콤보 조회
				retrieveShipPaintMaker.request();
				//점도 증감 콤보 조회
				retrieveShipViscosityChange.request();
				//Leveling 콤보 조회
				retrieveShipLevelingFault.request();
				
				//부착성 콤보 change 이벤트
				$('#js-ship-mobile-proc-reg-adhesive-id').off().on('change', function(){
					if($(this).val() == 'AD05')
					{
						$('#js-ship-mobile-proc-reg-adhesive-remark').attr('disabled', false);
					}
					else
					{
						$('#js-ship-mobile-proc-reg-adhesive-remark').val('');
						$('#js-ship-mobile-proc-reg-adhesive-remark').attr('disabled', true);
					}
				});
				//T/UP 작업성 콤보 change 이벤트
				$('#js-ship-mobile-proc-reg-tup-id').off().on('change', function(){
					if($(this).val() == 'TO04')
					{
						$('#js-ship-mobile-proc-reg-tup-remark').attr('disabled', false);
					}
					else
					{
						$('#js-ship-mobile-proc-reg-tup-remark').val('');
						$('#js-ship-mobile-proc-reg-tup-remark').attr('disabled', true);
					}
				});
				//Leveling 콤보 change 이벤트
				$('#js-ship-mobile-proc-reg-leveling-id').off().on('change', function(){
					if($(this).val() == 'LF05')
					{
						$('#js-ship-mobile-proc-reg-leveling-remark').attr('disabled', false);
					}
					else
					{
						$('#js-ship-mobile-proc-reg-leveling-remark').val('');
						$('#js-ship-mobile-proc-reg-leveling-remark').attr('disabled', true);
					}
				});
				//Blushing 발생 click 이벤트
				$('#js-ship-mobile-proc-reg-blushing-div').off().on('click', function(){
					if($(this).find('.active').hasClass('toggle-on'))
					{
						$('#js-ship-mobile-proc-reg-blushing-temp').attr('disabled', false);
						$('#js-ship-mobile-proc-reg-blushing-time').attr('disabled', false);
					}
					else
					{
						$('#js-ship-mobile-proc-reg-blushing-temp').val('');
						$('#js-ship-mobile-proc-reg-blushing-time').val('');
						$('#js-ship-mobile-proc-reg-blushing-temp').attr('disabled', true);
						$('#js-ship-mobile-proc-reg-blushing-time').attr('disabled', true);
					}
				});
				//흐름성 click 이벤트
				$('#js-ship-mobile-proc-reg-flowability-div').off().on('click', function(){
					if($(this).find('.active').hasClass('toggle-on'))
					{
						$('#js-ship-mobile-proc-reg-flowability-wft').attr('disabled', false);
					}
					else
					{
						$('#js-ship-mobile-proc-reg-flowability-wft').val('');
						$('#js-ship-mobile-proc-reg-flowability-wft').attr('disabled', true);
					}
				});
				//무화정도 click 이벤트
				$('#js-ship-mobile-proc-reg-atomization-div').off().on('click', function(){
					if($(this).find('.active').hasClass('toggle-on'))
					{
						$('#js-ship-mobile-proc-reg-atomization-rate').attr('disabled', false);
					}
					else
					{
						$('#js-ship-mobile-proc-reg-atomization-rate').val('');
						$('#js-ship-mobile-proc-reg-atomization-rate').attr('disabled', true);
					}
				});
				
				//소수점만 받기
				onlyDecimal($('#js-ship-mobile-proc-reg-gloss, #js-ship-mobile-proc-reg-blushing-temp'), 5, 1);
				//정수만 받기
				onlyInteger($('#js-ship-mobile-proc-reg-pot-life, #js-ship-mobile-proc-reg-viscosity-rate, #js-ship-mobile-proc-reg-walk-on-dry, #js-ship-mobile-proc-reg-blushing-time'));
				onlyInteger($('#js-ship-mobile-proc-reg-flowability-wft, #js-ship-mobile-proc-reg-atomization-rate'));
				
				//자리수 제한
				$('#js-ship-mobile-proc-reg-gloss, #js-ship-mobile-proc-reg-blushing-temp').attr('maxlength', 7);
				$('#js-ship-mobile-proc-reg-pot-life, #js-ship-mobile-proc-reg-viscosity-rate, #js-ship-mobile-proc-reg-walk-on-dry, #js-ship-mobile-proc-reg-blushing-time').attr('maxlength', 5);
				$('#js-ship-mobile-proc-reg-flowability-wft, #js-ship-mobile-proc-reg-atomization-rate').attr('maxlength', 5);
				
				//뒤로가기 버튼
				$('.wp-prev-white').off().on('click', function() {
					var url = '/mobile/ship/shipMobileProcInfoMng.do';
					
					var yardCode = getQuerystring('yardCode');
					var yardName = getQuerystring('yardName');
					
					url += '?yardCode='+yardCode+'&yardName='+yardName;
					
					window.location.href = url;
				});
				
				//이전 버튼
				$('#js-ship-mobile-proc-reg-back').off().on('click', function() {
					retrieveShipMobileProcInfoRegStep5(seqShipProcInfo);
				});
				
				//다음 버튼
				$('#js-ship-mobile-proc-reg-next').off().on('click', function() {
					retrieveShipMobileProcInfoRegStep7(seqShipProcInfo);
				});
				
				//조회
				if(!app.utils.isEmpty(seqShipProcInfo)){
					retrieveProcRegisterInfo.request(seqShipProcInfo);
				}
			});
			
			var retrieveProcRegisterInfo = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								
								if(response.rs.length > 0)
								{
									$('#js-ship-mobile-proc-reg-adhesive-id').val(response.rs[0].adhesiveId);
									$('#js-ship-mobile-proc-reg-adhesive-id').trigger('change');
									$('#js-ship-mobile-proc-reg-adhesive-remark').val(response.rs[0].adhesiveRemark);
									$('#js-ship-mobile-proc-reg-pot-life').val(response.rs[0].potLife);
									$('#js-ship-mobile-proc-reg-tup-id').val(response.rs[0].tupId);
									$('#js-ship-mobile-proc-reg-tup-id').trigger('change');
									$('#js-ship-mobile-proc-reg-tup-remark').val(response.rs[0].tupRemark);
									$('#js-ship-mobile-proc-reg-viscosity-maker').val(response.rs[0].viscosityMaker);
									$('#js-ship-mobile-proc-reg-viscosity-rate').val(response.rs[0].viscosityRate);
									$('#js-ship-mobile-proc-reg-viscosity-change').val(response.rs[0].viscosityChange);
									$('#js-ship-mobile-proc-reg-gloss').val(response.rs[0].gloss);
									$('#js-ship-mobile-proc-reg-walk-on-dry').val(response.rs[0].walkOnDry);
									
									if(response.rs[0].blushingYn != 'Y')
									{
										$('#js-ship-mobile-proc-reg-blushing-div').click();
									}
									$('#js-ship-mobile-proc-reg-blushing-div').trigger('click');
									
									$('#js-ship-mobile-proc-reg-blushing-temp').val(response.rs[0].blushingTemp);
									$('#js-ship-mobile-proc-reg-blushing-time').val(response.rs[0].blushingTime);
									
									if(response.rs[0].flowabilityYn != 'Y')
									{
										$('#js-ship-mobile-proc-reg-flowability-div').click();
									}
									$('#js-ship-mobile-proc-reg-flowability-div').trigger('click');
									
									$('#js-ship-mobile-proc-reg-flowability-wft').val(response.rs[0].flowabilityWft);
									
									if(response.rs[0].atomizationYn != 'Y')
									{
										$('#js-ship-mobile-proc-reg-atomization-div').click();
									}
									$('#js-ship-mobile-proc-reg-atomization-div').trigger('click');
									
									$('#js-ship-mobile-proc-reg-atomization-rate').val(response.rs[0].atomizationRate);
									
									if(response.rs[0].smellYn != 'Y')
									{
										$('#js-ship-mobile-proc-reg-smell-div').click();
									}
									
									if(response.rs[0].skinTroubleYn != 'Y')
									{
										$('#js-ship-mobile-proc-reg-skin-trouble-div').click();
									}
									
									$('#js-ship-mobile-proc-reg-leveling-id').val(response.rs[0].levelingId);
									$('#js-ship-mobile-proc-reg-leveling-id').trigger('change');
									$('#js-ship-mobile-proc-reg-leveling-remark').val(response.rs[0].levelingRemark);
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
					request: function(seqShipProcInfo) {
						// ------------------------------------
						// ajax request
						// ------------------------------------
						
						var params = {
							service: 'ship.procInfo',
							method: 'retrieveProcRegisterInfo',
							seqShipProcInfo: seqShipProcInfo
						};

						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json'});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			var retrieveShipAdhesive = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
			
							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-adhesive-id').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-adhesive-id').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-adhesive-id').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
							service: 'ship.common',
							method: 'retrieveShipAdhesive'
						};
			
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			var retrieveShipTup = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
			
							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-tup-id').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-tup-id').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-tup-id').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
							service: 'ship.common',
							method: 'retrieveShipTup'
						};
			
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			var retrieveShipPaintMaker = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';

							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-viscosity-maker').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-viscosity-maker').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-viscosity-maker').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
							service: 'ship.common',
							method: 'retrieveShipPaintMaker'
						};
				
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			var retrieveShipViscosityChange = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
			
							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-viscosity-change').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-viscosity-change').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-viscosity-change').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
							service: 'ship.common',
							method: 'retrieveShipViscosityChange'
						};
			
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};

			var retrieveShipLevelingFault = {
					success: function(response, status, jqueryXHR) {
						// ------------------------------------
						// response json structure - {message: '', error: '' rs: null}
						// ------------------------------------
						if (typeof response.message !== 'undefined') {
							var message = response.message || '';
			
							if (message === 'OK') {
								$('#js-ship-mobile-proc-reg-leveling-id').find('option').remove();
								
								for(var i=0; i<response.rs.length; i++)
								{
									$('#js-ship-mobile-proc-reg-leveling-id').append("<option value='"+response.rs[i].code+"'>"+response.rs[i].codeNm+"</option>");
								}
								
								var cnt = response.rs.length;
								$('#js-ship-mobile-proc-reg-leveling-id').attr("title", cnt+" <spring:message code='TODO.KEY' text='건'/>");
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
							service: 'ship.common',
							method: 'retrieveShipLevelingFault'
						};
			
						app.mask.pageLock();
						var ajax = $.ajax({type: 'post', url: '/doQuery.ajax', data: params, dataType: 'json', async: false});
						ajax.done(this.success);
						ajax.fail(this.error);
						ajax.always(this.complete);
					}
			};
			
			var retrieveShipMobileProcInfoRegStep5 = function(seqShipProcInfo){
				
				var url = '/mobile/ship/shipMobileProcInfoRegStep5.do';
				
				var yardCode = getQuerystring('yardCode');
				var yardName = getQuerystring('yardName');
				
				url += '?yardCode='+yardCode+'&yardName='+yardName;
				
				if(!app.utils.isEmpty(seqShipProcInfo)) url += '&seqShipProcInfo='+seqShipProcInfo;
				
				$('#js-ship-mobile-proc-reg-form').attr('action', url);
				$('#js-ship-mobile-proc-reg-form').submit();
			}
			
			var retrieveShipMobileProcInfoRegStep7 = function(seqShipProcInfo){
				
				var potLife = $('#js-ship-mobile-proc-reg-pot-life').val();
				var viscosityRate = $('#js-ship-mobile-proc-reg-viscosity-rate').val();
				var gloss = $('#js-ship-mobile-proc-reg-gloss').val();
				var walkOnDry = $('#js-ship-mobile-proc-reg-walk-on-dry').val();
				var blushingTemp = $('#js-ship-mobile-proc-reg-blushing-temp').val();
				var blushingTime = $('#js-ship-mobile-proc-reg-blushing-time').val();
				var flowabilityWft = $('#js-ship-mobile-proc-reg-flowability-wft').val();
				var atomizationRate = $('#js-ship-mobile-proc-reg-atomization-rate').val();
				var blushingYn = 'N';
				var flowabilityYn = 'N';
				var atomizationYn = 'N';
				var smellYn = 'N';
				var skinTroubleYn = 'N';
				
				if(!isInteger(potLife)){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="잘못된 숫자 형식입니다."/>', function(){
						$('#js-ship-mobile-proc-reg-pot-life').focus();
					});
					return;
				}
				if(!isInteger(viscosityRate)){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="잘못된 숫자 형식입니다."/>', function(){
						$('#js-ship-mobile-proc-reg-viscosity-rate').focus();
					});
					return;
				}
				if(!isDecimal(gloss)){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="잘못된 소수점 형식입니다."/>', function(){
						$('#js-ship-mobile-proc-reg-gloss').focus();
					});
					return;
				}
				if(!isInteger(walkOnDry)){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="잘못된 숫자 형식입니다."/>', function(){
						$('#js-ship-mobile-proc-reg-walk-on-dry').focus();
					});
					return;
				}
				if(!isDecimal(blushingTemp)){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="잘못된 소수점 형식입니다."/>', function(){
						$('#js-ship-mobile-proc-reg-blushing-temp').focus();
					});
					return;
				}
				if(!isInteger(blushingTime)){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="잘못된 숫자 형식입니다."/>', function(){
						$('#js-ship-mobile-proc-reg-blushing-time').focus();
					});
					return;
				}
				if(!isInteger(flowabilityWft)){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="잘못된 숫자 형식입니다."/>', function(){
						$('#js-ship-mobile-proc-reg-flowability-wft').focus();
					});
					return;
				}
				if(!isInteger(atomizationRate)){
					fn_alertInfo("A", '<spring:message code="TODO.KEY" text="잘못된 숫자 형식입니다."/>', function(){
						$('#js-ship-mobile-proc-reg-atomization-rate').focus();
					});
					return;
				}
				
				if($('#js-ship-mobile-proc-reg-blushing-div').find('.active').hasClass('toggle-on'))
					blushingYn = 'Y';
				if($('#js-ship-mobile-proc-reg-flowability-div').find('.active').hasClass('toggle-on'))
					flowabilityYn = 'Y';
				if($('#js-ship-mobile-proc-reg-atomization-div').find('.active').hasClass('toggle-on'))
					atomizationYn = 'Y';
				if($('#js-ship-mobile-proc-reg-smell-div').find('.active').hasClass('toggle-on'))
					smellYn = 'Y';
				if($('#js-ship-mobile-proc-reg-skin-trouble-div').find('.active').hasClass('toggle-on'))
					skinTroubleYn = 'Y';
				
				$('#js-ship-mobile-proc-reg-blushing-yn').val(blushingYn);
				$('#js-ship-mobile-proc-reg-flowability-yn').val(flowabilityYn);
				$('#js-ship-mobile-proc-reg-atomization-yn').val(atomizationYn);
				$('#js-ship-mobile-proc-reg-smell-yn').val(smellYn);
				$('#js-ship-mobile-proc-reg-skin-trouble-yn').val(skinTroubleYn);
				
				var url = '/mobile/ship/shipMobileProcInfoRegStep7.do';
				
				var yardCode = getQuerystring('yardCode');
				var yardName = getQuerystring('yardName');
				
				url += '?yardCode='+yardCode+'&yardName='+yardName;
				
				if(!app.utils.isEmpty(seqShipProcInfo)) url += '&seqShipProcInfo='+seqShipProcInfo;
				
				$('#js-ship-mobile-proc-reg-form').attr('action', url);
				$('#js-ship-mobile-proc-reg-form').submit();
			}
			
		</script>
		
	</tiles:putAttribute>
	<!-- [e] 페이지 레벨 스크립트 -->
</tiles:insertDefinition>
