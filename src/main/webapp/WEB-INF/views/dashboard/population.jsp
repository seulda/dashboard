<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<main role="main" class="main-content">
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-12">
				<div class="row">
				
					<div class="col-md-4">
						<!-- <div class="col-xl-12 mb-4"> -->
							<div class="card shadow border-1">
								<div class="card-header">
									<strong class="card-title mb-0">공약 이행 현황</strong>
								</div>
								<div class="card-body">
									
									<table class="table table-borderless table-striped">
										<thead>
											<tr role="row">
												<th style="text-align:center;">01</th>
												<th style="text-align:center;">02</th>
												<th style="text-align:center;">03</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="col" style="text-align:center;">총계</th>
												<td style="text-align:center;">완료</td>
												<td style="text-align:center;">미완료</td>
											</tr>
										</tbody>
									</table>
									
									<!-- <span class="h5 mr-2 mb-1">공약 이행 현황</span> -->
									<div class="progress">
										<div class="progress-bar" role="progressbar" style="width: 75%;" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">75%</div>
									</div>
								</div>
							</div>
						<!-- </div> -->
						
						<br>
						
						<div class="card shadow border-1" style="margin:10px 0">
							<div class="card-body">
								<div class="row align-items-center no-gutters">
									<div class="col-auto">
										<span class="h5 mr-2 mb-1">이행 완료 임박 공약 top 5</span>
									</div>
								</div>
							</div>
						</div>
						<div class="card shadow border-1" style="margin:10px 0">
							<div class="card-body">
								<div class="row align-items-center no-gutters">
									<div class="col-auto">
										<span class="h5 mr-2 mb-1">이행률 하위 공약 top 5</span>
									</div>
								</div>
							</div>
						</div>
						<div class="card shadow border-1" style="margin:10px 0">
							<div class="card-body">
								<div class="row align-items-center no-gutters">
									<div class="col-auto">
										<span class="h5 mr-2 mb-1">100대 공약 상세보기</span>
									</div>
								</div>
							</div>
						</div>
							
					</div>
					
					<div class="col-md-8">
					
						<div class="card shadow">
							<div class="card-header">
								<strong class="card-title mb-0">부서별 공약 이행 현황</strong>
							</div>
							<div class="card-body">
								<div class="chartjs-size-monitor">
									<div class="chartjs-size-monitor-expand">
										<div class=""></div>
									</div>
									<div class="chartjs-size-monitor-shrink">
										<div class=""></div>
									</div>
								</div>
								<canvas id="barChartjs" width="425" height="269" style="display: block; height: 300px; width: 473px;" class="chartjs-render-monitor"></canvas>
							</div>
							<!-- /.card-body -->
						</div>
						
						<br>
						
						<div class="card shadow mb-4">
							<h5 style="text-align:center; margin:30px 0px;">부서별 이행 리스트</h5>
							<table class="table table-borderless table-striped">
								<thead>
									<tr role="row">
										<th style="text-align:center;">부서명</th>
										<th style="text-align:center;">진행 현황</th>
										<th style="text-align:center; width:50%; padding-right:5%">진행도</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td style="text-align:center;">조선산업일자리과</td>
										<td style="text-align:center;">1/10</td>
										<td style="text-align:center; padding-right:5%">
											<div class="progress mb-1">
												<div class="progress-bar" role="progressbar" style="width: 10%;" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100">10%</div>
											</div>
										</td>
									</tr>
									<tr>
										<td style="text-align:center;">교통과</td>
										<td style="text-align:center;">2/15</td>
										<td style="text-align:center; padding-right:5%">
											<div class="progress mb-1">
												<div class="progress-bar" role="progressbar" style="width: 10%;" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100">10%</div>
											</div>
										</td>
									</tr>
									<tr>
										<td style="text-align:center;">생활경제과</td>
										<td style="text-align:center;">1/7</td>
										<td style="text-align:center; padding-right:5%">
											<div class="progress mb-1">
												<div class="progress-bar" role="progressbar" style="width: 14%;" aria-valuenow="14" aria-valuemin="0" aria-valuemax="100">14%</div>
											</div>
										</td>
									</tr>
									<tr>
										<td style="text-align:center;">관광과</td>
										<td style="text-align:center;">3/6</td>
										<td style="text-align:center; padding-right:5%">
											<div class="progress mb-1">
												<div class="progress-bar" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">50%</div>
											</div>
										</td>
									</tr>
									<tr>
										<td style="text-align:center;">생활체육과</td>
										<td style="text-align:center;">2/2</td>
										<td style="text-align:center; padding-right:5%">
											<div class="progress mb-1">
												<div class="progress-bar" role="progressbar" style="width: 100%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">100%</div>
											</div>
										</td>
									</tr>
									<tr>
										<td style="text-align:center;">sample01</td>
										<td style="text-align:center;">sample01</td>
										<td style="text-align:center; padding-right:5%">
											<div class="progress mb-1">
												<div class="progress-bar" role="progressbar" style="width: 80%;" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">80%</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
							<!-- .table -->
						</div>
						<!-- .card -->
					</div>
					<!-- .col -->
				</div>
				<!-- end section -->

				<br><hr><br>
				
				<div class="row">
					<div class="col-md-12">
						<h4 style="text-align:center; margin:30px 0px;">조선산업일자리과 공약 이행 현황 (팝업용)</h4>
						<table class="table table-borderless table-striped">
							<thead>
								<tr role="row">
									<th style="text-align:center;">담당</th>
									<th style="text-align:center;">담당자</th>
									<th style="text-align:center;">공약</th>
									<th style="text-align:center;">이행도</th>
									<th style="text-align:center; width:50%; padding-right:5%">이행률</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="col" style="text-align:center;">일자리 창출</th>
									<td style="text-align:center;">4143</td>
									<td style="text-align:center;">지역일자리 적극 창출</td>
									<td style="text-align:center;">
										<span class="badge badge-pill badge-primary">완료</span>
									</td>
									<td style="text-align:center; padding-right:5%">
										<div class="progress mb-3" style="height: 30px;">
											<div class="progress-bar bg-success" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
												100%</div>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="col" style="text-align:center;">일자리 창출</th>
									<td style="text-align:center;">4144</td>
									<td style="text-align:center;">고용위기지역 지정 연장</td>
									<td style="text-align:center;">
										<span class="badge badge-pill badge-primary">완료</span>
									</td>
									<td style="text-align:center; padding-right:5%">
										<div class="progress mb-3" style="height: 30px;">
											<div class="progress-bar bg-success" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
												100%</div>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="col" style="text-align:center;">기업지원</th>
									<td style="text-align:center;">4154</td>
									<td style="text-align:center;">조선업 부활을 위한 전방위적 지원 강화</td>
									<td style="text-align:center;">
										<span class="badge badge-pill badge-warning">추진중</span>
									</td>
									<td style="text-align:center; padding-right:5%">
										<div class="progress mb-3" style="height: 30px;">
											<div class="progress-bar bg-success" role="progressbar" style="width: 93%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
												93%</div>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="col" style="text-align:center;">노동정책</th>
									<td style="text-align:center;">4453</td>
									<td style="text-align:center;">비정규직 근로자 지원센터 지원 확대</td>
									<td style="text-align:center;">
										<span class="badge badge-pill badge-primary">완료</span>
									</td>
									<td style="text-align:center; padding-right:5%">
										<div class="progress mb-3" style="height: 30px;">
											<div class="progress-bar bg-success" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
												100%</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- end section -->
			</div>
		</div>
		<!-- .row -->
	</div>
	<!-- .container-fluid -->
