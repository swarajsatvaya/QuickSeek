<%-- 
    Document   : sideAdvt
    Created on : Feb 23, 2017, 11:08:33 AM
    Author     : pc2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>        
        <!-- META SECTION -->
        <title>Admin Panel</title>            
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <link rel="icon" href="../resources/images/favicon.png" type="image/png" />
        <!-- END META SECTION -->

        <!-- CSS INCLUDE -->        
        <link rel="stylesheet" type="text/css" id="theme" href="../resources/css/theme-default.css"/>
        <link rel="stylesheet" type="text/css" href="../resources/css/custom.css"/>
        <!-- EOF CSS INCLUDE -->                                    
    </head>
    <body>
        <div class="page-container">

            <!-- START PAGE SIDEBAR -->
            <div class="page-sidebar">
                <!-- START X-NAVIGATION -->
                <ul class="x-navigation">
                    <li class="xn-logo">
                        <a href="./dashboard"><img src="../resources/images/Qckseek.png" class="addlogoClass"></a>
                        <a href="#" class="x-navigation-control"></a>
                    </li>
                    <li class="xn-profile">
                        <a href="#" class="profile-mini">
                            <img src="../resources/images/1462103978-user.png" alt="Profile Pic"/>
                        </a>
                        <div class="profile">

                            <div class="profile-image">
                                <img src="../resources/images/1462103978-user.png" alt="Profile Pic"/>
                            </div>
                            <div class="profile-data">
                                <div class="profile-data-name">Administrator</div>

                            </div>
                            <div class="profile-controls">
                                <a href="#" class="profile-control-left"><span class="fa fa-info"></span></a>
                                <a href="#" class="profile-control-right"><span class="fa fa-envelope"></span></a>
                            </div>
                        </div>
                    </li>

                    <li class="active">
                        <a href="./dashboard"><span class="fa fa-desktop"></span> <span class="xn-text">Dashboard</span></a>
                    </li>
                    <li class="">
                        <a href="#"><span class="fa fa-file-o"></span> <span class="xn-text">Manage Pages</span></a>
                    </li>
                    <li class="">
                        <a href="./backUser"><span class="fa fa-file-o"></span> <span class="xn-text">Create User</span></a>
                    </li>
                    <li class="">
                        <a href="./employee"><span class="fa fa-shopping-cart"></span> <span class="xn-text">Manage Employee</span></a>
                    </li>

                    <li class="">
                        <a href="./listOwner"><span class="fa fa-tasks"></span> <span class="xn-text">Manage Customer Account</span></a>
                    </li>
                    <li class="xn-openable">
                        <a href="#"><span class="fa fa-file-o"></span> <span class="xn-text">Manage Viewer Account</span></a>
                        <ul>
                            <li><a href="./allViewer"><span class="fa fa-edit"></span> All Viewer List</a></li>
                            <li><a href="./viewerSearch"><span class="fa fa-users"></span> State Wise List</a></li>                          
                            <li><a href="#"><span class="fa fa-users"></span> Single Account Details</a></li>                          
                        </ul>
                    </li>
                    <li class="">
                        <a href="./location"><span class="fa fa-globe"></span> <span class="xn-text">Manage Location</span></a>
                    </li>
                    <li class="">
                        <a href="./category"><span class="fa fa-tasks"></span> <span class="xn-text">Manage Categories</span></a>
                    </li>
                    <li class="">
                        <a href="./keyword"><span class="fa fa-globe"></span> <span class="xn-text">Business Keyword</span></a>
                    </li>
                    <li class="">
                        <a href="#"><span class="fa fa-globe"></span> <span class="xn-text">Display Ad.Management</span></a>
                    </li>
                    <li class="">
                        <a href="#"><span class="fa fa-globe"></span> <span class="xn-text">Customer Support</span></a>
                    </li>

                    <!--                    <li class="">
                                            <a href="#"><span class="fa fa-user"></span> <span class="xn-text">Manage Employee</span></a>
                                        </li>-->
                    <li class="">
                        <a href="#"><span class="fa fa-file-text-o"></span> <span class="xn-text">Manage Reports</span></a>
                    </li>
                    <li class="">
                        <a href="#"><span class="fa fa-globe"></span> <span class="xn-text">Manage Accounts</span></a>
                    </li>
                    <li class="xn-openable">
                        <a href="#"><span class="fa fa-file-o"></span> <span class="xn-text">Manage Ad Package</span></a>
                        <ul>
                            <li><a href="#"><span class="fa fa-edit"></span>Side Display Ad.</a></li>
                            <li><a href="#"><span class="fa fa-users"></span>Middle Banner Ad.</a></li>                          
                            <li><a href="./landingAd"><span class="fa fa-users"></span>Landing Page Ad.</a></li>                          
                        </ul>
                    </li>
                    <li class="">
                        <a href="#"><span class="fa fa-envelope"></span> <span class="xn-text">Customer Feedback</span></a>
                    </li>
                    <li class="xn-openable ">
                        <a href="#"><span class="fa fa-cog"></span> <span class="xn-text">Settings</span></a>
                        <ul>
                            <li class="">
                                <a href="./manageProfile"><span class="fa fa-user"></span>Manage Profile</a>
                            </li>
                            <li class=""><a href="#"><span class="fa fa-sign-out"></span>Log Out</a></li>
                        </ul>
                    </li>
                </ul>
                <!-- END X-NAVIGATION -->
            </div>
            <!-- END PAGE SIDEBAR -->

            <!-- PAGE CONTENT -->
            <div class="page-content">

                <!-- START X-NAVIGATION VERTICAL -->

                <ul class="x-navigation x-navigation-horizontal x-navigation-panel">
                    <!-- TOGGLE NAVIGATION -->
                    <li class="xn-icon-button">
                        <a href="#" class="x-navigation-minimize"><span class="fa fa-dedent"></span></a>
                    </li>
                    <!-- END TOGGLE NAVIGATION -->
                    <!-- SEARCH -->
                    <li class="xn-search">
                        <form role="form">
                            <input type="text" name="search" placeholder="Search..."/>
                        </form>
                    </li>
                    <!-- END SEARCH -->
                    <!-- SIGN OUT -->
                    <li class="xn-icon-button pull-right">
                        <a href="#" class="mb-control" data-box="#mb-signout"><span class="fa fa-sign-out"></span></a>
                    </li>
                    <!-- END SIGN OUT -->
                    <!-- MESSAGES -->
                    <li class="xn-icon-button pull-right">
                        <a href="#"><span class="fa fa-comments"></span></a>
                        <div class="informer informer-danger">0</div>
                        <div class="panel panel-primary animated zoomIn xn-drop-left xn-panel-dragging">
                            <div class="panel-heading">
                                <h3 class="panel-title"><span class="fa fa-comments"></span> Messages</h3>
                                <div class="pull-right">
                                    <span class="label label-danger">0 new</span>
                                </div>
                            </div>
                            <div class="panel-body list-group list-group-contacts scroll" style="height: 200px;">
                            </div>
                            <div class="panel-footer text-center">
                                <a href="#">Show all messages</a>
                            </div>
                        </div>
                    </li>
                    <!-- END MESSAGES -->
                    <!-- TASKS -->
                    <li class="xn-icon-button pull-right">
                        <a href="#"><span class="fa fa-tasks"></span></a>
                        <div class="informer informer-warning">0</div>
                        <div class="panel panel-primary animated zoomIn xn-drop-left xn-panel-dragging">
                            <div class="panel-heading">
                                <h3 class="panel-title"><span class="fa fa-tasks"></span> Tasks</h3>
                                <div class="pull-right">
                                    <span class="label label-warning">0 active</span>
                                </div>
                            </div>
                            <div class="panel-body list-group scroll" style="height: 200px;">

                            </div>
                            <div class="panel-footer text-center">
                                <a href="#">Show all tasks</a>
                            </div>
                        </div>
                    </li>
                    <!-- END TASKS -->
                </ul>

                <!-- END X-NAVIGATION VERTICAL -->
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">

                    <div class="col-md-12" >
                        <div class="block">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="panel-title-box">
                                        <h3>Upload Side Advt.</h3>
                                        <span>Fill All Details Properly Before Submit</span>
                                    </div>
                                    <ul class="panel-controls" style="margin-top: 2px;">
                                        <li><a href="#" class="panel-fullscreen"><span class="fa fa-expand"></span></a></li>
                                        <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span></a></li>
                                    </ul>
                                </div>
                                <div class="panel-body">
                                    <div class="col-md-12">
                                    <div class="block">
                                        <h4>Upload Landing Advt Images</h4>                                
                                        <form class="form-horizontal" action="./uploadSideAdvt" method="POST" name="sideAdvtBean"  enctype="multipart/form-data">
                                            <div class="form-group">
                                                <div class="col-md-10 landinggrid">
                                                    <input type="file" name="image" class="upldlandnginput" accept="image/*" title="Select Image" id="image">
                                                    <label><strong>Image Resolution:</strong> XXXpx x XXXpx</label>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <div class="col-md-10">
                                                    <input type="file" name="imageOne" class="" accept="image/*" title="Select Image" id="imageOne">
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <div class="col-md-10">
                                                    <input type="file" name="imageTwo" class="" accept="image/*" title="Select Image" id="imageTwo">
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <div class="col-md-10">
                                                    <input type="file" name="imageThree" class="" accept="image/*" title="Select Image" id="imageThree">
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <div class="col-md-10">
                                                    <input type="file" name="imageFour" class="" accept="image/*" title="Select Image" id="imageFour">
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <div class="col-md-10">
                                                    <input type="file" name="imageFive" class="" accept="image/*" title="Select Image" id="imageFive">
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <div class="col-md-10">
                                                    <input type="file" name="imageSix" class="" accept="image/*" title="Select Image" id="imageSix">
                                                </div>
                                            </div>
                                            
                                            <input type="submit" class="btn btn-danger" value="ADD" id="addSideAdvt">
                                        </form>
                                    </div>
                                </div>
