<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hóa Đơn</title>
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
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <!-- Main content -->
        <div class="col-md-10">
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
    <div class="col-md-10">
        <div class="content">
            <h4>Hóa đơn</h4>
            <div class="row mb-4">
                <div class="col-md-3">
                    <label>Ngày hóa đơn:</label>
                    <input type="date" class="form-control">
                </div>
                <div class="col-md-3">
                    <label>Số hóa đơn:</label>
                    <input type="text" class="form-control">
                </div>
                <div class="col-md-3">
                    <label>Trạng thái thanh toán:</label>
                    <select class="form-control">
                        <option>Chọn trạng thái thanh toán</option>
                    </select>
                </div>
                <div class="col-md-3">
                    <label>&nbsp;</label>
                    <button class="btn btn-primary w-100">Tìm kiếm</button>
                </div>
            </div>

            <!-- Table -->
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>STT</th>
                    <th>Voucher</th>
                    <th>Người </th>
                    <th>Tổng Tiền</th>
                    <th>Tên Người Nhận</th>
                    <th>Ngày nhận</th>
                    <th>Ngày Tạo</th>
                    <th>Ngày Sửa</th>
                    <th>Tiền Ship</th>
                    <th>Ngày Ship</th>
                    <th>Ngày Thanh Toán</th>
                    <th>Tổng Tiền Sau Giảm</th>
                    <th>Hình Thức Thanh Toán</th>
                    <th>Phương Thức Thanh Toán</th>
                    <th>Trạng thái</th>
                    <th>Thao tác</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${ListHD}" var="hd">
                    <tr>
                        <td>${hd.id}</td>
                        <td>${hd.voucher.ten}</td>
                        <td>${hd.nguoiDung.ten}</td>
                        <td>${hd.tongTien}</td>
                        <td>${hd.tenNguoiNhan}</td>
                        <td>${hd.ngayNhan}</td>
                        <td>${hd.ngayTao}</td>
                        <td>${hd.ngaySua}</td>
                        <td>${hd.trangThai}</td>
                        <td>${hd.tienShip}</td>
                        <td>${hd.ngayShip}</td>
                        <td>${hd.ngayThanhToan}</td>
                        <td>${hd.tongTienSauGiam}</td>
                        <td>${hd.hinhThucThanhToan}</td>
                        <td>${hd.phuongThucThanhToan}</td>
                        <td>
                            <button>Xoá</button>
                            <button>Sửa</button>
                            <button>Chi Tiết</button>
                        </td>
                    </tr>
                </c:forEach>
                <!-- Bạn có thể thêm nhiều hàng khác -->
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
