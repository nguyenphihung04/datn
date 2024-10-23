
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Thêm Giỏ Hàng</title>
</head>
<body>
<h1>Thêm Giỏ Hàng</h1>
<form action="/giohang/add/${nguoiDungId}/${chiTietSanPhamId}" method="post">
    <label>Số Lượng:</label>
    <input type="number" name="soLuong" required />

    <button type="submit">Thêm</button>
</form>
<a href="/giohang/hienthi">Quay lại</a>
</body>
</html>
