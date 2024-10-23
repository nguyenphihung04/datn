<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Danh sách Địa Chỉ</title>
</head>
<body>
<h1>Danh sách Địa Chỉ</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Ngày tạo</th>
        <th>Ngày sửa</th>
        <th>Loại địa chỉ</th>
        <th>Địa chỉ</th>
        <th>Trạng thái</th>
        <th>Hành động</th>
    </tr>
    <c:forEach var="diaChi" items="${listDiaChi}">
        <tr>
            <td>${diaChi.id}</td>
            <td>${diaChi.ngayTao}</td>
            <td>${diaChi.ngaySua}</td>
            <td>${diaChi.loaiDC}</td>
            <td>${diaChi.diaChi}</td>
            <td>${diaChi.trangThai}</td>
            <td>
                <a href="${pageContext.request.contextPath}/hnh-shop/diachi/view-update/${diaChi.id}">Sửa</a>
                <a href="${pageContext.request.contextPath}/hnh-shop/diachi/delete/${diaChi.id}" onclick="return confirm('Bạn có chắc chắn muốn xóa không?');">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/hnh-shop/diachi/create">Thêm Địa Chỉ</a>
</body>
</html>
