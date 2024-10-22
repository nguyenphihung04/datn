<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<form:form action="${pageContext.request.contextPath}/hnh-shop/ct-san-pham/edit/${data.id}" method="post" modelAttribute="data">
    <label>Giá:</label>
    <form:input path="gia" value="${data.gia}" required="true" type="number" step="none"/>
    <form:errors path="gia" cssClass="error"/>
    <br/>
    <label>Số lượng tồn:</label>
    <form:input path="soLuongTon" value="${data.soLuongTon}" required="true" type="number"/>
    <form:errors path="soLuongTon" cssClass="error"/>
    <br/>
    <label>Ngày sửa:</label>
    <form:input path="ngaySua" value="${data.ngaySua}" required="true" type="date"/>
    <form:errors path="ngaySua" cssClass="error"/>
    <br/>
    <label>Ngày tạo:</label>
    <form:input path="ngayTao" value="${data.ngayTao}" required="true" type="date"/>
    <form:errors path="ngayTao" cssClass="error"/>
    <br/>
    <label>Trạng thái:</label>
    <form:input path="trangThai" value="${data.trangThai}" required="true" type="number"/>
    <form:errors path="trangThai" cssClass="error"/>
    <br/>
    <input type="submit" value="Cập nhật"/>
</form:form>
