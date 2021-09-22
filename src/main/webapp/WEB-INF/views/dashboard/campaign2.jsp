<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/board.css">


<main role="main" class="main-content">
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-12">
				<div class="row">

					<div class="col-md-4">
						<div class="card shadow mb-4">
							<div class="card-body">
								<div class="chart-box">
									<div id="donutChart"></div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-8">

						<div class="card shadow border-1">
							<div class="card-header">
								<strong class="card-title mb-0">부서별 공약 이행 현황</strong>
							</div>
							<div class="card-body">
								<div class="bar_t_com">
									<div class="bar_ch">
										<div class="num1">100%</div>
										<div class="num1">90%</div>
										<div class="num1">80%</div>
										<div class="num1">70%</div>
										<div class="num1">60%</div>
										<div class="num1">50%</div>
										<div class="num1">40%</div>
										<div class="num1">30%</div>
										<div class="num1">20%</div>
										<div class="num1">10%</div>
										<div class="num0">0%</div>
									</div>
								</div>
								<div class="bar_t">
									<c:forEach var="rate" items="${ rate }">
										<div onclick="test();" class="barcharts">
											<div class="barcharts_bar">
												<span class="bar"
													style="height: ${ rate.avgRate }%;"></span>
											</div>
										</div>
									</c:forEach>
								</div>
								<div class="bar_l">
									<c:forEach var="rate" items="${ rate }">
										<div onclick="" class="bar_l0" style="font-size: 10px;">${ rate.department }</div>
									</c:forEach>
								</div>
							</div>
						</div>
						<div class="card2 shadow mb-4">
							<h5 style="text-align: center; margin: 30px 0px;">이행률 미진 산업 top5</h5>
							<table class="table table-borderless table-striped">
								<thead>
									<tr role="row">
										<th style="text-align: center;">산업명</th>
										<th style="text-align: center;">진행현황</th>
										<th style="text-align: center;">이행률</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="category" items="${ category }">
										<tr>
											<td style="text-align: center;">${ category.category }</td>
											<td style="text-align: center;">${ category.successCat }/${ category.totalCat }</td>
											<td style="text-align: center; padding-right: 5%">
												<div class="progress mb-1">
													<div class="progress-bar" role="progressbar"
														style="width: ${ category.cat }%;"
														aria-valuenow="${ category.cat }"
														aria-valuemin="0" aria-valuemax="100">${ category.cat }%</div>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- .table -->
						</div>
						<div class="card2 shadow mb-4">
							<h5 style="text-align: center; margin: 30px 0px;">지역별 이행 현황</h5>
							<table class="table table-borderless table-striped">
								<thead>
									<tr role="row">
										<th style="text-align: center;">지역명</th>
										<th style="text-align: center;">공약갯수</th>
										<th style="text-align: center;">이행률</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="location" items="${ location }">
										<tr>
											<td style="text-align: center;">${ location.location }</td>
											<td style="text-align: center;">${ location.totalLoc }</td>
											<td style="text-align: center; padding-right: 5%">
												<div class="progress mb-1">
													<div class="progress-bar" role="progressbar"
														style="width: ${ location.loc }%;"
														aria-valuenow="${ location.loc }"
														aria-valuemin="0" aria-valuemax="100">${ location.loc }%</div>
												</div>
											</td>
										</tr>
									</c:forEach>
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
	
	function test() {
		alert("onclick success!");
	}
</script>

<script>
	var donutchart, donutChartOptions = {
		series : [ 44, 55, 20, 41, 17 ],
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
					size : "40%"
				},
				expandOnClick : !1
			}
		},
		labels : [ "Clothing", "Shoes", "Others", "Electronics", "Books" ],
		legend : {
			position : "bottom",
			fontFamily : base.defaultFontFamily,
			fontWeight : 400,
			labels : {
				colors : colors.mutedColor,
				useSeriesColors : !1
			},
			horizontalAlign : "left",
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
			colors : chartColors
		}
	}, 
	donutchartCtn = document.querySelector("#donutChart");
	donutchartCtn && (donutchart = new ApexCharts(donutchartCtn, donutChartOptions)).render();
	
	
	var donutChartWidget, donutChartWidgetOptions = {
		series : [ 44, 55, 20, 41, 17 ],
		chart : {
			type : "donut",
			height : 180,
			zoom : {
				enabled : !1
			},
			toolbar : {
				show : !1
			}
		},
		theme : {
			mode : colors.chartTheme
		},
		plotOptions : {
			pie : {
				donut : {
					size : "40%",
					background : "transparent"
				},
				expandOnClick : !1
			}
		},
		labels : [ "Clothing", "Shoes", "Others", "Electronics", "Books" ],
		dataLabels : {
			enabled : !0,
			style : {
				fontSize : "10px",
				fontFamily : base.defaultFontFamily,
				fontWeight : "300"
			}
		},
		legend : {
			show : !1
		},
		stroke : {
			show : !1,
			colors : colors.borderColor,
			width : 1,
			dashArray : 0
		},
		fill : {
			opacity : 1,
			colors : chartColors
		}
	}, 
	donutChartWidgetCtn = document.querySelector("#donutChartWidget");
	donutChartWidgetCtn && (donutChartWidget = new ApexCharts(donutChartWidgetCtn, donutChartWidgetOptions)).render();
</script>


<%@ include file="../layout/footer.jsp"%>
