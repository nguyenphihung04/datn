<html>
<head>
    <title>Sửa Mức Căng Tối Đa</title>
</head>
<body>
<h1>Sửa Mức Căng Tối Đa</h1>
<form action="${pageContext.request.contextPath}/mucCangToiDa/update" method="post">
    <input type="hidden" name="id" value="${mucCangToiDa.id}" />
    Khối Lượng: <input type="number" step="0.01" name="khoiLuong" value="${mucCangToiDa.khoiLuong}" required /><br>
    Mô Tả: <textarea name="moTa" required>${mucCangToiDa.moTa}</textarea><br>
    Trạng Thái: <input type="number" name="trangThai" value="${mucCangToiDa.trangThai}" required /><br>
    <input type="submit" value="Cập nhật" />
</form>
<a href="${pageContext.request.contextPath}/mucCangToiDa">Quay lại</a>
</body>
</html>
