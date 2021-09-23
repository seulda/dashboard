<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/campaign.css">


<main role="main" class="main-content" style="margin: 0">
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-12">
				<div class="row">
				
					<div class="col-md-4">

						<div class="col-12 col-md-3">
							<div class="card1 shadow mb-4">
								<div class="card-body text-center" style="position: relative;">
									<div id="donutChart" style="min-height: 750px;">
										<div id="apexcharts4wzvj85a"
											class="apexcharts-canvas apexcharts4wzvj85a apexcharts-theme-light"
											style="width: 477px; height: 750px;">
											<svg id="SvgjsSvg18351" width="477" height="300"
												xmlns="http://www.w3.org/2000/svg" version="1.1"
												xmlns:xlink="http://www.w3.org/1999/xlink"
												xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg"
												xmlns:data="ApexChartsNS" transform="translate(0, 0)"
												style="background: transparent;">
												<foreignObject x="0" y="0" width="477" height="300px">
                      							<div
													class="apexcharts-legend apexcharts-align-left position-bottom"
													xmlns="http://www.w3.org/1999/xhtml"
													position: absolute;">
													<div class="apexcharts-legend-series" rel="1"
														data:collapsed="false" style="margin: 2px 10px;">
														<span class="apexcharts-legend-marker" rel="1"
															data:collapsed="false"
															style="background: rgb(0, 143, 251); color: rgb(0, 143, 251); height: 10px; width: 10px; left: 0px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 6px;"></span>
                      <span class="apexcharts-legend-text" rel="1" i="0"
															data:default-text="done" data:collapsed="false"
															style="color: rgb(173, 181, 189); font-size: 12px; font-weight: 400; font-family: Overpass, sans-serif;">완료</span>
													</div>
                      <div class="apexcharts-legend-series" rel="2"
														data:collapsed="false" style="margin: 2px 10px;">
														<span class="apexcharts-legend-marker" rel="2"
															data:collapsed="false"
															style="background: rgb(0, 227, 150); color: rgb(0, 227, 150); height: 10px; width: 10px; left: 0px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 6px;"></span>
                      <span class="apexcharts-legend-text" rel="2" i="1"
															data:default-text="continue" data:collapsed="false"
															style="color: rgb(173, 181, 189); font-size: 12px; font-weight: 400; font-family: Overpass, sans-serif;">진행중</span>
													</div>
                      <div class="apexcharts-legend-series" rel="3"
														data:collapsed="false" style="margin: 2px 10px;">
														<span class="apexcharts-legend-marker" rel="3"
															data:collapsed="false"
															style="background: rgb(254, 176, 25); color: rgb(254, 176, 25); height: 10px; width: 10px; left: 0px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 6px;"></span>
                      <span class="apexcharts-legend-text" rel="3" i="2"
															data:default-text="stop" data:collapsed="false"
															style="color: rgb(173, 181, 189); font-size: 12px; font-weight: 400; font-family: Overpass, sans-serif;">보류</span>
													</div>
                      <div class="apexcharts-legend-series" rel="4"
														data:collapsed="false" style="margin: 2px 10px;">
														<span class="apexcharts-legend-marker" rel="4"
															data:collapsed="false"
															style="background: rgb(255, 69, 96); color: rgb(255, 69, 96); height: 10px; width: 10px; left: 0px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 6px;"></span>
                      <span class="apexcharts-legend-text" rel="4" i="3"
															data:default-text="exit" data:collapsed="false"
															style="color: rgb(173, 181, 189); font-size: 12px; font-weight: 400; font-family: Overpass, sans-serif;">폐기</span>
													</div>
					  </div><style type="text/css">
.apexcharts-legend {
	display: flex;
	overflow: auto;
	padding: 0 10px;
}

.apexcharts-legend.position-bottom, .apexcharts-legend.position-top {
	flex-wrap: wrap
}

.apexcharts-legend.position-right, .apexcharts-legend.position-left {
	flex-direction: column;
	bottom: 0;
}

.apexcharts-legend.position-bottom.apexcharts-align-left,
	.apexcharts-legend.position-top.apexcharts-align-left,
	.apexcharts-legend.position-right, .apexcharts-legend.position-left {
	justify-content: flex-start;
}

.apexcharts-legend.position-bottom.apexcharts-align-center,
	.apexcharts-legend.position-top.apexcharts-align-center {
	justify-content: center;
}

