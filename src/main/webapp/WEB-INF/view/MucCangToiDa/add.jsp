<html>
<head>
    <title>Thêm mới Mức Căng Tối Đa</title>
</head>
<body>
<h1>Thêm mới Mức Căng Tối Đa</h1>
<form action="${pageContext.request.contextPath}/mucCangToiDa/add" method="post">
    Khối Lượng: <input type="number" step="0.01" name="khoiLuong" required /><br>
    Mô Tả: <textarea name="moTa" required></textarea><br>
    Trạng Thái: <input type="number" name="trangThai" required /><br>
    <input type="submit" value="Lưu" />
</form>
<a href="${pageContext.request.contextPath}/mucCangToiDa">Quay lại</a>
</body>
</html>
