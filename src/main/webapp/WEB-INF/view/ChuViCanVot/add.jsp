<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <title>Thêm mới Chu Vi Can Vot</title>
</head>
<body>
<h1>Thêm mới Chu Vi Can Vot</h1>
<form action="${pageContext.request.contextPath}/chuViCanVot/add" method="post">
    Chu Vi: <input type="text" name="chuVi" required /><br>
    Mô Tả: <textarea name="moTa" required></textarea><br>
    Trạng Thái: <input type="number" name="trangThai" required /><br>
    <input type="submit" value="Lưu" />
</form>
<a href="${pageContext.request.contextPath}/chuViCanVot">Quay lại</a>
</body>
</html>
