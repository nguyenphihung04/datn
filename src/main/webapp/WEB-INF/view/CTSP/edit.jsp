<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi Tiết Sản Phẩm</title>
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
        <div class="col-md-10">
            <div class="content">
                <h4>Sửa Chi Tiết Sản Phẩm</h4>
                <form action="/hnh-shop/ct-sanpham/edit/${spct.id}" method="post">
                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="idSanPham">Sản Phẩm</label>
                            <select name="idSanPham" id="idSanPham" class="form-control">
                                <c:forEach items="${sanPhamList}" var="itemSP">
                                    <option value="${itemSP.id}" ${itemSP.id == spct.sanPham.id ? 'selected' : ''}>${itemSP.ten}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="idDiemCanBang">Điểm Cân Bằng</label>
                            <select name="idDiemCanBang" id="idDiemCanBang" class="form-control">
                                <c:forEach items="${diemCanBangList}" var="itemDCB">
                                    <option value="${itemDCB.id}" ${itemDCB.id == spct.diemCanBang.id ? 'selected' : ''}>${itemDCB.ten}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="idVatLieuTruc">Vật Liệu Trục</label>
                            <select name="idVatLieuTruc" id="idVatLieuTruc" class="form-control">
                                <c:forEach items="${vatLieuTrucList}" var="itemVLT">
                                    <option value="${itemVLT.id}" ${itemVLT.id == spct.vatLieuTruc.id ? 'selected' : ''}>${itemVLT.ten}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="idVatLieuKhung">Vật Liệu Khung</label>
                            <select name="idVatLieuKhung" id="idVatLieuKhung" class="form-control">
                                <c:forEach items="${vatLieuKhungList}" var="itemVLK">
                                    <option value="${itemVLK.id}" ${itemVLK.id == spct.vatLieuKhung.id ? 'selected' : ''}>${itemVLK.ten}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="idDoCungThan">Độ Cứng Thân</label>
                            <select name="idDoCungThan" id="idDoCungThan" class="form-control">
                                <c:forEach items="${doCungThanList}" var="itemDCT">
                                    <option value="${itemDCT.id}" ${itemDCT.id == spct.doCungThan.id ? 'selected' : ''}>${itemDCT.ten}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="idChieuDaiTongThe">Chiều Dài Tổng Thể</label>
                            <select name="idChieuDaiTongThe" id="idChieuDaiTongThe" class="form-control">
                                <c:forEach items="${chieuDaiTongTheList}" var="itemCDTT">
                                    <option value="${itemCDTT.id}" ${itemCDTT.id == spct.chieuDaiTongThe.id ? 'selected' : ''}>${itemCDTT.chieuDai}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="idMucCangToiDa">Mức Căng Tối Đa</label>
                            <select name="idMucCangToiDa" id="idMucCangToiDa" class="form-control">
                                <c:forEach items="${mucCangToiDaList}" var="itemMCTD">
                                    <option value="${itemMCTD.id}" ${itemMCTD.id == spct.mucCangToiDa.id ? 'selected' : ''}>${itemMCTD.khoiLuong}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="idChuViCanVot">Chu Vi Cán Vợt</label>
                            <select name="idChuViCanVot" id="idChuViCanVot" class="form-control">
                                <c:forEach items="${chuViCanVotList}" var="itemCVCV">
                                    <option value="${itemCVCV.id}" ${itemCVCV.id == spct.chuViCanVot.id ? 'selected' : ''}>${itemCVCV.chuVi}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="idMauSac">Màu Sắc</label>
                            <select name="idMauSac" id="idMauSac" class="form-control">
                                <c:forEach items="${mauSacList}" var="itemMS">
                                    <option value="${itemMS.id}" ${itemMS.id == spct.mauSac.id ? 'selected' : ''}>${itemMS.ten}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="gia">Giá Sản Phẩm</label>
                            <input type="text" id="gia" name="gia" class="form-control" value="${spct.gia}" placeholder="Nhập giá sản phẩm">
                        </div>
                        <div class="col-md-4">
                            <label for="soLuongTon">Số Lượng Tồn</label>
                            <input type="text" id="soLuongTon" name="soLuongTon" class="form-control" value="${spct.soLuongTon}" placeholder="Nhập số lượng tồn">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="ngayTao">Ngày Tạo</label>
                            <input type="date" id="ngayTao" name="ngayTao" value="${spct.ngayTao}" class="form-control">
                        </div>
                        <div class="col-md-4">
                            <label for="ngaySua">Ngày Sửa</label>
                            <input type="date" id="ngaySua" name="ngaySua" value="${spct.ngaySua}" class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label>Trạng Thái</label>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="trangThai" value="0" ${spct.trangThai == 0 ? 'checked' : ''}>
                                <label class="form-check-label">Còn Hàng</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="trangThai" value="1" ${spct.trangThai == 1 ? 'checked' : ''}>
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
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
