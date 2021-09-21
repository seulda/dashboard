<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<main role="main" class="main-content">
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-12">

				<div class="row">
					<div class="col-md-6">
						
						<div class="card shadow mb-4">
							<div class="card-body">
								<h3>인구 현황</h3>
								<p>(2021년 07월 기준)</p>
								<br>
								<h5>인구수 : </h5>
								<h6>구성비 : </h6>
								<br>
								<div class="progress">
									<span>남</span>
									<div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100">55%</div>
									<div class="progress-bar bg-danger" role="progressbar" style="width: 45%" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100">45%</div>
									<span>여</span>
								</div>
								<br>
							</div>
						</div>
						
						<div class="card shadow mb-4">
							<!-- <div class="card-header">
								<strong class="card-title mb-0">card header 01</strong>
							</div> -->
							<div class="card-body">
								<span>거제시</span>
							</div>
						</div>
						
						
					</div>
					<!-- /. col -->
					
					<div class="col-md-6">
						
						<div class="card shadow mb-2">
							<div class="card-header">
								<strong class="card-title mb-0">연간 인구 현황</strong>
							</div>
							<div class="card-body">
								<div class="chart-box">
									<div id="columnChart"></div>
								</div>
							</div>
						</div>
						
						
						<div class="card shadow mb-2">
							<div class="card-header">
								<strong class="card-title mb-0">연령별 인구 현황</strong>
							</div>
							<div class="card-body">
								<div class="chart-box">
									<div id="barChart"></div>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
						
						
						<div class="card shadow mb-2">
							<div class="card-header">
								<strong class="card-title mb-0">인구 변화 요인</strong>
							</div>
							<div class="card-body">
								<!-- <div class="chartjs-size-monitor">
									<div class="chartjs-size-monitor-expand">
										<div class=""></div>
									</div>
									<div class="chartjs-size-monitor-shrink">
										<div class=""></div>
									</div>
								</div>
								<canvas id="lineChartjs" width="662" height="539" style="display: block; height: 300px; width: 368px;" class="chartjs-render-monitor"></canvas> -->
								<div class="chart-box">
									<div id="lineChart"></div>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
						
					</div>
					<!-- /. col -->
				</div>
				<!-- end row section -->

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
	<c:forEach var="list" items="${yt}">
		var dt = '${list.year}' + '년';
	    dateArea.push(dt);
	    D.push('${list.population}');
	</c:forEach>
	
	var columnChart, columnChartoptions = {
        series: [{
            name: "인구 수",
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

<script>
	var barChart, barChartoptions = {
		series : [ {
			name : "Desktop",
			data : [ 44, 55, 41, 64, 22, 43, 21, 53, 32, 33 ]
		}, {
			name : "Mobile",
			data : [ 53, 32, 33, 52, 13, 44, 32, 53, 32, 33 ]
		}, {
			name : "Tablet",
			data : [ 13, 12, 13, 32, 3, 24, 12, 33, 12, 13 ]
		} ],
		chart : {
			type : "bar",
			height : 350,
			stacked : !0,
			columnWidth : "70%",
			zoom : {
				enabled : !1
			},
			toolbar : {
				enabled : !1
			}
		},
		theme : {
			mode : colors.chartTheme
		},
		dataLabels : {
			enabled : !0
		},
		responsive : [ {
			breakpoint : 480,
			options : {
				legend : {
					position : "bottom",
					offsetX : -10,
					offsetY : 0
				}
			}
		} ],
		plotOptions : {
			bar : {
				horizontal : !0,
				columnWidth : "30%"
			}
		},
		xaxis : {
			categories : [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ],
			labels : {
				show : !0,
				trim : !1,
				minHeight : void 0,
				maxHeight : 120,
				style : {
					colors : colors.mutedColor,
					cssClass : "text-muted",
					fontFamily : base.defaultFontFamily
				}
			},
			axisBorder : {
				show : !1
			}
		},
		yaxis : {
			labels : {
				show : !0,
				trim : !1,
				offsetX : -5,
				minHeight : void 0,
				maxHeight : 120,
				style : {
					colors : colors.mutedColor,
					cssClass : "text-muted",
					fontFamily : base.defaultFontFamily
				}
			}
		},
		legend : {
			position : "bottom",
			fontFamily : base.defaultFontFamily,
			fontWeight : 400,
			labels : {
				colors : colors.mutedColor,
				useSeriesColors : !1
			},
			offsetY : 10,
			markers : {
				width : 10,
				height : 10,
				strokeWidth : 0,
				strokeColor : colors.borderColor,
				fillColors : chartColors,
				radius : 6,
				customHTML : void 0,
				onClick : void 0,
				offsetX : 0,
				offsetY : 0
			},
			itemMargin : {
				horizontal : 10,
				vertical : 0
			},
			onItemClick : {
				toggleDataSeries : !0
			},
			onItemHover : {
				highlightDataSeries : !0
			}
		},
		fill : {
			opacity : 1,
			colors : chartColors
		},
		grid : {
			show : !0,
			borderColor : colors.borderColor,
			strokeDashArray : 0,
			position : "back",
			xaxis : {
				lines : {
					show : !0
				}
			},
			yaxis : {
				lines : {
					show : !1
				}
			},
			row : {
				colors : void 0,
				opacity : .5
			},
			column : {
				colors : void 0,
				opacity : .5
			},
			padding : {
				top : 0,
				right : 0,
				bottom : 0,
				left : 10
			}
		}
	},
	barChartCtn = document.querySelector("#barChart");
	barChartCtn && (barChart = new ApexCharts(barChartCtn, barChartoptions)).render();
</script>

<script>
	var lineChart, lineChartoptions = {
		series : [
				{
					name : "Page views",
					data : [ 31, 28, 30, 51, 42, 109, 100, 31, 40, 28, 31, 58,
							30, 51, 42, 109, 100, 116 ]
				},
				{
					name : "Visitors",
					data : [ 11, 45, 20, 32, 34, 52, 41, 11, 32, 45, 11, 75,
							20, 32, 34, 52, 41, 81 ]
				},
				{
					name : "Orders",
					data : [ 5, 25, 9, 14, 14, 32, 21, 5, 12, 25, 5, 55, 9, 14,
							14, 32, 21, 65 ]
				} ],
		chart : {
			height : 350,
			type : "line",
			background : !1,
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
		stroke : {
			show : !0,
			curve : "smooth",
			lineCap : "round",
			colors : chartColors,
			width : [ 3, 2, 3 ],
			dashArray : [ 0, 0, 0 ]
		},
		dataLabels : {
			enabled : !1
		},
		responsive : [ {
			breakpoint : 480,
			options : {
				legend : {
					position : "bottom",
					offsetX : -10,
					offsetY : 0
				}
			}
		} ],
		markers : {
			size : 4,
			colors : base.primaryColor,
			strokeColors : colors.borderColor,
			strokeWidth : 2,
			strokeOpacity : .9,
			strokeDashArray : 0,
			fillOpacity : 1,
			discrete : [],
			shape : "circle",
			radius : 2,
			offsetX : 0,
			offsetY : 0,
			onClick : void 0,
			onDblClick : void 0,
			showNullDataPoints : !0,
			hover : {
				size : void 0,
				sizeOffset : 3
			}
		},
		xaxis : {
			type : "datetime",
			categories : [ "01/01/2020 GMT", "01/02/2020 GMT",
					"01/03/2020 GMT", "01/04/2020 GMT", "01/05/2020 GMT",
					"01/06/2020 GMT", "01/07/2020 GMT", "01/08/2020 GMT",
					"01/09/2020 GMT", "01/10/2020 GMT", "01/11/2020 GMT",
					"01/12/2020 GMT", "01/13/2020 GMT", "01/14/2020 GMT",
					"01/15/2020 GMT", "01/16/2020 GMT", "01/17/2020 GMT",
					"01/18/2020 GMT" ],
			labels : {
				show : !0,
				trim : !1,
				minHeight : void 0,
				maxHeight : 120,
				style : {
					colors : colors.mutedColor,
					cssClass : "text-muted",
					fontFamily : base.defaultFontFamily
				}
			},
			axisBorder : {
				show : !1
			}
		},
		yaxis : {
			labels : {
				show : !0,
				trim : !1,
				offsetX : -10,
				minHeight : void 0,
				maxHeight : 120,
				style : {
					colors : colors.mutedColor,
					cssClass : "text-muted",
					fontFamily : base.defaultFontFamily
				}
			}
		},
		legend : {
			position : "top",
			fontFamily : base.defaultFontFamily,
			fontWeight : 400,
			labels : {
				colors : colors.mutedColor,
				useSeriesColors : !1
			},
			markers : {
				width : 10,
				height : 10,
				strokeWidth : 0,
				strokeColor : colors.borderColor,
				fillColors : chartColors,
				radius : 6,
				customHTML : void 0,
				onClick : void 0,
				offsetX : 0,
				offsetY : 0
			},
			itemMargin : {
				horizontal : 10,
				vertical : 0
			},
			onItemClick : {
				toggleDataSeries : !0
			},
			onItemHover : {
				highlightDataSeries : !0
			}
		},
		grid : {
			show : !0,
			borderColor : colors.borderColor,
			strokeDashArray : 0,
			position : "back",
			xaxis : {
				lines : {
					show : !1
				}
			},
			yaxis : {
				lines : {
					show : !0
				}
			},
			row : {
				colors : void 0,
				opacity : .5
			},
			column : {
				colors : void 0,
				opacity : .5
			},
			padding : {
				top : 0,
				right : 0,
				bottom : 0,
				left : 0
			}
		}
	},
	lineChartCtn = document.querySelector("#lineChart");
	lineChartCtn && (lineChart = new ApexCharts(lineChartCtn, lineChartoptions)).render();
</script>


<%@ include file="../layout/footer.jsp"%>
