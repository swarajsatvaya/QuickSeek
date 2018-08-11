<%-- 
    Document   : ownerDetails
    Created on : Feb 10, 2017, 8:10:02 PM
    Author     : pc2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>QckSeek.com</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link rel="shortcut icon" href="../resources/images/favicon.png" type="image/png">

        <link rel="stylesheet" type="text/css" href="../resources/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="../resources/css/font-awesome.min.css" />
        <link rel="stylesheet" href="../resources/css/jquery.mCustomScrollbar.css">
        <link rel="stylesheet" href="../resources/css/bootstrap-slider.css">
        <link rel="stylesheet" href="./resources/css/owl.carousel.css" />
        <link rel="stylesheet" href="../resources/css/owl.theme.css" />
        <link rel="stylesheet" href="../resources/css/jquery-ui.css">
        <link href="../resources/css/layout1.css" rel="stylesheet" type="text/css" media="all">
        <link href="../resources/css/jquery.littlelightbox.css" rel="stylesheet" type="text/css">

        <link rel="stylesheet" href="../resources/css/style.css">
        <link rel="stylesheet" href="../resources/css/custom.css">

        <style>
            .image-gallery{padding: 5px;float: left; margin: 5px;}
            .image-gallery img{width: 73px; float: left}
            .bannerslider.inneroverlay-bg {background: rgba(0, 0, 0, 0.5);}
        </style>
    </head>
    <body>

        <!-- Top Background Image Wrapper -->
        <div class="bgded overlay main-header-slider purchasebgnone"> 
            <div id="carousel-example-generic" class="carousel slide banner-hide-mobile onwerbanner-add" data-ride="carousel" style="height: auto">
                <div class="carousel-inner carouselheight" role="listbox">
                    <div class="item active">
                        <img src="${detailsBean.banner}" alt="" />
                    </div>
                </div>
            </div>
            <div class="bannerslider inneroverlay-bg">
                <section class="top-header-banner">
                    <div class="container hide-pdng">
                        <header class="main-header-area free-listinghdr"> 
                            <div class="logo">
                                <a href="../"><img src="../resources/images/qckseeklogo2.png"></a>
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
                                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="padding-right: 0"><img id="navmenubtm" src="../resources/images/menu-bar.png" alt=""></a>
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
                                    <li class="active-m"><a href="./">Free Listing <span class="listrghtimg"></span></a></li>
                                    <li><a href="#"><img class="dsplaynone" src="../resources/images/download-app.gif" alt="" style="margin-right: 5px">App <span class="listrghtimg"></span></a> </li>
                                    <li><a class="upgrd" href="../user/upgrade">Upgrade</a></li>
                                    <li style="margin-left:10px"><a class="qcklgn" href="../Login" >Login</a></li>
                                    <li style="margin-left:10px"><a class="qcksgnup" href="../signUp" >Register</a></li>
                                </ul>
                            </div> 
                        </header>
                    </div>
                </section>
                <section class="banner-body-text">
                    <div class="container">
                        <div class="adcontect-banner"> 
                            <div class="addbanner-container">
                                <div class="ad-logo">
                                    <img src="${detailsBean.image}" alt="">
                                </div>
                                <div class="ad-contentdetails">
                                    <h1>${detailsBean.companyName}</h1>
                                    <!--<p><img src="../resources/images/location-icon.png" alt="">Lorem Ipsum is Simply dumy text</p>-->
                                </div>

                            </div>
                        </div>
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
                                <li><a href="./">Home</a></li>
                                <li class="arrow-icn"><a href="local-purpose.html">Local Purpose</a></li>
                                <li class="arrow-icn">Car Details</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-md-12">
                        <div class="col-xs-12 col-md-3 aside">
                            <div class="image-gallery thumbnail">
                                <a class="lightbox"  href="../resources/images/car1b.jpg"  data-littlelightbox-group="gallery" title="Lorem Ipsum"> <img src="../resources/images/car1.jpg" alt="Gallery" /></a>
                            </div>
                            <div class="image-gallery thumbnail">
                                <a class="lightbox"  href="../resources/images/car2b.jpg"  data-littlelightbox-group="gallery" title="Lorem Ipsum"> <img src="../resources/images/car2.jpg" alt="Gallery" /></a>
                            </div>
                            <div class="image-gallery thumbnail">
                                <a class="lightbox"  href="../resources/images/car3b.jpg"  data-littlelightbox-group="gallery" title="Lorem Ipsum"> <img src="../resources/images/car3.jpg" alt="Gallery" /></a>
                            </div>
                            <div class="image-gallery thumbnail">
                                <a class="lightbox"  href="../resources/images/car4b.jpg"  data-littlelightbox-group="gallery" title="Lorem Ipsum"> <img src="../resources/images/car4.jpg" alt="Gallery" /></a>
                            </div>
                            <div class="image-gallery thumbnail">
                                <a class="lightbox"  href="../resources/images/car5b.jpg"  data-littlelightbox-group="gallery" title="Lorem Ipsum"> <img src="../resources/images/car5.jpg" alt="Gallery" /></a>
                            </div>
                            <div class="image-gallery thumbnail"  data-toggle="modal" data-target="#myModal">
                                <a href="#"> <img src="../resources/images/add-photo.jpg" alt="Gallery" /></a>
                            </div>
                            <div class="address-area">
                                <div class="address-areadiv">
                                    <span><i class="fa fa-mobile"></i></span>
                                    <p> +91 ${detailsBean.mobileNo}</p>
                                </div>
                                <div class="address-areadiv">
                                    <span><i class="fa fa-map-marker"></i></span>
                                    <p> ${detailsBean.address}</p>
                                </div>
                                <div class="address-areadiv" style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">
                                    <span><i class="fa fa-envelope"></i></span>
                                    <p>${detailsBean.email}</p>
                                </div>
                                <div class="vewbtnshw">
                                    <a href="#" class="tooltips-open"><i id="view-click-show" class="fa fa-eye"></i><span class="postin">View</span></a>
                                </div>
                                <div>
                                    <script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script><div style='overflow:hidden;height:100px;width:100%;border: 1px solid #ccc;margin: 5px 0;'><div id='gmap_canvas' style='height:100px;width:100%;'></div><div><small><a href="http://www.googlemapsgenerator.com/en/"></a></small></div><div><small><a href="https://youtubeembedcode.com/en/"></a></small></div></div><script type='text/javascript'>function init_map() {
                                            var myOptions = {zoom: 10, center: new google.maps.LatLng(24.796947, -107.36905160000003), mapTypeId: google.maps.MapTypeId.ROADMAP};
                                            map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);
                                            marker = new google.maps.Marker({map: map, position: new google.maps.LatLng(24.796947, -107.36905160000003)});
                                            infowindow = new google.maps.InfoWindow({content: '<strong>Qckseek.com</strong><br>Xxxxx, Xxxxxxx Xxxxxx, Xxxxx<br>'});
                                            google.maps.event.addListener(marker, 'click', function () {
                                                infowindow.open(map, marker);
                                            });
                                            infowindow.open(map, marker);
                                        }
                                        google.maps.event.addDomListener(window, 'load', init_map);</script></div>
                                <div class="rating-bg">
                                    <img src="../resources/images/star.png" alt="Rating" />
                                    <img src="../resources/images/star.png" alt="Rating" />
                                    <img src="../resources/images/star4.png" alt="Rating" />
                                    <img src="../resources/images/star2.png" alt="Rating" />
                                    <img src="../resources/images/star2.png" alt="Rating" />
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-9 content-main-area">
                            <div class="col-xs-12 col-md-4">
                                <div class=" content-padding-left-area">
                                    <div class=" content-padding-left-first"  id="crlist-scrolling-about">
                                        <h3 style="margin-bottom:10px">About Us</h3>
                                        <p>${detailsBean.about} </p>
                                    </div>
                                    <div class="content-padding-left-video">
                                        <embed src="https://www.youtube.com/embed/watch?v=nRpH73tkITY" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-4 service-panelnewad">
                                <div class=" content-padding-left" id="crlist-scrolling2">
                                    <h3 style="margin-bottom:10px">Services</h3>
                                    <p>${detailsBean.service} </p>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-4 content-padding-right">
                                <div class=" content-padding-left" id="crlist-scrolling3" style="width: 100%">
                                    <h3>Others Category</h3>
                                    <p>${detailsBean.category} </p>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-12 comment content-padding-right">
                                <form>
                                    <h4 style="margin-bottom:10px">Additional Information</h4>
                                    <textarea placeholder="Message"></textarea>
                                    <button class="button">Save</button>
                                </form>
                            </div>
                        </div>

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
        <!-- modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog modal-area" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close close-area" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body modal-body madal-contant-area">
                        <p>Are you the owner of this business?</p>
                    </div>
                    <div class="modal-footer modal-button-area">
                        <button type="button" class="btn btn-primary yes-btn" data-toggle="modal" data-target="#myModal2">YES</button>
                        <button type="button" class="btn btn-primary no-btn" data-toggle="modal" data-target="#myModal3">NO</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>

        <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog modal-area2" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close close-area" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body modal-body madal-contant-area">
                        <form>
                            <div class="form-group modal-form-area">
                                <input type="text"  name="mobile no" class="form-control" placeholder="Mobile No, Email ID, Customer ID" value=""  required=""/>
                                <span><i class="fa fa-check green"></i></span>
                            </div>
                            <div class="form-group modal-form-area">
                                <input type="password" name="password" class="form-control" placeholder="Password" value="" required="" />
                                <span><i class="fa fa-check red"></i></span>
                            </div>
                            <div class="form-group form-btn-area">
                                <button type="button" class="ok-btn">OK</button>
                            </div>
                        </form>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>
        <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog modal-area" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close close-area" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body modal-body madal-contant-area">
                        <p><strong>Enter Verification Code</strong></p>
                    </div>
                    <div class="modal-footer modal-button-area">
                        <form>
                            <div class="form-group modal-form-code-area">
                                <input type="text"  name="mobile no" class="form-control" placeholder="" value=""  required=""/>
                            </div>
                        </form>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>

        <!-- /.modal -->

        <!-- modal --->
        <div class="modal fade" tabindex="-1" role="dialog" id="localpurpose">
            <div class="modal-dialog modal-area3" role="document">
                <div class="modal-content localpurchase-content">
                    <button type="button" class="skipmodal-btn" data-dismiss="modal">Close</button>
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

        <script>
            $('#myModal').on('shown.bs.modal', function () {
                $('#myInput').focus()
            });
            $('#myModal2').on('shown.bs.modal', function () {
                $('#myInput').focus()
            });
            $('#myModal3').on('shown.bs.modal', function () {
                $('#myInput').focus()
            });
        </script>

        <script type="text/javascript" src="../resources/js/jquery.min.js"></script>
        <script src="../resources/js/jquery-2.1.3.min.js"></script> 
        <script src="../resources/js/bootstrap.min.js"></script> 
        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>
        <script src="../resources/js/jquery-ui.js"></script>
        <script src="../resources/js/owl.carousel.min.js"></script>
        <!--        <script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
                <script src="js/jquery.validate.js"></script>-->
        <!-- Theme Initializer -->
        <!--        <script src="js/theme.plugins.js"></script>-->
        <!--        <script src="js/theme.js"></script>
                <script src="js/jquery.backtotop.js"></script>
                <script src="js/jquery.mobilemenu.js"></script>
                <script src="js/jquery.flexslider-min.js"></script>-->
        <script src="../resources/js/jquery.littlelightbox.js"></script>
        <script>
            $('.lightbox').littleLightBox();
        </script>
        <script src="../resources/js/jquery.mCustomScrollbar.concat.min.js"></script>

        <script>
            (jQuery)(function ($) {
                $(window).load(function () {
                    $("#crlist-scrolling-about").mCustomScrollbar({
                        setHeight: 160,
                        theme: "dark-3"
                    });
                    $("#crlist-scrolling2, #crlist-scrolling3").mCustomScrollbar({
                        setHeight: 320,
                        theme: "light-3"
                    });
                });
            })(jQuery);
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
            $(document).ready(function () {
                $("#view-click-show").click(function () {
                    $("#localpurpose").modal('show');
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
    </body>
</html>
