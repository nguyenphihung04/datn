<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Danh sách màu</title>
</head>
<body>
<h1>Danh sách màu</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Tên</th>
        <th>Mô tả</th>
        <th>Trạng thái</th>
        <th>Hành động</th>
    </tr>
    <c:forEach var="mauSacList" items="${data}">
        <tr>
            <td>${mauSacList.id}</td>
            <td>${mauSacList.ten}</td>
            <td>${mauSacList.trangThai}</td>
            <td>
                <a href="${pageContext.request.contextPath}/mau-sac/edit/${mauSacList.id}">Sửa</a>
                <a href="${pageContext.request.contextPath}/mau-sac/delete/${mauSacList.id}" onclick="return confirm('Bạn có chắc chắn muốn xóa không?');">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/mau-sac/create">Thêm</a>
</body>
</html>
