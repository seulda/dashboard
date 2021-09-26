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
								<h3 style="margin-top:2vh; padding-top:10px;">거제시 인구 현황&nbsp;&nbsp;:&nbsp;&nbsp;<fmt:formatNumber value="${yc2021}" pattern="#,###,###" />명</h3>
								<p>(2021년 06월 기준)</p>
								<div style="margin:2vh 0; padding:10px;">
									<h4>${area} 인구수 : <fmt:formatNumber value="${yc[8].population}" pattern="#,###,###" />명 </h4>
									<h5>구성비 : <fmt:parseNumber value="${yc[8].population/yc2021 * 100}" integerOnly="true" />% </h5>
								</div>
								<div class="progress" style="margin:1vh 0 2vh 8vh; width:70%;">
									<div class="progress-bar" role="progressbar" style="width: ${men}%" aria-valuenow="${men}" aria-valuemin="0" aria-valuemax="100">
										<span style="text-align:left; margin-left:1vh;">남</span>
										${men}%</div>
									<div class="progress-bar bg-danger" role="progressbar" style="width: ${woman}%" aria-valuenow="${woman}" aria-valuemin="0" aria-valuemax="100">
										${woman}%
										<span style="text-align:right; margin-right:1vh;">여</span>	
									</div>
								</div>
								<h5 style="margin:1vh 0; padding:20px 10px;">전년대비 증감 :&nbsp;<c:if test="${yc[7].population > yc[8].population}">&nbsp;-&nbsp;</c:if><fmt:formatNumber value="${yc[7].population - yc[8].population}" pattern="#,###,###" />명 (<c:if test="${yc[7].population > yc[8].population}">-</c:if><fmt:parseNumber value="${yc[7].population/yc[8].population * 100 - 100}" integerOnly="true" />%)</h5>
							</div>
						</div>
						
						<div class="card shadow mb-0">
							<div class="card-body">
								<h5><a href="${pageContext.request.contextPath}/population" style="text-decoration:none; color:black;">거제시</a></h5>
								<span onClick="dongClick('dong01')">거제면 TEST</span>
								<div style="position:relative; width:51vh; margin:auto; padding-left:3vh">
									<!-- <span style="text-align:center; position:absolute; z-index:1; left:25%; top:49%; padding-left:2vh" name="dong01" onClick="dongClick(this.name)">거제면</span> -->
									<span style="text-align:center; position:absolute; z-index:1; left:25%; top:49%; padding-left:2vh"><a href="${pageContext.request.contextPath}/populationArea?dn=dong01" style="text-decoration: none; color:black;">거제면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:36%; top:44%; padding-left:2vh"><a href="${pageContext.request.contextPath}/populationArea?dn=dong02" style="text-decoration: none; color:black;">고현동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:32%; top:85%; padding-left:2vh"><a href="${pageContext.request.contextPath}/populationArea?dn=dong03" style="text-decoration: none; color:black;">남부면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:66%; top:44%; padding-left:2vh"><a href="${pageContext.request.contextPath}/populationArea?dn=dong04" style="text-decoration: none; color:black;">능포동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:34%; top:68%; padding-left:2vh"><a href="${pageContext.request.contextPath}/populationArea?dn=dong05" style="text-decoration: none; color:black;">동부면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:8%; top:52%; padding-left:2vh"><a href="${pageContext.request.contextPath}/populationArea?dn=dong06" style="text-decoration: none; color:black;">둔덕면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:10%; top:39%; padding-left:2vh"><a href="${pageContext.request.contextPath}/populationArea?dn=dong07" style="text-decoration: none; color:black;">사등면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:41%; top:52%; padding-left:2vh"><a href="${pageContext.request.contextPath}/populationArea?dn=dong08" style="text-decoration: none; color:black;">상문동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:44%; top:43%; padding-left:2vh"><a href="${pageContext.request.contextPath}/populationArea?dn=dong09" style="text-decoration: none; color:black;">수양동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:52%; top:48%; padding-left:2vh"><a href="${pageContext.request.contextPath}/populationArea?dn=dong10" style="text-decoration: none; color:black;">아주동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:42%; top:33%; padding-left:2vh"><a href="${pageContext.request.contextPath}/populationArea?dn=dong11" style="text-decoration: none; color:black;">연초면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:53%; top:42%; padding-left:2vh"><a href="${pageContext.request.contextPath}/populationArea?dn=dong12" style="text-decoration: none; color:black;">옥포1동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:56%; top:36%; padding-left:2vh"><a href="${pageContext.request.contextPath}/populationArea?dn=dong13" style="text-decoration: none; color:black;">옥포2동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:55%; top:62%; padding-left:2vh"><a href="${pageContext.request.contextPath}/populationArea?dn=dong14" style="text-decoration: none; color:black;">일운면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:52%; top:4%; padding-left:2vh"><a href="${pageContext.request.contextPath}/populationArea?dn=dong15" style="text-decoration: none; color:black;">장목면</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:64%; top:50%; padding-left:2vh"><a href="${pageContext.request.contextPath}/populationArea?dn=dong16" style="text-decoration: none; color:black;">장승포동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:30%; top:40%; padding-left:2vh"><a href="${pageContext.request.contextPath}/populationArea?dn=dong17" style="text-decoration: none; color:black;">장평동</a></span>
									<span style="text-align:center; position:absolute; z-index:1; left:36%; top:23%; padding-left:2vh"><a href="${pageContext.request.contextPath}/populationArea?dn=dong18" style="text-decoration: none; color:black;">하청면</a></span>
									<div style="width:51vh; height:0; padding-top:51vh; background-image:url(${pageContext.request.contextPath}/resources/img/gj.png); background-size:contain; background-repeat:no-repeat;"></div>
								</div>
								<br>
							</div>
						</div>
						
						
					</div>
					<!-- /. col -->
					
					<div class="col-md-7" style="padding:0;">
						
						<div class="card shadow mb-0">
							<div class="card-header" style="padding: 7px 16px;">
								<h5 class="card-title mb-0">연간 인구 현황</h5>
							</div>
							<div class="card-body" style="padding:0 10px;">
								<div class="chart-box">
									<div id="columnChart"></div>
								</div>
							</div>
						</div>
						
						
						<div class="card shadow mb-0">
							<div class="card-header" style="padding: 7px 16px;">
								<h5 class="card-title mb-0">연령별 인구 현황</h5>
							</div>
							<div class="card-body" style="padding:0 10px;">
								<div class="chart-box">
									<div id="barChart"></div>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
						
						
						<div class="card shadow mb-0">
							<div class="card-header" style="padding: 7px 16px;">
								<h5 class="card-title mb-0">인구 변화 요인</h5>
							</div>
							<div class="card-body" style="padding:0 10px;">
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
	function dongClick(name) {
		
		var dn = name;
		
		console.log("dong Click : " + dn);
		
		$.ajax({
			url: "${pageContext.request.contextPath}/population_Area",
			type: "post",
			data: { dn : dn },
			dataType: "json",
			success: function(data){
				
				area = data.area;
				console.log("data.area : " + area);
				yc2021 = data.yc2021;
				console.log("data.yc2021 : " + yc2021);
				
				yc = data.yc;
				console.log("data.yc : " + yc);
				console.log("yc[0].population : " + yc[0].population);
				
				men = data.men;
				console.log("data.men : " + men);
				woman = data.woman;
				console.log("data.woman : " + woman);
				
				ya = data.ya;
				console.log("data.ya : " + ya);
				console.log("ya[0].population : " + ya[0].population);
				
				yi = data.yi;
				console.log("data.yi : " + yi);
				console.log("yi[0].population : " + yi[0].population);
				
				alert("graph reload success");
				//location.reload();
				
			},
			error: function() {
				alert("server error");
			}
		});

	}
