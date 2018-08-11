<%-- 
    Document   : addToCart
    Created on : 25 Feb, 2017, 10:15:13 AM
    Author     : OdexLaptop
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>QckSeek | Cart</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link rel="shortcut icon" href="../resources/images/favicon.png" type="image/png">

        <link rel="stylesheet" type="text/css" href="../resources/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="../resources/css/font-awesome.min.css" />
        <link rel="stylesheet" href="../resources/css/jquery.mCustomScrollbar.css">
        <link rel="stylesheet" href="../resources/css/bootstrap-slider.css">
        <link rel="stylesheet" href="../resources/css/owl.carousel.css" />
        <link rel="stylesheet" href="../resources/css/owl.theme.css" />
        <link rel="stylesheet" href="../resources/css/jquery-ui.css">
        <link href="../resources/css/layout1.css" rel="stylesheet" type="text/css" media="all">
        <link rel="stylesheet" type="text/css" id="theme" href="../resources/css/custommycss.css">
        <link rel="stylesheet" href="../resources/css/style.css">
        <link rel="stylesheet" href="../resources/css/custom.css">

    </head>
    <body class="freelisting-bg">
        <!-- Top Background Image Wrapper -->
        <div class="bgded free-listingbg"> 
            <div class="container">
                <header class="main-header-area free-listinghdr"> 
                    <div class="logo">
                        <a href="index.html"><img src="../resources/images/qckseeklogo2.png"></a>
                    </div>
                    <div class="header-index">
                        <div class="dropdown" id="menu1">
                            <div id="navbar">
                                <nav class="navbar navbar-default navbar-static-top" role="navigation">
                                    <div class="navbar-collapse" id="navbar-collapse-1">
                                        <ul class="nav navbar-nav">
                                            <li class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="padding-right: 0">
                                                    <img id="navmenubtm" src="../resources/images/menu-bar.png" alt="">
                                                </a>
                                                <div id='cssmenu' class="navmenusubmenu">
                                                    <div id="crlist-scrolling">
                                                        <ul>
                                                            <li class='has-sub'><a href='#'><span>Menu 1</span></a>
                                                                <ul>
                                                                    <li><a href="#">Submenu 1</a></li>
                                                                    <li><a href="#">Submenu 2</a></li>
                                                                    <li><a href="#">Submenu 3</a></li>
                                                                    <li><a href="#">Submenu 4</a></li>
                                                                </ul>
                                                            </li>
                                                            <li class='has-sub'><a href='#'><span>Menu 2</span></a>
                                                                <ul>
                                                                    <li><a href="#">Submenu 1</a></li>
                                                                    <li><a href="#">Submenu 2</a></li>
                                                                    <li><a href="#">Submenu 3</a></li>
                                                                    <li><a href="#">Submenu 4</a></li>
                                                                </ul>
                                                            </li>
                                                            <li class='has-sub'><a href='#'><span>Menu 3</span></a>
                                                                <ul>
                                                                    <li><a href="#">Submenu 1</a></li>
                                                                    <li><a href="#">Submenu 2</a></li>
                                                                    <li><a href="#">Submenu 3</a></li>
                                                                    <li><a href="#">Submenu 4</a></li>
                                                                </ul>
                                                            </li>
                                                            <li class='has-sub'><a href='#'><span>Menu 4</span></a>
                                                                <ul>
                                                                    <li><a href="#">Submenu 1</a></li>
                                                                    <li><a href="#">Submenu 2</a></li>
                                                                    <li><a href="#">Submenu 3</a></li>
                                                                    <li><a href="#">Submenu 4</a></li>
                                                                </ul>
                                                            </li>
                                                            <li class='has-sub'><a href='#'><span>Menu 5</span></a>
                                                                <ul>
                                                                    <li><a href="#">Submenu 1</a></li>
                                                                    <li><a href="#">Submenu 2</a></li>
                                                                    <li><a href="#">Submenu 3</a></li>
                                                                    <li><a href="#">Submenu 4</a></li>
                                                                </ul>
                                                            </li>
                                                            <li class='has-sub'><a href='#'><span>Menu 6</span></a>
                                                                <ul>
                                                                    <li><a href="#">Submenu 1</a></li>
                                                                    <li><a href="#">Submenu 2</a></li>
                                                                    <li><a href="#">Submenu 3</a></li>
                                                                    <li><a href="#">Submenu 4</a></li>
                                                                </ul>
                                                            </li>
                                                            <li class='has-sub'><a href='#'><span>Menu 7</span></a>
                                                                <ul>
                                                                    <li><a href="#">Submenu 1</a></li>
                                                                    <li><a href="#">Submenu 2</a></li>
                                                                    <li><a href="#">Submenu 3</a></li>
                                                                    <li><a href="#">Submenu 4</a></li>
                                                                </ul>
                                                            </li>
                                                            <li class='has-sub'><a href='#'><span>Menu 8</span></a>
                                                                <ul>
                                                                    <li><a href="#">Submenu 1</a></li>
                                                                    <li><a href="#">Submenu 2</a></li>
                                                                    <li><a href="#">Submenu 3</a></li>
                                                                    <li><a href="#">Submenu 4</a></li>
                                                                </ul>
                                                            </li>
                                                            <li class='has-sub'><a href='#'><span>Menu 9</span></a>
                                                                <ul>
                                                                    <li><a href="#">Submenu 1</a></li>
                                                                    <li><a href="#">Submenu 2</a></li>
                                                                    <li><a href="#">Submenu 3</a></li>
                                                                    <li><a href="#">Submenu 4</a></li>
                                                                </ul>
                                                            </li>
                                                            <li class='has-sub'><a href='#'><span>Menu 10</span></a>
                                                                <ul>
                                                                    <li><a href="#">Submenu 1</a></li>
                                                                    <li><a href="#">Submenu 2</a></li>
                                                                    <li><a href="#">Submenu 3</a></li>
                                                                    <li><a href="#">Submenu 4</a></li>
                                                                </ul>
                                                            </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- /.navbar-collapse -->
                                </nav>
                            </div>
                        </div>
                        <ul class="menunewadjst">
                            <li class="active-m"><a href="index.html">Free Listing <span class="listrghtimg"></span></a></li>
                            <li><a href="#"><img class="dsplaynone" src="../resources/images/download-app.gif" alt="" style="margin-right: 5px">App <span class="listrghtimg"></span></a> </li>
                            <li><a class="upgrd" href="#">Upgrade</a></li>
                            <li style="margin-left:10px"><a class="qcklgn" href="#" >Login</a></li>
                            <li style="margin-left:10px"><a class="qcksgnup" href="#">Register</a></li>
                        </ul>
                    </div> 
                </header>
            </div>
        </div>
        <div class="clear"></div>
        <div class="reg-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12 main-content indextop-section-wrapper">
                                <header class="content-title">
                                    <h2 class="title">My Cart</h2>
                                </header>
                                <div class="col-xs-12 col-md-12 col-sm-12 cartdetails-wrapper cart-wrapper">
                                    <section id="page">
                                        <!-- Cart -->
                                        <div class="cart shadow">
                                            <!-- Cart Contents -->
                                            <table class="cart-contents">
                                                <tr class="cart-trbg">
                                                    <td>
                                                        Description
                                                    </td>
                                                    <td>
                                                        Total
                                                    </td>
                                                </tr>
                                                <c:forEach var="myCart" items="${myCart}">
                                                    <tr class="prodtr-area">
                                                        <td class="details">
                                                            <div class="clearfix">
                                                                <div class="pull-left">
                                                                    <a href="#" class="title">
                                                                        ${myCart.type}
                                                                    </a>
                                                                    <h4 class="cartsubtitle">Details</h4>
                                                                    <label class="cartinner-details">Validity: <span>${myCart.validity}</span></label>
                                                                    <label class="cartinner-details">No. of Keyword: <span>${myCart.noOfKeyword}</span></label>
                                                                    <label class="cartinner-details">Percentage of Viewer: <span>${myCart.percentage}%</span></label>
                                                                    <label class="cartinner-details">Lead Priority: <span>${myCart.priority}%</span></label>
                                                                    <label class="cartinner-details">Listing Position: <span>${myCart.position}</span></label>
                                                                </div>
                                                                <div class="action pull-right">
                                                                    <div class="clearfix">
                                                                        <button class="btn-default btn-raised ripple-effect">
                                                                            <i class="fa fa-pencil"></i>
                                                                        </button>
                                                                        <button class="btn-danger btn-raised ripple-effect" onclick="delectCart('${myCart.id}')">
                                                                            <img src="../resources/images/remove-icon.png" alt="delt">
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class="total-price">
                                                            <span class="currency">
                                                                <i class="fa fa-inr"></i>
                                                            </span> ${myCart.rupes}
                                                        </td>
                                                    </tr>  
                                                </c:forEach>

                                            </table>
                                            <table class="cart-summary addednew">
                                                <tr>
                                                    <td class="terms">
                                                        <p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>
                                                        <h5>Enter your coupon here</h5>
                                                        <form class="form-inline cuponcode">
                                                            <div class="form-group">
                                                                <label></label>
                                                                <input type="text" class="form-control">
                                                            </div>
                                                            <button type="submit" class="btn btn-primary">Apply Coupon</button>
                                                        </form>
                                                    </td>
                                                    <td class="totals">

                                                        <table class="cart-totals">
                                                            <tbody>
