<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<form:form action="${pageContext.request.contextPath}/ct-san-pham/edit/${data.id}" method="post" modelAttribute="data">
    <label>Tên:</label>
    <form:input path="ten" value="${data.ten}" required="true" type="number" step="none"/>
    <br/>
    <label>MK:</label>
    <form:input path="mk" value="${data.matKhau}" required="true" type=""/>
    <br/>
    <label>Trạng thái:</label>
    <form:input path="trangthai" value="${data.ngaySua}" required="true" type=""/>
    <br/>
    <label>Giới tính:</label>
    <form:input path="gioitinh" value="${data.gioiTinh}" required="true" type=""/>
    <br/>
    <label>Ảnh:</label>
    <form:input path="anh" value="${data.anh}" required="true" type=""/>
    <br/>
    <label>Ngày sinh:</label>
    <form:input path="ngaysinh" value="${data.ngaySinh}" required="true" type="date"/>
    <br/>
    <label>SDT:</label>
    <form:input path="sdt" value="${data.sdt}" required="true" type="number"/>
    <br/>
    <label>Vai trò:</label>
    <form:input path="vaitro" value="${data.trangThai}" required="true" type=""/>
    <br/>
    <input type="submit" value="Thêm"/>
</form:form>