</main>
<!-- main -->


<script src="${pageContext.request.contextPath}/resources/js/apexcharts.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/tinycolor-min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/config.js"></script>

<script>
	var dateArea = [], D = [];
	<c:forEach var="list" items="${alist}">
		var dt = '${list.stateDt}';
		dt = dt.substr(4,2) + "월 " + dt.substr(6,2) + "일";
	    dateArea.push(dt);
	    D.push('${list.ADecideCnt}');
	</c:forEach>
	dateArea.reverse();
	D.reverse();
	
	var columnChart, columnChartoptions = {
        series: [{
            name: "일일 확진자",
            data: D
        }],
        chart: {
            type: "bar",
            height: 350,
            stacked: !1,
            columnWidth: "90%",
            zoom: {
                enabled: !1
            },
            toolbar: {
                show: !1
            },
            background: "transparent"
        },
        dataLabels: { enabled: !1 },
        theme: { mode: colors.chartTheme },
        responsive: [{
            breakpoint: 480,
            options: {
                legend: {
                    position: "bottom",
                    offsetX: -10,
                    offsetY: 0
                }
            }
        }],
        plotOptions: {
            bar: {
                horizontal: !1,
                columnWidth: "12%",
                radius: 30,
                enableShades: !1,
                endingShape: "rounded",
                dataLabels: {
					position: 'top',
				},
            }
        },
        dataLabels: {
            enabled: true,
            offsetY: -30,
            style: {
              fontSize: '12px',
              colors: [colors.chartTheme]
            }
          },
        xaxis: {
            /* type: "datetime", */
            categories: dateArea,
            labels: {
                show: !0,
                trim: !1,
                offsetX: 0,
                minHeight: void 0,
                maxHeight: 120,
                style: {
                    colors: colors.mutedColor,
                    cssClass: "text-muted",
                    fontFamily: base.defaultFontFamily
                }
            },
            axisBorder: { show: !1 }
        },
        yaxis: {
            labels: {
                show: !0,
                trim: !1,
                offsetX: -10,
                minHeight: void 0,
                maxHeight: 120,
                style: {
                    colors: colors.mutedColor,
                    cssClass: "text-muted",
                    fontFamily: base.defaultFontFamily
                }
            }
        },
        legend: {
            position: "top",
            fontFamily: base.defaultFontFamily,
            fontWeight: 400,
            labels: {
                colors: colors.mutedColor,
                useSeriesColors: !1
            },
            markers: {
                width: 10,
                height: 10,
                strokeWidth: 0,
                strokeColor: "#fff",
                fillColors: [extend.primaryColor, extend.primaryColorLighter],
                radius: 6,
                customHTML: void 0,
                onClick: void 0,
                offsetX: 0,
                offsetY: 0
            },
            itemMargin: {
                horizontal: 10,
                vertical: 0
            },
            onItemClick: { toggleDataSeries: !0 },
            onItemHover: { highlightDataSeries: !0 }
        },
        fill: {
            opacity: 1,
            colors: [base.primaryColor, extend.primaryColorLighter]
        },
        grid: {
            show: !0,
            borderColor: colors.borderColor,
            strokeDashArray: 0,
            position: "back",
            xaxis: {
                lines: { show: !1 }
            },
            yaxis: {
                lines: { show: !0 }
            },
            row: {
                colors: void 0,
                opacity: .5
            },
            column: {
                colors: void 0,
                opacity: .5
            },
            padding: {
                top: 0,
                right: 0,
                bottom: 0,
                left: 0
            }
        }
    },
    columnChartCtn = document.querySelector("#columnChart");
	columnChartCtn && (columnChart = new ApexCharts(columnChartCtn, columnChartoptions)).render();
</script>


<%@ include file="../layout/footer.jsp"%>
