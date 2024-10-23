<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <title>Danh Sách Chiều Dài Tổng Thể</title>
</head>
<body>
<h1>Danh Sách Chiều Dài Tổng Thể</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Chiều Dài</th>
        <th>Mô Tả</th>
        <th>Trạng Thái</th>
        <th>Hành Động</th>
    </tr>
    <c:forEach var="cd" items="${listChieuDai}">
        <tr>
            <td>${cd.id}</td>
            <td>${cd.chieuDai}</td>
            <td>${cd.moTa}</td>
            <td>${cd.trangThai}</td>
            <td>
                <a href="${pageContext.request.contextPath}/chieudaitongthe/view-update/${cd.id}">Sửa</a>
                <a href="${pageContext.request.contextPath}/chieudaitongthe/delete/${cd.id}" onclick="return confirm('Bạn có chắc chắn muốn xóa không?');">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/chieudaitongthe/add">Thêm Chiều Dài</a>
</body>
</html>
