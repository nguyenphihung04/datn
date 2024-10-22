<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Chỉnh sửa sản phẩm</title>
</head>
<body>
<h1>Chỉnh sửa sản phẩm</h1>
<form:form action="${pageContext.request.contextPath}/hnh-shop/san-pham/edit/${data.id}" method="post" modelAttribute="data">
    <label>Mã sản phẩm:</label>
    <form:input path="ma" value="${data.ma}" required="true"/>
    <br/>
    <label>Tên sản phẩm:</label>
    <form:input path="ten" value="${data.ten}" required="true"/>
    <br/>
    <label>Thông tin:</label>
    <form:input path="thongTin" value="${data.thongTin}" required="true"/>
    <br/>
    <label>Giá:</label>
    <form:input path="gia" value="${data.gia}" required="true" step="0.01"/>
    <br/>
    <label>Trạng thái:</label>
    <form:input path="trangThai" value="${data.trangThai}" required="true"/>
    <br/>
    <label>Số lượng đã bán:</label>
    <form:input path="soLuongDB" value="${data.soLuongDB}" required="true"/>
    <br/>
    <input type="submit" value="Cập nhật"/>
</form:form>
<a href="${pageContext.request.contextPath}/hnh-shop/san-pham/hien-thi">Quay lại danh sách sản phẩm</a>
</body>
</html>