</script>

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
                    colors: colors.mutedColor,
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
	/* 사망건수 */
	var d01 = [ "${yi[0].population}", "${yi[5].population}", "${yi[10].population}", "${yi[15].population}", "${yi[20].population}", "${yi[25].population}", "${yi[30].population}", "${yi[35].population}", "${yi[40].population}" ];
	/* 이혼건수 */
	var d02 = [ "${yi[1].population}", "${yi[6].population}", "${yi[11].population}", "${yi[16].population}", "${yi[21].population}", "${yi[26].population}", "${yi[31].population}", "${yi[36].population}", "" ];
	/* 자연증가건수 */
	var d03 = [ "${yi[2].population}", "${yi[7].population}", "${yi[12].population}", "${yi[17].population}", "${yi[22].population}", "${yi[27].population}", "${yi[32].population}", "${yi[37].population}", "${yi[41].population}" ];
	/* 출생건수 */
	var d04 = [ "${yi[3].population}", "${yi[8].population}", "${yi[13].population}", "${yi[18].population}", "${yi[23].population}", "${yi[28].population}", "${yi[33].population}", "${yi[38].population}", "${yi[42].population}" ];
	/* 혼인건수 */
	var d05 = [ "${yi[4].population}", "${yi[9].population}", "${yi[14].population}", "${yi[19].population}", "${yi[24].population}", "${yi[29].population}", "${yi[34].population}", "${yi[39].population}", "" ];
	
	var lineChart, lineChartoptions = {
		series : [
			{	name : "출생", data : d04		},
			{	name : "사망", data : d01 	},
			{	name : "자연증가", data : d03 		},
			{	name : "혼인", data : d05 	},
			{	name : "이혼", data : d02 	} 
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
			/* type : "datetime", */
			categories : [ "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021" ],
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
