<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Danh sách loai</title>
</head>
<body>
<h1>Danh sách loai</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Tên</th>
        <th>Trạng thái</th>
        <th>Hành động</th>
    </tr>
    <c:forEach var="loais" items="${data}">
        <tr>
            <td>${loais.id}</td>
            <td>${loais.ten}</td>
            <td>${loais.trangThai}</td>
            <td>
                <a href="${pageContext.request.contextPath}/loai/edit/${loais.id}">Sửa</a>
                <a href="${pageContext.request.contextPath}/loai/delete/${loais.id}" onclick="return confirm('Bạn có chắc chắn muốn xóa không?');">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/loai/create">Thêm</a>
</body>
</html>
