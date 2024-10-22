<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Danh sách </title>
</head>
<body>
<h1>Danh sách </h1>
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
    <c:forEach var="diaChis" items="${data}">
        <tr>
            <td>${diaChis.id}</td>
            <td>${diaChis.ngayTao}</td>
            <td>${diaChis.ngaySua}</td>
            <td>${diaChis.loaiDC}</td>
            <td>${diaChis.diaChi}</td>
            <td>${diaChis.trangThai}</td>
            <td>
                <a href="${pageContext.request.contextPath}/dia-chi/edit/${diaChis.id}">Sửa</a>
                <a href="${pageContext.request.contextPath}/dia-chi/delete/${diaChis.id}" onclick="return confirm('Bạn có chắc chắn muốn xóa không?');">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/dia-chi/create">Thêm chi tiết sản phẩm</a>
</body>
</html>
