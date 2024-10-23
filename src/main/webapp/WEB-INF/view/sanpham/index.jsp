<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>HNH SHOP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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
            <a href="/hnh-shop/trang-chu"><button class="navbar-brand btn btn-danger w-100 p-3 text-light">Bán hàng tại quầy</button></a>
        </div>

        <div class="container-fluid">
            <a href="/hnh-shop/san-pham/hien-thi"><button class="navbar-brand mb-0 h1 btn btn-danger w-100 p-3 text-light">Quản lý sản phẩm</button></a>
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
    <div class="container">
        <div class="content-add">
            <div class="container mt-4">
                <h2 class="text-center mb-4">Thêm sản phẩm</h2>
                <form th:action="@{/bee-store/san-pham-them}" method="post">
                    <div class="form-row">
                        <div class="form-group" style="width: 800px">
                            <label class="form-label">Mã sản phẩm</label>
                            <input type="text" class="form-control" name="ma">
                        </div>
                        <div class="form-group" style="width: 800px">
                            <label class="form-label">Tên sản phẩm</label>
                            <input type="text" class="form-control" name="ten">
                        </div>
                    </div>
<%--                    <div class="form-row ">--%>
<%--                        <div class="form-group" style="width: 800px">--%>
<%--                            <label class="form-label">Chất liệu</label>--%>
<%--                            <input type="text" class="form-control" name="chatLieu">--%>
<%--                        </div>--%>
<%--                        <div class="form-group" style="width: 800px">--%>
<%--                            <label class="form-label">Thương hiệu</label>--%>
<%--                            <input type="text" class="form-control" name="thuongHieu">--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="row g-2 mb-3">--%>
<%--                        <div class="col">--%>
<%--                            <label class="form-label">Xuất xứ</label>--%>
<%--                            <input type="text" class="form-control" name="xuatXu">--%>
<%--                        </div>--%>
<%--                        <div class="col">--%>
<%--                            <label class="form-label">Trạng thái</label>--%>
<%--                            <div class="form-check">--%>
<%--                                <input class="form-check-input" type="radio" name="trangThai" id="trangThai1" value="1" checked>--%>
<%--                                <label class="form-check-label" for="trangThai1">--%>
<%--                                    Còn hàng--%>
<%--                                </label>--%>
<%--                            </div>--%>
<%--                            <div class="form-check">--%>
<%--                                <input class="form-check-input" type="radio" name="trangThai" id="trangThai2" value="0">--%>
<%--                                <label class="form-check-label" for="trangThai2">--%>
<%--                                    Hết hàng--%>
<%--                                </label>--%>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-outline-danger">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-earmark-plus" viewBox="0 0 16 16">
                            <path d="M8 6.5a.5.5 0 0 1 .5.5v1.5H10a.5.5 0 0 1 0 1H8.5V11a.5.5 0 0 1-1 0V9.5H6a.5.5 0 0 1 0-1h1.5V7a.5.5 0 0 1 .5-.5"/>
                            <path d="M14 4.5V14a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h5.5zm-3 0A1.5 1.5 0 0 1 9.5 3V1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4.5z"/>
                        </svg> Thêm
                    </button>
                </form>
            </div>
<%--        </div>--%>
        <h2 class="text-center">Danh sách sản phẩm</h2>
        <table class="table table-hover">
            <thead>
            <tr class="table-success">
                <th scope="col">Stt</th>
                <th scope="col">Mã sản phẩm</th>
                <th scope="col">Tên sản phẩm</th>
                <th scope="col">Trạng Thái</th>
                <th scope="col">Thao tác</th>

            </tr>
            </thead>
            <tbody>
<%--            <tr th:each="sanPham, stat : ${listSanPham}">--%>
<%--                <th scope="row" th:text="${stat.index + 1}"></th>--%>
<%--                <td th:text="${sanPham.getMa()}"></td>--%>
<%--                <td th:text="${sanPham.getTen()}"></td>--%>
<%--                <!--                <td th:text="${sanPham.getTrangThai() == 1 ? 'Còn Hàng' : 'Hết Hàng'}"></td>-->--%>

<%--                <td>--%>
<%--                    <div id="wrapper">--%>
<%--                        <input type="checkbox" name="switch-toggle" class="switch-toggle" id="on-off"--%>
<%--                               th:checked="${sanPham.getTrangThai() == 1}" disabled>--%>
<%--                        <label for="on-off" class="switch-label"></label>--%>
<%--                        <!--                        <span th:text="${sanPham.getTrangThai() == 1 ? 'Còn Hàng' : 'Hết Hàng'}"></span>-->--%>
<%--                    </div>--%>

