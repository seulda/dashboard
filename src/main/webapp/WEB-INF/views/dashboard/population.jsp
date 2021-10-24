<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<main role="main" class="main-content" style="margin:0">
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-12">

				<div class="row">
					<div class="col-md-5" style="padding:0;">
						
						<div class="card shadow mb-0" style="background-color:#FFF0E0">
							<div class="card-body text-center">
								<p style="padding-top:10px;">(2021년 06월 기준)</p>
								<h3 style="margin-top:15px;">거제시 인구 현황&nbsp;&nbsp;:&nbsp;&nbsp;<fmt:formatNumber value="${yc2021}" pattern="#,###,###" />명</h3>
								<div style="margin:20px;">
									<h4>${area} 인구수 : <fmt:formatNumber value="${yc[8].population}" pattern="#,###,###" />명 </h4>
									<h6>&nbsp;<c:if test="${area ne '거제시'}">거제시 대비 구성비 : <fmt:parseNumber value="${yc[8].population/yc2021 * 100}" integerOnly="true" />%</c:if>&nbsp;</h6>
								</div>
								<div class="progress" style="margin:1vh 0vh 1vh 8vh; height:2rem; width:70%;">
									<div class="progress-bar" role="progressbar" style="width: ${ys[0].per}%; font-size:18px;" aria-valuenow="${ys[0].per}" aria-valuemin="0" aria-valuemax="100">
										<span style="text-align:left; margin-left:1vh; font-size:18px;">남</span>
										${ys[0].per}%</div>
									<div class="progress-bar bg-danger" role="progressbar" style="width: ${ys[1].per}%; font-size:18px;" aria-valuenow="${ys[1].per}" aria-valuemin="0" aria-valuemax="100">
										${ys[1].per}%
										<span style="text-align:right; margin-right:1vh; font-size:18px;">여</span>	
									</div>
								</div>
								<div style="margin:0vh 0vh 3vh 8vh; width:70%;">
									<span style="float:left; margin-left:1vh; font-size:16px;"><fmt:formatNumber value="${ys[0].population}" pattern="#,###,###" />명</span>
									<span style="float:right; margin-right:1vh; font-size:16px;"><fmt:formatNumber value="${ys[1].population}" pattern="#,###,###" />명</span>	
								</div>
								<h5 style="margin:7px 0; padding-top:30px;">전년대비 증감 :&nbsp;<c:if test="${yc[7].population > yc[8].population}">&nbsp;-&nbsp;</c:if><fmt:formatNumber value="${yc[7].population - yc[8].population}" pattern="#,###,###" />명 (<c:if test="${yc[7].population > yc[8].population}">-</c:if><fmt:parseNumber value="${yc[7].population/yc[8].population * 100 - 100}" integerOnly="true" />%)</h5>
							</div>
						</div>
						
						<div class="card shadow mb-0">
							<div class="card-body">
								<h5><a href="${pageContext.request.contextPath}" style="text-decoration:none; color:black;">거제시 전체</a></h5>
								<div style="position:relative; width:565px; margin:auto; padding-left:3vh">
									<span style="text-align:center; position:absolute; z-index:1; left:28%; top:49%; padding-left:2vh"><a href="${pageContext.request.contextPath}?dn=거제면" style="text-decoration: none; color:black;">거제면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:37%; top:44%; padding-left:2vh"><a href="${pageContext.request.contextPath}?dn=고현동" style="text-decoration: none; color:black;">고현동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:34%; top:85%; padding-left:2vh"><a href="${pageContext.request.contextPath}?dn=남부면" style="text-decoration: none; color:black;">남부면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:67%; top:44%; padding-left:2vh"><a href="${pageContext.request.contextPath}?dn=능포동" style="text-decoration: none; color:black;">능포동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:36%; top:68%; padding-left:2vh"><a href="${pageContext.request.contextPath}?dn=동부면" style="text-decoration: none; color:black;">동부면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:9%; top:52%; padding-left:2vh"><a href="${pageContext.request.contextPath}?dn=둔덕면" style="text-decoration: none; color:black;">둔덕면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:12%; top:39%; padding-left:2vh"><a href="${pageContext.request.contextPath}?dn=사등면" style="text-decoration: none; color:black;">사등면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:43%; top:52%; padding-left:2vh"><a href="${pageContext.request.contextPath}?dn=상문동" style="text-decoration: none; color:black;">상문동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:46%; top:43%; padding-left:2vh"><a href="${pageContext.request.contextPath}?dn=수양동" style="text-decoration: none; color:black;">수양동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:54%; top:48%; padding-left:2vh"><a href="${pageContext.request.contextPath}?dn=아주동" style="text-decoration: none; color:black;">아주동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:44%; top:33%; padding-left:2vh"><a href="${pageContext.request.contextPath}?dn=연초면" style="text-decoration: none; color:black;">연초면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:54%; top:42%; padding-left:2vh"><a href="${pageContext.request.contextPath}?dn=옥포1동" style="text-decoration: none; color:black;">옥포1동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:57%; top:37%; padding-left:2vh"><a href="${pageContext.request.contextPath}?dn=옥포2동" style="text-decoration: none; color:black;">옥포2동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:56%; top:62%; padding-left:2vh"><a href="${pageContext.request.contextPath}?dn=일운면" style="text-decoration: none; color:black;">일운면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:54%; top:4%; padding-left:2vh"><a href="${pageContext.request.contextPath}?dn=장목면" style="text-decoration: none; color:black;">장목면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:65%; top:50%; padding-left:2vh"><a href="${pageContext.request.contextPath}?dn=장승포동" style="text-decoration: none; color:black;">장승포동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:32%; top:40%; padding-left:2vh"><a href="${pageContext.request.contextPath}?dn=장평동" style="text-decoration: none; color:black;">장평동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:38%; top:23%; padding-left:2vh"><a href="${pageContext.request.contextPath}?dn=하청면" style="text-decoration: none; color:black;">하청면</a></span>
									<div style="width:565px; height:0; padding-top:565px; background-image:url(${pageContext.request.contextPath}/resources/img/gj.png); background-size:contain; background-repeat:no-repeat;"></div>
								</div>
								<br>
							</div>
						</div>
					</div>
					<!-- /. col -->
					
					<div class="col-md-7" style="padding:0;">
						
						<div class="card shadow mb-0">
							<div class="card-header" style="padding: 10px 16px 4px 16px;">
								<h5 class="card-title mb-0">${area} 연간 인구 현황</h5>
							</div>
							<div class="card-body" style="padding:0 10px;">
								<div class="chart-box">
									<div id="columnChart"></div>
								</div>
							</div>
						</div>
						<!-- /.card -->
						
						
						<div class="card shadow mb-0">
							<div class="card-header" style="padding: 10px 16px 4px 16px;">
								<h5 class="card-title mb-0">${area} 연령별 인구 현황</h5>
							</div>
							<div class="card-body" style="padding:0 10px;">
								<div class="chart-box">
									<div id="barChart"></div>
								</div>
							</div>
						</div>
						<!-- /.card -->
						
						
						<div class="card shadow mb-0">
							<div class="card-header" style="padding: 10px 16px 4px 16px;">
								<h5 class="card-title mb-0">${area} 인구 변화 요인</h5>
							</div>
							<div class="card-body" style="padding:0 10px;">
								<div class="chart-box">
									<div id="lineChart"></div>
								</div>
							</div>
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
            height: 270,
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
                columnWidth: "40%",
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
                maxHeight: 100,
                style: {
                    /* colors: colors.mutedColor, */
                    cssClass: "text-muted",
                    fontFamily: base.defaultFontFamily
                }
            },
            axisBorder: { show: !1 }
        },
        yaxis: {
        	min: (${yc[0].population} + ${yc[8].population}) / 2 * 0.79,
        	forceNiceScale: 1,
            labels: {
                show: !0,
                trim: !1,
                offsetX: -10,
                minHeight: void 0,
                maxHeight: 100,
                style: {
                    /* colors: colors.mutedColor, */
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
                bottom: -10,
                left: 0
            }
        }
    },
    columnChartCtn = document.querySelector("#columnChart");
	columnChartCtn && (columnChart = new ApexCharts(columnChartCtn, columnChartoptions)).render();
