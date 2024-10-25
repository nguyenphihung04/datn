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
                <h4>Sửa Hóa Đơn</h4>
                <form action="/hoa-don/update/${hd.id}" method="post">
                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="idNguoiDung">Người Dùng</label>
                            <select name="idNguoiDung" id="idNguoiDung" class="form-control">
                                <c:forEach items="${ListNguoiDung}" var="itemND">
                                    <option value="${itemND.id}" ${itemND.id == hd.nguoiDung.ten ? 'selected' : ''}>${itemND.ten}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="tenNguoiNhan">Tên Người Nhận</label>
                            <input type="text" name="tenNguoiNhan" id="tenNguoiNhan" value="${hd.tenNguoiNhan}" class="form-control" placeholder="Nhập tên người nhận">
                        </div>
                        <div class="col-md-4">
                            <label for="ngayNhan">Ngày Nhận</label>
                            <input type="date" name="ngayNhan" id="ngayNhan" value="${hd.ngayNhan}" class="form-control">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="ngayTao">Ngày Tạo Hoá Đơn</label>
                            <input type="date" id="ngayTao" name="ngayTao" value="${hd.ngayTao}" class="form-control">
                        </div>
                        <div class="col-md-4">
                            <label for="ngaySua">Ngày Sửa Hoá Đơn</label>
                            <input type="date" id="ngaySua" name="ngaySua" value="${hd.ngaySua}" class="form-control">
                        </div>
                        <div class="col-md-4">
                            <label for="tienShip">Tiền Ship</label>
                            <input type="text" id="tienShip" name="tienShip" value="${hd.tienShip}" class="form-control" placeholder="Nhập tiền ship">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="tongTien">Tổng tiền</label>
                            <input type="number" id="tongTien" name="tongTien" value="${hd.tongTien}" class="form-control" >
                        </div>
                        <div class="col-md-4">
                            <label>Voucher</label>
                            <select name="idVoucher" class="form-control">
                                <c:forEach items="${ListVoucher}" var="itemVoucher">
                                    <option value="${itemVoucher.id}"  ${itemVoucher.id == hd.voucher.ten ? 'selected' : ''}>${itemVoucher.ten}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="tongTienSauGiam">Tổng Tiền Sau Giảm</label>
                            <input type="text" id="tongTienSauGiam" name="tongTienSauGiam" value="${hd.tongTienSauGiam}" class="form-control" >
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="ngayShip">Ngày Ship</label>
                            <input type="date" id="ngayShip" name="ngayShip" value="${hd.ngayShip}" class="form-control">
                        </div>
                        <div class="col-md-4">
                            <label for="ngayThanhToan">Ngày Thanh Toán</label>
                            <input type="date" id="ngayThanhToan" name="ngayThanhToan" value="${hd.ngayThanhToan}" class="form-control">
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

                    <button type="submit" class="btn btn-primary">Update hóa đơn</button>
                    <button type="reset" class="btn btn-secondary">Làm mới</button>
                </form>
            </div>
        </div>
    </div>
        </div>
    </div>
</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
