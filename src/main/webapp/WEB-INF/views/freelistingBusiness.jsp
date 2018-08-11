<%-- 
    Document   : freelistingBusiness
    Created on : Feb 7, 2017, 6:18:23 PM
    Author     : pc2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>QckSeek.com</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

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

        <!-- For Auto Search -->
        <script src="./resources/js/jquery-2.1.3.min.js"></script>
        <script src="./resources/js/jquery-1.11.3.js"></script>
        <script src="./resources/js/jquery-ui.js"></script>
        <script src="./resources/js/infragistics.core.js"></script>
        <script src="./resources/js/infragistics.lob.js"></script>

        <script type="text/javascript" src="./resources/js/bootstrap-datepicker.js"></script>
        <script src="./resources/js/jquery.validate.js"></script>
        <script src="./resources/js/theme.js"></script>
        <script src="./resources/js/jquery.backtotop.js"></script>
        <script src="./resources/js/jquery.mobilemenu.js"></script>


        <!-- For Auto Search END -->
        <!-- This pages extra css include  start-->
        <link rel="stylesheet" href="./resources/css/theme.css" />
        <link rel="stylesheet" href="./resources/css/info.css" />
        <!-- This pages extra css include end -->

        <!-- This pages extra js include  start-->
        <link rel="stylesheet" href="./resources/css/style.css">
        <link rel="stylesheet" href="./resources/css/custom.css">
        <style>
            .boxshadow{padding: 0; box-shadow: none}
        </style>

    </head>
    <body class="freelisting-bg">
        <!-- Top Background Image Wrapper -->
        <div class="bgded free-listingbg"> 
            <div class="container">
                <header class="main-header-area free-listinghdr"> 
                    <div class="logo">
                        <a href="index.html"><img src="./resources/images/qckseeklogo2.png"></a>
                    </div>
                    <div class="freeadlisting-btn">
                        <a href="#">Free adlisting</a>
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
                        <ul class="menunewadjst free-listingpdngbtm">
                            <li><a class="qcklgn" href="#">Login</a></li>
                            <li><a class="qcksgnup" href="#">Sign Up</a></li>
                        </ul>
                    </div> 
                </header>
            </div>
        </div>
        <div class="clear"></div>
        <div class="reg-wrapper">
            <section class="freelisting-container">
                <h3>Thank you, your registration is almost done</h3>
                <div class="freereg-tabsection">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" id="businessLi" class="active"><a href="#business" aria-controls="business" role="tab" data-toggle="tab"><i class="fa fa-briefcase"></i>Business Details</a></li>
                        <li role="presentation" id="contactLi"><a href="#contacts" aria-controls="contacts" role="tab" data-toggle="tab"><i class="fa fa-map-marker"></i>Contacts</a></li>
                        <li role="presentation" id="keywordLi"><a href="#keyword" aria-controls="keyword" role="tab" data-toggle="tab"><i class="fa fa-info"></i>Keyword</a></li>
                        <li role="presentation" id="pictureLi"><a href="#picture" aria-controls="picture" role="tab" data-toggle="tab"><i class="fa fa-picture-o"></i>Picture</a></li>
                    </ul>

                    <!-- Tab panes -->
                    <!--<form class="mainfree-inner">-->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="business">
                            <div class="free-listing-container innertab">
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>Business Name</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                        <input type="hidden" id="ownerId" value="${ownerId}">
                                        <input type="text" class="form-control" required="" id="businessName" value="${comapnyName}" readonly="">
                                    </div>
                                </div>
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>Address</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">

                                        <textarea class="form-control"  required="" id="address"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>Street</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                        <input type="text" class="form-control" id="streetName">
                                    </div>
                                </div>
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>Landmark</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                        <input type="text" class="form-control" id="landmark">
                                    </div>
                                </div>
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>State</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                        <select class="form-control" id="selectState">

                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>City</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                        <select class="form-control" id="selectCity">

                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>Pin Code</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                        <input type="text" class="form-control" required="" id="pincode">
                                    </div>
                                </div>
                                <div class="free-sbmt text-center">
                                    <div class="prevtab-nexttab">
                                        <a href="#" class="prev">Next<i class="fa fa-angle-double-right"></i></a>
                                    </div>
                                    <button class="freelisting-sbmt" id="saveBusiness">Save & Continue</button>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="contacts">
                            <div class="free-listing-container innertab">
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>Contact Person</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                        <input type="hidden" id="ownerId" value="${ownerId}">
                                        <input type="text" class="form-control" id="contactName" value="${name}" readonly="">
                                    </div>
                                </div>
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>Landline No.</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section landlineno">
                                        <input type="text" class="form-control codeph" placeholder="033">
                                        <input type="text" class="form-control numberarea" required="" id="landline">
                                    </div>
                                </div>
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>Mobile No.</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section landlineno">
                                        <input type="text" class="form-control codeph" placeholder="+91">
                                        <input type="text" class="form-control numberarea" required="" id="mobile" value="${phoneNo}" readonly="">
                                    </div>
                                </div>
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>Fax No.</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section landlineno">
                                        <input type="text" class="form-control codeph" >
                                        <input type="text" class="form-control numberarea" required="" id="fax">
                                    </div>
                                </div>
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>Fax No. 2</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section landlineno">
                                        <input type="text" class="form-control codeph">
                                        <input type="text" class="form-control numberarea" required="" id="fax2">
                                    </div>
                                </div>
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>Toll Free No.</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                        <input type="text" class="form-control" id="tollfreeNo">
                                    </div>
                                </div>
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>Toll Free No.2</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                        <input type="text" class="form-control" id="tollfreeeNo2">
                                    </div>
                                </div>
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>Email ID</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                        <input type="email" class="form-control" id="emailId" value="${email}" readonly="">
                                    </div>
                                </div>
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>Website</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                        <input type="text" class="form-control" required="" id="website">
                                    </div>
                                </div>
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>Business Type</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section ">
                                        <label class="btb">B2B<input type="radio"  name="gender" value="B2B"></label>
                                        <label class="btb">B2C<input type="radio" id="businessType" name="gender" value="B2C" checked=""></label>
                                    </div>
                                </div>
                                <div class="free-sbmt text-center">
                                    <div class="prevtab-nexttab">
                                        <a href="#" class="next"><i class="fa fa-angle-double-left"></i>Prev</a>
                                        <a href="#" class="prev">Next<i class="fa fa-angle-double-right"></i></a>
                                    </div>
                                    <button type="button" class="freelisting-sbmt" id="saveContact">Save & Continue</button>
                                    <button type="button" class="freelisting-sbmt exitbtn">Save & Exit</button>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="keyword">
                            <div class="free-listing-container innertab">
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>Business Name</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                        <input type="text" class="form-control" value="${comapnyName}" readonly="">
                                    </div>
                                </div>
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>Business Type</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                        <select class="form-control" id="selectCategory">

                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-12 formfrrl-container">
                                    <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                        <label>Business Details</label>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                        <select class="form-control" id="selectSubcategory">

                                        </select>
                                    </div>
                                </div>
                                <div class="searchauto-select">
                                    <span>Type your Business Keywords and click Search</span>
                                    <input id="checkboxSelectCombo" size="50">
                                </div>
                                <div class="free-sbmt text-center" style="padding-left: 0; padding-right: 0">
                                    <div class="prevtab-nexttab">
                                        <a href="#" class="next"><i class="fa fa-angle-double-left"></i>Prev</a>
                                        <a href="#" class="prev">Next<i class="fa fa-angle-double-right"></i></a>
                                    </div>
                                    <button type="button" class="freelisting-sbmt" id="saveKeywords">Save & Continue</button>
                                    <button type="button" class="freelisting-sbmt exitbtn">Save & Exit</button>
                                </div>
                            </div>

                        </div>

                        <div role="tabpanel" class="tab-pane" id="picture">
                            <form action="./user/uploadPicture" method="POST" name="picturebean"  enctype="multipart/form-data">
                                <div class="free-listing-container innertab">
                                    <div class="col-md-12 formfrrl-container">
                                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                            <label>Upload Banner</label>
                                        </div>
                                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                            <div class="fileUpload btn btn-primary transiction-effect">
                                                <input class="upload" id="filebanner" type="file" name="uploadImage">
                                            </div>
                                            <p><i>(Upload Only JPEG,PNG)</i></p>
                                        </div>
                                    </div>
                                    <div class="col-md-12 formfrrl-container">
                                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                            <label>Upload Logo</label>
                                        </div>
                                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                            <div class="fileUpload btn btn-primary transiction-effect">
                                                <input class="upload" id="filelogo" type="file" name="uploadlogo">
                                            </div>
                                            <p><i>(Upload Only PNG)</i></p>
                                        </div>
                                    </div>
                                    <div class="col-md-12 formfrrl-container">
                                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                            <label>Upload Picture</label>
                                        </div>
                                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                            <a href="pricing.html" style="float: left"><img src="./resources/images/upload-file.png" alt=""></a>
                                            <p><i>(Upload Only JPEG,PNG)</i></p>
                                        </div>

                                    </div>
                                    <div class="col-md-12 formfrrl-container">
                                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                            <label>Upload Video</label>
                                        </div>
                                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                            <a href="pricing.html" style="float: left"><img src="./resources/images/upload-file.png" alt=""></a>
                                            <p><i>(Upload Only MP4,3GP,FLV)</i></p>
                                        </div>

                                    </div>
                                    <div class="col-md-12 formfrrl-container">
                                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                            <label>Map Pointing</label>
                                        </div>
                                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                            <input class="form-control" required="" type="text" id="mappointing" name="mappointing">
                                        </div>
                                    </div>
                                    <div class="col-md-12 formfrrl-container">
                                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                            <label>Upload ZIP File</label>
                                        </div>
                                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                            <div class="fileUpload btn btn-primary transiction-effect">
                                                <input class="upload" id="file" type="file">
                                            </div>
                                            <p><i>(Upload Only ZIP,RAR)</i></p>
                                        </div>
                                    </div>
                                    <div class="col-md-12 formfrrl-container">
                                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                            <label>About Us</label>
                                        </div>
                                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                            <textarea class="form-control-textarea" id="about" name="about"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12 formfrrl-container">
                                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                            <label>Services</label>
                                        </div>
                                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                            <textarea class="form-control-textarea" id="service" name="service"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12 formfrrl-container">
                                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                            <label>Other Categories</label>
                                        </div>
                                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                            <textarea class="form-control-textarea" id="categories" name="categories"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12 formfrrl-container">
                                        <div class="col-xs-12 col-sm-5 col-md-4 leftlabel-section">
                                            <label>Product Description</label>
                                        </div>
                                        <div class="col-xs-12 col-sm-7 col-md-8 rightlabel-section">
                                            <textarea class="form-control-textarea" id="description" name="description"></textarea>
                                            <input type="hidden" name="ownerId" value="${ownerId}">
                                            <input type="hidden" name="username" value="${name}">
                                        </div>
                                    </div>
                                    <div class="free-sbmt text-center">
                                        <div class="prevtab-nexttab">
                                            <a href="#" class="next"><i class="fa fa-angle-double-left"></i>Prev</a>
                                        </div>
                                        <button type="submit" class="freelisting-sbmt" id="lastClick">Save</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                    <!--</form>-->
                </div>


            </section>
        </div>
        <!--        <footer class="footer-section footer-newcss">
                    <div class="container">
                        <div class="col-md-12 text-center">
                            <a href="#">Terms & Condition Apply</a>
                        </div>
                    </div>
                </footer>-->
        <!-- JAVASCRIPTS -->
        <!--                <script type="text/javascript" src="./resources/js/jquery.min.js"></script>
                        <script src="./resources/js/jquery-2.1.3.min.js"></script> -->
        <script src="./resources/js/bootstrap.min.js"></script> 
        <script type="text/javascript" src="./resources/js/sweet-alert.min.js"></script>
        <script src="./resources/js/owl.carousel.min.js"></script>

        <!--        for auto search script-->
        <script>

            var availableTags = new Array();
            $('#selectSubcategory').change(function () {
                console.log($('#selectCategory').val());
                console.log($('#selectSubcategory').val());
                var sendInfo = {
                    catagoryId: $('#selectCategory').val(),
                    subcatagoyId: $('#selectSubcategory').val()
                };
                var strVar = "";
                $.ajax({
                    url: './admin/getKeyWordByCatagory',
                    type: 'POST',
                    dataType: 'json',

                    success: function (response) {
                        console.log(response.length);
                        for (var i = 0; i < response.length; i++) {
                            availableTags.push(response[i]);
                        }
                        console.log(availableTags);
                    },
                    data: sendInfo
                });

            });
            function split(val) {
                return val.split(/,\s*/);
            }
            function extractLast(term) {
                return split(term).pop();
            }

            $("#checkboxSelectCombo")
                    // don't navigate away from the field on tab when selecting an item
                    .on("keydown", function (event) {
                        if (event.keyCode === $.ui.keyCode.TAB &&
                                $(this).autocomplete("instance").menu.active) {
                            event.preventDefault();
                        }
                    })
                    .autocomplete({
                        minLength: 0,
                        source: function (request, response) {
                            // delegate back to autocomplete, but extract the last term
                            response($.ui.autocomplete.filter(
                                    availableTags, extractLast(request.term)));
                        },
                        focus: function () {
                            // prevent value inserted on focus
                            return false;
                        },
                        select: function (event, ui) {
                            var terms = split(this.value);
                            // remove the current input
                            terms.pop();
                            // add the selected item
                            terms.push(ui.item.value);
                            // add placeholder to get the comma-and-space at the end
                            terms.push("");
                            this.value = terms.join(", ");
                            return false;
                        }
                    });