<%--                </td>--%>
<%--                <td>--%>
<%--                    <button class="btn btn-outline-warning">--%>
<%--                        <svg xmlns="http://www.w3.org/2000/svg" width="16"--%>
<%--                             height="16" fill="currentColor" class="bi bi-folder2-open" viewBox="0 0 16 16">--%>
<%--                            <path--%>
<%--                                    d="M1 3.5A1.5 1.5 0 0 1 2.5 2h2.764c.958 0 1.76.56 2.311 1.184C7.985 3.648 8.48 4 9 4h4.5A1.5 1.5 0 0 1 15 5.5v.64c.57.265.94.876.856 1.546l-.64 5.124A2.5 2.5 0 0 1 12.733 15H3.266a2.5 2.5 0 0 1-2.481-2.19l-.64-5.124A1.5 1.5 0 0 1 1 6.14zM2 6h12v-.5a.5.5 0 0 0-.5-.5H9c-.964 0-1.71-.629-2.174-1.154C6.374 3.334 5.82 3 5.264 3H2.5a.5.5 0 0 0-.5.5zm-.367 1a.5.5 0 0 0-.496.562l.64 5.124A1.5 1.5 0 0 0 3.266 14h9.468a1.5 1.5 0 0 0 1.489-1.314l.64-5.124A.5.5 0 0 0 14.367 7z"/>--%>
<%--                        </svg>--%>
<%--                        Xem chi tiết--%>
<%--                    </button>--%>
<%--                    <a href="/bee-store/san-pham-chi-tiet"><button class="btn btn-outline-primary">--%>
<%--                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"--%>
<%--                             class="bi bi-folder-plus" viewBox="0 0 16 16">--%>
<%--                            <path--%>
<%--                                    d="m.5 3 .04.87a2 2 0 0 0-.342 1.311l.637 7A2 2 0 0 0 2.826 14H9v-1H2.826a1 1 0 0 1-.995-.91l-.637-7A1 1 0 0 1 2.19 4h11.62a1 1 0 0 1 .996 1.09L14.54 8h1.005l.256-2.819A2 2 0 0 0 13.81 3H9.828a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 6.172 1H2.5a2 2 0 0 0-2 2m5.672-1a1 1 0 0 1 .707.293L7.586 3H2.19q-.362.002-.683.12L1.5 2.98a1 1 0 0 1 1-.98z"/>--%>
<%--                            <path--%>
<%--                                    d="M13.5 9a.5.5 0 0 1 .5.5V11h1.5a.5.5 0 1 1 0 1H14v1.5a.5.5 0 1 1-1 0V12h-1.5a.5.5 0 0 1 0-1H13V9.5a.5.5 0 0 1 .5-.5"/>--%>
<%--                        </svg>--%>
<%--                        Thêm chi tiết--%>
<%--                    </button></a>--%>
<%--                </td>--%>
<%--            </tr>--%>
            </tbody>
        </table>
        <nav aria-label="Page navigation example">
            <ul class="pagination">
<%--                <li class="page-item"><a class="page-link"--%>
<%--                                         th:href="@{/bee-store/san-pham?pageSp=__${curentPageSanPham -1}__}">&laquo;</a>--%>
<%--                </li>--%>
<%--                <li class="page-item" th:each="numberPage :${#numbers.sequence(0,totalPageSanPham - 1)}">--%>
<%--                    <a class="page-link" th:href="@{/bee-store/san-pham?pageSp=__${numberPage}__}"--%>
<%--                       th:classappend="${numberPage == curentPageSanPham} ? 'active': ''"--%>
<%--                       th:text="${numberPage+1}"></a>--%>
<%--                </li>--%>
<%--                <li class="page-item"><a class="page-link"--%>
<%--                                         th:href="@{/bee-store/san-pham?pageSp=__${curentPageSanPham -1}__}">&raquo;</a>--%>
<%--                </li>--%>
            </ul>
        </nav>
        <h2 class="text-center">Danh sách Chi tiết sản phẩm</h2>
        <table class="table table-hover">
            <thead>
            <tr class="table-success">
                <th scope="col">Stt</th>
                <th scope="col">Mã sản phẩm</th>
                <th scope="col">Tên sản phẩm</th>
                <th scope="col">Màu sắc</th>
<%--                <th scope="col">Chất liệu</th>--%>
<%--                <th scope="col">Thương Hiệu</th>--%>
<%--                <th scope="col">Xuất xứ</th>--%>
                <th scope="col">Giá bán</th>
                <th scope="col">Số lượng</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">1</th>
                <td>Mark</td>
                <td>Vợt</td>
                <td>@mdo</td>
                <td>Otto</td>
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
                <td>Otto</td>
            </tr>
            <tr>
                <th scope="row">2</th>
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
                <td>Otto</td>
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
                <td>Otto</td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
                <td>Otto</td>
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
                <td>Otto</td>
            </tr>
            </tbody>
        </table>
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</div>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>