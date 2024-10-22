<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách Mức Căng Tối Đa</title>
</head>
<body>
<h1>Danh sách Mức Căng Tối Đa</h1>
<a href="${pageContext.request.contextPath}/mucCangToiDa/add">Thêm mới</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Khối Lượng</th>
        <th>Mô Tả</th>
        <th>Trạng Thái</th>
        <th>Thao Tác</th>
    </tr>
    <c:forEach var="item" items="${mucCangToiDaList}">
        <tr>
            <td>${item.id}</td>
            <td>${item.khoiLuong}</td>
            <td>${item.moTa}</td>
            <td>${item.trangThai}</td>
            <td>
                <a href="${pageContext.request.contextPath}/mucCangToiDa/update/${item.id}">Sửa</a>
                <a href="${pageContext.request.contextPath}/mucCangToiDa/delete/${item.id}">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
