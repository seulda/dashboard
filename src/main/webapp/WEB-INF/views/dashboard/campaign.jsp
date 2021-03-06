<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/campaign.css">


	<main role="main" class="main-content" style="margin: 0">
		<div class="container" style="padding:0;">
			<div class="container1">
				<div id="donutChart"></div>
				<div class="center_c">
							<div class="c_txt0">${ fulfil[1].fulfil } ${ fulfil[1].cnt }건</div>
							<div class="c_txt">${ fulfil[2].fulfil } ${ fulfil[2].cnt }건</div>
							<div class="c_txt1">${ fulfil[0].fulfil } ${ fulfil[0].cnt }건</div>
							<div class="c_txt1">${ fulfil[3].fulfil } ${ fulfil[3].cnt }건</div>
				</div>
				<div class="center_tt">
					<div class="c_img">
						<img
							src="${ pageContext.request.contextPath }/resources/img/doc1.png"
							style="width: 30px; height: 30px;">
					</div>
					<div class="c_img_txt" style="color: #000;">이번년도 종료되는 공약</div>
				</div>
				<div class="center_tk">
					<table class="table table-borderless table-striped">
						<tbody>
							<c:forEach var="period" items="${ period }">
								<tr>
									<td style="text-align: center; color: #000;">${ period.name }</td>
									<td style="text-align: center; color: #000;">${ period.rate }%</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				
				<div>
					
				</div>
				
			</div>
			<div class="container2">
				<div class="card shadow border-1">
					<div class="card-header">
						<strong class="card-title mb-0">부서별 공약 이행 현황</strong>
					</div>
					<div class="card-body">
						<div class="bar_t_com">
							<div class="bar_ch">
								<div class="num1" style="color: #000;">100%</div>
								<div class="num1" style="color: #000;">90%</div>
								<div class="num1" style="color: #000;">80%</div>
								<div class="num1" style="color: #000;">70%</div>
								<div class="num1" style="color: #000;">60%</div>
								<div class="num1" style="color: #000;">50%</div>
								<div class="num1" style="color: #000;">40%</div>
								<div class="num1" style="color: #000;">30%</div>
								<div class="num1" style="color: #000;">20%</div>
								<div class="num1" style="color: #000;">10%</div>
								<div class="num0" style="color: #000;">0%</div>
							</div>
						</div>
	                    <div class="bar_l2">
	                       <c:forEach var="rate" items="${ rate }">
	                          <div onclick="" class="bar_l20" style="font-size: 10px; color:#000000;"><b>${ rate.avgRate }</b></div>
	                       </c:forEach>
	                    </div>
						<div class="bar_t">
							<c:forEach var="rate" items="${ rate }">
								<div onclick="pop('${ rate.department }');" class="barcharts">
									<div class="barcharts_bar">
										<span class="bar" style="height: ${ rate.avgRate }%;"></span>
									</div>
								</div>
							</c:forEach>
						</div>
						<div class="bar_l">
							<c:forEach var="rate" items="${ rate }">
								<div onclick="pop('${ rate.department }');" class="bar_l0" style="font-size: 11px; color:#000;">${ rate.department }</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<div class="container3">
				<div id="origin" class="card shadow border-2">
	               <div class="card-header">
                    	<div class ="card_h_t">
		                     <c:if test="${ empty param.department }">
		                        <strong class="card-title mb-0">공약별 이행 현황</strong>
		                     </c:if>
		                     <c:if test="${ not empty param.department }">
		                        <strong class="card-title mb-0">${ param.department } 공약별 이행 현황</strong>   &nbsp                     
		                           <b>[</b><c:forEach var="fulfil" items="${ cnt }">
		                           	  <c:if test="${(fulfil.fulfil eq '추진중')}">
		                           	  	    <span style="color: red">
		                                    	<b>${ fulfil.fulfil } ${ fulfil.cnt }건</b>
		                                    </span>
		                           	  </c:if>
		                              <c:if
		                                 test="${ (fulfil.fulfil eq '완료') or (fulfil.fulfil eq '폐기') or (fulfil.fulfil eq '보류') }">
		                                    <span style="color: gray">
		                                    	<b>${ fulfil.fulfil } ${ fulfil.cnt }건</b>
		                                    </span>
		                              </c:if>     
		                           </c:forEach><b>]</b>                     
		                     </c:if>
	                 	</div>
		                <div class ="card_t_t">
	                 		<a href="${ pageContext.request.contextPath}/campaign">전체공약보기</a>
		                </div> 
	               </div>
					<div class="card-body">
						<table class="table table-borderless table-striped">
							<c:if test="${ empty param.department }">
							
							<thead class ="hh">
		                        <tr role="row">
		                           <th style="text-align: center; width:10%; color:#000;"><b>부서</b></th>
		                           <th style="text-align: center; width:10%; color:#000;"><b>담당</b></th>
		                           <th style="text-align: center; width:10%; color:#000;"><b>담당자</b></th>
		                           <th style="text-align: center; width:20%; color:#000;"><b>공약</b></th>
		                           <th style="text-align: center; width:10%; color:#000;"><b>사업기간</b></th>
		                           <th style="text-align: center; width: 40%; padding-right: 5%; color:#000;"><b>이행률</b></th>
		                           <th style="text-align: center; width:10%; color:#000;"><b>이행도</b></th>
		                        </tr>
		                     </thead>

								<tbody>
									<c:forEach var="all" items="${ detailList }">
										<c:if
											test="${ (all.fulfil eq '완료') or (all.fulfil eq '추진중') }">
											<tr>
												<th scope="col" style="text-align: center; color:#000;">${ all.department }</th>
												<th scope="col" style="text-align: center; color:#000;">${ all.section }</th>
												<td style="text-align: center; color:#000;">${ all.manager }</td>
												<td style="text-align: center; color:#000;">${ all.name }</td>
												<td style="text-align: center; color:#000;">${ all.businessPeriod }</td>
												<td style="text-align: center; padding-right: 5%">
													<div class="progress mb-3" style="height: 30px;">
														<div class="progress-bar bg-success" role="progressbar"
															style="width: ${ all.rate }%" aria-valuenow="25"
															aria-valuemin="0" aria-valuemax="${ all.rate }">${ all.rate }</div>
													</div>
												</td>

												<td style="text-align: center;"><c:if
														test="${ all.fulfil eq '완료' }">
														<span class="badge badge-pill badge-primary"> ${ all.fulfil }
														</span>
													</c:if> <c:if test="${ all.fulfil eq '추진중' }">
														<span class="badge badge-pill badge-warning"> ${ all.fulfil }
														</span>
													</c:if></td>
											</tr>
										</c:if>
									</c:forEach>

									<c:forEach var="all" items="${ detailList }">
										<c:if test="${ (all.fulfil eq '폐기') or (all.fulfil eq '보류') }">
											<tr>
												<th scope="col" style="text-align: center; color:#000;">${ all.department }</th>
												<th scope="col" style="text-align: center; color:#000;">${ all.section }</th>
												<td style="text-align: center; color:#000;">${ all.manager }</td>
												<td style="text-align: center; color:#000;">${ all.name }</td>
												<td style="text-align: center; color:#000;">${ all.businessPeriod }</td>
												<td style="text-align: center; padding-right: 5%">
													<div class="progress mb-3" style="height: 30px;">
														<div class="progress-bar bg-success" role="progressbar"
															style="width: ${ all.rate }%" aria-valuenow="25"
															aria-valuemin="0" aria-valuemax="${ all.rate }">${ all.rate }</div>
													</div>
												</td>
												<td style="text-align: center;"><c:if
														test="${ all.fulfil eq '폐기' }">
														<span class="badge badge-pill badge-danger"> ${ all.fulfil }
														</span>
													</c:if> <c:if test="${ all.fulfil eq '보류' }">
														<span class="badge badge-pill badge-secondary"> ${ all.fulfil }
														</span>
													</c:if></td>
											</tr>
										</c:if>
									</c:forEach>
								</tbody>

							</c:if>

							<c:if test="${not empty param.department }">
							<thead class="hh">
								<tr role="row">
									<th style="text-align: center; width: 10%; color: #000;"><b>담당</b></th>
									<th style="text-align: center; width: 10%; color: #000;"><b>담당자</b></th>
									<th style="text-align: center; width: 20%; color: #000;"><b>공약</b></th>
									<th style="text-align: center; width: 10%; color: #000;"><b>사업기간</b></th>
									<th style="text-align: center; width: 40%; padding-right: 5%; color: #000;"><b>이행률</b></th>
									<th style="text-align: center; width: 10%; color: #000;"><b>이행도</b></th>
								</tr>
							</thead>

							<tbody>
									<c:forEach var="dl" items="${ detailList }">
										<c:if
											test="${ (dl.fulfil eq '완료') or (dl.fulfil eq '추진중') }">
											<tr>
												<th scope="col" style="text-align: center; color:#000;">${ dl.section }</th>
												<td style="text-align: center; color:#000;">${ dl.manager }</td>
												<td style="text-align: center; color:#000;">${ dl.name }</td>
												<td style="text-align: center; color:#000;">${ dl.businessPeriod }</td>
												<td style="text-align: center; padding-right: 5%">
													<div class="progress mb-3" style="height: 30px;">
														<div class="progress-bar bg-success" role="progressbar"
															style="width: ${ dl.rate }%" aria-valuenow="25"
															aria-valuemin="0" aria-valuemax="${ dl.rate }">${ dl.rate }</div>
													</div>
												</td>

												<td style="text-align: center;"><c:if
														test="${ dl.fulfil eq '완료' }">
														<span class="badge badge-pill badge-primary"> ${ dl.fulfil }
														</span>
													</c:if> <c:if test="${ dl.fulfil eq '추진중' }">
														<span class="badge badge-pill badge-warning"> ${ dl.fulfil }
														</span>
													</c:if></td>
											</tr>
										</c:if>
									</c:forEach>

									<c:forEach var="dl" items="${ detailList }">
										<c:if test="${ (dl.fulfil eq '폐기') or (dl.fulfil eq '보류') }">
											<tr>
												<th scope="col" style="text-align: center; color:#000;">${ dl.section }</th>
												<td style="text-align: center; color:#000;">${ dl.manager }</td>
												<td style="text-align: center; color:#000;">${ dl.name }</td>
												<td style="text-align: center; color:#000;">${ dl.businessPeriod }</td>
												<td style="text-align: center; padding-right: 5%">
													<div class="progress mb-3" style="height: 30px;">
														<div class="progress-bar bg-success" role="progressbar"
															style="width: ${ dl.rate }%" aria-valuenow="25"
															aria-valuemin="0" aria-valuemax="${ dl.rate }">${ dl.rate }</div>
													</div>
												</td>

												<td style="text-align: center;"><c:if
														test="${ dl.fulfil eq '폐기' }">
														<span class="badge badge-pill badge-danger"> ${ dl.fulfil }
														</span>
													</c:if> <c:if test="${ dl.fulfil eq '보류' }">
														<span class="badge badge-pill badge-secondary"> ${ dl.fulfil }
														</span>
													</c:if></td>
											</tr>
										</c:if>
									</c:forEach>
								</tbody>
							</c:if>
						</table>
					</div>
				</div>

			</div>
		</div>
		<!-- <footer class="last"></footer> -->
	</main>
	<!-- main -->