//            console.log(item);

//                                            var item = [
//                                                {Name: "Computer Software IT"},
//                                                {Name: "Computer Software Developer"},
//                                                {Name: "ERP Computer Software Developer"},
//                                                {Name: "Computer Software Dealers"},
//                                                {Name: "Lorem sum"},
//                                                {Name: "Lorem ipsum"},
//                                                {Name: "Lorem sum"},
//                                                {Name: "Ipsum"},
//                                                {Name: "Ipsum"},
//                                                {Name: "Ipsum"},
//                                                {Name: "Dummy"},
//                                                {Name: "Dummy"},
//                                                {Name: "Dummy"},
//                                                {Name: "Text"},
//                                                {Name: "Text"},
//                                                {Name: "XYZ"}
//                                            ];
//
//                                            $(function () {
//
//                                                $("#checkboxSelectCombo").igCombo({
//                                                    dataSource: item,
//                                                    textKey: "Name",
//                                                    valueKey: "Name",
//                                                    multiSelection: {
//                                                        enabled: true,
//                                                        showCheckboxes: true
//                                                    }
//                                                });
//
//                                            });

        </script>

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
                $('.fstgo-btn').click(function () {
                    $('.otpreqst-send-container').slideToggle("fast");
                });

                $('.sendotp').click(function () {
                    $('.otpnumber-main-container').slideToggle("fast");
                });
            });
        </script>

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

            function getCategory() {
                $.ajax({url: "./admin/loadAllCatagory",
                    method: "get",
                    success: function (result) {
                        var strVar = "";
                        strVar += "<option value=\"\" Select Category>Select Category<\/option>";
                        for (var i = 0; i < result.length; i++) {
                            strVar += "<option value=\"" + result[i].id + "\">" + result[i].name + "<\/option>";
                        }
                        $('#selectCategory').html(strVar);
                    }});
            }

            function selectSubcat(id) {
                $.ajax({
                    url: "./admin/getSubcategoryByCategory?categoryId=" + id,
                    method: "get",
                    success: function (result)
                    {
                        //console.log(result);
                        var strVar = "",
                                strVar = "<option value=\"\" selected>Select Subcategory<\/option>";
                        for (var i = 0; i < result.length; i++)
                        {
                            strVar += "<option value=\"" + result[i].id + "\">" + result[i].name + "<\/option>";

                        }
                        $('#selectSubcategory').html(strVar);
                    }


                });

            }


            $(document).ready(function () {
                getState();
                getCategory();
                $('#selectState').on('change', function () {
                    //console.log(this.value);
                    selectCity(this.value);
                });
                $('#selectCategory').on('change', function () {
                    console.log(this.value);
                    selectSubcat(this.value);
                });
                $('#selectCity').html("<option value=\"\" selected>Select City<\/option>")
                $('#selectSubcategory').html("<option value=\"\" selected>Select Subcategory<\/option>")

                $('#saveBusiness').click(function () {
                    var sendInfo = {

                        businessName: $('#businessName').val(),
                        address: $('#address').val(),
                        street: $('#streetName').val(),
                        landmark: $('#landmark').val(),
                        stateId: $('#selectState').val(),
                        cityid: $('#selectCity').val(),
                        pincode: $('#pincode').val(),
                        ownerId: $('#ownerId').val()

                    };
                    $.ajax({
                        url: './user/saveBussinessDetails',
                        type: 'POST',
                        dataType: 'json',
                        success: function (response) {
//                            alert(response);
                            if (response.status == 1) {
                                $("#businessLi").removeClass('active');
                                $("#contactLi").addClass('active');
                                $("#contacts").show();
                                $("#business").hide();
                                $("#keyword").hide();
                                $("#picture").hide();

                            }


                        },
                        data: sendInfo
                    });
                });

                $('#saveContact').click(function () {
                    var sendInfo = {

                        personName: $('#contactName').val(),
                        landNo: $('#landline').val(),
                        mobileNo: $('#mobile').val(),
                        faxNo: $('#fax').val(),
                        faxAltNo: $('#fax2').val(),
                        tollfreeNo: $('#tollfreeNo').val(),
                        tollAltNo: $('#tollfreeeNo2').val(),
                        emailId: $('#emailId').val(),
                        website: $('#website').val(),
                        businessType: $('#businessType').val(),
                        ownerId: $('#ownerId').val()

                    };
                    console.log(sendInfo);
                    $.ajax({
                        url: './user/saveContactDetails',
                        type: 'POST',
                        dataType: 'json',
                        success: function (response) {
//                            alert(response);
                            if (response.status == 1) {
                                $("#businessLi").removeClass('active');
                                $("#contactLi").removeClass('active');
                                $("#keywordLi").addClass('active');
                                $("#business").hide();
                                $("#contacts").hide();
                                $("#keyword").show();
                                $("#picture").hide();

                            }


                        },
                        data: sendInfo
                    });
                });

                $('#lastClick').click(function () {
                        
                });

                $('#saveKeywords').click(function () {
                    var sendInfo = {

                        categoryId: $('#selectCategory').val(),
                        subcategoryId: $('#selectSubcategory').val(),
                        keywordName: $('#checkboxSelectCombo').val(),
                        ownerId: $('#ownerId').val()

                    };
                    console.log(sendInfo);
                    $.ajax({
                        url: './user/saveUserKeyword',
                        type: 'POST',
                        dataType: 'json',
                        success: function (response) {
//                            alert(response);
                            if (response.status == 1) {
                                $("#businessLi").removeClass('active');
                                $("#contactLi").removeClass('active');
                                $("#keywordLi").removeClass('active');
                                $("#pictureLi").addClass('active');
                                $("#business").hide();
                                $("#contacts").hide();
                                $("#keyword").hide();
                                $("#picture").show();

                            }


                        },
                        data: sendInfo
                    });
                });

            });



        </script>

    </body>
</html>
