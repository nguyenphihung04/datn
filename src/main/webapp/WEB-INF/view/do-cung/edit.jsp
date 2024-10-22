<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<form:form action="${pageContext.request.contextPath}/ct-san-pham/edit/${data.id}" method="post" modelAttribute="data">
    <label>Tên:</label>
    <form:input path="gia" value="${data.ten}" required="true" type="number" step=""/>
    <br/>
    <label>Trạng thái: </label>
    <form:input path="soLuongTon" value="${data.trangthai}" required="true" type=""/>
    <br/>
    <input type="submit" value="Cập nhật"/>
</form:form>