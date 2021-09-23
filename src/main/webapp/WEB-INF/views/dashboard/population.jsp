<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<main role="main" class="main-content" style="margin:0">
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-12">

				<div class="row">
					<div class="col-md-5" style="padding:0">
						
						<div class="card shadow mb-0">
							<div class="card-body text-center">
								<h3 style="margin-top:2vh">거제시 인구 현황&nbsp;&nbsp;:&nbsp;&nbsp;<fmt:formatNumber value="${yc[8].population}" pattern="#,###,###" />명</h3>
								<p>(2021년 06월 기준)</p>
								<div style="margin:2vh 0">
									<h4>인구수 : <fmt:formatNumber value="${yc[8].population}" pattern="#,###,###" />명 </h4>
									<h5>구성비 : <fmt:parseNumber value="${yc[8].population/yc[8].population * 100}" integerOnly="true" />% </h5>
								</div>
								<div class="progress" style="margin:1vh 0 2vh 0; width:70%;">
									<div class="progress-bar" role="progressbar" style="width: ${men}%" aria-valuenow="${men}" aria-valuemin="0" aria-valuemax="100">
										<span style="text-align:left; margin-left:1vh;">남</span>
										${men}%</div>
									<div class="progress-bar bg-danger" role="progressbar" style="width: ${woman}%" aria-valuenow="${woman}" aria-valuemin="0" aria-valuemax="100">
										${woman}%
										<span style="text-align:right; margin-right:1vh;">여</span>	
									</div>
								</div>
								<h5 style="margin:1vh 0">전년대비 증감 : <fmt:formatNumber value="${yc[7].population - yc[8].population}" pattern="#,###,###" />명 (<fmt:parseNumber value="${yc[7].population/yc[8].population * 100 - 100}" integerOnly="true" />%)</h5>
							</div>
						</div>
						
						<div class="card shadow mb-0">
							<div class="card-body">
								<span>거제시</span>
								<div style="position:relative; width:100%; margin:auto;">
									<span style="text-align:center; position:absolute; z-index:1; left:25%; top:49%;"><a href="#">거제면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:35%; top:44%;"><a href="#">고현동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:32%; top:85%;"><a href="#">남부면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:66%; top:44%;"><a href="#">능포동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:34%; top:68%;"><a href="#">동부면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:8%; top:52%;"><a href="#">둔덕면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:10%; top:39%;"><a href="#">사등면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:41%; top:52%;"><a href="#">상문동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:44%; top:43%;"><a href="#">수양동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:52%; top:48%;"><a href="#">아주동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:41%; top:33%;"><a href="#">연초면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:53%; top:42%;"><a href="#">옥포1동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:56%; top:36%;"><a href="#">옥포2동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:53%; top:62%;"><a href="#">일운면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:52%; top:4%;"><a href="#">장목면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:63%; top:50%;"><a href="#">장승포동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:30%; top:40%;"><a href="#">장평동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:36%; top:23%;"><a href="#">하청면</a></span>
									<div style="width:100%; height:0; padding-top:100%; background-image:url(${pageContext.request.contextPath}/resources/img/gj.png); background-size:contain; background-repeat:no-repeat;"></div>
								</div>
							</div>
						</div>
						
						
					</div>
					<!-- /. col -->
					
					<div class="col-md-7" style="padding:0">
						
						<div class="card shadow mb-0">
							<div class="card-header">
								<strong class="card-title mb-0">연간 인구 현황</strong>
							</div>
							<div class="card-body">
								<div class="chart-box">
									<div id="columnChart"></div>
								</div>
							</div>
						</div>
						
						
						<div class="card shadow mb-0">
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
						
						
						<div class="card shadow mb-0">
							<div class="card-header">
								<strong class="card-title mb-0">인구 변화 요인</strong>
							</div>
							<div class="card-body">
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
	<c:forEach var="list" items="${yc}">
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
                columnWidth: "50%",
                radius: 0,
                enableShades: !1,
                /* endingShape: "rounded", */
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
	/* var dateArea = [], D = [];
	<c:forEach var="list" items="${yc}">
		var dt = '${list.year}' + '년';
	    dateArea.push(dt);
	    D.push('${list.population}');
	</c:forEach> */
	
	/* var D1 = [], D2 = [], D3 = [], D4 = [], D5 = [], D6 = [];
	<c:forEach var="list" items="${y2a}">
		var dt = '${list.year}' + '년';
	    dateArea.push(dt);
	    D.push('${list.population}');
	</c:forEach> */
	
	var barChart, barChartoptions = {
		series : [ {
			name : "0 - 9세",
			data : [ 44, 55, 41, 64, 22, 43, 21, 53, 32, 33 ]
		}, {
			name : "10 - 19세",
			data : [ 53, 32, 33, 52, 13, 44, 32, 53, 32, 33 ]
		}, {
			name : "20 - 29세",
			data : [ 13, 12, 13, 32, 3, 24, 12, 33, 12, 13 ]
		}, {
			name : "30 - 49세",
			data : [ 13, 12, 13, 32, 3, 24, 12, 33, 12, 13 ]
		}, {
			name : "50 - 64세",
			data : [ 13, 12, 13, 32, 3, 24, 12, 33, 12, 13 ]
		}, {
			name : "65세 이상",
			data : [ 13, 12, 13, 32, 3, 24, 12, 33, 12, 13 ]
		} ],
		chart : {
			type : "bar",
			height : 350,
			stacked : !0, /* bar block stack option */
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
			enabled : !0 /* Displaying data on the bar */
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
			categories : [ 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021 ],
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
				toggleDataSeries : !1
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