</script>

<script>
	var d1 = [ '${ya[0].population}', '${ya[6].population}', '${ya[12].population}', '${ya[18].population}', '${ya[24].population}', '${ya[30].population}', '${ya[36].population}', '${ya[42].population}', '${ya[48].population}' ];
	var d2 = [ '${ya[1].population}', '${ya[7].population}', '${ya[13].population}', '${ya[19].population}', '${ya[25].population}', '${ya[31].population}', '${ya[37].population}', '${ya[43].population}', '${ya[49].population}' ];
	var d3 = [ '${ya[2].population}', '${ya[8].population}', '${ya[14].population}', '${ya[20].population}', '${ya[26].population}', '${ya[32].population}', '${ya[38].population}', '${ya[44].population}', '${ya[50].population}' ];
	var d4 = [ '${ya[3].population}', '${ya[9].population}', '${ya[15].population}', '${ya[21].population}', '${ya[27].population}', '${ya[33].population}', '${ya[39].population}', '${ya[45].population}', '${ya[51].population}' ];
	var d5 = [ '${ya[4].population}', '${ya[10].population}', '${ya[16].population}', '${ya[22].population}', '${ya[28].population}', '${ya[34].population}', '${ya[40].population}', '${ya[46].population}', '${ya[52].population}' ];
	var d6 = [ '${ya[5].population}', '${ya[11].population}', '${ya[17].population}', '${ya[23].population}', '${ya[29].population}', '${ya[35].population}', '${ya[41].population}', '${ya[47].population}', '${ya[53].population}' ];
	
	var barChart, barChartoptions = {
		series : [ 
			{ name : "0 - 9세", data : d1 }, 
			{ name : "10 - 19세", data : d2 }, 
			{ name : "20 - 29세", data : d3 }, 
			{ name : "30 - 49세", data : d4 }, 
			{ name : "50 - 64세", data : d5 },
			{ name : "65세 이상", data : d6 } 
		],
		chart : {
			type : "bar",
			height : 270,
			stacked : !0, /* bar block stack option */
			columnWidth : "70%",
			zoom : {
				enabled : !1
			},
			toolbar : {
				show: false,
				enabled : !1
			},
			animations: {
	            enabled: false
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
					/* colors : colors.mutedColor, */
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
					/* colors : colors.mutedColor, */
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
				useSeriesColors : !0 /* 범주 글자 색 변경 여부 */
			},
			offsetY : 10,
			markers : {
				width : 10,
				height : 10,
				strokeWidth : 0,
				/* strokeColor : colors.borderColor,
				fillColors : chartColors, */
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
		/* fill : {
			opacity : 1,
			colors : chartColors
		}, */
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
				bottom : -10,
				left : 10
			}
		}
	},
	barChartCtn = document.querySelector("#barChart");
	barChartCtn && (barChart = new ApexCharts(barChartCtn, barChartoptions)).render();
