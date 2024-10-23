<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Cập Nhật Hình Ảnh</title>
</head>
<body>
<h1>Cập Nhật Hình Ảnh</h1>
<form:form action="${pageContext.request.contextPath}/hnh-shop/hinh-anh/edit/${data.id}" method="post" modelAttribute="data">
    <label>Tên Hình Ảnh:</label>
    <form:input path="ten" required="true"/>
    <br/>

    <label>Trạng Thái:</label>
    <form:input path="trangThai" required="true" type="number"/>
    <br/>

    <input type="submit" value="Sửa"/>
</form:form>
<a href="${pageContext.request.contextPath}/hnh-shop/hinh-anh/hien-thi">Quay lại danh sách sản phẩm</a>
</body>
</html>
