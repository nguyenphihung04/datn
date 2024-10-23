<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <title>Danh sách Chu Vi Can Vot</title>
</head>
<body>
<h1>Danh sách Chu Vi Can Vot</h1>
<a href="${pageContext.request.contextPath}/chuViCanVot/add">Thêm mới</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Chu Vi</th>
        <th>Mô Tả</th>
        <th>Trạng Thái</th>
        <th>Thao Tác</th>
    </tr>
    <c:forEach var="item" items="${chuViCanVotList}">
        <tr>
            <td>${item.id}</td>
            <td>${item.chuVi}</td>
            <td>${item.moTa}</td>
            <td>${item.trangThai}</td>
            <td>
                <a href="${pageContext.request.contextPath}/chuViCanVot/update/${item.id}">Sửa</a>
                <a href="${pageContext.request.contextPath}/chuViCanVot/delete/${item.id}">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
