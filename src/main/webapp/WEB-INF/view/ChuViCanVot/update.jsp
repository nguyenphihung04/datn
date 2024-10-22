<html>
<head>
    <title>Sửa Chu Vi Can Vot</title>
</head>
<body>
<h1>Sửa Chu Vi Can Vot</h1>
<form action="${pageContext.request.contextPath}/chuViCanVot/update" method="post">
    <input type="hidden" name="id" value="${chuViCanVot.id}" />
    Chu Vi: <input type="text" name="chuVi" value="${chuViCanVot.chuVi}" required /><br>
    Mô Tả: <textarea name="moTa" required>${chuViCanVot.moTa}</textarea><br>
    Trạng Thái: <input type="number" name="trangThai" value="${chuViCanVot.trangThai}" required /><br>
    <input type="submit" value="Cập nhật" />
</form>
<a href="${pageContext.request.contextPath}/chuViCanVot">Quay lại</a>
</body>
</html>
