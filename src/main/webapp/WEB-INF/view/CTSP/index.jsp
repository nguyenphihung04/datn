<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Danh sách chi tiết sản phẩm</title>
</head>
<body>
<h1>Danh sách chi tiết sản phẩm</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Giá</th>
        <th>Số lượng tồn</th>
        <th>Ngày sửa</th>
        <th>Ngày tạo</th>
        <th>Trạng thái</th>
        <th>Hành động</th>
    </tr>
    <c:if test="${!empty data}">
        <c:forEach var="chiTietSanPham" items="${data}">
            <tr>
                <td>${chiTietSanPham.id}</td>
                <td>${chiTietSanPham.gia}</td>
                <td>${chiTietSanPham.soLuongTon}</td>
                <td>${chiTietSanPham.ngaySua}</td>
                <td>${chiTietSanPham.ngayTao}</td>
                <td>${chiTietSanPham.trangThai}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/hnh-shop/ct-san-pham/edit/${chiTietSanPham.id}">Sửa</a>
                    <a href="${pageContext.request.contextPath}/hnh-shop/ct-san-pham/delete/${chiTietSanPham.id}" onclick="return confirm('Bạn có chắc chắn muốn xóa không?');">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </c:if>
    <c:if test="${empty data}">
        <tr>
            <td colspan="7">Không có chi tiết sản phẩm nào!</td>
        </tr>
    </c:if>
</table>
<a href="${pageContext.request.contextPath}/hnh-shop/ct-san-pham/create">Thêm chi tiết sản phẩm</a>
</body>
</html>
