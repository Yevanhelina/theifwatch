<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp"%>
<div class="container">
	<div class="row">
		<%@include file="sidebar.jsp"%>
		<div class="col-md-8" id="mainCol">
			<div style="width:auto;" class="block-center">
				<iframe  id="mapframe" frameborder="0"
					src="${pageContext.request.contextPath}/map?cellsize=28"
					width="790px" height="580px" scrolling="no"
					data-url="${pageContext.request.contextPath}/map"> </iframe>
			</div>
		</div>
		<%@include file="comments.jsp"%>
	</div>
</div>
<%@include file="footer.jsp"%>