<script src="${pageContext.request.contextPath}/resources/js/apexcharts.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/tinycolor-min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/config.js"></script>

<script>
	function pop(department) {

		location.href = '${ pageContext.request.contextPath}?department='
				+ department;

	}

	var donutchart, donutChartOptions = {
		series : [ ${fulfil[1].cnt}, ${fulfil[2].cnt}, ${fulfil[0].cnt}, ${fulfil[3].cnt} ],
		chart : {
			type : "donut",
			height : 305,
			zoom : {
				enabled : !1
			}
		},
		theme : {
			mode : colors.chartTheme
		},
		plotOptions : {
			pie : {
				donut : {
					size : "30%"
				},
				expandOnClick : !1
			}
		},
		labels : [ "완료", "추진중", "보류", "폐기" ],
		legend : {
			position : "top",
			fontFamily : base.defaultFontFamily,
			fontWeight : 400,
			labels : {
				colors : colors.mutedColor,
				useSeriesColors : !1
			},
			horizontalAlign : "center",
			fontFamily : base.defaultFontFamily,
			markers : {
				width : 10,
				height : 10,
				strokeWidth : 0,
				strokeColor : "#fff",
				radius : 6
			},
			itemMargin : {
				horizontal : 10,
				vertical : 2
			},
			onItemClick : {
				toggleDataSeries : !0
			},
			onItemHover : {
				highlightDataSeries : !0
			}
		},
		stroke : {
			colors : [ colors.borderColor ],
			width : 1
		},
		fill : {
			opacity : 1,
			/* colors : chartColors */
		}
	}, 
	donutchartCtn = document.querySelector("#donutChart");
	donutchartCtn && (donutchart = new ApexCharts(donutchartCtn, donutChartOptions)).render();

</script>


<%@ include file="../layout/footer.jsp"%>

