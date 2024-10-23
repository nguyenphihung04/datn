<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thêm Mới Chi Tiết Sản Phẩm</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
</head>
<body>
<h1>Thêm Mới Chi Tiết Sản Phẩm</h1>
<form:form modelAttribute="data" action="<c:url value='/hnh-shop/ct-sanpham/create'/>" method="post">
    <label for="sanPham">Sản Phẩm:</label>
    <form:select path="sanPham.id" id="sanPham">
        <c:forEach var="sp" items="${sanPhamList}">
            <option value="${sp.id}">${sp.ten}</option>
        </c:forEach>
    </form:select><br/>

    <label for="gia">Giá:</label>
    <form:input path="gia" id="gia" /><br/>

    <label for="ngaytao">Ngày Tạo:</label>
    <form:input path="ngaytao" id="ngaytao" type="date" /><br/>

    <input type="submit" value="Lưu" />
    <a href="<c:url value='/hnh-shop/ct-sanpham/hien-thi'/>">Hủy</a>
</form:form>
</body>
</html>
