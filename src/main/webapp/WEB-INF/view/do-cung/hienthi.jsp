<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Do cung than</title>
</head>
<body>
<h1>Danh sách Do cung than</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Tên</th>
        <th>Trạng thái</th>
        <th>Hành động</th>
    </tr>
    <c:forEach var="doCungThanList" items="${data}">
        <tr>
            <td>${doCungThanList.id}</td>
            <td>${doCungThanList.ten}</td>
            <td>${doCungThanList.trangThai}</td>
            <td>
                <a href="${pageContext.request.contextPath}/do-cung-than/edit/${chiTietSanPham.id}">Sửa</a>
                <a href="${pageContext.request.contextPath}/do-cung-than/delete/${chiTietSanPham.id}" onclick="return confirm('Bạn có chắc chắn muốn xóa không?');">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/do-cung-than/create">Thêm độ cứng</a>
</body>
</html>
