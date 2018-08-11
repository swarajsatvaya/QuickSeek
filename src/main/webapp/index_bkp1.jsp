<%-- 
    Document   : index_bkp1
    Created on : Feb 10, 2017, 7:30:36 PM
    Author     : pc2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>QckSeek.com</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link rel="shortcut icon" href="images/favicon.png" type="image/png">

        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
        <link rel="stylesheet" href="css/bootstrap-slider.css">
        <link rel="stylesheet" href="css/owl.carousel.css" />
        <link rel="stylesheet" href="css/owl.theme.css" />
        <link rel="stylesheet" href="css/jquery-ui.css">
        <link href="css/layout1.css" rel="stylesheet" type="text/css" media="all">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/custom.css">

        <style>
            #pageintro li p.cnstrct{font-size: 22px;color: #F5F35C;font-weight: 600; margin-bottom: 10px}
            #pageintro li p.cnstrct2{font-size: 16px}
            .header-index li a span.listrghtimg{display: none}
            #pageintro li article .acktypeselct ul li.location-select{float: left; width: 50%}
            #pageintro li article .acktypeselct ul li.location-select select{
                color: #000000;
                background-color: #FFFFFF;
                width: 100%;
                padding: 5px 15px 5px 15px;
                display: block;
                height: 44px;
                border: none;
                border-radius: 22px;
                margin-top: 0;
            }
        </style>

    </head>
    <body>

        <!-- Top Background Image Wrapper -->
        <div class="bgded overlay main-header-slider"> 
            <div class="container">
                <header class="main-header-area free-listinghdr index-logo"> 
                    <div class="logo">
                        <a href="index.html"><img src="images/QckseekLogo.png"></a>
                    </div>
                    <div class="search-loocking-area support">
                        <p>Support: <i class="fa fa-phone"></i>033-40035969</p>
                    </div>


                    <div class="header-index">
                        <div class="dropdown" id="menu1">
                            <div id="navbar">
                                <nav class="navbar navbar-default navbar-static-top" role="navigation">
                                    <div class="navbar-collapse" id="navbar-collapse-1">
                                        <ul class="nav navbar-nav">
                                            <li class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="padding-right: 0"><img id="navmenubtm" src="images/menu-bar.png" alt=""></a>
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
                            <li class="active-m"><a href="free-listing.html">Free Listing <span class="listrghtimg"></span></a></li>
                            <li><a href="#"><img class="dsplaynone" src="images/download-app.gif" alt="" style="margin-right: 5px">App <span class="listrghtimg"></span></a> </li>
                            <li><a class="upgrd" href="#">Upgrade</a></li>
                            <li style="margin-left:10px"><a class="qcklgn" href="#" >Login</a></li>
                            <li style="margin-left:10px"><a class="qcksgnup" href="quick-signup.html">Sign Up</a></li>
                        </ul>

                    </div> 
                </header>
                <div id="pageintro" class="hoc clear"> 
                    <div class="flexslider basicslider">
                        <ul class="slidernone-hide">
                            <li>
                                <article>
                                    <h2 class="heading">This Website is under development!</h2>
                                    <h3 class="heading">world's biggest <font color="#02affb">classified market place</font></h3>
                                    <p class="cnstrct">We are coming shortly</p>
                                    <div class="acktypeselct">
                                        <form class="catagories-area">
                                            <ul>
                                                <li class="location-select">
                                                    <select>
                                                        <option>Location</option>
                                                        <option>Xxxxxx</option>
                                                        <option>Xxxxxx</option>
                                                    </select>
                                                </li>
                                                <li class="location-select">
                                                    <select>
                                                        <option>All Categories</option>
                                                        <option>Xxxxxx</option>
                                                        <option>Xxxxxx</option>
                                                    </select>
                                                </li>
                                                <li class="padding-right"><input type="search" placeholder="What are you looking for?" required="" /></li>
                                            </ul>
                                            <div class="searchbtn">
                                                <button type="submit">Search Now</button>
                                            </div>
                                        </form>
                                    </div>
                                    <section class="clints-logo">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12 clients-wrapper">
                                                <div class="tab-pane active" id="tab1">
                                                    <div class="clients-carousel-wraper">
                                                        <div class="owl-carousel owl-theme owl-loaded automobiles">
                                                            <div class=" item imghvrzm">
                                                                <a href="#"> <img src="images/taxi.png" class="img-responsive" alt="car" title=""/><span>Car</span></a>
                                                            </div>
                                                            <div class=" item imghvrzm">
                                                                <a href="#"> <img src="images/library.png" class="img-responsive" alt="library" title=""/><span>Book</span></a>
                                                            </div>
                                                            <div class="item imghvrzm">
                                                                <a href="#"> <img src="images/laptop.png" class="img-responsive" alt="Computer" title=""/><span>Computer</span></a>
                                                            </div>
                                                            <div class="item imghvrzm">
                                                                <a href="#"> <img src="images/smartphone.png" class="img-responsive" alt="Mobile" title=""/><span>Mobile</span></a>
                                                            </div>
                                                            <div class="item imghvrzm">
                                                                <a href="#">  <img src="images/pets.png" class="img-responsive" alt="Pets" title=""/><span>Pets</span></a>
                                                            </div>
                                                            <div class="item imghvrzm">
                                                                <a href="#">  <img src="images/job.png" class="img-responsive" alt="job" title=""/><span>Job</span></a>
                                                            </div>
                                                            <div class="item imghvrzm">
                                                                <a href="#">  <img src="images/taxi.png" class="img-responsive" alt="car" title=""/><span>Car</span></a>
                                                            </div>
                                                            <div class="item imghvrzm">
                                                                <a href="#">   <img src="images/library.png" class="img-responsive" alt="library" title=""/><span>Book</span></a>
                                                            </div>
                                                            <div class="item imghvrzm">
                                                                <a href="#">  <img src="images/laptop.png" class="img-responsive" alt="Computer" title=""/><span>Computer</span></a>
                                                            </div>
                                                            <div class="item imghvrzm">
                                                                <a href="#">  <img src="images/smartphone.png" class="img-responsive" alt="Mobile" title=""/><span>Mobile</span></a>
                                                            </div>
                                                            <div class="item imghvrzm">
                                                                <a href="#"> <img src="images/pets.png" class="img-responsive" alt="Pets" title=""/><span>Pets</span></a>
                                                            </div>
                                                            <div class="item imghvrzm">
                                                                <a href="#">  <img src="images/job.png" class="img-responsive" alt="job" title=""/><span>Job</span></a>
                                                            </div>
                                                        </div>                                              
                                                    </div>                                        
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </article>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <section class="full-bg">
            <div class="container main-area">
                <div class="row">
                    <div class="col-xs-12 col-md-12 center btmspace-80">
                        <h3 style="color: #3f4453;">What's Trending</h3>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 clients-wrapper">
                        <div class="tab-pane active" id="tab1">
                            <div class="clients-carousel-wraper">
                                <div class="owl-carousel owl-theme owl-loaded automobiles2">
                                    <div class="item">
                                        <a href="#"><img class="img-responsive" src="images/img1.jpg" alt=""/></a>
                                    </div>
                                    <div class="item">
                                        <a href="#"><img class="img-responsive" src="images/img2.jpg" alt=""/></a>
                                    </div>
                                    <div class="item">
                                        <a href="#"><img class="img-responsive" src="images/img3.jpg" alt=""/></a> 
                                    </div>
                                    <div class="item">
                                        <a href="#"><img class="img-responsive" src="images/img4.jpg" alt=""></a> 
                                    </div>
                                    <div class="item">
                                        <a href="#"><img class="img-responsive" src="images/img3.jpg" alt=""/></a> 
                                    </div>
                                    <div class="item">
                                        <a href="#"><img class="img-responsive" src="images/img1.jpg" alt=""/></a>
                                    </div>
                                </div>                                              
                            </div>                                        
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section  class="light-bg subscribe text-center">
            <div class="container">
                <div class="col-md-12 padding-hidenew">
                    <div class="col-sm-4 col-md-5 mobile-img">
                        <img src="images/mobile1.png" alt="" />
                    </div>
                    <div class="col-sm-8 col-md-7 text-padding-top">
                        <h3 class="index-headthrd">Download our mobile app and 24 hours connect your self with the largest local search engine</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam auctor Sed bibendum varius euismod. Integer eget turpis sit amet lorem rutrum ullamcorper sed sed dui. vestibulum odio at elementum. Suspendisse et condimentum nibh.</p>
                        <div class="app-buttons">
                            <form class="submit">
                                <input class="button" onclick="" value="Download Now" type="button">
                            </form>
                        </div>
                        <div class="app-store-bg">
                            <ul>
                                <li><a href="#"><img src="images/google-icon.png" alt="" /></a></li>
                                <li><a href="#"><img src="images/ios-icon.png" alt="" /></a></li>
                                <li><a href="#"><img src="images/windows-icon.png" alt="" /></a></li>
                            </ul>
                        </div>
                        <div class="clearfix"> </div>
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
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script src="js/jquery-2.1.3.min.js"></script> 
        <script src="js/bootstrap.min.js"></script> 
        <script src="js/jquery-ui.js"></script>
        <script src="js/owl.carousel.min.js"></script>

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

        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>

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

        <script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
        <script src="js/jquery.validate.js"></script>
        <script src="js/theme.js"></script>
        <script src="js/jquery.backtotop.js"></script>
        <script src="js/jquery.mobilemenu.js"></script>
    </body>
</html>