<!--                                                                <tr>
                                                                    <td>
                                                                        Sub Total
                                                                    </td>
                                                                    <td class="price">
                                                                        <i class="fa fa-inr"></i> 4500.00
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        Shipping
                                                                    </td>
                                                                    <td class="price">
                                                                        <i class="fa fa-inr"></i> 500.00
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        VAT
                                                                    </td>
                                                                    <td class="price">
                                                                        <i class="fa fa-inr"></i> 250.00
                                                                    </td>
                                                                </tr>-->
                                                                <tr>
                                                                    <td class="cart-total">
                                                                        total
                                                                    </td>
                                                                    <td class="cart-total price">
                                                                        <i class="fa fa-inr"></i> ${total}
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>

                                            <!-- /Cart Summary -->

                                        </div>
                                        <!-- /Cart -->

                                        <!-- Cart Buttons -->
                                        <div class="cart-buttons clearfix pull-right">
                                            <a  class="btn btn-raised btn-success ripple-effect checkout continue" href="./checkout">
                                                <i class="fa fa-plus"></i> checkout
                                            </a>
                                        </div>
                                    </section>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <section class="footer-full">
            <div class="container main-area">
                <div class="row">
                    <div class="col-xs-12 col-md-3">
                        <div class="menu-area">
                            <h3>Who We Are</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam auctor Sed bibendum varius euismod. <a href="about-us.html" class="about-more">More <i class="fa fa-angle-double-right"></i></a></p>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-3">
                        <div class="menu-area">
                            <h3>Quick link</h3>
                            <ul>
                                <li><a href="#"><i class="fa fa-angle-right arrow"></i>About us</a></li>
                                <li><a href="#"><i class="fa fa-angle-right arrow"></i>Premium Ads</a></li>
                                <li><a href="#"><i class="fa fa-angle-right arrow"></i>Blog</a></li>
                                <li><a href="#"><i class="fa fa-angle-right arrow"></i>Franchise</a></li>
                                <li><a href="#"><i class="fa fa-angle-right arrow"></i>Renewals</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-3">
                        <div class="menu-area">
                            <h3>Hot link</h3>
                            <ul>
                                <li><a href="#"><i class="fa fa-angle-right arrow"></i>Online Shoping</a></li>
                                <li><a href="#"><i class="fa fa-angle-right arrow"></i>Jobs</a></li>
                                <li><a href="#"><i class="fa fa-angle-right arrow"></i>Hotel Booking</a></li>
                                <li><a href="#"><i class="fa fa-angle-right arrow"></i>Doctor Appointment</a></li>
                                <li><a href="#"><i class="fa fa-angle-right arrow"></i>Cab Booking</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-3">
                        <div class="menu-area">
                            <h3>Contact</h3>
                            <p>BE-379, Salt Lake<br>
                                Sector- 1, Kolkata- 700064<br>
                                Office : 033-40643422,40035969 <br>
                                Email : contact@qckseek.com
                            </p>
                            <div class="footer-social-icons">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i><span>Facebook</span></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i><span>Twitter</span></a></li>
                                    <li><a href="#"><i class="fa fa-youtube"></i><span>youtube</span></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i><span>Google+</span></a></li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
        <div class="clear"></div>
        <div style="width:100%; float: left">
            <div class="wrapper row5">
                <div id="copyright" class="hoc clear"> 

                    <p class="fl_left">Copyright © 2017 - All Rights Reserved Infosof Technologies</p>
                    <p class="fl_right">Promoted by <a target="_blank" href="http://infosof.com/data/index.php/site/index.html" title="infosof Technologies">Infosof Technologies</a></p>

                </div>
            </div>
        </div>
        <a id="backtotop" href="#top" class="visible"><i class="fa fa-chevron-up"></i></a>
        <div id="googleplay-icon">
            <a class="visible" href="#"><img src="../resources/images/playstore.png" alt="" id="loading"></a>
            <a class="visible" href="#"><img src="../resources/images/apple.png" alt="" id="loading2"></a>
            <a class="visible" href="#"><img src="../resources/images/windows.png" alt="" id="loading3"></a>
        </div>

        <!-- JAVASCRIPTS -->
        <script src="../resources/js/jquery-2.1.3.min.js"></script>
        <script type="text/javascript" src="../resources/js/jquery.min.js"></script>
        <script src="../resources/js/bootstrap.min.js"></script> 
        <script src="../resources/js/jquery-ui.js"></script>
        <script src="../resources/js/owl.carousel.min.js"></script>

        <script type="text/javascript">

            $(document).ready(function ($) {
                //$("#main-slider").owlCarousel();


                $(".automobiles").owlCarousel({
                    // Most important owl features
                    // Most important owl features
                    items: 6,
                    itemsCustom: false,
                    itemsDesktop: [1199, 6],
                    itemsDesktopSmall: [991, 5],
                    itemsTablet: [840, 4],
                    itemsTabletSmall: false,
                    itemsMobile: [480, 3],
                    itemsMobile: [360, 2],
                    singleItem: false,
                    itemsScaleUp: false,
                    //Basic Speeds
                    slideSpeed: 200,
                    paginationSpeed: 800,
                    rewindSpeed: 1000,
                    //Autoplay
                    autoPlay: true,
                    stopOnHover: true,
                    // Navigation
                    navigation: true,
                    navigationText: ["<i class='fa fa-angle-left'></i>",
                        "<i class='fa fa-angle-right'></i>"],
                    rewindNav: true,
                    scrollPerPage: false,
                    //Pagination
                    pagination: false,
                    paginationNumbers: false
                });
                $(".automobiles2").owlCarousel({
                    // Most important owl features
                    // Most important owl features
                    items: 3,
                    itemsCustom: false,
                    itemsDesktop: [1199, 3],
                    itemsDesktopSmall: [991, 2],
                    itemsTablet: [667, 2],
                    itemsTabletSmall: false,
                    itemsMobile: [540, 2],
                    itemsMobile: [480, 1],
                    singleItem: false,
                    itemsScaleUp: false,
                    //Basic Speeds
                    slideSpeed: 200,
                    paginationSpeed: 800,
                    rewindSpeed: 1000,
                    //Autoplay
                    autoPlay: true,
                    stopOnHover: true,
                    // Navigation
                    navigation: true,
                    navigationText: ["<i class='fa fa-angle-left'></i>",
                        "<i class='fa fa-angle-right'></i>"],
                    rewindNav: true,
                    scrollPerPage: false,
                    //Pagination
                    pagination: false,
                    paginationNumbers: false
                });
            });

        </script>

        <script src="../resources/js/jquery.mCustomScrollbar.concat.min.js"></script>

        <script>
            (function ($) {
                $(document).ready(function () {
                    $('#cssmenu ul > li > a').click(function () {
                        $('#cssmenu li').removeClass('active');
                        $(this).closest('li').addClass('active');
                        var checkElement = $(this).next();
                        if ((checkElement.is('ul')) && (checkElement.is(':visible'))) {
                            $(this).closest('li').removeClass('active');
                            checkElement.slideUp('normal');
                        }
                        if ((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
                            $('#cssmenu ul ul:visible').slideUp('normal');
                            checkElement.slideDown('normal');
                        }
                        if ($(this).closest('li').find('ul').children().length == 0) {
                            return true;
                        } else {
                            return false;
                        }
                    });
                });
            })(jQuery);

            $(document).ready(function () {
                $("#navmenubtm").click(function () {
                    $(".navmenusubmenu").slideToggle('slow');
                });
            });

            (jQuery)(function ($) {
                $(window).load(function () {
                    $("#crlist-scrolling").mCustomScrollbar({
                        setHeight: 534,
                        theme: "dark-3"
                    });
                });
            })(jQuery);

        </script>



        <script type="text/javascript" src="../resources/js/bootstrap-datepicker.js"></script>
        <script src="../resources/js/jquery.validate.js"></script>
        <script src="../resources/js/theme.js"></script>
        <script src="../resources/js/jquery.backtotop.js"></script>
        <script src="../resources/js/jquery.mobilemenu.js"></script>



        <script type="text/javascript">
            function delectCart(id){
                console.log(id+'----');
            }
            $(document).ready(function () {
                $('.sendotp-userreg').click(function () {
                    $('.otpnumber-main-container').slideToggle("fast");
                });
            });
        </script>

    </body>
</html>
