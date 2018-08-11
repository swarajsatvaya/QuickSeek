<%-- 
    Document   : ownerList
    Created on : Feb 10, 2017, 7:58:21 PM
    Author     : pc2
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>QckSeek.com</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link rel="shortcut icon" href="./resources/images/favicon.png" type="image/png">

        <link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="./resources/css/font-awesome.min.css" />
        <link rel="stylesheet" href="./resources/css/jquery.mCustomScrollbar.css">
        <link rel="stylesheet" href="./resources/css/bootstrap-slider.css">
        <link rel="stylesheet" href="./resources/css/owl.carousel.css" />
        <link rel="stylesheet" href="./resources/css/owl.theme.css" />
        <link rel="stylesheet" href="./resources/css/jquery-ui.css">
        <link href="./resources/css/layout1.css" rel="stylesheet" type="text/css" media="all">
        <link rel="stylesheet" href="./resources/css/style.css">
        <link rel="stylesheet" href="./resources/css/custom.css">

        <style>
            .bannerslider.inneroverlay-bg{background: rgba(30, 87, 123, 0.5);}
        </style>


    </head>
    <body>

        <!-- Top Background Image Wrapper -->
        <div class="bgded overlay main-header-slider purchasebgnone"> 
            <div class="banner-innerpage">
                <div class="container">
                    <div id="carousel-example-generic" class="carousel slide inner" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner carouselheight" role="listbox">
                            <div class="item active">
                                <img src="./resources/images/advertisement-banner.jpg" alt="" />
                            </div>
                            <div class="item">
                                <img src="./resources/images/advertisement-banner2.jpg" alt="" />
                            </div>
                            <div class="item">
                                <img src="./resources/images/advertisement-banner3.jpg" alt="" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="bannerslider inneroverlay-bg backnone">
                <section class="top-header-banner">
                    <div class="container hide-pdng">
                        <header class="main-header-area free-listinghdr"> 
                            <div class="logo">
                                <a href="./"><img src="./resources/images/qckseeklogo2.png"></a>
                            </div>
                            <div class="search-loocking-area">
                                <input type="text" class="searchlookin">
                                <button type="button"></button>
                            </div>
                            <div class="header-index">
                                <div class="dropdown" id="menu1">
                                    <div id="navbar">
                                        <nav class="navbar navbar-default navbar-static-top" role="navigation">
                                            <div class="navbar-collapse" id="navbar-collapse-1">
                                                <ul class="nav navbar-nav">
                                                    <li class="dropdown">
                                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="padding-right: 0"><img id="navmenubtm" src="./resources/images/menu-bar.png" alt=""></a>
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
                                    <li><a href="#"><img class="dsplaynone" src="./resources/images/download-app.gif" alt="" style="margin-right: 5px">App <span class="listrghtimg"></span></a> </li>
                                    <li><a class="upgrd" href="./user/upgrade">Upgrade</a></li>
                                    <li style="margin-left:10px"><a class="qcklgn" href="./Login" >Login</a></li>
                                    <li style="margin-left:10px"><a class="qcksgnup" href="./signUp" >Register</a></li>
                                </ul>

                            </div> 
                        </header>
                    </div>
                </section>
            </div>
        </div>
        <section class="full-width addpdng-purpose">
            <div class="container cars-local-link">
                <div class="row">
                    <div class="col-xs-12 col-md-12">
                        <div class="breadcrumb-list bigonesis-about-bread">
                            <ul class="breadcrumb">
                                <li></li>
                                <li><a href="index.html">Home</a></li>
                                <li class="arrow-icn">Local Purpose</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container mainmidbdy-container">
                <div class="col-xs-12 col-sm-3 col-md-3 leftmenu-loclprse padding-left-right-hide">
                    <div class="leftmenu-section" id="sorting">
                        <span class="main-title">Sort By</span>
                        <span class="title-purpose"><img src="./resources/images/location-icon.png" alt="">Location</span>
                        <ul>
                            <li><label><input type="checkbox"></label>Lorem Ipsum</li>
                            <li><label><input type="checkbox"></label>Lorem Ipsum</li>
                            <li><label><input type="checkbox"></label>Lorem Ipsum</li>
                            <li><label><input type="checkbox"></label>Lorem Ipsum</li>
                            <li><label><input type="checkbox"></label>Lorem Ipsum</li>
                        </ul>
