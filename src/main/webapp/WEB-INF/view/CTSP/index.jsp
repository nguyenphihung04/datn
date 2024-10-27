<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi Tiết Sản Phẩm</title>
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
                <h4>Thêm mới chi tiết sản phẩm</h4>
                <form action="/hnh-shop/ct-sanpham/create" method="post">
                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="idSanPham">Sản Phẩm</label>
                            <select name="idSanPham" id="idSanPham" class="form-control">
                                <c:forEach items="${sanPhamList}" var="itemSP">
                                    <option value="${itemSP.id}">${itemSP.ten}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="idDiemCanBang">Điểm Cân Bằng</label>
                            <select name="idDiemCanBang" id="idDiemCanBang" class="form-control">
                                <c:forEach items="${diemCanBangList}" var="itemDCB">
                                    <option value="${itemDCB.id}">${itemDCB.ten}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="idVatLieuTruc">Vật Liệu Trục</label>
                            <select name="idVatLieuTruc" id="idVatLieuTruc" class="form-control">
                                <c:forEach items="${vatLieuTrucList}" var="itemVLT">
                                    <option value="${itemVLT.id}">${itemVLT.ten}</option>
                                </c:forEach>
                            </select>
                        </div>

                    </div>
                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="idVatLieuKhung">Vật Liệu Khung</label>
                            <select name="idVatLieuKhung" id="idVatLieuKhung" class="form-control">
                                <c:forEach items="${vatLieuKhungList}" var="itemVLK">
                                    <option value="${itemVLK.id}">${itemVLK.ten}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="idDoCungThan">Độ Cứng Thân</label>
                            <select name="idDoCungThan" id="idDoCungThan" class="form-control">
                                <c:forEach items="${doCungThanList}" var="itemDCT">
                                    <option value="${itemDCT.id}">${itemDCT.ten}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="idChieuDaiTongThe">Chiều Dài Tổng Thể</label>
                            <select name="idChieuDaiTongThe" id="idChieuDaiTongThe" class="form-control">
                                <c:forEach items="${chieuDaiTongTheList}" var="itemCDTT">
                                    <option value="${itemCDTT.id}">${itemCDTT.chieuDai}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="idMucCangToiDa">Mức Căng Tối Đa</label>
                            <select name="idMucCangToiDa" id="idMucCangToiDa" class="form-control">
                                <c:forEach items="${mucCangToiDaList}" var="itemMCTD">
                                    <option value="${itemMCTD.id}">${itemMCTD.khoiLuong}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="idChuViCanVot">Chu Vi Cán Vợt</label>
                            <select name="idChuViCanVot" id="idChuViCanVot" class="form-control">
                                <c:forEach items="${chuViCanVotList}" var="itemCVCV">
                                    <option value="${itemCVCV.id}">${itemCVCV.chuVi}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="idMauSac">Màu Sắc</label>
                            <select name="idMauSac" id="idMauSac" class="form-control">
                                <c:forEach items="${mauSacList}" var="itemMS">
                                    <option value="${itemMS.id}">${itemMS.ten}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="gia">Giá Sản Phẩm</label>
                            <input type="text" id="gia" name="gia" class="form-control" placeholder="Nhập giá sản phẩm">
                        </div>
                        <div class="col-md-4">
                            <label for="soLuongTon">Số Lượng Tồn</label>
                            <input type="text" id="soLuongTon" name="soLuongTon" class="form-control" placeholder="Nhập số lượng tồn">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="ngayTao">Ngày Tạo</label>
                            <input type="date" id="ngayTao" name="ngayTao" class="form-control">
                        </div>
                        <div class="col-md-4">
                            <label for="ngaySua">Ngày Sửa</label>
                            <input type="date" id="ngaySua" name="ngaySua" class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label>Trạng Thái</label>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="trangThai" value="0" checked>
                                <label class="form-check-label">Còn Hàng</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="trangThai" value="1">
                                <label class="form-check-label">Hết Hàng</label>
                            </div>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-primary">Lưu sản phẩm</button>
                    <button type="reset" class="btn btn-secondary">Làm mới</button>
                </form>
            </div>
        </div>
    </div>
            <!-- Table -->
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>STT</th>
                    <th>Sản Phẩm</th>
                    <th>Điểm Cân Bằng</th>
                    <th>Vật Liệu Trục</th>
                    <th>Vật Liệu Khung</th>
                    <th>Độ Cứng Thân</th>
                    <th>Chiều Dài Tổng Thể</th>
                    <th>Mức Căng Tối Đa</th>
                    <th>Chu Vi Cán Vợt</th>
                    <th>Màu Sắc</th>
                    <th>Giá</th>
                    <th>Số Lượng Tồn</th>
                    <th>Ngày Sửa</th>
                    <th>Ngày Tạo</th>
                    <th>Trạng thái</th>
                    <th>Thao tác</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${listChiTietSanPham}" var="spct">
                    <tr>
                        <td>${spct.id}</td>
                        <td>${spct.sanPham.ten}</td>
                        <td>${spct.diemCanBang.ten}</td>
                        <td>${spct.vatLieuTruc.ten}</td>
                        <td>${spct.vatLieuKhung.ten}</td>
                        <td>${spct.doCungThan.ten}</td>
                        <td>${spct.chieuDaiTongThe.chieuDai}</td>
                        <td>${spct.mucCangToiDa.khoiLuong}</td>
                        <td>${spct.chuViCanVot.chuVi}</td>
                        <td>${spct.mauSac.ten}</td>
                        <td>${spct.gia}</td>
                        <td>${spct.soLuongTon}</td>
                        <td>${spct.ngaySua}</td>
                        <td>${spct.ngayTao}</td>
                        <td>${spct.trangThai == 1 ? "Hết Hàng" : "Còn Hàng"}</td>
                        <td>
                            <a>
                                <button>Chi Tiết</button>
                            </a>
                            <a href="/hnh-shop/ct-sanpham/view-edit/${spct.id}">
                                <button>Sửa</button>
                            </a>
                            <a href="/hnh-shop/ct-sanpham/delete/${spct.id}">
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
