<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Cập Nhật Giỏ Hàng</title>
</head>
<body>
<h1>Cập Nhật Giỏ Hàng</h1>
<form action="/giohang/update/${gioHang.id}" method="post">
    <label>Số Lượng:</label>
    <input type="number" name="soLuong" value="${gioHang.soLuong}" required/>
    <button type="submit">Cập Nhật</button>
</form>
<a href="/giohang/hienthi">Quay lại</a>
</body>
</html>
