<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Thêm sản phẩm</title>
</head>
<body>
<h1>Thêm sản phẩm</h1>
<form:form action="${pageContext.request.contextPath}/hnh-shop/san-pham/create" method="post" modelAttribute="data">
    <label>Mã sản phẩm:</label>
    <form:input path="ma" required="true"/>
    <br/>
    <label>Tên sản phẩm:</label>
    <form:input path="ten" required="true"/>
    <br/>
    <label>Thông tin:</label>
    <form:input path="thongTin" required="true"/>
    <br/>
    <label>Giá:</label>
    <form:input path="gia" required="true" type="number" step="0.01"/>
    <br/>
    <label>Trạng thái:</label>
    <form:input path="trangThai" required="true" type="number"/>
    <br/>
    <label>Số lượng đã bán:</label>
    <form:input path="soLuongDB" required="true" type="number"/>
    <br/>
    <input type="submit" value="Thêm sản phẩm"/>
</form:form>
<a href="${pageContext.request.contextPath}/hnh-shop/san-pham/hien-thi">Quay lại danh sách sản phẩm</a>
</body>
</html>
