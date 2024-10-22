<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm mới Hóa Đơn</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .sidebar {
            height: 100vh;
            background-color: #f26622;
            padding: 20px;
            color: white;
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
        .header {
            background-color: #f8f9fa;
            padding: 15px;
            border-bottom: 1px solid #ddd;
        }
        .content {
            padding: 20px;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <!-- Main content -->
        <div class="col-md-10">
            <div class="header">
                <h5>Công Ty Softdream Easybook Test API</h5>
            </div>
            <div class="content">
                <h4>Thêm mới Hóa Đơn</h4>
                <form>
                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="mauso">Mẫu số</label>
                            <input type="text" id="mauso" class="form-control" placeholder="Nhập mẫu số">
                        </div>
                        <div class="col-md-4">
                            <label for="kyhieu">Ký hiệu</label>
                            <input type="text" id="kyhieu" class="form-control" placeholder="Nhập ký hiệu">
                        </div>
                        <div class="col-md-4">
                            <label for="sohoadon">Số hóa đơn</label>
                            <input type="text" id="sohoadon" class="form-control" placeholder="Nhập số hóa đơn">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="ngayhoadon">Ngày hóa đơn</label>
                            <input type="date" id="ngayhoadon" class="form-control">
                        </div>
                        <div class="col-md-4">
                            <label for="ngaynhan">Ngày nhận</label>
                            <input type="date" id="ngaynhan" class="form-control">
                        </div>
                        <div class="col-md-4">
                            <label for="nhacungcap">Nhà cung cấp</label>
                            <input type="text" id="nhacungcap" class="form-control" placeholder="Nhập tên nhà cung cấp">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="sotien">Số tiền</label>
                            <input type="number" id="sotien" class="form-control" placeholder="Nhập số tiền">
                        </div>
                        <div class="col-md-4">
                            <label for="trangthai">Trạng thái</label>
                            <select id="trangthai" class="form-control">
                                <option>Chọn trạng thái</option>
                                <option>Đã duyệt</option>
                                <option>Chưa duyệt</option>
                                <option>Hủy duyệt</option>
                            </select>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-primary">Lưu hóa đơn</button>
                    <button type="reset" class="btn btn-secondary">Làm mới</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