.apexcharts-legend.position-bottom.apexcharts-align-right,
	.apexcharts-legend.position-top.apexcharts-align-right {
	justify-content: flex-end;
}

.apexcharts-legend-series {
	cursor: pointer;
	line-height: normal;
}

.apexcharts-legend.position-bottom .apexcharts-legend-series,
	.apexcharts-legend.position-top .apexcharts-legend-series {
	display: flex;
	align-items: center;
}

.apexcharts-legend-text {
	position: relative;
	font-size: 14px;
}

.apexcharts-legend-text *, .apexcharts-legend-marker * {
	pointer-events: none;
}

.apexcharts-legend-marker {
	position: relative;
	display: inline-block;
	cursor: pointer;
	margin-right: 3px;
	border-style: solid;
}

.apexcharts-legend.apexcharts-align-right .apexcharts-legend-series,
	.apexcharts-legend.apexcharts-align-left .apexcharts-legend-series {
	display: inline-block;
}

.apexcharts-legend-series.apexcharts-no-click {
	cursor: auto;
}

.apexcharts-legend .apexcharts-hidden-zero-series, .apexcharts-legend .apexcharts-hidden-null-series
	{
	display: none !important;
}

.apexcharts-inactive-legend {
	opacity: 0.45;
}
</style></foreignObject>
												<g id="SvgjsG18353"
													class="apexcharts-inner apexcharts-graphical"
													transform="translate(18, 50)">
												<defs id="SvgjsDefs18352">
												<clipPath id="gridRectMask4wzvj85a">
												<rect id="SvgjsRect18355" width="231" height="239" x="-2.5"
													y="-0.5" rx="0" ry="0" opacity="1" stroke-width="0"
													stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath>
												<clipPath id="gridRectMarkerMask4wzvj85a">
												<rect id="SvgjsRect18356" width="230" height="242" x="-2"
													y="-2" rx="0" ry="0" opacity="1" stroke-width="0"
													stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath>
												<filter id="SvgjsFilter18365" filterUnits="userSpaceOnUse"
													width="200%" height="200%" x="-50%" y="-50%">
												<feFlood id="SvgjsFeFlood18366" flood-color="#000000"
													flood-opacity="0.45" result="SvgjsFeFlood18366Out"
													in="SourceGraphic"></feFlood>
												<feComposite id="SvgjsFeComposite18367"
													in="SvgjsFeFlood18366Out" in2="SourceAlpha" operator="in"
													result="SvgjsFeComposite18367Out"></feComposite>
												<feOffset id="SvgjsFeOffset18368" dx="1" dy="1"
													result="SvgjsFeOffset18368Out"
													in="SvgjsFeComposite18367Out"></feOffset>
												<feGaussianBlur id="SvgjsFeGaussianBlur18369"
													stdDeviation="1 " result="SvgjsFeGaussianBlur18369Out"
													in="SvgjsFeOffset18368Out"></feGaussianBlur>
												<feMerge id="SvgjsFeMerge18370"
													result="SvgjsFeMerge18370Out" in="SourceGraphic">
												<feMergeNode id="SvgjsFeMergeNode18371"
													in="SvgjsFeGaussianBlur18369Out"></feMergeNode>
												<feMergeNode id="SvgjsFeMergeNode18372"
													in="[object Arguments]"></feMergeNode></feMerge>
												<feBlend id="SvgjsFeBlend18373" in="SourceGraphic"
													in2="SvgjsFeMerge18370Out" mode="normal"
													result="SvgjsFeBlend18373Out"></feBlend></filter>
												<filter id="SvgjsFilter18378" filterUnits="userSpaceOnUse"
													width="200%" height="200%" x="-50%" y="-50%">
												<feFlood id="SvgjsFeFlood18379" flood-color="#000000"
													flood-opacity="0.45" result="SvgjsFeFlood18379Out"
													in="SourceGraphic"></feFlood>
												<feComposite id="SvgjsFeComposite18380"
													in="SvgjsFeFlood18379Out" in2="SourceAlpha" operator="in"
													result="SvgjsFeComposite18380Out"></feComposite>
												<feOffset id="SvgjsFeOffset18381" dx="1" dy="1"
													result="SvgjsFeOffset18381Out"
													in="SvgjsFeComposite18380Out"></feOffset>
												<feGaussianBlur id="SvgjsFeGaussianBlur18382"
													stdDeviation="1 " result="SvgjsFeGaussianBlur18382Out"
													in="SvgjsFeOffset18381Out"></feGaussianBlur>
												<feMerge id="SvgjsFeMerge18383"
													result="SvgjsFeMerge18383Out" in="SourceGraphic">
												<feMergeNode id="SvgjsFeMergeNode18384"
													in="SvgjsFeGaussianBlur18382Out"></feMergeNode>
												<feMergeNode id="SvgjsFeMergeNode18385"
													in="[object Arguments]"></feMergeNode></feMerge>
												<feBlend id="SvgjsFeBlend18386" in="SourceGraphic"
													in2="SvgjsFeMerge18383Out" mode="normal"
													result="SvgjsFeBlend18386Out"></feBlend></filter>
												<filter id="SvgjsFilter18391" filterUnits="userSpaceOnUse"
													width="200%" height="200%" x="-50%" y="-50%">
												<feFlood id="SvgjsFeFlood18392" flood-color="#000000"
													flood-opacity="0.45" result="SvgjsFeFlood18392Out"
													in="SourceGraphic"></feFlood>
												<feComposite id="SvgjsFeComposite18393"
													in="SvgjsFeFlood18392Out" in2="SourceAlpha" operator="in"
													result="SvgjsFeComposite18393Out"></feComposite>
												<feOffset id="SvgjsFeOffset18394" dx="1" dy="1"
													result="SvgjsFeOffset18394Out"
													in="SvgjsFeComposite18393Out"></feOffset>
												<feGaussianBlur id="SvgjsFeGaussianBlur18395"
													stdDeviation="1 " result="SvgjsFeGaussianBlur18395Out"
													in="SvgjsFeOffset18394Out"></feGaussianBlur>
												<feMerge id="SvgjsFeMerge18396"
													result="SvgjsFeMerge18396Out" in="SourceGraphic">
												<feMergeNode id="SvgjsFeMergeNode18397"
													in="SvgjsFeGaussianBlur18395Out"></feMergeNode>
												<feMergeNode id="SvgjsFeMergeNode18398"
													in="[object Arguments]"></feMergeNode></feMerge>
												<feBlend id="SvgjsFeBlend18399" in="SourceGraphic"
													in2="SvgjsFeMerge18396Out" mode="normal"
													result="SvgjsFeBlend18399Out"></feBlend></filter>
												<filter id="SvgjsFilter18404" filterUnits="userSpaceOnUse"
													width="200%" height="200%" x="-50%" y="-50%">
												<feFlood id="SvgjsFeFlood18405" flood-color="#000000"
													flood-opacity="0.45" result="SvgjsFeFlood18405Out"
													in="SourceGraphic"></feFlood>
												<feComposite id="SvgjsFeComposite18406"
													in="SvgjsFeFlood18405Out" in2="SourceAlpha" operator="in"
													result="SvgjsFeComposite18406Out"></feComposite>
												<feOffset id="SvgjsFeOffset18407" dx="1" dy="1"
													result="SvgjsFeOffset18407Out"
													in="SvgjsFeComposite18406Out"></feOffset>
												<feGaussianBlur id="SvgjsFeGaussianBlur18408"
													stdDeviation="1 " result="SvgjsFeGaussianBlur18408Out"
													in="SvgjsFeOffset18407Out"></feGaussianBlur>
												<feMerge id="SvgjsFeMerge18409"
													result="SvgjsFeMerge18409Out" in="SourceGraphic">
												<feMergeNode id="SvgjsFeMergeNode18410"
													in="SvgjsFeGaussianBlur18408Out"></feMergeNode>
												<feMergeNode id="SvgjsFeMergeNode18411"
													in="[object Arguments]"></feMergeNode></feMerge>
												<feBlend id="SvgjsFeBlend18412" in="SourceGraphic"
													in2="SvgjsFeMerge18409Out" mode="normal"
													result="SvgjsFeBlend18412Out"></feBlend></filter>
												<filter id="SvgjsFilter18417" filterUnits="userSpaceOnUse"
													width="200%" height="200%" x="-50%" y="-50%">
												<feFlood id="SvgjsFeFlood18418" flood-color="#000000"
													flood-opacity="0.45" result="SvgjsFeFlood18418Out"
													in="SourceGraphic"></feFlood>
												<feComposite id="SvgjsFeComposite18419"
													in="SvgjsFeFlood18418Out" in2="SourceAlpha" operator="in"
													result="SvgjsFeComposite18419Out"></feComposite>
												<feOffset id="SvgjsFeOffset18420" dx="1" dy="1"
													result="SvgjsFeOffset18420Out"
													in="SvgjsFeComposite18419Out"></feOffset>
												<feGaussianBlur id="SvgjsFeGaussianBlur18421"
													stdDeviation="1 " result="SvgjsFeGaussianBlur18421Out"
													in="SvgjsFeOffset18420Out"></feGaussianBlur>
												<feMerge id="SvgjsFeMerge18422"
													result="SvgjsFeMerge18422Out" in="SourceGraphic">
												<feMergeNode id="SvgjsFeMergeNode18423"
													in="SvgjsFeGaussianBlur18421Out"></feMergeNode>
												<feMergeNode id="SvgjsFeMergeNode18424"
													in="[object Arguments]"></feMergeNode></feMerge>
												<feBlend id="SvgjsFeBlend18425" in="SourceGraphic"
													in2="SvgjsFeMerge18422Out" mode="normal"
													result="SvgjsFeBlend18425Out"></feBlend></filter></defs>
												<g id="SvgjsG18357" class="apexcharts-pie">
												<g id="SvgjsG18358" transform="translate(0, 0) scale(1)">
												<circle id="SvgjsCircle18359" r="44.4390243902439" cx="113"
													cy="119" fill="transparent"></circle>
												<g id="SvgjsG18360" class="apexcharts-slices">
												<g id="SvgjsG18361"
													class="apexcharts-series apexcharts-pie-series"
													seriesName="Clothing" rel="1" data:realIndex="0">
												<path id="SvgjsPath18362"
													d="M 113 7.902439024390233 A 111.09756097560977 111.09756097560977 0 0 1 224.09318610815325 118.01407146884124 L 157.4372744432613 118.6056285875365 A 44.4390243902439 44.4390243902439 0 0 0 113 74.5609756097561 L 113 7.902439024390233 z"
													fill="rgba(27,104,255,1)" fill-opacity="1"
													stroke-opacity="1" stroke-linecap="butt" stroke-width="1"
													stroke-dasharray="0"
													class="apexcharts-pie-area apexcharts-donut-slice-0"
													index="0" j="0" data:angle="89.49152542372882"
													data:startAngle="0" data:strokeWidth="1" data:value="44"
													data:pathOrig="M 113 7.902439024390233 A 111.09756097560977 111.09756097560977 0 0 1 224.09318610815325 118.01407146884124 L 157.4372744432613 118.6056285875365 A 44.4390243902439 44.4390243902439 0 0 0 113 74.5609756097561 L 113 7.902439024390233 z"
													stroke="#e9ecef"></path></g>
												<g id="SvgjsG18374"
													class="apexcharts-series apexcharts-pie-series"
													seriesName="Shoes" rel="2" data:realIndex="1">
												<path id="SvgjsPath18375"
													d="M 224.09318610815325 118.01407146884124 A 111.09756097560977 111.09756097560977 0 0 1 72.54264828593644 222.46917776330247 L 96.81705931437457 160.38767110532098 A 44.4390243902439 44.4390243902439 0 0 0 157.4372744432613 118.6056285875365 L 224.09318610815325 118.01407146884124 z"
													fill="rgba(58,210,159,1)" fill-opacity="1"
													stroke-opacity="1" stroke-linecap="butt" stroke-width="1"
													stroke-dasharray="0"
													class="apexcharts-pie-area apexcharts-donut-slice-1"
													index="0" j="1" data:angle="111.86440677966102"
													data:startAngle="89.49152542372882" data:strokeWidth="1"
													data:value="55"
													data:pathOrig="M 224.09318610815325 118.01407146884124 A 111.09756097560977 111.09756097560977 0 0 1 72.54264828593644 222.46917776330247 L 96.81705931437457 160.38767110532098 A 44.4390243902439 44.4390243902439 0 0 0 157.4372744432613 118.6056285875365 L 224.09318610815325 118.01407146884124 z"
													stroke="#e9ecef"></path></g>
												<g id="SvgjsG18387"
													class="apexcharts-series apexcharts-pie-series"
													seriesName="Others" rel="3" data:realIndex="2">
												<path id="SvgjsPath18388"
													d="M 72.54264828593644 222.46917776330247 A 111.09756097560977 111.09756097560977 0 0 1 14.87583503496657 171.09910080456507 L 73.75033401398663 139.83964032182604 A 44.4390243902439 44.4390243902439 0 0 0 96.81705931437457 160.38767110532098 L 72.54264828593644 222.46917776330247 z"
													fill="rgba(111,66,193,1)" fill-opacity="1"
													stroke-opacity="1" stroke-linecap="butt" stroke-width="1"
													stroke-dasharray="0"
													class="apexcharts-pie-area apexcharts-donut-slice-2"
													index="0" j="2" data:angle="40.67796610169492"
													data:startAngle="201.35593220338984" data:strokeWidth="1"
													data:value="20"
													data:pathOrig="M 72.54264828593644 222.46917776330247 A 111.09756097560977 111.09756097560977 0 0 1 14.87583503496657 171.09910080456507 L 73.75033401398663 139.83964032182604 A 44.4390243902439 44.4390243902439 0 0 0 96.81705931437457 160.38767110532098 L 72.54264828593644 222.46917776330247 z"
													stroke="#e9ecef"></path></g>
												<g id="SvgjsG18400"
													class="apexcharts-series apexcharts-pie-series"
													seriesName="Electronics" rel="4" data:realIndex="3">
												<path id="SvgjsPath18401"
													d="M 14.87583503496657 171.09910080456507 A 111.09756097560977 111.09756097560977 0 0 1 49.951823318321814 27.525438116134055 L 87.78072932732873 82.41017524645363 A 44.4390243902439 44.4390243902439 0 0 0 73.75033401398663 139.83964032182604 L 14.87583503496657 171.09910080456507 z"
													fill="rgba(180,205,255,1)" fill-opacity="1"
													stroke-opacity="1" stroke-linecap="butt" stroke-width="1"
													stroke-dasharray="0"
													class="apexcharts-pie-area apexcharts-donut-slice-3"
													index="0" j="3" data:angle="83.3898305084746"
													data:startAngle="242.03389830508476" data:strokeWidth="1"
													data:value="41"
													data:pathOrig="M 14.87583503496657 171.09910080456507 A 111.09756097560977 111.09756097560977 0 0 1 49.951823318321814 27.525438116134055 L 87.78072932732873 82.41017524645363 A 44.4390243902439 44.4390243902439 0 0 0 73.75033401398663 139.83964032182604 L 14.87583503496657 171.09910080456507 z"
													stroke="#e9ecef"></path></g>
												<g id="SvgjsG18413"
													class="apexcharts-series apexcharts-pie-series"
													seriesName="Books" rel="5" data:realIndex="4">
												<path id="SvgjsPath18414"
													d="M 49.951823318321814 27.525438116134055 A 111.09756097560977 111.09756097560977 0 0 1 112.98060981779882 7.902440716502838 L 112.99224392711953 74.56097628660115 A 44.4390243902439 44.4390243902439 0 0 0 87.78072932732873 82.41017524645363 L 49.951823318321814 27.525438116134055 z"
													fill="rgba(27,104,255,1)" fill-opacity="1"
													stroke-opacity="1" stroke-linecap="butt" stroke-width="1"
													stroke-dasharray="0"
													class="apexcharts-pie-area apexcharts-donut-slice-4"
													index="0" j="4" data:angle="34.57627118644069"
													data:startAngle="325.42372881355936" data:strokeWidth="1"
													data:value="17"
													data:pathOrig="M 49.951823318321814 27.525438116134055 A 111.09756097560977 111.09756097560977 0 0 1 112.98060981779882 7.902440716502838 L 112.99224392711953 74.56097628660115 A 44.4390243902439 44.4390243902439 0 0 0 87.78072932732873 82.41017524645363 L 49.951823318321814 27.525438116134055 z"
													stroke="#e9ecef"></path></g>
												<g id="SvgjsG18363" class="apexcharts-datalabels">
												<text id="SvgjsText18364"
													font-family="Helvetica, Arial, sans-serif"
													x="167.74593848777482" y="63.766046982764784"
													text-anchor="middle" dominant-baseline="auto"
													font-size="12px" font-weight="600" fill="#ffffff"
													class="apexcharts-text apexcharts-pie-label"
													filter="url(#SvgjsFilter18365)"
													style="font-family: Helvetica, Arial, sans-serif;">48%</text></g>
												<g id="SvgjsG18376" class="apexcharts-datalabels">
												<text id="SvgjsText18377"
													font-family="Helvetica, Arial, sans-serif"
													x="157.13372367717477" y="183.03219331870616"
													text-anchor="middle" dominant-baseline="auto"
													font-size="12px" font-weight="600" fill="#ffffff"
													class="apexcharts-text apexcharts-pie-label"
													filter="url(#SvgjsFilter18378)"
													style="font-family: Helvetica, Arial, sans-serif;">43%</text></g>
												<g id="SvgjsG18389" class="apexcharts-datalabels">
												<text id="SvgjsText18390"
													font-family="Helvetica, Arial, sans-serif"
													x="61.2713242722316" y="177.0693676069299"
													text-anchor="middle" dominant-baseline="auto"
													font-size="12px" font-weight="600" fill="#ffffff"
													class="apexcharts-text apexcharts-pie-label"
													filter="url(#SvgjsFilter18391)"
													style="font-family: Helvetica, Arial, sans-serif;">6%</text></g>
												<g id="SvgjsG18402" class="apexcharts-datalabels">
												<text id="SvgjsText18403"
													font-family="Helvetica, Arial, sans-serif"
													x="37.453555739645665" y="100.54350774294997"
													text-anchor="middle" dominant-baseline="auto"
													font-size="12px" font-weight="600" fill="#ffffff"
													class="apexcharts-text apexcharts-pie-label"
													filter="url(#SvgjsFilter18404)"
													style="font-family: Helvetica, Arial, sans-serif;">23.2%</text></g>
												<g id="SvgjsG18415" class="apexcharts-datalabels">
												<text id="SvgjsText18416"
													font-family="Helvetica, Arial, sans-serif"
													x="89.8890394436051" y="44.745095455060124"
													text-anchor="middle" dominant-baseline="auto"
													font-size="12px" font-weight="600" fill="#ffffff"
													class="apexcharts-text apexcharts-pie-label"
													filter="url(#SvgjsFilter18417)"
													style="font-family: Helvetica, Arial, sans-serif;">9.6%</text></g></g></g></g>
												<line id="SvgjsLine18426" x1="0" y1="0" x2="226" y2="0"
													stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1"
													class="apexcharts-ycrosshairs"></line>
												<line id="SvgjsLine18427" x1="0" y1="0" x2="226" y2="0"
													stroke-dasharray="0" stroke-width="0"
													class="apexcharts-ycrosshairs-hidden"></line></g>
												</svg>
										
										
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
										
										<div class ="center_c0">
										</div>
										<div class ="center_t0">
											<div class="c_txt2_img"><img src ="${ pageContext.request.contextPath }/resources/img/doc1.png" style= "width:30px; height:30px;"></div>
											<div class="c_txt2">이번년도 종료되는 공약</div>
										</div>
										<div class ="center_t">
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
									</div>

									<div class="card shadow border-1">
										<div class="card-body" onclick="test();">
											<h4>이행률 미진산업</h4>
										</div>
									</div>

									<div class="resize-triggers">
										<div class="expand-trigger">
											<div style="width: 518px; height: 316px;"></div>
										</div>
										<div class="contract-trigger"></div>
									</div>
								</div>
									</div>
									<div class="resize-triggers">
										<div class="expand-trigger">
											<div style="width: 572px; height: 316px;"></div>
										</div>
										<div class="contract-trigger"></div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
						<!-- </div> -->
						
						<br>				
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
								<div onclick="test();" class="bar_l">
									<c:forEach var="rate" items="${ rate }">
										<div onclick="" class="bar_l0" style="font-size: 10px;">${ rate.department }</div>
									</c:forEach>
								</div>
							</div>
						</div>
<%-- 						<div class="card2 shadow mb-4">
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
						</div> --%>
<%-- 						<div class="card2 shadow mb-4">
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
						</div> --%>
						<!-- .card -->
						
						
						<div class="card shadow border-1">
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
											<th style="text-align:center;">이행도</th>
											<th style="text-align:center; width:50%; padding-right:5%">이행률</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="all" items="${ all }">	
											<tr>
												<th scope="col" style="text-align:center;">${ all.section }</th>
												<td style="text-align:center;">${ all.manager }</td>
												<td style="text-align:center;">${ all.name }</td>
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
												<td style="text-align:center; padding-right:5%">
													<div class="progress mb-3" style="height: 30px;">
														<div class="progress-bar bg-success" role="progressbar" style="width: ${ all.rate }%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="${ all.rate }">
															${ all.rate }</div>
													</div>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						
												
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


<%@ include file="../layout/footer.jsp"%>
