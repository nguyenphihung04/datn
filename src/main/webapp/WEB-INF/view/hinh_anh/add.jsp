<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form:form action="${pageContext.request.contextPath}/hnh-shop/hinh-anh/create" method="post" modelAttribute="data">

    <label>Tên sản phẩm:</label>
    <form:input path="ten" required="true"/>
    <br/>
    <label>Trạng thái:</label>
    <form:input path="trangThai" required="true" type="number"/>
    <br/>
    <input type="submit" value="Thêm"/>
</form:form>
