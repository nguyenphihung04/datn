<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <title>Thêm Địa Chỉ</title>
</head>
<body>
<h1>Thêm Địa Chỉ</h1>
<form:form action="${pageContext.request.contextPath}/hnh-shop/diachi/add/${nguoiDung.id}" method="post" modelAttribute="diaChi">
    <label>Địa chỉ:</label>
    <form:input path="diaChi" required="true"/>
    <br/>
    <label>Loại địa chỉ:</label>
    <form:input path="loaiDC" required="true"/>
    <br/>
    <label>Trạng thái:</label>
    <form:input path="trangThai" required="true"/>
    <br/>
    <input type="submit" value="Thêm"/>
</form:form>
<a href="${pageContext.request.contextPath}/hnh-shop/diachi/hienthi">Quay lại danh sách địa chỉ</a>
</body>
</html>
