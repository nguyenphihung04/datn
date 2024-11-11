<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sản Phẩm</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .sidebar a {
            color: white;
            text-decoration: none;
        }
        .sidebar a:hover {
            color: #ddd;
        }
        .sidebar ul {
            list-style-type: none;
            padding-left: 0;
        }
        .content {
            padding: 20px;
        }
        .status-warning {
            color: red;
            font-weight: bold;
        }
        .status-success {
            color: green;
        }
        .product-image {
            width: 80px; /* Điều chỉnh kích thước ảnh */
            height: auto;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <!-- Table -->
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>Mã SP</th>
                <th>Hình Ảnh</th>
                <th>Tên Sản Phẩm</th>
                <th>Loại Sản Phẩm</th>
                <th>Thông Tin</th>
                <th>Giá</th>
                <th>Trạng Thái</th>
                <th>Số Lượng</th>
                <th>Thao tác</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${ListSP}" var="sp">
                <tr>
                    <td>${sp.ma}</td>
                    <!-- Thêm thẻ <img> vào đây -->
                    <td><img src="/uploads/${sp.anh}" alt="Ảnh sản phẩm" class="product-image"></td>
                    <td>${sp.ten}</td>
                    <td>${sp.loai.ten}</td>
                    <td>${sp.thongTin}</td>
                    <td>${sp.gia}</td>
                    <td>${sp.trangThai == 1 ? "Còn hàng" : "Hết hàng"}</td>
                    <td>${sp.soLuongDB}</td>
                    <td>
                        <a>
                            <button>Chi Tiết</button>
                        </a>
                        <a href="/san-pham/viewUpdate/${sp.id}">
                            <button>Sửa</button>
                        </a>
                        <a href="/san-pham/delete/${sp.id}">
                            <button>Xoá</button>
                        </a>
                    </td>
                </tr>
            </c:forEach>
            <!-- Bạn có thể thêm nhiều hàng khác -->
            </tbody>
        </table>
    </div>
</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
