<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <title>Cập Nhật Chiều Dài Tổng Thể</title>
</head>
<body>
<h1>Cập Nhật Chiều Dài Tổng Thể</h1>
<form:form action="${pageContext.request.contextPath}/chieudaitongthe/update/${chieuDaiTongThe.id}" method="post" modelAttribute="chieuDaiTongThe">
    <label>Chiều Dài:</label>
    <form:input path="chieuDai" required="true" />
    <br/>
    <label>Mô Tả:</label>
    <form:input path="moTa" />
    <br/>
    <label>Trạng Thái:</label>
    <form:input path="trangThai" required="true" />
    <br/>
    <input type="submit" value="Cập Nhật" />
</form:form>
<a href="${pageContext.request.contextPath}/chieudaitongthe/hienthi">Trở lại danh sách</a>
</body>
</html>
