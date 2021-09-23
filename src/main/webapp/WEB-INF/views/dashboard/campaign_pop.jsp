<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id ="popup_box">
	<div id ="popup">
		<div class="row">
			<div class="col-md-12">
			
				<input id="bt_x" class="btn btn-warning cancle" type="button"  value="x">
				<p class="f_name">필터</p>
				<h4 style="text-align: center; margin: 30px 0px;">조선산업일자리과 공약 이행
					현황 (팝업용)</h4>
				<table class="table table-borderless table-striped">
					<thead>
						<tr role="row">
							<th style="text-align: center;">담당</th>
							<th style="text-align: center;">담당자</th>
							<th style="text-align: center;">공약</th>
							<th style="text-align: center;">이행도</th>
							<th style="text-align: center; width: 50%; padding-right: 5%">이행률</th>
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
						</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

</body>
</html>