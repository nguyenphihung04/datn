<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Danh sách nguoi dùng</title>
</head>
<body>
<h1>Danh sách nguoi dùng</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Tên</th>
        <th>Mật khẩu</th>
        <th>Trạng thái</th>
        <th>Giới tính</th>
        <th>Ảnh</th>
        <th>Ngày sinh</th>
        <th>ĐST</th>
        <th>Vai ò</th>
        <th>Hành động</th>
    </tr>
    <c:forEach var="nguoiDungs" items="${data}">
        <tr>
            <td>${nguoiDungs.id}</td>
            <td>${nguoiDungs.ten}</td>
            <td>${nguoiDungs.matKhau}</td>
            <td>${nguoiDungs.trangThai}</td>
            <td>${nguoiDungs.gioiTinh}</td>
            <td>${nguoiDungs.anh}</td>
            <td>${nguoiDungs.ngaySinh}</td>
            <td>${nguoiDungs.sdt}</td>
            <td>${nguoiDungs.vaiTro}</td>
            <td>
                <a href="${pageContext.request.contextPath}/nguoi-dung/edit/${nguoiDungs.id}">Sửa</a>
                <a href="${pageContext.request.contextPath}/nguoi-dung/delete/${nguoiDungs.id}" onclick="return confirm('Bạn có chắc chắn muốn xóa không?');">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/nguoi-dung/create">Thêm</a>
</body>
</html>
