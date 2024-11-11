<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Thêm sản phẩm</title>
</head>
<body>
<h1>Thêm sản phẩm</h1>
<!-- Thêm enctype="multipart/form-data" để hỗ trợ tải lên tệp -->
<form action="${pageContext.request.contextPath}/san-pham/create" method="post" enctype="multipart/form-data">
    <label for="ma">Mã sản phẩm:</label>
    <input type="text" name="ma" id="ma" required />
    <br/>

    <label for="ten">Tên sản phẩm:</label>
    <input type="text" name="ten" id="ten" required />
    <br/>

    <label for="idLoai">Loại sản phẩm:</label>
    <select name="idLoai" id="idLoai">
        <c:forEach items="${ListLoai}" var="loai">
            <option value="${loai.id}">${loai.ten}</option>
        </c:forEach>
    </select>
    <br/>

    <label for="file">Ảnh sản phẩm:</label>
    <input type="file" name="file" id="file" required />
    <br/>

    <input type="submit" value="Thêm sản phẩm"/>
</form>

<br/>
<a href="${pageContext.request.contextPath}/san-pham/hien-thi">Quay lại danh sách sản phẩm</a>

</body>
</html>
