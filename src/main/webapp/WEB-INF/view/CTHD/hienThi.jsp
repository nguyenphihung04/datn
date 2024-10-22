<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bảng Chi Tiết Hóa Đơn</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            margin-top: 20px;
        }
        table {
            width: 100%;
            background-color: #fff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        table thead {
            background-color: #f26622;
            color: white;
        }
        table td, table th {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        table tbody tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>

<div class="container">
    <h3>Chi Tiết Hóa Đơn</h3>
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>Tên Khách Hàng</th>
            <th>Giá Sản Phẩm</th>
            <th>Đơn giá</th>
            <th>Số lượng</th>
            <th>Trạng thái</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach items="${ListCTHD}" var="cthd">
                <tr>
                    <td>${cthd.id}</td>
                    <td>${cthd.HD.tenNguoiNhan}</td>
                    <td>${cthd.chiTietSanPham.gia}</td>
                    <td>${cthd.donGia}</td>
                    <td>${cthd.soLuong}</td>
                    <td>${cthd.trangThai}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
