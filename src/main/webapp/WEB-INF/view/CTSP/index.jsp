<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh Sách Chi Tiết Sản Phẩm</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
</head>
<body>
<h1>Danh Sách Chi Tiết Sản Phẩm</h1>
<a href="<c:url value='/hnh-shop/ct-sanpham/create'/>">Thêm Mới</a>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Sản Phẩm</th>
        <th>Giá</th>
        <th>Ngày Tạo</th>
        <th>Hành Động</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="item" items="${listChiTietSanPham}">
        <tr>
            <td>${item.id}</td>
            <td>${item.sanPham.ten}</td>
            <td>${item.gia}</td>
            <td>${item.ngaySua}</td>
            <td>${item.ngaytao}</td>
            <td>${item.trangThai}</td>
            <td>
                <a href="<c:url value='/hnh-shop/ct-sanpham/edit/${item.id}'/>">Sửa</a>
                <a href="<c:url value='/hnh-shop/ct-sanpham/delete/${item.id}'/>">Xóa</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
