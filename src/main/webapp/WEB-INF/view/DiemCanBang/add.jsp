<html>
<head>
    <title>Thêm mới Điểm Cân Bằng</title>
</head>
<body>
<h1>Thêm mới Điểm Cân Bằng</h1>
<form action="${pageContext.request.contextPath}/diemCanBang/create" method="post">
    Tên: <input type="text" name="ten" required /><br>
    Trạng thái: <input type="number" name="trangThai" required /><br>
    <input type="submit" value="Lưu" />
</form>
<a href="${pageContext.request.contextPath}/diemCanBang">Quay lại</a>
</body>
</html>
