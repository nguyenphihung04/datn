<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<form:form action="${pageContext.request.contextPath}/ct-san-pham/create" method="post" modelAttribute="data">
    <label>Giá:</label>
    <form:input path="gia" required="true" type="number" step="none"/>
    <form:errors path="gia" cssClass="error"/>
    <br/>
    <label>Số lượng tồn:</label>
    <form:input path="soLuongTon" required="true" type="number"/>
    <form:errors path="soLuongTon" cssClass="error"/>
    <br/>
    <label>Ngày sửa:</label>
    <form:input path="ngaySua" required="true" type="date"/>
    <form:errors path="ngaySua" cssClass="error"/>
    <br/>
    <label>Ngày tạo:</label>
    <form:input path="ngayTao" required="true" type="date"/>
    <form:errors path="ngayTao" cssClass="error"/>
    <br/>
    <label>Trạng thái:</label>
    <form:input path="trangThai" required="true" type="number"/>
    <form:errors path="trangThai" cssClass="error"/>
    <br/>
    <input type="submit" value="Thêm chi tiết sản phẩm"/>
</form:form>
