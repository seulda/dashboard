<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/campaign.css">


<main role="main" class="main-content" style="margin: 0">
   <div class = "container">
     <div class = "container1">
        <div id="donutChart"></div>
        <div class ="center_c">
         <c:forEach var="fulfil" items="${ fulfil }">
            <c:if test="${ fulfil.fulfil eq '완료' }">
               <div class="c_txt0">${ fulfil.fulfil } ${ fulfil.cnt }건</div>
            </c:if>
                <c:if test="${ fulfil.fulfil eq '추진중' }">
               <div class="c_txt">${ fulfil.fulfil } ${ fulfil.cnt }건</div>
            </c:if>
            <c:if test="${ (fulfil.fulfil eq '보류') or (fulfil.fulfil eq '폐기') }">
               <div class="c_txt1">${ fulfil.fulfil } ${ fulfil.cnt }건</div>
            </c:if>
         </c:forEach>
      </div>
      <div class ="center_tt">
         <div class="c_img"><img src ="${ pageContext.request.contextPath }/resources/img/doc1.png" style= "width:30px; height:30px;"></div>
         <div class="c_img_txt">이번년도 종료되는 공약</div>
      </div>
      <div class ="center_tk">
      <table class="table table-borderless table-striped">
         <tbody>
            <c:forEach var="period" items="${ period }">
               <tr>
                  <td style="text-align:center;">${ period.name }</td>
                  <td style="text-align:center;">${ period.rate }%</td>
               </tr>
            </c:forEach>
         </tbody>
      </table> 
      </div>      	      
     </div>
     <div class = "container2">
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
                  <div onclick="pop('${ rate.department }');" class="barcharts">
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
     </div>
     <div class = "container3">
         <div id="origin" class="card shadow border-2">
         <div class="card-header">
            <strong class="card-title mb-0">공약별 이행 현황</strong>
         </div>
         <div class="card-body">
               <table class="table table-borderless table-striped">
               <thead>
                  <tr role="row">
                     <th style="text-align:center;">담당</th>
                     <th style="text-align:center;">담당자</th>
                     <th style="text-align:center;">공약</th>
                     <th style="text-align:center;">사업기간</th>
                     <th style="text-align:center; width:50%; padding-right:5%">이행률</th>
                     <th style="text-align:center;">이행도</th>
                  </tr>
               </thead>
               <tbody>
                  <c:forEach var="all" items="${ all }">   
                  	<c:if test="${ (all.fulfil eq '완료') or (all.fulfil eq '추진중') }">	
                     <tr>
                        <th scope="col" style="text-align:center;">${ all.section }</th>
                        <td style="text-align:center;">${ all.manager }</td>
                        <td style="text-align:center;">${ all.name }</td>
                        <td style="text-align:center;">${ all.businessPeriod }</td>                        
                        <td style="text-align:center; padding-right:5%">
                           <div class="progress mb-3" style="height: 30px;">
                              <div class="progress-bar bg-success" role="progressbar" style="width: ${ all.rate }%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="${ all.rate }">
                                 ${ all.rate }</div>
                           </div>
                        </td>
                        
                        <td style="text-align:center;">
                           <c:if test="${ all.fulfil eq '완료' }">
                              <span class="badge badge-pill badge-primary">
                                 ${ all.fulfil }
                              </span>
                           </c:if>   
                           <c:if test="${ all.fulfil eq '추진중' }">
                              <span class="badge badge-pill badge-warning">
                                 ${ all.fulfil }
                              </span>
                           </c:if>    
                        </td> 
                     </tr>
                     </c:if>
                  </c:forEach>
                  
                   <c:forEach var="all" items="${ all }">   
                  	<c:if test="${ (all.fulfil eq '폐기') or (all.fulfil eq '보류') }">	
                     <tr>
                        <th scope="col" style="text-align:center;">${ all.section }</th>
                        <td style="text-align:center;">${ all.manager }</td>
                        <td style="text-align:center;">${ all.name }</td>
                        <td style="text-align:center;">${ all.businessPeriod }</td>                        
                        <td style="text-align:center; padding-right:5%">
                           <div class="progress mb-3" style="height: 30px;">
                              <div class="progress-bar bg-success" role="progressbar" style="width: ${ all.rate }%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="${ all.rate }">
                                 ${ all.rate }</div>
                           </div>
                        </td>
                        
                        <td style="text-align:center;">
                            <c:if test="${ all.fulfil eq '폐기' }">
                              <span class="badge badge-pill badge-danger">
                                 ${ all.fulfil }
                              </span>
                           </c:if>
                           <c:if test="${ all.fulfil eq '보류' }">
                              <span class="badge badge-pill badge-secondary">
                                 ${ all.fulfil }
                              </span>
                           </c:if>       
                        </td> 
                     </tr>
                     </c:if>
                  </c:forEach>
                  
                  
               </tbody>
            </table>
         </div>
      </div> 
      
      <div class="card" id="disp"></div>
      
     </div>
   </div>