<!--                        <span class="title-purpose mrgntp"><img src="./resources/images/direction-icon.png" alt="">Distance</span>
                        <ul>
                            <li><label><input type="checkbox"></label>Lorem Ipsum</li>
                            <li><label><input type="checkbox"></label>Lorem Ipsum</li>
                            <li><label><input type="checkbox"></label>Lorem Ipsum</li>
                            <li><label><input type="checkbox"></label>Lorem Ipsum</li>
                        </ul>-->
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6 mid-sectiondtl">
                    <div class="col-md-12 padding-left-right-hide">
                        <c:forEach var="detailsBeans" items="${detailsBeans}">
                                <c:choose>  
                                    <c:when test="${detailsBeans.searchResult == 'TRUE'}">
                            <a href="./ownerDetails/${detailsBeans.ownerId}" class=" local-main-area">
                                <div class="local-main-area-img">
                                    <img src="${detailsBeans.image}" alt="" />
                                </div>
                                <div class="company-details">
                                    <div class="local-main-area-heading">
                                        <h1>${detailsBeans.companyName}</h1>
                                    </div>
                                    <div class="local-main-area-heading">
                                        <label><i class="fa fa-phone"></i></label> <span>+91 ${detailsBeans.mobileNo}</span>
                                    </div>
                                    <div class="local-main-area-heading">
                                        <label><i class="fa fa-map-marker"></i></label> <span>${detailsBeans.address}</span>
                                    </div>
                                    <div class="local-main-area-heading">
                                        <label><i class="fa fa-info"></i></label> <span>Service Provided - ${detailsBeans.privider}</span>
                                    </div>
                                </div>
                            </a>
                                 </c:when>
                                    <c:otherwise>
                                        <div class="company-details">
                                    <div class="local-main-area-heading">
                                        <h1>No data found</h1>
                                    </div>
                                    
                                </div>
                                    </c:otherwise>
                              </c:choose>      
                        </c:forEach>
                        <div class="advertsmnt-mid" id="slimBanner">
                            <!--                            <img src="./resources/images/inner-slim-advt2.jpg" alt="">-->
                        </div>
                        <div class="pagination-page-ad">
                            <nav aria-label="Page navigation">
                                <!--                                <ul class="pagination">
                                                                    <li>
                                                                        <a href="#" aria-label="Previous">
                                                                            <span aria-hidden="true">&laquo;</span>
                                                                        </a>
                                                                    </li>
                                                                    <li><a href="#">1</a></li>
                                                                    <li><a href="#">2</a></li>
                                                                    <li><a href="#">3</a></li>
                                                                    <li><a href="#">4</a></li>
                                                                    <li><a href="#">5</a></li>
                                                                    <li>
                                                                        <a href="#" aria-label="Next">
                                                                            <span aria-hidden="true">&raquo;</span>
                                                                        </a>
                                                                    </li>
                                                                </ul>-->
                            </nav>
                        </div>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-3 col-md-3 left-advertisement padding-left-right-hide">
                    <div class="adver-box" id="advertisement-siderbar2">
                        <ul>
                            <li><a href="#"> <img src="./resources/images/advertise.jpg" alt=""> </a></li>
                            <li><a href="#"> <img src="./resources/images/advertise2.jpg" alt=""> </a></li>
                            <li><a href="#"> <img src="./resources/images/advertise3.jpg" alt=""> </a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <section class="footer-full">
            <div class="container main-area">
                <div class="row">
                    <div class="col-xs-12 col-md-3">
                        <div class="menu-area">
                            <h3>Who We Are</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam auctor Sed bibendum varius euismod. <a href="#" class="about-more">More <i class="fa fa-angle-double-right"></i></a></p>
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
        <!-- JAVASCRIPTS -->


        <!-- modal --->
        <div class="modal fade" tabindex="-1" role="dialog" id="localpurpose">
            <div class="modal-dialog modal-area3" role="document">
                <div class="modal-content localpurchase-content">
                    <button type="button" class="skipmodal-btn" data-dismiss="modal">Skip</button>
                    <div class="content-inner-bg">
                        <div class="modal-header local-purpose-modal">
                            <!--                        <button type="button" class="close close-area" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>-->
                            <h4>Fill this form and get best deals on "<span>Xxxxx Xxxxxx Xxxxxx</span>"</h4>
                        </div>
                        <div class="modal-body modal-form localpurposebody">
                            <div class="loginguest-container">
                                <!-- login modal Nav tabs -->
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="active"><a href="#login" aria-controls="login" role="tab" data-toggle="tab">Login</a></li>
                                    <li><a href="#guest" aria-controls="guest" role="tab" data-toggle="tab">Guest</a></li>
                                </ul>
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane active" id="login">
                                        <form class="frstform" action="#">
                                            <div class="form-group local-frm-group">
                                                <label>User Name</label>
                                                <input type="text" class="form-control">
                                            </div>
                                            <div class="form-group local-frm-group">
                                                <label>Password</label>
                                                <input type="password" class="form-control">
                                            </div>
                                            <button type="submit" class="btn btn-default submitlaclbtn" data-dismiss="modal">Login</button>
                                        </form>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="guest">
                                        <form class="frstform" action="#">
                                            <div class="form-group local-frm-group">
                                                <label>Your Name <span>*</span></label>
                                                <input type="text" class="form-control" placeholder="Your Name" required="">
                                            </div>
                                            <div class="form-group local-frm-group">
                                                <label>Your Mobile Number <span>*</span></label>
                                                <input type="text" class="form-control" placeholder="Mobile No." required="">
                                            </div>
                                            <div class="form-group local-frm-group">
                                                <label>Your Email ID (Optional) <span>*</span></label>
                                                <input type="email" class="form-control" placeholder="Email ID" required="">
                                            </div>
                                            <button type="submit" class="btn btn-default submitlaclbtn" data-dismiss="modal">Submit</button>
                                        </form>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript" src="./resources/js/jquery.min.js"></script>
        <script src="./resources/js/jquery-2.1.3.min.js"></script> 
        <script src="./resources/js/bootstrap.min.js"></script>
        <script src="./resources/js/jquery.mCustomScrollbar.concat.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $('#advertisement-siderbar2').affix({
                    offset: {
                        top: 260
                    }
                });
                $(window).scroll(function () {
                    var footer = $('#footer').height() + $('#bottmsmile-wraper').height() + $('#bottmsmile-wraper1').height();
                    var body = $('body').height();
                    var scrollable = (body - footer);
                    if ($(this).scrollTop() > scrollable)
                    {
                        $('#advertisement-siderbar2').removeClass('affix');
                    } else if ($(this).scrollTop() > 260)
                    {
                        $('#advertisement-siderbar2').addClass('affix');
                    }
                });

            });
        </script>


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
                        setHeight: 250,
                        theme: "dark-3"
                    });
                });
            })(jQuery);

        </script>
        <script type="text/javascript">
