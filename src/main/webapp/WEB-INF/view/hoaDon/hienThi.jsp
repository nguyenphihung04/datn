<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                <form action="/hoa-don/add" method="post">
                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="idNguoiDung">Người Dùng</label>
                            <select name="idNguoiDung" id="idNguoiDung" class="form-control">
                                <c:forEach items="${ListNguoiDung}" var="itemND">
                                    <option value="${itemND.id}">${itemND.ten}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="tenNguoiNhan">Tên Người Nhận</label>
                            <input type="text" name="tenNguoiNhan" id="tenNguoiNhan" class="form-control" placeholder="Nhập tên người nhận">
                        </div>
                        <div class="col-md-4">
                            <label for="ngayNhan">Ngày Nhận</label>
                            <input type="date" name="ngayNhan" id="ngayNhan" class="form-control">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="ngayTao">Ngày Tạo Hoá Đơn</label>
                            <input type="date" id="ngayTao" name="ngayTao" class="form-control">
                        </div>
                        <div class="col-md-4">
                            <label for="ngaySua">Ngày Sửa Hoá Đơn</label>
                            <input type="date" id="ngaySua" name="ngaySua" class="form-control">
                        </div>
                        <div class="col-md-4">
                            <label for="tienShip">Tiền Ship</label>
                            <input type="text" id="tienShip" name="tienShip" class="form-control" placeholder="Nhập tiền ship">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="tongTien">Tổng tiền</label>
                            <input type="number" id="tongTien" name="tongTien" class="form-control" >
                        </div>
                        <div class="col-md-4">
                            <label>Voucher</label>
                            <select name="idVoucher" class="form-control">
                                <c:forEach items="${ListVoucher}" var="itemVoucher">
                                    <option value="${itemVoucher.id}" >${itemVoucher.ten}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="tongTienSauGiam">Tổng Tiền Sau Giảm</label>
                            <input type="text" id="tongTienSauGiam" name="tongTienSauGiam" class="form-control" >
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="ngayShip">Ngày Ship</label>
                            <input type="date" id="ngayShip" name="ngayShip" class="form-control">
                        </div>
                        <div class="col-md-4">
                            <label for="ngayThanhToan">Ngày Thanh Toán</label>
                            <input type="date" id="ngayThanhToan" name="ngayThanhToan" class="form-control">
                        </div>
                        <div class="col-md-4">
                            <label for="hinhThucThanhToan">Hình Thức Thanh Toán</label>
                            <select id="hinhThucThanhToan" name="hinhThucThanhToan" class="form-control">
                                <option>Tiền mặt</option>
                                <option>Chuyển khoản</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="phuongThucThanhToan">Phương Thức Thanh Toán</label>
                            <select id="phuongThucThanhToan" name="phuongThucThanhToan" class="form-control">
                                <option>ZaloPay</option>
                                <option>Momo</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label>Trạng Thái</label>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="trangThai" value="0" checked>
                                <label class="form-check-label">Thanh Toán</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="trangThai" value="1">
                                <label class="form-check-label">Chờ Thanh Toán</label>
                            </div>
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
                    <th>Người Dùng</th>
                    <th>Tên Người Nhận</th>
                    <th>Ngày nhận</th>
                    <th>Ngày Tạo</th>
                    <th>Ngày Sửa</th>
                    <th>Tiền Ship</th>
                    <th>Tổng Tiền</th>
                    <th>Voucher</th>
                    <th>Tổng Tiền Sau Giảm</th>
                    <th>Ngày Ship</th>
                    <th>Ngày Thanh Toán</th>
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
                        <td>${hd.nguoiDung.ten}</td>
                        <td>${hd.tenNguoiNhan}</td>
                        <td>${hd.ngayNhan}</td>
                        <td>${hd.ngayTao}</td>
                        <td>${hd.ngaySua}</td>
                        <td>${hd.tienShip}</td>
                        <td>${hd.tongTien}</td>
                        <td>${hd.voucher.ten}</td>
                        <td>${hd.tongTienSauGiam}</td>
                        <td>${hd.ngayShip}</td>
                        <td>${hd.ngayThanhToan}</td>
                        <td>${hd.hinhThucThanhToan}</td>
                        <td>${hd.phuongThucThanhToan}</td>
                        <td>${hd.trangThai == 1 ? "Chờ thanh toán" : "Đã thanh toán"}</td>
                        <td>
                            <a>
                                <button>Chi Tiết</button>
                            </a>
                            <a href="/hoa-don/viewUpdate/${hd.id}">
                                <button>Sửa</button>
                            </a>
                            <a href="/hoaDon/delete/${hd.id}">
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
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
