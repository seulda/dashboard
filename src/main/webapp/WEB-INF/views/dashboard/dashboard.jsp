<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/kag.css">


<main role="main" class="main-content">
	<div class="container-fluid">
		<div class="alert alert-info" role="alert">
			<span class="fe fe-alert-circle fe-16 mr-2"></span>안내영역
		</div>
		<br><br>
		<div class="row justify-content-center">
			<div class="col-12">
				<div class="row">
					<div class="col-md-6">
						<div class="col-xl-12 mb-4">
							<div class="card shadow bg-primary text-white border-0">
								<div class="card-body">
									<div class="row align-items-center">
										<div class="col-3 text-center">
											<span class="circle circle-sm bg-primary-light">
												<i class="fe fe-16 fe-alert-circle text-white mb-0"></i>
											</span>
										</div>
										<div class="col pr-0">
											<p class="small text-muted mb-0">실시간 추가 확진자</p>
											<a href="/beta"><span class="h3 mb-0 text-white">&nbsp;BETA SERVICE</span></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-12 mb-4">
							<div class="card shadow border-0">
								<div class="card-body">
									<div class="row align-items-center">
										<div class="col-3 text-center">
											<span class="circle circle-sm bg-primary">
												<i class="fe fe-16 fe-filter text-white mb-0"></i>
											</span>
										</div>
										<div class="col pr-0">
											<p class="small text-muted mb-0">어제 확진자</p>
											<span class="h3 mb-0">&nbsp;<fmt:formatNumber value="${alist[0].ADecideCnt}" pattern="#,###,###" /> 명</span>&nbsp;&nbsp;&nbsp;
											<c:if test="${(alist[0].ADecideCnt-alist[1].ADecideCnt) > 0}"><span class="small text-success">+</span></c:if>
											<span class="small text-success"><fmt:formatNumber value="${alist[0].ADecideCnt-alist[1].ADecideCnt}" pattern="#,###,###" />명</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-12 mb-4">
							<div class="card shadow border-0">
								<div class="card-body">
									<div class="row align-items-center">
										<div class="col-3 text-center">
											<span class="circle circle-sm bg-primary">
												<i class="fe fe-16 fe-bar-chart text-white mb-0"></i>
											</span>
										</div>
										<div class="col">
											<p class="small text-muted mb-0">누적 확진자</p>
											<div class="row align-items-center no-gutters">
												<div class="col-auto">
													<span class="h3 mr-2 mb-0">&nbsp;<fmt:formatNumber value="${alist[0].decideCnt}" pattern="#,###,###" /> 명</span>&nbsp;&nbsp;
													<span class="small text-success">+ <fmt:formatNumber value="${alist[0].ADecideCnt}" pattern="#,###,###" />명</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-12 mb-4">
							<div class="card shadow border-0">
								<div class="card-body">
									<div class="row align-items-center">
										<div class="col-3 text-center">
											<span class="circle circle-sm bg-primary">
												<i class="fe fe-16 fe-activity text-white mb-0"></i>
											</span>
										</div>
										<div class="col">
											<p class="small text-muted mb-0">누적 사망자</p>
											<span class="h3 mb-0">&nbsp;<fmt:formatNumber value="${alist[0].deathCnt}" pattern="#,###,###" /> 명</span>&nbsp;&nbsp;&nbsp;
											<c:if test="${alist[0].ADeathCnt > 0}"><span class="small text-success">+ ${alist[0].ADeathCnt}명</span></c:if>
											<c:if test="${alist[0].ADeathCnt == 0}"><span class="small text-success">없음</span></c:if>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card shadow mb-4">
							<div class="card-body">
								<h3 style="margin:10px 10px 0px 20px;">도넛 파이 차트</h3><br>
								<fmt:parseDate value="${alist[0].stateDt}" var="date0" pattern="yyyyMMdd" />
								<p style="text-align:right; margin-right:20px; margin-bottom:10px;">
								<fmt:formatDate value="${date0}" pattern="MM월 dd일" /> 기준</p>
								<div class="chart-widget" style="margin:10px 0px;">
									<div id="gradientRadial"></div>
								</div><br>
								<fmt:parseNumber var="adecPer" value="${alist[0].ADecideCnt/alist[1].ADecideCnt * 100}" integerOnly="true" />
								<%-- <fmt:formatNumber type="percent" value="${alist[0].ADecideCnt/alist[1].ADecideCnt}" pattern="0.0%" var="adecPerr"/> --%>
								<input type="hidden" id="adecPer" value="${adecPer}" />
								<div class="row">
									<div class="col-6 text-center">
										<p class="text-muted mb-0">어제</p>
										<h4 class="mb-1"><fmt:formatNumber value="${alist[1].ADecideCnt}" pattern="#,###,###" /> 명</h4>
									</div>
									<div class="col-6 text-center">
										<p class="text-muted mb-0">오늘</p>
										<h4 class="mb-1"><fmt:formatNumber value="${alist[0].ADecideCnt}" pattern="#,###,###" /> 명</h4>
										${alist[0].ADecideCnt-alist[1].ADecideCnt}명&nbsp;&nbsp;
										<c:if test="${(adecPer-100) > 0}"><span class="small text-success">+</span></c:if>
										<span class="small text-success">${adecPer-100}%</span>
									</div>
								</div>
							</div>
							<!-- .card-body -->
						</div>
						<!-- .card -->
					</div>
					<!-- .col -->
				</div>
				<!-- end section -->
				
				<br><hr><br>
				
				<!-- charts-->
				<div class="row my-4">
					<div class="col-md-12">
						<h4 style="text-align:center; margin:30px 0px;">막대 그래프 차트</h4>
						<div class="chart-box" style="padding:0px 20px;">
							<div id="columnChart"></div>
						</div>
					</div>
					<!-- .col -->
				</div>
				<!-- end section -->

				<br><br>
				<hr>
				
				<div class="row">
					<div class="col-md-12">
						<h4 style="text-align:center; margin:30px 0px;">표 차트</h4>
						<table class="table table-borderless table-striped">
							<thead>
								<tr role="row">
									<th style="text-align:center;">일자</th>
									<th style="text-align:center;">누적 확진자</th>
									<th style="text-align:center;">추가 확진자</th>
									<th style="text-align:center;">누적 사망자</th>
									<th style="text-align:center;">추가 사망자</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="col" style="text-align:center;">sample01</th>
									<td style="text-align:center;">sample01</td>
									<td style="text-align:center;">sample01</td>
									<td style="text-align:center;">sample01</td>
									<td style="text-align:center;">sample01</td>
								</tr>
								<tr>
									<th scope="col" style="text-align:center;">sample02</th>
									<td style="text-align:center;">sample02</td>
									<td style="text-align:center;">sample02</td>
									<td style="text-align:center;">sample02</td>
									<td style="text-align:center;">sample02</td>
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
	var adecPer = $('#adecPer').val()-100;
	var gradientRadialChart;
	var gradientRadialOptions = { 
	    series: [adecPer], 
	    chart: { 
	        height: 200, 
	        type: "radialBar", 
	        toolbar: { show: !1 } 
	    }, 
	    plotOptions: { 
	        radialBar: { 
	            startAngle: 0, 
	            endAngle: 360, 
	            hollow: { 
	                margin: 0, 
	                size: "70%", 
	                background: colors.backgroundColor, 
	                image: void 0, 
	                imageOffsetX: 0, 
	                imageOffsetY: 0, 
	                position: "front" 
	            }, 
	            track: { 
	                background: colors.backgroundColor, 
	                strokeWidth: "67%", 
	                margin: 0 
	            }, 
	            dataLabels: { 
	                show: !0, 
	                name: { 
	                    fontSize: "0.875rem", 
	                    fontWeight: 400, 
	                    offsetY: -10, 
	                    show: !0, 
	                    color: colors.mutedColor, 
	                    fontFamily: base.defaultFontFamily 
	                }, 
	                value: { 
	                    formatter: function (e) { return parseInt(e) }, 
	                    color: colors.headingColor, 
	                    fontSize: "1.53125rem", 
	                    fontWeight: 700, 
	                    fontFamily: base.defaultFontFamily, 
	                    offsetY: 5, 
	                    show: !0 
	                }, 
	                total: { 
	                    show: !0, 
	                    fontSize: "0.875rem", 
	                    fontWeight: 400, 
	                    offsetY: -10, 
	                    color: colors.mutedColor, 
	                    fontFamily: base.defaultFontFamily 
	                } 
	            } 
	        } 
	    }, 
	    fill: { 
	        type: "gradient", 
	        gradient: { 
	            shade: "dark", 
	            type: "horizontal", 
	            shadeIntensity: .5, 
	            gradientToColors: ["#ABE5A1"], 
	            inverseColors: !0, 
	            opacityFrom: 1, 
	            opacityTo: 1, 
	            stops: [0, 100] 
	        } 
	    }, 
	    stroke: { lineCap: "round" }, 
	    labels: ["Percent"] 
	};
	var gradientRadial = document.querySelector("#gradientRadial"); 
	gradientRadial && (gradientRadialChart = new ApexCharts(gradientRadial, gradientRadialOptions)).render(); 
</script>

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
