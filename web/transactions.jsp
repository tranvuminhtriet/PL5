<%@page import="java.util.ArrayList"%>
<%@page import="model.BEAN.Nhanvien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <!-- Primary Meta Tags -->
        <title>Transactions</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="title" content="Volt Bootstrap 5 Dashboard - Transactions">
        <meta name="author" content="Themesberg">
        <meta name="description" content="Volt is a free and open source Bootstrap 5 Admin Dashboard featuring 11 example pages, 100 components and 3 plugins with Vanilla JS.">
        <meta name="keywords" content="bootstrap 5, bootstrap, bootstrap 5 admin dashboard, free bootstrap 5 dashboard, bootstrap 5 dashboard, bootstrap 5 charts, bootstrap 5 calendar, bootstrap 5 datepicker, bootstrap 5 tables, bootstrap 5 datatable, vanilla js datatable, themesberg, themesberg dashboard, themesberg admin dashboard" />
        <link rel="canonical" href="https://themesberg.com/product/admin-dashboard/volt-bootstrap-5-dashboard">

        <!-- Open Graph / Facebook -->
        <meta property="og:type" content="website">
        <meta property="og:url" content="https://demo.themesberg.com/volt">
        <meta property="og:title" content="Volt Bootstrap 5 Dashboard - Transactions">
        <meta property="og:description" content="Volt is a free and open source Bootstrap 5 Admin Dashboard featuring 11 example pages, 100 components and 3 plugins with Vanilla JS.">
        <meta property="og:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/volt-bootstrap-5-dashboard/volt-bootstrap-5-dashboard-preview.jpg">

        <!-- Twitter -->
        <meta property="twitter:card" content="summary_large_image">
        <meta property="twitter:url" content="https://demo.themesberg.com/volt">
        <meta property="twitter:title" content="Volt Bootstrap 5 Dashboard - Transactions">
        <meta property="twitter:description" content="Volt is a free and open source Bootstrap 5 Admin Dashboard featuring 11 example pages, 100 components and 3 plugins with Vanilla JS.">
        <meta property="twitter:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/volt-bootstrap-5-dashboard/volt-bootstrap-5-dashboard-preview.jpg">

        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="120x120" href="resources/assets/img/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="resources/assets/img/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="resources/assets/img/favicon/favicon-16x16.png">
        <link rel="manifest" href="resources/assets/img/favicon/site.webmanifest">
        <link rel="mask-icon" href="resources/assets/img/favicon/safari-pinned-tab.svg" color="#ffffff">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="theme-color" content="#ffffff">

        <!-- Fontawesome -->
        <link type="text/css" href="resources/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">

        <!-- Notyf -->
        <link type="text/css" href="resources/vendor/notyf/notyf.min.css" rel="stylesheet">

        <!-- Volt CSS -->
        <link type="text/css" href="resources/css/volt.css" rel="stylesheet">

        <!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->

        <style>
            #table-scroll {
                height:250px;
                overflow:auto;  
                margin-top:20px;
            }
        </style>
    </head>

    <body>

        <nav class="navbar navbar-dark navbar-theme-primary px-4 col-12 d-md-none">
            <a class="navbar-brand mr-lg-5" href="../index.html">
                <img class="navbar-brand-dark" src="resources/assets/img/brand/light.svg" alt="Volt logo" /> <img class="navbar-brand-light" src="../assets/img/brand/dark.svg" alt="Volt logo" />
            </a>
            <div class="d-flex align-items-center">
                <button class="navbar-toggler d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </nav>

        <div class="container-fluid bg-soft">
            <div class="row">
                <div class="col-12">
                    <nav id="sidebarMenu" class="sidebar d-md-block bg-primary text-white collapse" data-simplebar>
                        <div class="sidebar-inner px-4 pt-3">
                            <div class="user-card d-flex d-md-none align-items-center justify-content-between justify-content-md-center pb-4">
                                <div class="d-flex align-items-center">
                                    <div class="user-avatar lg-avatar mr-4">
                                        <img src="resources/assets/img/team/profile-picture-3.jpg" class="card-img-top rounded-circle border-white" alt="Bonnie Green">
                                    </div>
                                    <div class="d-block">
                                        <h2 class="h6"></h2>
                                        <a href="resources/pages/examples/sign-in.html" class="btn btn-secondary text-dark btn-xs"><span class="mr-2"><span class="fas fa-sign-out-alt"></span></span>Sign Out</a>
                                    </div>
                                </div>
                                <div class="collapse-close d-md-none">
                                    <a href="#sidebarMenu" class="fas fa-times" data-toggle="collapse"
                                       data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="true"
                                       aria-label="Toggle navigation"></a>
                                </div>
                            </div>
                            <ul class="nav flex-column">
                                <ul class="nav flex-column">
                                    <li class="nav-item   ">
                                        <!-- <a href="../../pages/dashboard/dashboard.jsp" class="nav-link"> --> 
                                        <a href="Dashboard" class="nav-link">
                                            <span class="sidebar-icon"><span class="fas fa-chart-pie"></span></span>
                                            <span>Gi???i thi???u</span>
                                        </a>
                                    </li>
                                    <li class="nav-item active ">
                                        <!-- <a href="../../pages/transactions.jsp" class="nav-link"> --> 
                                        <a href="./ListNhanVien " class="nav-link">
                                            <span class="sidebar-icon"><span class="fas fa-hand-holding-usd"></span></span>
                                            <span>Th??ng tin-L????ng</span>
                                        </a>
                                    </li>
                                    <li class="nav-item  ">
                                        <a href="./loadLoggingTime" class="nav-link">
                                            <span class="sidebar-icon"><span class="fas fa-cog"></span></span>
                                            <span>Logging-time</span>
                                        </a>
                                    </li>
                                </ul>
                        </div>
                    </nav>             
                    <main class="content">
                        <nav class="navbar navbar-top navbar-expand navbar-dashboard navbar-dark pl-0 pr-2 pb-0">
                            <div class="container-fluid px-0">
                                <div class="d-flex justify-content-between w-100" id="navbarSupportedContent">
                                    <div class="d-flex">
                                        <!-- Search form -->
                                        <form class="navbar-search form-inline" id="navbar-search-main">

                                        </form>
                                    </div>
                                    <!-- L???y  t??? session controller -->

                                    <!-- LINK ????NG NH???P-->
                                    <c:choose>
                                        <c:when test="${empty sessionScope.username}">
                                            <a href="./DangnhapControl" class="text-default font-weight-bold mr-3">????ng nh???p</a>
                                        </c:when>
                                        <c:otherwise>
                                            <ul class="navbar-nav align-items-center">
                                                <li class="nav-item dropdown">
                                                    <a class="nav-link pt-1 px-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <div class="media d-flex align-items-center">
                                                            <img class="user-avatar md-avatar rounded-circle" alt="Image placeholder" src="./resources/assets/img/team/profile-picture-3.jpg">
                                                            <div class="media-body ml-2 text-dark align-items-center d-none d-lg-block">
                                                                <span class="mb-0 font-small font-weight-bold">${sessionScope.username}</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <div class="dropdown-menu dashboard-dropdown dropdown-menu-right mt-2">
                                                        <a class="dropdown-item font-weight-bold" href="#"><span class="far fa-user-circle"></span>My Profile</a>
                                                        <a class="dropdown-item font-weight-bold" href="#"><span class="fas fa-cog"></span>Settings</a>
                                                        <a class="dropdown-item font-weight-bold" href="#"><span class="fas fa-envelope-open-text"></span>Messages</a>
                                                        <a class="dropdown-item font-weight-bold" href="#"><span class="fas fa-user-shield"></span>Support</a>
                                                        <div role="separator" class="dropdown-divider"></div>
                                                        <a class="dropdown-item font-weight-bold" href="./LogOut"><span class="fas fa-sign-out-alt text-danger"></span>Logout</a>
                                                    </div>
                                                </li>
                                            </ul>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                        </nav>

                        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center py-4">
                            <div class="d-block mb-4 mb-md-0">

                                <h2 class="h4">Danh s??ch nh??n vi??n</h2>
                                <p class="mb-0">Th??ng tin c?? b???n v?? gi??? l??m.</p>
                            </div>

                        </div>
                        <div class="table-settings mb-4">
                            <form action="SearchNhanVien" method="GET">
                                <div class="row align-items-center justify-content-between">
                                    <div class="col col-md-6 col-lg-3 col-xl-4">
                                        <div class="input-group">
                                            <span class="input-group-text" id="basic-addon2"><span class="fas fa-search"></span></span>
                                            <input type="text" class="form-control" id="exampleInputIconLeft" name ="searchBox" placeholder="T??m ki???m theo t??n nh??n vi??n" aria-label="Search" aria-describedby="basic-addon2">
                                        </div>
                                    </div>
                                    <div class="col-4 col-md-2 col-xl-1 pl-md-0 text-right">
                                        <div class="btn-group">
                                            <button class="btn btn-link text-dark dropdown-toggle dropdown-toggle-split m-0 p-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <button class="btn btn-secondary" type="submit">Search</button>
                                            </button>

                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card card-body border-light shadow-sm table-wrapper table-responsive pt-0">
                            <div id="table-scroll">
                                <table class="table table-hover">
                                    <% ArrayList<Nhanvien> nvArray = (ArrayList<Nhanvien>) request.getAttribute("nvArray"); %>
                                    <thead>
                                        <tr>
                                            <th>ID nh??n vi??n</th>
                                            <th>H??? t??n</th>						
                                            <th>S??? ??i???n tho???i</th>
                                            <th>Email</th>
                                            <th>Ph??? c???p</th>
                                            <th>Ti???n c??ng/ng??y</th>
                                            <th>Chi ti???t</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- Item -->
                                        <%for (Nhanvien nv : nvArray) {%>
                                        <tr>
                                            <td>  
                                                <%=nv.getManv()%>
                                            </td>
                                            <td>
                                                <span class="font-weight-normal"><%= nv.getHoten()%> </span>
                                            </td>
                                            <td><span class="font-weight-normal"><%= nv.getSdt()%></span></td>                        
                                            <td><span class="font-weight-normal"><%= nv.getEmail()%></span></td>
                                            <td><span class="font-weight-bold"><%= nv.getPhucap()%></span></td>
                                            <td><span class="font-weight-bold text-warning"><%= nv.getCongtheongay()%></span></td>
                                            <td>
                                                <div class="btn-group">
                                                    <button class="btn btn-link text-dark dropdown-toggle dropdown-toggle-split m-0 p-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <span class="icon icon-sm">
                                                            <span class="fas fa-ellipsis-h icon-dark"></span>
                                                        </span>
                                                        <span class="sr-only">Toggle Dropdown</span>
                                                    </button>
                                                    <div class="dropdown-menu">
                                                        <a class="dropdown-item" href="nhanvienLogging?MaNV=<%=nv.getManv()%> "><span class="fas fa-eye mr-2"></span>View Details</a>
                                                        <c:choose>
                                                            <c:when test="${empty sessionScope.username}">
                                                                <a onclick="alert('Vui l??ng ????ng nh???p ????? s??? d???ng ch???c n??ng n??y!');" class="dropdown-item" href="#"><span class="fas fa-edit mr-2"></span>Edit</a> 
                                                                <a class="dropdown-item text-danger"onclick="alert('Vui l??ng ????ng nh???p ????? s??? d???ng ch???c n??ng n??y!');" class="dropdown-item" href="#"><span class="fas fa-trash-alt mr-2"></span>Remove</a>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <a class="dropdown-item" href="EditNhanVien?idnv=<%=nv.getManv()%>"><span class="fas fa-edit mr-2"></span>Edit</a> 
                                                                <a class="dropdown-item text-danger" href="./DeleteNhanVien?id=<%=nv.getManv()%>" onclick="return confirm('B???n c?? ch???c ch???n mu???n x??a?');"><span class="fas fa-trash-alt mr-2"></span>Remove</a>
                                                            </c:otherwise>
                                                        </c:choose>

                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <% }%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center py-4">
                            <p class="text-info mb-0 h5 mb-3">T??nh l????ng cho nh??n vi??n:</p>
                            <!-- Button Modal -->
                            <button type="button" class="btn btn-primary mb-3" data-toggle="modal" data-target="#modal-default">?</button>
                            <!-- Modal Content -->
                            <div class="modal fade" id="modal-default" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h2 class="h6 modal-title">C??CH TH???C T??NH L????NG</h2>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <h2 class="h6 ">Quy ?????nh gi??? l??m:</h2>
                                            <p>- Th???i gian l??m vi???c c???a c??ng ty: 7:00 am - 5:00 pm.</p>
                                            <p>- Nh??n vi??n vui l??ng logging trong th???i gian quy ?????nh (c?? th??? logging s???m h??n, nh??ng th???i gian ch???m c??ng ch??? t??nh t??? 7:00 am). </p>
                                            <p>- N???u th???i gian l??m >= 8 ti???ng / ng??y th?? t??nh l?? 1 ng??y c??ng. </p>
                                            <p>- N???u th???i gian l??m trong kho???ng 4 - 8 ti???ng / ng??y th?? t??nh l?? 1/2 ng??y c??ng. </p>
                                            <p>- N???u th???i gian l??m trong < 4 ti???ng / ng??y th?? ch??a ????? ch??? ti??u gi??? l??m t??nh l?? 0 ng??y c??ng. </p>
                                            <h2 class="h6">C??ng th???c t??nh l????ng:</h2>
                                            <p>- T???ng l????ng 1 th??ng = ti???n l????ng c?? b???n(theo ng??y) * s??? ng??y c??ng + ph??? c???p.</p>
                                        </div>
                                        <div class="modal-footer">

                                            <button type="button" class="btn btn-link text-danger ml-auto" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End of Modal Content -->
                        </div>
                        <div class="table-settings mb-4">

                            <div class="row align-items-center justify-content-between">
                                <div class="col-md-6 mb-3 ">
                                    <label for="thangluong" >Ch???n th??ng</label>
                                    <select class="form-select mb-0" id="thangluong" aria-label="Th??ng l????ng" name="thang" required="">
                                        <option id="1" value="1">Th??ng 1</option>
                                        <option id="2" value="2">Th??ng 2</option>
                                        <option id="3" value="3">Th??ng 3</option>
                                        <option id="4" value="4">Th??ng 4</option>
                                        <option id="5" value="5" selected>Th??ng 5</option>
                                        <option id="6" value="6">Th??ng 6</option>
                                        <option id="7" value="7">Th??ng 7</option>
                                        <option id="8" value="8">Th??ng 8</option>
                                        <option id="9" value="9">Th??ng 9</option>
                                        <option id="10" value="10">Th??ng 10</option>
                                        <option id="11" value="11">Th??ng 11</option>
                                        <option id="12" value="12">Th??ng 12</option>
                                    </select>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="namluong" >Ch???n n??m</label>
                                    <select class="form-select mb-0" id="namluong" aria-label="N??m l????ng" name="nam" required="">
                                        <option id="2019" value="2019">2019</option>
                                        <option id="2020" value="2020">2020</option>
                                        <option id="2021" value="2021" selected>2021</option>
                                        <option id="2022" value="2022">2022</option>
                                        <option id="2023" value="2023" >2023</option>
                                    </select>
                                </div>
                                <div class="btn-group">
                                    <button class="btn btn-light" type="button" id="tinh" onclick="jsToiLuong()"  >T??nh L????ng</button>
                                </div>
                            </div>


                            <div id="demo"></div>
                            <footer class="footer section py-5">
                                <div class="row">
                                    <div class="col-12 col-lg-6 mb-4 mb-lg-0">
                                        <p class="mb-0 text-center text-xl-left">Copyright ?? 2019-<span class="current-year"></span> <a class="text-primary font-weight-normal" href="#" target="_blank">Themesberg</a></p>
                                    </div>

                                    <div class="col-12 col-lg-6">
                                        <ul class="list-inline list-group-flush list-group-borderless text-center text-xl-right mb-0">
                                            <li class="list-inline-item px-0 px-sm-2">
                                                <a href="#">About</a>
                                            </li>
                                            <li class="list-inline-item px-0 px-sm-2">
                                                <a href="#">Themes</a>
                                            </li>
                                            <li class="list-inline-item px-0 px-sm-2">
                                                <a href="#">Blog</a>
                                            </li>
                                            <li class="list-inline-item px-0 px-sm-2">
                                                <a href="#">Contact</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </footer>
                    </main>
                </div>
            </div>
        </div>

        <script src="resources/js/all.js"></script>
        <!-- Core -->
        <script src="resources/vendor/popper.js/dist/umd/popper.min.js"></script>
        <script src="resources/vendor/bootstrap/dist/js/bootstrap.min.js"></script>

        <!-- Vendor JS -->
        <script src="resources/vendor/onscreen/dist/on-screen.umd.min.js"></script>

        <!-- Slider -->
        <script src="resources/vendor/nouislider/distribute/nouislider.min.js"></script>

        <!-- Jarallax -->
        <script src="resources/vendor/jarallax/dist/jarallax.min.js"></script>

        <!-- Smooth scroll -->
        <script src="resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>

        <!-- Count up -->
        <script src="resources/vendor/countup.js/dist/countUp.umd.js"></script>

        <!-- Notyf -->
        <script src="resources/vendor/notyf/notyf.min.js"></script>

        <!-- Charts -->
        <script src="resources/vendor/chartist/dist/chartist.min.js"></script>
        <script src="resources/vendor/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>

        <!-- Datepicker -->
        <script src="resources/vendor/vanillajs-datepicker/dist/js/datepicker.min.js"></script>

        <!-- Simplebar -->
        <script src="resources/vendor/simplebar/dist/simplebar.min.js"></script>

        <!-- Github buttons -->
        <script async defer src="https://buttons.github.io/buttons.js"></script>

        <!-- Volt JS -->
        <script src="resources/assets/js/volt.js"></script>


    </body>

</html>
