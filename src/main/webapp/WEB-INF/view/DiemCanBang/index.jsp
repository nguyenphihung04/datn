<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách Điểm Cân Bằng</title>
</head>
<body>
<h1>Danh sách Điểm Cân Bằng</h1>
<a href="${pageContext.request.contextPath}/diemCanBang/create">Thêm mới</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Tên</th>
        <th>Trạng thái</th>
        <th>Thao tác</th>
    </tr>
    <c:forEach var="item" items="${diemCanBangList}">
        <tr>
            <td>${item.id}</td>
            <td>${item.ten}</td>
            <td>${item.trangThai}</td>
            <td>
                <a href="${pageContext.request.contextPath}/diemCanBang/update/${item.id}">Sửa</a>
                <a href="${pageContext.request.contextPath}/diemCanBang/delete/${item.id}">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
