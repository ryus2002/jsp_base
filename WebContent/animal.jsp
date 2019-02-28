<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns='http://www.w3.org/1999/xhtml' xmlns:b='http://www.google.com/2005/gml/b' xmlns:data='http://www.google.com/2005/gml/data' xmlns:expr='http://www.google.com/2005/gml/expr'>
<head>
<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'/>
<title>
</title>
<meta charset='UTF-8'/>
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js' type='text/javascript'></script>
<script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
<style>
.grid-item {
  width: 228px;
  border: 2px solid hsla(0, 0%, 0%, 0.5);
  margin-bottom:15px;
}
.grid-item--width2 { width: 400px; }
</style>
<script>
$(function(){
	$('.grid').masonry({
	  // options
	  itemSelector: '.grid-item',
	  columnWidth: 260
	});
});
</script>
</head>


<body>
<h1>認養平台</h1>
<div class='container'>
	<!-- start -->
	<div class="grid">
		<c:forEach var="animal" items="${requestScope.animals }">
  			<div class="grid-item">
				<img border="0" height="320" src="${animal.album_file}" width="229">
				動物資訊：${animal.animal_remark}<br/>
				聯絡電話：${animal.shelter_tel}。<br/>
				更新日期：${animal.animal_update}<br/>
  			</div>
		</c:forEach>
	</div>
	<!-- end -->
</div>
</body>
</html>