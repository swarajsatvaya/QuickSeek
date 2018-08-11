<%-- 
    Document   : freeListing
    Created on : Feb 7, 2017, 3:11:48 PM
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
                    <div class="freeadlisting-btn">
                        <a href="#">Free Ad-Listing</a>
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
                                                        <ul id="menubar">
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
                        <ul class="menunewadjst free-listingpdngbtm">
                            <li><a class="qcklgn" href="./Login">Login</a></li>
                            <li><a class="qcksgnup" href="#">Sign Up</a></li>
                        </ul>
                    </div> 
                </header>
            </div>
        </div>
        <div class="clear"></div>
        <div class="reg-wrapper">
            <section class="freelisting-container">
                <h3>Host you business details for free Membership with India&OpenCurlyQuote;s biggest classified local search engine</h3>
                <div class="free-listing-container">
                    <span>Enter your details below</span>
                    <form method="post" class="freeform-qseek" >
                        <div class="box-formfree">
                            <input type="text" class="formfree-list" placeholder="Company Name" name="companyName" id="companyName">
                            <select class="formfree-list" id="selectState" name="">

                            </select>
                        </div>
                        <div class="box-formfree">
                            <select class="formfree-list list2" id="selectCity">

                            </select>
                            <input type="text" class="formfree-list list2" placeholder="Name" id="ownerName" name="ownerName">
                        </div>
                        <div class="box-formfree lftmrgn">
                            <input type="text" class="formfree-list" placeholder="Contact No." id="mobile-srch" name="mobileNo">
                            <input type="email" class="formfree-list list2" placeholder="Email" id="emailId" name="emailId">
                        </div>
                        <div class="free-sbmt text-center">
                            <button type="button" class="fstgo-btn" id="addGo">Go<i class="fa fa-arrow-right"></i></button>
                        </div>
                    </form>
                </div>
                <div class="otpreqst-send-container">
                    <form class="otpreqs-send" method="post" action="">
                        <div class="otpsend-relative">
                            <span>OTP Send</span>
                            <input type="text" class="formfree-list" placeholder="+91 9830111121" id="mobile" readonly="">
                        </div>
                        <button type="button" class="editreqst-number" id="editNumber"><i class="fa fa-pencil-square-o"></i>Edit Number</button>
                    </form>
                    <div class="free-sbmt text-center">
                        <button type="button" class="sendotp" id="sendotp">Send<i class="fa fa-paper-plane"></i></button>
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
        <footer class="footer-section footer-newcss">
            <div class="container">
                <div class="col-md-12 text-center">
                    <a href="#">Terms & Condition Apply</a>
                </div>
            </div>
        </footer>
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

        <!--MMM script start(free listing) here 07-02-2017-->
        <script type="text/javascript">
            $(document).ready(function () {
//                $('.fstgo-btn').click(function () {
//                    $('.otpreqst-send-container').slideToggle("fast");
//                });
//
//                $('.sendotp').click(function () {
//                    $('.otpnumber-main-container').slideToggle("fast");
//                });
            });
        </script>

        <script type="text/javascript" src="./resources/js/bootstrap-datepicker.js"></script>
        <script src="./resources/js/jquery.validate.js"></script>
        <script src="./resources/js/theme.js"></script>
        <script src="./resources/js/jquery.backtotop.js"></script>
        <script src="./resources/js/jquery.mobilemenu.js"></script>

        <script type="text/javascript">

            function getState() {

                $.ajax({url: "./admin/getAllState",
                    method: "get",
                    success: function (result) {
                        var strVar = "";
                        strVar += "<option value=\"\" selected>Select State<\/option>";
                        for (var i = 0; i < result.length; i++) {
                            strVar += "<option value=\"" + result[i].id + "\">" + result[i].name + "<\/option>";
                        }
                        $('#selectState').html(strVar);
                    }});
            }

            function selectCity(id) {
                $.ajax({
                    url: "./admin/getCityByState?stateId=" + id,
                    method: "get",
                    success: function (result)
                    {
                        //console.log(result);
                        var strVar = "",
                                strVar = "<option value=\"\" selected>Select City<\/option>";
                        for (var i = 0; i < result.length; i++)
                        {
                            strVar += "<option value=\"" + result[i].id + "\">" + result[i].cityName + "<\/option>";

                        }
                        $('#selectCity').html(strVar);
                    }


                });

            }
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
            $(document).ready(function () {
                getState();
                getAllCategory();
                $('#selectState').on('change', function () {
                    //console.log(this.value);
                    selectCity(this.value);
                });

                $('#addGo').click(function () {
                    $('#mobile').val($('#mobile-srch').val());
                    var sendInfo = {
                        phoneNo: $('#mobile-srch').val()
                    };
                    if ($('#mobile-srch').val() !== "") {
                        $.ajax({
                            url: './user/phoneNoCheck',
                            type: 'post',
                            dataType: 'json',
                            success: function (response) {
                                if (response.status === 1) {
                                    $('.otpreqst-send-container').slideToggle("fast");

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
                $('#sendotp').click(function () {
                    $('.otpnumber-main-container').slideToggle("fast");
                    var sendInfo = {
                        phoneNo: $('#mobile').val()
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


                });
                $('#addSubmit').click(function () {
                    console.log($('#companyName').val());
                    var sendInfo = {
                        comapanyName: $('#companyName').val(),
                        stateId: $('#selectState').val(),
                        cityid: $('#selectCity').val(),
                        name: $('#ownerName').val(),
                        phoneNo: $('#mobile-srch').val(),
                        email: $('#emailId').val(),
                        otp: $('#NewOtp').val(),
                        checkotp: $('#OTPNew').val()
                    };
                    $.ajax({
                        url: './user/saveOwner',
                        type: 'POST',
                        dataType: 'json',
                        success: function (response) {
                            if (response.status === 1) {
                                window.location = "./business";
                            } else {
                                sweetAlert("Oops...", "Please try again later", "error");
                            }

                        },
                        data: sendInfo
                    });

                });


                document.getElementById('editNumber').onclick = function () {
                    document.getElementById('mobile').removeAttribute('readonly');
                };

                $('#selectCity').html("<option value=\"\" selected>Select City<\/option>")
            });



        </script>
    </body>
</html>

