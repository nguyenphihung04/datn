<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Danh sách sản phẩm</title>
</head>
<body>
<h1>Danh sách sản phẩm</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Tên</th>
        <th>Trạng thái</th>
        <th>Hành động</th>
    </tr>
    <c:forEach var="ha" items="${data}">
        <tr>
            <td>${ha.id}</td>
            <td>${ha.ten}</td>
            <td>${ha.trangThai}</td>
            <td>
                <a href="${pageContext.request.contextPath}/hnh-shop/hinh-anh/edit/${ha.id}">Sửa</a>
                <a href="${pageContext.request.contextPath}/hnh-shop/hinh-anh/delete/${ha.id}">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/hnh-shop/hinh-anh/create">Thêm</a>
</body>
</html>