</script>

<script>

	var d01 = [ "${yi[0].population}", "${yi[5].population}", "${yi[10].population}", "${yi[15].population}", "${yi[20].population}", "${yi[25].population}", "${yi[30].population}", "${yi[35].population}", "${yi[40].population}" ];
	var d02 = [ "${yi[1].population}", "${yi[6].population}", "${yi[11].population}", "${yi[16].population}", "${yi[21].population}", "${yi[26].population}", "${yi[31].population}", "${yi[36].population}", "${yi[41].population}" ];
	var d03 = [ "${yi[2].population}", "${yi[7].population}", "${yi[12].population}", "${yi[17].population}", "${yi[22].population}", "${yi[27].population}", "${yi[32].population}", "${yi[37].population}", "${yi[42].population}" ];
	var d04 = [ "${yi[3].population}", "${yi[8].population}", "${yi[13].population}", "${yi[18].population}", "${yi[23].population}", "${yi[28].population}", "${yi[33].population}", "${yi[38].population}", "${yi[43].population}" ];
	var d05 = [ "${yi[4].population}", "${yi[9].population}", "${yi[14].population}", "${yi[19].population}", "${yi[24].population}", "${yi[29].population}", "${yi[34].population}", "${yi[39].population}", "${yi[44].population}" ];
	
	var lineChart, lineChartoptions = {
		series : [
			{ name : "${yi[3].item}", data : d04 },
			{ name : "${yi[0].item}", data : d01 },
			{ name : "${yi[2].item}", data : d03 },
			{ name : "${yi[4].item}", data : d05 },
			{ name : "${yi[1].item}", data : d02 }
		],
		chart : {
			height : 270,
			type : "line",
			background : !1,
			zoom : {
				enabled : !1
			},
			toolbar : {
				show : !1
			},
			animations: {
	            enabled: false
	        }
		},
		theme : {
			/* mode : colors.chartTheme, */
			palette: 'palette6'
		},
		stroke : {
			show : !0,
			curve : "smooth", /* smooth / straight / stepline */
			lineCap : "round",
			/* colors : chartColors, */
			width : [ 3, 3, 4, 3, 3 ],
			dashArray : [ 0, 0, 0, 0, 0 ]
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
			/* type : "datetime", */
			categories : [ "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021" ],
			labels : {
				show : !0,
				trim : !1,
				minHeight : void 0,
				maxHeight : 120,
				style : {
					/* colors : colors.mutedColor, */
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
					/* colors : colors.mutedColor, */
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
				/* colors : colors.mutedColor, */
				useSeriesColors : !1
			},
			markers : {
				width : 10,
				height : 10,
				strokeWidth : 0,
				/* strokeColor : colors.borderColor,
				fillColors : chartColors, */
				radius : 6,
				customHTML : void 0,
				onClick : void 0,
				offsetX : 0,
				offsetY : 0
			},
			itemMargin : {
				horizontal : 10,
				vertical : 10
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
				top : -5,
				right : 0,
				bottom : -10,
				left : 0
			}
		}
	},
	lineChartCtn = document.querySelector("#lineChart");
	lineChartCtn && (lineChart = new ApexCharts(lineChartCtn, lineChartoptions)).render();
</script>


<%@ include file="../layout/footer.jsp"%>
