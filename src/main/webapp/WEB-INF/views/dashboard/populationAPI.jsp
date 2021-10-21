<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<main role="main" class="main-content" style="margin:0">
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-12">

				<div class="row">
					<div class="col-md-12"><br>
						<h3> area : </h3> 
						${area}<br>
					</div>
					<div class="col-md-12"><br>
						<h3> yc2021 : </h3> 
						${yc2021}<br>
					</div>
					<div class="col-md-12"><br>
						<h3> yc : </h3> 
						${yc}<br>
					</div>
					<div class="col-md-12"><br>
						<h3> ys : </h3> 
						${ys}<br>
					</div>
					<div class="col-md-12"><br>
						<h3> ya : </h3> 
						${ya}<br>
					</div>
					<div class="col-md-12"><br>
						<h3> yi : </h3> 
						${yi}<br>
					</div>
				</div>
				<!-- end row section -->

			</div>
		</div>
		<!-- .row -->
	</div>
	<!-- .container-fluid -->
</main>
<!-- main -->


<script src="${pageContext.request.contextPath}/resources/js/tinycolor-min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/config.js"></script>


<%@ include file="../layout/footer.jsp"%>