<!--                                    <div class="col-md-12 padding-left-right">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th width="45"><input type="checkbox"></th>
                                                    <th>Banner</th>
                                                    <th>Title</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                 <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td width="500">
                                                        <div class="upldbnnr-input">
                                                            <input type="file">
                                                        </div>
                                                        <div class="imagesection-banner">
                                                            <button><i class="fa fa-times"></i></button>
                                                            <a href="" target="_blank">
                                                                <img src="../resources/images/banner1_1.jpg" alt="banner1">
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td><input class="form-control" name="" type="text"></td>
                                                    <td>
                                                        <a href="#" style=" font-size:14px;" data-toggle="tooltip" data-placement="top" title="Edit"><span class="fa fa-edit"></span></a>
                                                        <a href="#" style="color:red; font-size:14px;" data-toggle="tooltip" data-placement="top" title="Delete"><span class="fa fa-trash-o"></span></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td width="500">
                                                        <div class="upldbnnr-input">
                                                            <input type="file">
                                                        </div>
                                                        <div class="imagesection-banner">
                                                            <button><i class="fa fa-times"></i></button>
                                                            <a href="" target="_blank">
                                                                <img src="../resources/images/banner2.jpg" alt="banner2">
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td><input class="form-control" name="" type="text"></td>
                                                    <td>
                                                        <a href="#" style=" font-size:14px;" data-toggle="tooltip" data-placement="top" title="Edit"><span class="fa fa-edit"></span></a>
                                                        <a href="#" style="color:red; font-size:14px;" data-toggle="tooltip" data-placement="top" title="Delete"><span class="fa fa-trash-o"></span></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td width="500">
                                                        <div class="upldbnnr-input">
                                                            <input type="file">
                                                        </div>
                                                        <div class="imagesection-banner">
                                                            <button><i class="fa fa-times"></i></button>
                                                            <a href="" target="_blank">
                                                                <img src="../resources/images/banner3.jpg" alt="banner3">
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td><input class="form-control" name="" type="text"></td>
                                                    <td>
                                                        <a href="#" style=" font-size:14px;" data-toggle="tooltip" data-placement="top" title="Edit"><span class="fa fa-edit"></span></a>
                                                        <a href="#" style="color:red; font-size:14px;" data-toggle="tooltip" data-placement="top" title="Delete"><span class="fa fa-trash-o"></span></a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div class="dataTables_info">Showing 1 to 10 of 30 entries</div>
                                        <div class="dataTables_paginate paging_simple_numbers">
                                            <a class="paginate_button previous disabled">Previous</a>
                                            <span><a class="paginate_button current">1</a>
                                                <a class="paginate_button ">2</a>
                                                <a class="paginate_button ">3</a>
                                                <a class="paginate_button ">4</a>
                                                <a class="paginate_button ">5</a>
                                                <a class="paginate_button ">6</a>
                                            </span>
                                            <a class="paginate_button next">Next</a>
                                        </div>
                                    </div>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- END PAGE CONTENT WRAPPER -->

        <!-- MESSAGE BOX-->
        <div class="message-box animated fadeIn" data-sound="alert" id="mb-signout">
            <div class="mb-container">
                <div class="mb-middle">
                    <div class="mb-title"><span class="fa fa-sign-out"></span> Log <strong>Out</strong> ?</div>
                    <div class="mb-content">
                        <p>Are you sure you want to log out?</p>
                        <p>Press No if youwant to continue work. Press Yes to logout current user.</p>
                    </div>
                    <div class="mb-footer">
                        <div class="pull-right">
                            <a href="#" class="btn btn-success btn-lg">Yes</a>
                            <button class="btn btn-default btn-lg mb-control-close">No</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END MESSAGE BOX-->

        <!-- START PRELOADS -->
        <audio id="audio-alert" src="audio/alert.mp3" preload="auto"></audio>
        <audio id="audio-fail" src="audio/fail.mp3" preload="auto"></audio>
        <!-- END PRELOADS -->                  

        <!-- START SCRIPTS -->
        <!-- START PLUGINS -->
        <script type="text/javascript" src="../resources/js/plugins/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="../resources/js/plugins/jquery/jquery-ui.min.js"></script>
        <script type="text/javascript" src="../resources/js/plugins/bootstrap/bootstrap.min.js"></script>    

        <script type="text/javascript">
            $(document).ready(function () {
                $('#sendotp-userreg').click(function () {
                    $('#otpnumber-main').slideToggle("fast");
                });
                $('#usericonclk').click(function () {
                    $('.droplistuser').slideToggle("fast");
                });
            });
        </script>
        <!-- END PLUGINS -->

        <!-- START THIS PAGE PLUGINS-->        
        <script type='text/javascript' src='../resources/js/plugins/icheck/icheck.min.js'></script>        
        <script type="text/javascript" src="../resources/js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>
        <script type="text/javascript" src="../resources/js/plugins/scrolltotop/scrolltopcontrol.js"></script>

        <script type="text/javascript" src="../resources/js/plugins/morris/raphael-min.js"></script>
        <script type="text/javascript" src="../resources/js/plugins/morris/morris.min.js"></script>       
        <script type="text/javascript" src="../resources/js/plugins/rickshaw/d3.v3.js"></script>
        <script type="text/javascript" src="../resources/js/plugins/rickshaw/rickshaw.min.js"></script>
        <script type='text/javascript' src='../resources/js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js'></script>
        <script type='text/javascript' src='../resources/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js'></script>                
        <script type='text/javascript' src='../resources/js/plugins/bootstrap/bootstrap-datepicker.js'></script>                
        <script type="text/javascript" src="../resources/js/plugins/owl/owl.carousel.min.js"></script>                 

        <script type="text/javascript" src="../resources/js/plugins/moment.min.js"></script>
        <script type="text/javascript" src="../resources/js/plugins/daterangepicker/daterangepicker.js"></script>
        <!-- END THIS PAGE PLUGINS-->        

        <!-- START TEMPLATE -->
        <!--        <script type="text/javascript" src="js/settings.js"></script>-->

        <script type="text/javascript" src="../resources/js/plugins.js"></script>        
        <script type="text/javascript" src="../resources/js/actions.js"></script>

        <script type="text/javascript" src="../resources/js/demo_dashboard.js"></script>


        <!-- END TEMPLATE -->
        <!-- END SCRIPTS -->        
    </body>
</html>
