<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<form:form action="${pageContext.request.contextPath}/ct-san-pham/create" method="post" modelAttribute="data">
    <label>Tên:</label>
    <form:input path="ten" required="true" type="number" step="none"/>
    <br/>
    <label>Trạng thái:</label>
    <form:input path="trangThai" required="true" type="number"/>
    <input type="submit" value="Thêm chi tiết sản phẩm"/>
</form:form>
