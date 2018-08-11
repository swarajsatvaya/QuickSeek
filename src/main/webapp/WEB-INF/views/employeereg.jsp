<%-- 
    Document   : employeereg
    Created on : Feb 10, 2017, 7:48:06 PM
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
        <link rel="stylesheet" href="./resources/css/style.css">
        <link rel="stylesheet" href="./resources/css/custom.css">
        <link rel="stylesheet" type="text/css" id="theme" href="./resources/css/sweet-alert.min.css" />

    </head>
    <body class="freelisting-bg">
        <!-- Top Background Image Wrapper -->
        <div class="bgded free-listingbg"> 
            <div class="container">
                <header class="main-header-area free-listinghdr"> 
                    <div class="logo">
                        <a href="/"><img src="./resources/images/qckseeklogo2.png"></a>
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
                            <li class="active-m"><a href="./freelist">Free Listing <span class="listrghtimg"></span></a></li>
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
                <h3>Fill up your details for Employee Registration</h3>
                <div class="free-listing-container innertab">
                    <div class="col-md-12 formfrrl-container">
                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                            <label>First Name</label>
                        </div>
                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                            <input type="text" class="form-control" required="" id="firstName">
                        </div>
                    </div>
                    <div class="col-md-12 formfrrl-container">
                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                            <label>Last Name</label>
                        </div>
                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                            <input type="text" class="form-control" required="" id="lastName">
                        </div>
                    </div>
                    <div class="col-md-12 formfrrl-container">
                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                            <label>Mobile No.</label>
                        </div>
                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                            <input type="text" class="form-control" required="" id="mobile">
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
                            <label>Staff Designation</label>
                        </div>
                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                            <input type="text" class="form-control" required="" id="designation">
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
                                <input type="password" class="form-control" required="" id="confirmpassword">
                                <i class="fa fa-check-circle green"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 formfrrl-container">
                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                            <label>Introducer Id</label>
                        </div>
                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section" >
                            <div class="check-yes-no">
                                <input type="text" class="form-control" required="" id="introducerName">
                                <i class="fa fa-times-circle intro red"></i>
                                <i class="fa fa-eye blue viewintro-box-new" style="cursor: pointer"></i>
                            </div>
                            <div class="introducermain-detailsin" id="notshow-introducer">
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>ID</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                        <input type="Text" class="form-control" placeholder="XX Xxxxxx" id="introducerId" readonly="">
                                    </div>
                                </div>
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>Name</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                        <input type="Text" class="form-control" placeholder="XX Xxxxxx" id="introducerName2" readonly="">
                                    </div>
                                </div>
                            </div>
                            <div class="introducer-okbtn">
                                <button type="button" class="pull-right fstgo-btn" id="clickEmployee">OK</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="otpreqst-send-container">
                    <span class="codesbmt-intro">Submit Code</span>
                    <form class="otpreqs-code" method="post" action="">
                        <input type="hidden" class="formfree-list" id="otp">
                        <input type="text" class="formfree-list" id="newotp">
                    </form>
                    <div class="free-sbmt text-center">
                        <button type="button" class="freelisting-sbmt">Submit</button>
                    </div>
                </div>
                <!--                <div class="otpnumber-main-container">
                                    <div class="otpnumber-container">
                                        <input type="text" placeholder="OTP Number">
                                    </div>
                                    <div class="free-sbmt text-center">
                                        <button type="button" class="freelisting-sbmt">Submit</button>
                                    </div>
                                </div>-->
            </section>
        </div>

        <!--MMM script start(free listing) here 07-02-2017-->
        <script type="text/javascript">

        </script>
        <!-- JAVASCRIPTS -->
        <script type="text/javascript" src="./resources/js/jquery.min.js"></script>
        <script src="./resources/js/jquery-2.1.3.min.js"></script> 
        <script src="./resources/js/bootstrap.min.js"></script> 
        <script src="./resources/js/jquery-ui.js"></script>
        <script src="./resources/js/owl.carousel.min.js"></script>
        <script type="text/javascript" src="./resources/js/sweet-alert.min.js"></script>

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
                $('.fstgo-btn').click(function () {
//                    $('.otpreqst-send-container').slideToggle("fast");
                });

//                $('.sendotp').click(function () {
//                    $('.otpnumber-main-container').slideToggle("fast");
//                });
            });
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

        <!--MMM script start(free listing) here 07-02-2017-->
        <script type="text/javascript">

        </script>

        <script type="text/javascript" src="./resources/js/bootstrap-datepicker.js"></script>
        <script src="./resources/js/jquery.validate.js"></script>
        <script src="./resources/js/theme.js"></script>
        <script src="./resources/js/jquery.backtotop.js"></script>
        <script src="./resources/js/jquery.mobilemenu.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {


                $('.viewintro-box-new').click(function () {
                    $.ajax({
                        url: "./user/getStaffDetails?staffId=" + $('#introducerName').val(),
                        type: 'get',
                        dataType: 'json',
                        success: function (response)
                        {
                            $('#introducerName2').val(response.positionName);
                            $('#introducerId').val($('#introducerName').val());
                        }

                    });
                    $('#notshow-introducer').slideToggle("fast");
                });

                $('.fstgo-btn').click(function () {
                    console.log($('#mobile').val());
                    console.log($('#emailId').val());
                    console.log($('#introducerName').val());
                    var sendInfo = {
                        mobile: $('#mobile').val(),
                        email: $('#emailId').val(),
                        staffId: $('#introducerName').val()
                    };
                    $.ajax({
                        url: "./user/sendOTP",
                        type: 'post',
                        dataType: 'json',
                        success: function (response)
                        {
                            console.log(response.status);
                            if (response.status === 0) {
                                swal("Oops...", "UserId miss match", "error");
                            } else if (response.status === 1) {
                                $('#otp').val(response.otp);
                                $('.otpreqst-send-container').show();
                            } else if (response.status === 2) {
                                swal("Oops...", "Mobile No is already exsist", "error");
                            } else {
                                swal("Oops...", "EmailId is already exsist", "error");
                            }
                        },
                        data: sendInfo
                    });
                });

                $('.freelisting-sbmt').click(function () {
                    var job = {};
                    job["firstName"] = $('#firstName').val();
                    job["lastName"] = $('#lastName').val();
                    job["mobileNo"] = $('#mobile').val();
                    job["email"] = $('#emailId').val();
                    job["staffDesignation"] = $('#designation').val();
                    job["password"] = $('#password').val();
                    job["confirm_password"] = $('#confirmpassword').val();
                    job["otp"] = $('#otp').val();
                    job["new_otp"] = $('#newotp').val();
                    job["introducer_id"] = $('#introducerName').val();
                    console.log(job);
                    $.ajax({
                        url: "./user/saveEmployee",
                        type: "POST",
                        data: JSON.stringify(job),
                        dataType: "json",
                        contentType: "application/json",
                        success: function (data) {
                            if (data.status === 1) {
                                window.location = "./Login";
                            } else if (data.status === 0) {
                                sweetAlert("Oops...", "Password and confirm password did not match", "error");
                            } else {
                                sweetAlert("Oops...", "Otp did not match", "error");
                            }
                        }

                    });
                });
            });
        </script>


    </body>
</html>
