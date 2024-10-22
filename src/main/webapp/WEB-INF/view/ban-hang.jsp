<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Phần Mềm Quản Lý Bán Hàng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div style="display: flex;">
    <div id="content1">
        <nav class="navbar bg-body-tertiary">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="/image/logo.jpg" class="object-fit-cover border rounded" alt="HNH SHOP" width="80"
                         height="80">
                    HNH Shop
                </a>
            </div>
        </nav>
        <div class="container-fluid">
            <span>Wellcome,</span><span> Chu Thị Ngọc</span>
        </div>
        <div class="container-fluid">
            <button class="navbar-brand btn btn-danger w-100 p-3 text-light">Bán hàng tại quầy</button>
        </div>

        <div class="container-fluid">
            <button class="navbar-brand mb-0 h1 btn btn-danger w-100 p-3 text-light">Quản lý sản phẩm</button>
        </div>
        <div class="container-fluid">
            <button class="navbar-brand mb-0 h2 btn btn-danger w-100 p-3 text-light">Quản lý hóa đơn</button>
        </div>
        <div class="container-fluid">
            <button class="navbar-brand mb-0 h2 btn btn-danger w-100 p-3 text-light">Thống kê</button>
        </div>
<%--        <div class="container-fluid">--%>
<%--            <button class="navbar-brand mb-0 h2 btn btn-danger w-100 p-3 text-light">Quản lý mã giảm giá</button>--%>
<%--        </div>--%>
        <div class="container-fluid">
            <button class="navbar-brand mb-0 h2 btn btn-danger w-100 p-3 text-light">Quản lý tài khoản</button>
        </div>
        <div class="container-fluid">
            <button class="navbar-brand mb-0 h2 btn btn-danger w-100 p-3 text-light">
                Đăng xuất
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                     class="bi bi-box-arrow-right" viewBox="0 0 16 16">
                    <path fill-rule="evenodd"
                          d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0z"/>
                    <path fill-rule="evenodd"
                          d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708z"/>
                </svg>
            </button>
        </div>
    </div>
    <div class=" bg-light w-75 p-1">
        <!-- bảng hóa đơn -->
        <h3 class="text-center">Hóa Đơn Chờ</h3>
        <table class="table table-hover">
            <thead>
            <tr class="table-success">
                <th scope="col">Stt</th>
                <th scope="col">Mã hóa Đơn</th>
                <th scope="col">Tên khách Hàng</th>
                <th scope="col">Ngày Tạo</th>
                <th scope="col">Trạng Thái</th>
                <th scope="col">Thao tác</th>
            </tr>
            </thead>
            <tbody>
<%--            <tr th:each="hoaDon, stat : ${listHoaDon}">--%>
<%--                <th scope="row" th:text="${stat.index + 1}"></th>--%>
<%--                <td th:text="${hoaDon.getMa()}"></td>--%>
<%--                <td th:text="${hoaDon.getKhachHang().getTen()}"></td>--%>
<%--                <td th:text="${#dates.format(hoaDon.getNgayTao(), 'dd/MM/yyyy')}"></td>--%>
<%--                <td>Chưa Thanh Toán</td>--%>
<%--                <td>--%>
<%--                    <a type="button" class="btn btn-danger" th:href="@{/bee-store/chon-hoa-don/__${hoaDon.getId()}__}">Chọn</a>--%>
<%--                </td>--%>
<%--            </tr>--%>
            </tbody>
        </table>