//            $(document).ready(function () {
//                $("#localpurpose").modal('show');
//            });
            $(window).load(function () {
                setTimeout(function () {
                    $('#localpurpose').modal('show');
                }, 3000);
            });
            function getAllCategory() {
                $.ajax({
                    url: "./admin/getAllCatagoryWithSubCategory",
                    method: "POST",
                    success: function (result)
                    {
                        $('#crlist-scrolling ul').html("");
                        console.log(result);
                        var strVar = "";
                        for (var i = 0; i < result.length; i++) {
                            strVar += "<li class='has-sub'><a href='#'><span>" + result[i].categoryName + "<\/span><\/a>";
                            strVar += "  <ul>";
                            for (var j = 0; j < result[i].subcategoryBeans.length; j++) {
                                console.log('=======' + result[i].subcategoryBeans[j].name);
                                strVar += "  <li><a href=\"#\">" + result[i].subcategoryBeans[j].name + "<\/a><\/li>";
                            }
                            strVar += " <\/ul>";
                            strVar += "<\/li>";
                        }
                        $('#crlist-scrolling ul').html(strVar);
                    },
                    complete: function () {
                        $("#crlist-scrolling").mCustomScrollbar({
                            setHeight: 534,
                            theme: "dark-3"
                        });

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
                    }
                });
            }

            function getAdvtImage() {
                $.ajax({
                    url: "./admin/getSideImage",
                    method: "get",
                    success: function (result) {
                        console.log(result);
                        $('#advertisement-siderbar2').html("");
                        var strVar = "";
                        for (var i = 0; i < result.length; i++) {
                            strVar += "<ul>";
                            strVar += "<li><a href=\"#\"><img class=\"img-responsive\" src=\"" + result[i] + "\" alt=\"\"\/><\/a><\/li>";
                            strVar += "<\/ul>";
                        }
                        $('#advertisement-siderbar2').html(strVar);

                    },

                });
            }

            function getSlimImage() {
                $.ajax({
                    url: "./admin/getMiddleImage",
                    method: "get",
                    success: function (result) {
                        console.log(result);
                        $('#slimBanner').html("");
                        var strVar = "";
                        for (var i = 0; i < result.length; i++) {
//                            strVar += "<ul>";
//                            strVar += "<li><a href=\"#\"><img class=\"img-responsive\" src=\""+result[i]+"\" alt=\"\"\/><\/a><\/li>";
//                            strVar += "<\/ul>";
                            strVar += "<div class=\"advertsmnt-mid\">";
                            strVar += "<img src=\"" + result[i] + "\" alt=\"\"\/>";
                            strVar += "<\/div>";
                        }
                        $('#slimBanner').html(strVar);

                    },

                });
            }

            function getLocation() {
                $.ajax({
                    url: "./admin/getAllCity",
                    method: "get",
                    success: function (result) {
                        console.log(result);
                        $('#sorting ul').html("");
                        var strVar = "";
                        for (var i = 0; i < result.length; i++)
                        {
                            strVar += "<ul>";
                            strVar += "<li><label><input type=\"checkbox\"><\/label>"+ result[i].cityName +"<\/li>";
                            strVar += "<\/ul>";
                        }
                        $('#sorting ul').html(strVar);

                    },
//                    complete: function(){
//                        $("#sorting").mCustomScrollbar({
//                            setHeight: 534,
//                            theme: "dark-3"
//                        });

                });
            }

            $(document).ready(function () {
                getAllCategory();
                getAdvtImage();
                getSlimImage();
                getLocation();
            });
        </script>
        <script src="./resources/js/jquery-ui.js"></script>
        <script src="./resources/js/owl.carousel.min.js"></script>
        <script type="text/javascript" src="./resources/js/bootstrap-datepicker.js"></script>
        <script src="./resources/js/jquery.validate.js"></script>
        <!-- Theme Initializer -->
        <script src="./resources/js/theme.plugins.js"></script>
        <script src="./resources/js/theme.js"></script>
        <script src="./resources/js/jquery.backtotop.js"></script>
        <script src="./resources/js/jquery.mobilemenu.js"></script>
        <script src="./resources/js/jquery.flexslider-min.js"></script>

    </body>
</html>
