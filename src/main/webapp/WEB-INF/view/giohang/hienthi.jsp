
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Giỏ Hàng</title>
</head>
<body>
<h1>Danh Sách Giỏ Hàng</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Người Dùng</th>
        <th>Chi Tiết Sản Phẩm</th>
        <th>Số Lượng</th>
        <th>Trạng Thái</th>
        <th>Thao Tác</th>
    </tr>
    <c:forEach var="item" items="${listGioHang}">
        <tr>
            <td>${item.id}</td>
            <td>${item.nguoiDung.ten}</td>
            <td>${item.chiTietSanPham.ten}</td>
            <td>${item.soLuong}</td>
            <td>${item.trangThai}</td>
            <td>
                <a href="/giohang/view-update/${item.id}">Cập Nhật</a>
                <a href="/giohang/delete/${item.id}">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="/">Quay lại trang chính</a>
</body>
</html>