<%--        <nav aria-label="Page navigation example">--%>
<%--            <ul class="pagination">--%>
<%--                <li class="page-item"><a class="page-link" th:href="@{/bee-store/trang-chu?pageHd=__${currentPageHoaDon - 1}__}">&laquo;</a></li>--%>
<%--                <li class="page-item"--%>
<%--                    th:each="pageNumber : ${#numbers.sequence(0,totalPageHoaDon  - 1)}">--%>
<%--                    <a class="page-link" th:href="@{/bee-store/trang-chu?pageHd=__${pageNumber}__}" th:text="${pageNumber+1}"--%>
<%--                       th:classappend="${pageNumber == currentPageHoaDon} ? 'active' : ''">1</a>--%>
<%--                </li>--%>
<%--                <li class="page-item"><a class="page-link" th:href="@{/bee-store/trang-chu?pageHd=__${currentPageHoaDon + 1}__}">&raquo;</a></li>--%>
<%--            </ul>--%>
<%--        </nav>--%>
        <!-- bảng giỏ hàng -->
        <h3 class="text-center">Giỏ hàng</h3>
        <table class="table table-hover">
            <thead>
            <tr class="table-success">
                <th scope="col">Stt</th>
                <th scope="col">Mã Sản Phẩm</th>
                <th scope="col">Tên sản phẩm</th>
                <th scope="col">Đơn giá</th>
                <th scope="col">Số lượng</th>
                <th scope="col">Thao tác</th>
            </tr>
            </thead>
            <tbody>
<%--            <tr th:each="gioHang,stat : ${listGioHang}">--%>
<%--                <th scope="row" th:text="${stat.index+1}">1</th>--%>
<%--                <td th:utext="${gioHang.getChiTietSanPham().getSize().getTen()}"> </td>--%>
<%--                <td th:utext="${gioHang.getChiTietSanPham().getGiaBan()}"></td>--%>
<%--                <td th:utext="${gioHang.getSoLuong()}"></td>--%>
<%--                <td>--%>
<%--                    <button class="btn btn-danger">delete</button>--%>
<%--                </td>--%>
<%--            </tr>--%>
            </tbody>
        </table>
        <!-- bảng sản phẩm -->
        <h3 class="text-center">Sản phẩm</h3>
        <table class="table table-hover">
            <thead>
            <tr class="table-success">
                <th scope="col">Stt</th>
                <th scope="col">Mã sản phẩm</th>
                <th scope="col">Tên sản phẩm</th>
                <th scope="col">Màu sắc</th>
                <th scope="col">Size</th>
                <th scope="col">Chất liệu</th>
                <th scope="col">Thương Hiệu</th>
                <th scope="col">Xuất xứ</th>
                <th scope="col">Giá bán</th>
                <th scope="col">Giá nhập</th>
                <th scope="col">Số lượng</th>
                <th scope="col">Thao tác</th>
            </tr>
            </thead>
            <tbody>
<%--            <tr th:each="sanPham,stat : ${listSanPham}">--%>
<%--                <th scope="row" th:text="${stat.index+1}"></th>--%>
<%--                <td th:utext="${sanPham.getSanPham().getMa()}"></td>--%>
<%--                <td th:utext="${sanPham.getSanPham().getTen()}"></td>--%>
<%--                <td th:utext="${sanPham.getMauSac().getTen()}"></td>--%>
<%--                <td th:utext="${sanPham.getSize().getTen()}"></td>--%>
<%--                <td th:utext="${sanPham.getChatLieu()}"></td>--%>
<%--                <td th:utext="${sanPham.getThuongHieu()}"></td>--%>
<%--                <td th:utext="${sanPham.getXuatXu()}"></td>--%>
<%--                <td th:utext="${sanPham.getGiaBan()}"></td>--%>
<%--                <td th:utext="${sanPham.getGiaNhap()}"></td>--%>
<%--                <td th:utext="${sanPham.getSoLuongTon()}"></td>--%>
<%--                <td>--%>
                    <a th:if="${hoaDon}" th:href="@{/bee-store/chon-san-pham/__${sanPham.id}__?idHd=__${hoaDon.id}__}" type="button" class="btn btn-primary">Chọn</a>
                </td>
            </tr>
            </tbody>
        </table>
