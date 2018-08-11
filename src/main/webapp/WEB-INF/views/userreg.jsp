<%-- 
    Document   : userreg
    Created on : Feb 10, 2017, 7:51:24 PM
    Author     : pc2
--%>

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
        <link rel="stylesheet" type="text/css" id="theme" href="./resources/css/custommycss.css">
        <link rel="stylesheet" type="text/css" id="theme" href="./resources/css/sweet-alert.min.css" />
        <link rel="stylesheet" href="./resources/css/style.css">
        <link rel="stylesheet" href="./resources/css/custom.css">

    </head>
    <body class="freelisting-bg">
        <!-- Top Background Image Wrapper -->
        <div class="bgded free-listingbg"> 
            <div class="container">
                <header class="main-header-area free-listinghdr"> 
                    <div class="logo">
                        <a href="./"><img src="./resources/images/qckseeklogo2.png"></a>
                    </div>
                    <div class="header-index">
                        <div class="dropdown" id="menu1">
                            <div id="navbar">
                                <nav class="navbar navbar-default navbar-static-top" role="navigation">
                                    <div class="navbar-collapse" id="navbar-collapse-1">
                                        <ul class="nav navbar-nav">
                                            <li class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="padding-right: 0">
                                                    <img id="navmenubtm" src="./resources/images/menu-bar.png" alt="">
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
                            <li><a href="#"><img class="dsplaynone" src="./resources/images/download-app.gif" alt="" style="margin-right: 5px">App <span class="listrghtimg"></span></a> </li>
                            <li><a class="upgrd" href="#">Upgrade</a></li>
                            <li style="margin-left:10px"><a class="qcklgn" href="./Login" >Login</a></li>
                            <li style="margin-left:10px"><a class="qcksgnup" href="./signUp">Sign Up</a></li>
                        </ul>
                    </div> 
                </header>
            </div>
        </div>
        <div class="clear"></div>
        <div class="reg-wrapper">
            <section class="freelisting-container">
                <h3>Fill up your details for User Registration</h3>
                <div class="free-listing-container innertab">
                    <div class="col-md-12 formfrrl-container">
                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                            <label>Name</label>
                        </div>
                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                            <input type="text" class="form-control" required="" id="name">
                        </div>
                    </div>
<!--                    <div class="col-md-12 formfrrl-container">
                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                            <label>Last Name</label>
                        </div>
                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                            <input type="text" class="form-control" required="">
                        </div>
                    </div>-->
                    <div class="col-md-12 formfrrl-container">
                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                            <label>Mobile No.</label>
                        </div>
                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                            <input type="text" class="form-control" required="" id="mobile-srch">
                        </div>
                    </div>
                    <div class="col-md-12 formfrrl-container">
                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                            <label>Email Id</label>
                        </div>
                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                            <input type="email" class="form-control" required="" id="emailId">
                        </div>
                    </div>
                    <div class="col-md-12 formfrrl-container">
                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                            <label>Address</label>
                        </div>
                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                            <textarea class="form-control" id="address"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12 formfrrl-container">
                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                            <label>Choose Password</label>
                        </div>
                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                            <input type="password" class="form-control" required="" id="password">
                        </div>
                    </div>
                    <div class="col-md-12 formfrrl-container">
                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                            <label>Confirm Password</label>
                        </div>
                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                            <div class="check-yes-no">
                                <input type="password" class="form-control" required="" id="cnfpassword">
                                <i class="fa fa-check-circle green"></i>
                            </div>
                        </div>
                    </div>
                    <div class="free-sbmt text-center">
                        <button type="button" class="freelisting-sbmt sendotp-userreg pull-right" id="addSend"><i class="fa fa-paper-plane-o" style="margin-right: 5px; border: 0px solid; padding: 0; width: auto; margin-left: 0"></i>Send</button>
                    </div>

                </div>
                <div class="otpnumber-main-container">
                    <div class="otpnumber-container">
                        <input type="text" placeholder="OTP Number" id="NewOtp">
                        <input type="hidden" id="OTPNew">
                    </div>
                    <div class="free-sbmt text-center">
                        <button type="button" class="freelisting-sbmt" id="addSubmit">Submit</button>
                    </div>
                </div>
            </section>
        </div>

        <!-- JAVASCRIPTS -->
        <script type="text/javascript" src="./resources/js/jquery.min.js"></script>
        <script src="./resources/js/jquery-2.1.3.min.js"></script> 
        <script src="./resources/js/bootstrap.min.js"></script> 
        <script src="./resources/js/jquery-ui.js"></script>
        <script type="text/javascript" src="./resources/js/sweet-alert.min.js"></script>
        <script src="./resources/js/owl.carousel.min.js"></script>

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

        <script src="./resources/js/jquery.mCustomScrollbar.concat.min.js"></script>

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
            });

        </script>



        <script type="text/javascript" src="./resources/js/bootstrap-datepicker.js"></script>
        <script src="./resources/js/jquery.validate.js"></script>
        <script src="./resources/js/theme.js"></script>
        <script src="./resources/js/jquery.backtotop.js"></script>
        <script src="./resources/js/jquery.mobilemenu.js"></script>



        <script type="text/javascript">
//            $(document).ready(function () {
//                $('.sendotp-userreg').click(function () {
//                    $('.otpnumber-main-container').slideToggle("fast");
//                });
//            });
        </script>

        <script type="text/javascript">

            $('#addSend').click(function () {

                var sendInfo = {
                    phoneNo: $('#mobile-srch').val()
                };
                if ($('#mobile-srch').val() !== "") {
                    $.ajax({
                        url: './user/phonenocheck',
                        type: 'post',
                        dataType: 'json',
                        success: function (response) {
                            if (response.status === 1) {
                                $('.otpnumber-main-container').slideToggle("fast");
                                sendOtp();
                            } else {
                                sweetAlert("Oops...", "Your mobile No is already exist!", "error");
                            }
                        },
                        data: sendInfo
                    });
                } else {
                    sweetAlert("Oops...", "Enter Valid No!", "error");
                }
            });

            function sendOtp() {
                var sendInfo = {
                    phoneNo: $('#mobile-srch').val()
                };
                $.ajax({
                    url: './user/sendOtp',
                    type: 'post',
                    dataType: 'json',
                    success: function (response) {
                        alert(response.otp);
                        $('#OTPNew').val(response.otp);
                        alert($('#OTPNew').val());
                        console.log(response);

                    },

                    data: sendInfo
                });

            }
            
            $('#addSubmit').click(function () {
                    console.log($('#name').val());
                    var sendInfo = {

                        name: $('#name').val(),
                        phoneNo: $('#mobile-srch').val(),
                        email: $('#emailId').val(),
                        address: $('#address').val(),
                        password: $('#password').val(),
                        confirmPassword: $('#cnfpassword').val(),
                        otp: $('#NewOtp').val(),
                        checkotp: $('#OTPNew').val()
                    };
                    $.ajax({
                        url: './user/saveCustomer',
                        type: 'POST',
                        dataType: 'json',
                        success: function (response) {
                            if (response.status === 1) {
                                window.location = "./registersuccess";
                            } else {
                                sweetAlert("Oops...", "Please try again later", "error");
                            }

                        },
                        data: sendInfo
                    });

                });

        </script>

    </body>
</html>
