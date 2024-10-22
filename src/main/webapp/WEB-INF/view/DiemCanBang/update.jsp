<html>
<head>
    <title>Sửa Điểm Cân Bằng</title>
</head>
<body>
<h1>Sửa Điểm Cân Bằng</h1>
<form action="${pageContext.request.contextPath}/diemCanBang/update" method="post">
    <input type="hidden" name="id" value="${diemCanBang.id}" />
    Tên: <input type="text" name="ten" value="${diemCanBang.ten}" required /><br>
    Trạng thái: <input type="number" name="trangThai" value="${diemCanBang.trangThai}" required /><br>
    <input type="submit" value="Cập nhật" />
</form>
<a href="${pageContext.request.contextPath}/diemCanBang">Quay lại</a>
</body>
</html>