<%--        <nav aria-label="Page navigation example">--%>
<%--            <ul class="pagination">--%>
<%--                <li class="page-item"><a class="page-link" th:href="@{/bee-store/trang-chu?pageSp=__${curentPageSanPham -1}__}">&laquo;</a></li>--%>
<%--                <li class="page-item" th:each="numberPage :${#numbers.sequence(0,totalPageSanPham - 1)}">--%>
<%--                    <a class="page-link" th:href="@{/bee-store/trang-chu?pageSp=__${numberPage}__}"--%>
<%--                       th:classappend="${numberPage == curentPageSanPham} ? 'active': ''"--%>
<%--                       th:text="${numberPage+1}"></a>--%>
<%--                </li>--%>
<%--                <li class="page-item"><a class="page-link" th:href="@{/bee-store/trang-chu?pageSp=__${curentPageSanPham -1}__}">&raquo;</a></li>--%>
<%--            </ul>--%>
<%--        </nav>--%>
    </div>
    <div class="w-25 p-1">
        <div>
            <h4 class="text-center bg-secondary text-light">Tìm kiếm</h4>
            <form action="/bee-store/seach-khach-hang" method="get">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Tên khách hàng or số điện thoại..."
                           aria-label="Tên Khách hàng" aria-describedby="basic-addon2" name="sdt">
                    <button type="submit" class="input-group-text" id="basic">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-search"
                             viewBox="0 0 16 16">
                            <path
                                    d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
                        </svg>
                    </button>
                </div>
            </form>
        </div>
        <div>
            <h4 class="text-center bg-secondary text-light">Tạo hóa đơn</h4>
            <form action="/bee-store/tao-hoa-don" method="post">
                <div class="mb-3">
<%--                    <label for="tenkhachHang" class="form-label">Tên khách hàng : </label>--%>
<%--                    <input type="text" class="form-control" id="tenkhachHang" name="tenKhachHang" th:if="${khachHang}" th:value="${khachHang.getTen()}" readonly>--%>
                </div>
                <div class="mb-3">
<%--                    <label for="soDienThoai" class="form-label">số điện thoại</label>--%>
<%--                    <input type="text" class="form-control" id="soDienThoai" th:if="${khachHang}" th:value="${khachHang.getSdt()}" readonly>--%>
                </div>
                <button type="submit" class="btn btn-outline-success">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                         class="bi bi-clipboard-plus" viewBox="0 0 16 16">
                        <path fill-rule="evenodd"
                              d="M8 7a.5.5 0 0 1 .5.5V9H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V10H6a.5.5 0 0 1 0-1h1.5V7.5A.5.5 0 0 1 8 7"/>
                        <path
                                d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1z"/>
                        <path
                                d="M9.5 1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0z"/>
                    </svg>
                    Tạo hóa đơn
                </button>
            </form>
        </div>
        <div>
            <h4 class="text-center bg-secondary text-light">Thanh Toán</h4>
            <form >
                <div class="mb-3">
                    <label for="tenkhachHang" class="form-label">Mã Hóa đơn : </label>
<%--                    <span th:if="${hoaDon}"  th:text="${hoaDon.getMa()}">..........</span>--%>
                </div>
                <div class="mb-3">
                    <label for="tenkhachHang" class="form-label">Tên khách hàng : </label>
<%--                    <span th:if="${hoaDon}" th:text="${hoaDon.getKhachHang().getTen()}">..........</span>--%>
                </div>
                <div class="mb-3">
                    <label for="tenkhachHang" class="form-label">Tên nhân viên</label>
                    <span>..........</span>
                </div>

                <div class="mb-3">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Nhập mã giảm giá...">
                        <button class="input-group-text" id="basic-addon2">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-check-circle" viewBox="0 0 16 16">
                                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
                                <path
                                        d="m10.97 4.97-.02.022-3.473 4.425-2.093-2.094a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05"/>
                            </svg>
                        </button>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="tenkhachHang" class="form-label">Tổng tiền: </label>
<%--                    <span th:if="${hoaDon}" th:text="${hoaDon.getTongTien()}">..........</span>--%>
                </div>
                <div class="mb-3">
                    <input type="text" class="form-control" id="tienKhachDua" placeholder="Tiền khách đưa">
                </div>
                <div class="mb-3">
                    <label for="tenkhachHang" class="form-label">Tiền trả lại</label>
                    <span>..........</span>
                </div>
                <button type="submit" class="btn btn-outline-success">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                         class="bi bi-cash-stack"
                         viewBox="0 0 16 16">
                        <path d="M1 3a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1zm7 8a2 2 0 1 0 0-4 2 2 0 0 0 0 4"/>
                        <path
                                d="M0 5a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V7a2 2 0 0 1-2-2z"/>
                    </svg>
                    Thanh toán
                </button>
            </form>
        </div>
    </div>
</div>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>