<!-- <footer class="last"></footer> -->
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
   
   
   $(document).ready(function(){
	   $( '#disp' ).hide();
	});

   
   function pop(department) {
      //alert("onclick success!");
      
/*        $( '#origin' ).hide();
       $( '#disp' ).show();
       
      var result = '';
   $.ajax({
         url       : '${ pageContext.request.contextPath}/detail_list.do', 
         data    : {'department':department},   //parameter
         success  : function(result_data){
            
            //alert(result_data);
            console.log(result_data);
            result +='<div class="card-header"><strong class="card-title mb-0">공약별 이행 현황</strong></div>'
            result +='<div class="card-body"> <table class="table table-borderless table-striped"><thead><tr role="row">'
            result +='<th style="text-align:center;">담당</th><th style="text-align:center;">담당자</th><th style="text-align:center;">공약</th><th style="text-align:center;">사업기간</th><th style="text-align:center; width:50%; padding-right:5%">이행률</th><th style="text-align:center;">이행도</th>'
            result +='</tr></thead><tbody><c:forEach var="all" items="${ detailList }">'
            result +='<tr><th scope="col" style="text-align:center;">${ all.section }</th><td style="text-align:center;">${ all.manager }</td><td style="text-align:center;">${ all.name }</td><td style="text-align:center;">${ all.businessPeriod }</td>'
            result +='<td style="text-align:center; padding-right:5%"><div class="progress mb-3" style="height: 30px;"><div class="progress-bar bg-success" role="progressbar" style="width: ${ all.rate }%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="${ all.rate }">${ all.rate }</div></div></td>'       
            result +='<td style="text-align:center;">'
            result +='<c:if test="${ all.fulfil eq '완료' }"><span class="badge badge-pill badge-primary">${ all.fulfil }</span></c:if>'
            result +='<c:if test="${ all.fulfil eq '추진중' }"><span class="badge badge-pill badge-warning">${ all.fulfil }</span></c:if>'
            result +='<c:if test="${ all.fulfil eq '폐기' }"><span class="badge badge-pill badge-danger">${ all.fulfil }</span></c:if>'
            result +='<c:if test="${ all.fulfil eq '보류' }"><span class="badge badge-pill badge-secondary">${ all.fulfil }</span></c:if>' 
            result +='</td></tr></c:forEach></tbody></table></div>' 
            $('#disp').html(result); 
         },
         error    : function(err){
            alert(err.responseText);
         }
      });  */
      
      
      location.href='${ pageContext.request.contextPath}/detail_list.do?department=' + department;
      
   }
   
</script>

<script>
   var donutchart, donutChartOptions = {
      series : [ 54, 40, 4, 2],
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
      labels : [ "완료", "진행중", "보류", "폐기" ],
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
         colors : chartColors
      }
   }, 
   donutchartCtn = document.querySelector("#donutChart");
   donutchartCtn && (donutchart = new ApexCharts(donutchartCtn, donutChartOptions)).render();
   
   
   var donutChartWidget, donutChartWidgetOptions = {
      series : [ 54, 40, 4, 2],
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
               size : "30%",
               background : "transparent"
            },
            expandOnClick : !1
         }
      },
      labels : [ "완료", "추진중", "폐기", "보류" ],
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