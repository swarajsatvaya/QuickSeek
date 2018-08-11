<%-- 
    Document   : manage-country
    Created on : Jan 27, 2017, 11:37:09 AM
    Author     : pc2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>        
        <!-- META SECTION -->
        <title>QckSeek | Manage-Location</title>            
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <link rel="icon" href="../resources/favicon.ico" type="image/x-icon" />
        <!-- END META SECTION -->

        <!-- CSS INCLUDE -->        
        <link rel="stylesheet" type="text/css" id="theme" href="../resources/css/theme-default.css"/>
        <link rel="stylesheet" type="text/css" id="theme" href="../resources/css/custommycss.css">
        <link rel="stylesheet" type="text/css" id="theme" href="../resources/css/sweet-alert.min.css" />
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
                        <a href="#"><span class="fa fa-tasks"></span> <span class="xn-text">Manage Customer Account</span></a>
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
                    <li class="">
                        <a href="./location"><span class="fa fa-globe"></span> <span class="xn-text">Manage Ad.Package</span></a>
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
                                <!-- <a class="list-group-item" href="#">
                                        <strong>Phasellus augue arcu, elementum</strong>
                                        <div class="progress progress-small progress-striped active">
                                                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;">50%</div>
                                        </div>
                                        <small class="text-muted">John Doe, 25 Sep 2014 / 50%</small>
                                </a>
                                <a class="list-group-item" href="#">
                                        <strong>Aenean ac cursus</strong>
                                        <div class="progress progress-small progress-striped active">
                                                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">80%</div>
                                        </div>
                                        <small class="text-muted">Dmitry Ivaniuk, 24 Sep 2014 / 80%</small>
                                </a>
                                <a class="list-group-item" href="#">
                                        <strong>Lorem ipsum dolor</strong>
                                        <div class="progress progress-small progress-striped active">
                                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100" style="width: 95%;">95%</div>
                                        </div>
                                        <small class="text-muted">John Doe, 23 Sep 2014 / 95%</small>
                                </a>
                                <a class="list-group-item" href="#">
                                        <strong>Cras suscipit ac quam at tincidunt.</strong>
                                        <div class="progress progress-small">
                                                <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">100%</div>
                                        </div>
                                        <small class="text-muted">John Doe, 21 Sep 2014 /</small><small class="text-success"> Done</small>
                                </a>  -->
                            </div>
                            <div class="panel-footer text-center">
                                <a href="pages-tasks.html">Show all tasks</a>
                            </div>
                        </div>
                    </li>
                    <!-- END TASKS -->
                </ul>

                <!-- END X-NAVIGATION VERTICAL -->	<!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">

                    <div class="col-md-12" >
                        <!-- START FORM GRID -->
                        <!-- END HORIZONTAL FORM SAMPLE -->

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="panel-title-box">
                                    <h3>Manage Country</h3>
                                </div>
                                <ul class="panel-controls" style="margin-top: 2px;">
                                    <li><a href="#" class="panel-fullscreen"><span class="fa fa-expand"></span></a></li>

                                    <li class="dropdown">
                                        <a href="#" onclick="return clearBuy();" class="panel-collapse"><span class="fa fa-angle-down"></span></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="panel-body">
                                <div class="col-md-6">
                                    <div class="block">
                                        <h4>Add State</h4>
                                        <form class="form-horizontal" id="cpa-form">
                                            <div class="form-group">
                                                <div class="col-md-10">
                                                    <input type="text" name="stateName" class="form-control" placeholder="State Name" id="statename">
                                                </div>
                                            </div>
                                            <input type="submit" name="stateSub" class="btn btn-danger" value="ADD" id="addstate">
                                        </form>
                                    </div>
                                </div>



                                <div class="col-md-6">
                                    <div class="block">
                                        <h4>Add City</h4>
                                        <form class="form-horizontal" method="post" id="cpa-form2">
                                            <div class="form-group">
                                                <div class="col-md-10">
                                                    <select class="form-control" name="sName" style="height:33px;" id="selectState1">

                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-10">
                                                    <input type="text" name="cityname:" class="form-control" placeholder="City Name" id="cityname">
                                                </div>
                                            </div>
                                            <input type="submit" name="addCity" class="btn btn-danger" id="addCity" value="ADD">
                                        </form>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-5" >
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="panel-title-box">
                                        <h3>Manage State</h3>
                                        <span>Edit or Delete Details</span>
                                    </div>
                                    <ul class="panel-controls" style="margin-top: 2px;">
                                        <li><a href="#" class="panel-fullscreen"><span class="fa fa-expand"></span></a></li>
                                        <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span></a></li>
                                    </ul>
                                </div>
                                <div class="panel-body">
                                    <table class="table table-hover" id="allstate">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Name</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>


                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-7" >
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="panel-title-box">
                                        <h3>Manage City</h3>
                                        <span>Edit or Delete category Details</span>
                                    </div>
                                    <ul class="panel-controls" style="margin-top: 2px;">
                                        <li><a href="#" class="panel-fullscreen"><span class="fa fa-expand"></span></a></li>
                                        <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span></a></li>
                                    </ul>
                                </div>
                                <div class="panel-body">
                                    <table class="table" id="allCity">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>State</th>
                                                <th>Name</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>


                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>



                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modal Header</h4>
                    </div>
                    <div class="modal-body">
                        <p>Some text in the modal.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
                            <a href="page/userLogout.php" class="btn btn-success btn-lg">Yes</a>
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
        <script type="text/javascript" src="../resources/js/sweet-alert.min.js"></script>
        <!-- END PLUGINS -->

        <!-- START THIS PAGE PLUGINS-->        
        <script type='text/javascript' src='../resources/js/plugins/icheck/icheck.min.js'></script>        
        <script type="text/javascript" src="../resources/js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>
        <script type="text/javascript" src="../resources/js/plugins/scrolltotop/scrolltopcontrol.js"></script>

        <script type="text/javascript" src="../resources/js/plugins/morris/raphael-min.js"></script>
        <!--<script type="text/javascript" src="../resources/js/plugins/morris/morris.min.js"></script>-->       
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
        <script type="text/javascript" src="../resources/js/settings.js"></script>

        <script type="text/javascript" src="../resources/js/plugins.js"></script>        
        <script type="text/javascript" src="../resources/js/actions.js"></script>


        <!--<script type="text/javascript" src="../resources/js/demo_dashboard.js"></script>-->
        <!-- END TEMPLATE -->
        <!-- END SCRIPTS -->        
    </body>

</html>
<script type="text/javascript">


                                            function getState() {
                                                $.ajax({url: "./getAllState",
                                                    method: "get",
                                                    success: function (result) {
                                                        $('#allstate tbody').html("");
                                                        var strVar = "";
                                                        for (var i = 0; i < result.length; i++) {
                                                            //console.log(result);
                                                            strVar += " <tr>";
                                                            strVar += " <td>" + (i + 1) + "<\/td>";
                                                            strVar += " <td>" + result[i].name + "<\/td>";
                                                            strVar += " <td >";
                                                            strVar += result[i].msg;
                                                            strVar += "<\/td>";
                                                            strVar += " <td>";
                                                            strVar += " <a onclick=\"updateStateStatus('" + result[i].id + "," + result[i].msg + "')\"  style=\"color:red; font-size:14px;cursor: pointer;\" data-toggle=\"tooltip\" data-placement=\"top\"><span class=\"fa fa-ban\"><\/span><\/a>";
                                                            strVar += " &nbsp;&nbsp;&nbsp;&nbsp;";
                                                            strVar += " <a onclick=\"openState('" + result[i].id + "')\" title=\"Edit\"  style=\"font-size:14px;cursor: pointer;\" data-toggle=\"tooltip\" data-placement=\"top\"><span class=\"fa fa-edit\"><\/span><\/a>";
                                                            strVar += "  &nbsp;&nbsp;&nbsp;&nbsp;";
                                                            strVar += "  <a onclick=\"deleteState('" + result[i].id + "')\" title=\"Delete\" style=\"color:red; font-size:14px;cursor: pointer;\" data-toggle=\"tooltip\" data-placement=\"top\" onclick=\"return deleteData();\"><span class=\"fa fa-trash-o\"><\/span><\/a>";
                                                            strVar += "  <\/td>";
                                                            strVar += "  <\/tr>";

                                                        }
                                                        $('#allstate tbody').html(strVar);
                                                    }});
                                                $.ajax({url: "./getAllState",
                                                    method: "get",
                                                    success: function (result) {
                                                        var strVar = "";
                                                        strVar += "<option value=\"\" selected>Select State<\/option>";
                                                        for (var i = 0; i < result.length; i++) {
                                                            strVar += "<option value=\"" + result[i].id + "\">" + result[i].name + "<\/option>";
                                                        }
                                                        $('#selectState1').html(strVar);
                                                    }});
                                            }
                                            ;
                                            function  getDistrict()
                                            {
                                                $.ajax({url: "./getAllDistrict",
                                                    method: "get",
                                                    success: function (result) {
                                                        $('#allDistrict tbody').html("");
                                                        var strVar = "";
                                                        for (var i = 0; i < result.length; i++) {
                                                            console.log(result);
                                                            strVar += " <tr>";
                                                            strVar += " <td>" + (i + 1) + "<\/td>";
                                                            strVar += " <td>" + result[i].statename + "<\/td>";
                                                            strVar += " <td>" + result[i].districtName + "<\/td>";
                                                            strVar += " <td >";
                                                            strVar += result[i].status;
                                                            strVar += "<\/td>";
                                                            strVar += " <td>";
                                                            strVar += " <a onclick=\"updateDistrictStatus('" + result[i].id + "," + result[i].status + "')\"  style=\"color:red; font-size:14px;cursor: pointer;\" data-toggle=\"tooltip\" data-placement=\"top\"><span class=\"fa fa-ban\"><\/span><\/a>";
                                                            strVar += " &nbsp;&nbsp;&nbsp;&nbsp;";
                                                            strVar += " <a onclick=\"openDistrict('" + result[i].id + "')\" title=\"Edit\"  style=\"font-size:14px;cursor: pointer;\" data-toggle=\"tooltip\" data-placement=\"top\"><span class=\"fa fa-edit\"><\/span><\/a>";
                                                            strVar += "  &nbsp;&nbsp;&nbsp;&nbsp;";
                                                            strVar += "  <a onclick=\"deleteDistrict('" + result[i].id + "')\" title=\"Delete\" style=\"color:red; font-size:14px;cursor: pointer;\" data-toggle=\"tooltip\" data-placement=\"top\" onclick=\"return deleteData();\"><span class=\"fa fa-trash-o\"><\/span><\/a>";
                                                            strVar += "  <\/td>";
                                                            strVar += "  <\/tr>";

                                                        }
                                                        $('#allDistrict tbody').html(strVar);
                                                    }});
//                                                            
                                            }

                                            function getCity() {
                                                $.ajax({
                                                    url: "./getAllCity",
                                                    method: "get",
                                                    success: function (result) {
                                                        $('#allCity tbody').html("");
                                                        var strVar = "";
                                                        for (var i = 0; i < result.length; i++) {
                                                            console.log(result);
                                                            strVar += " <tr>";
                                                            strVar += " <td>" + (i + 1) + "<\/td>";
                                                            strVar += " <td>" + result[i].statename + "<\/td>";
                                                            strVar += " <td>" + result[i].cityName + "<\/td>";
                                                            strVar += " <td >";
                                                            strVar += result[i].status;
                                                            strVar += "<\/td>";
                                                            strVar += " <td>";
                                                            strVar += " <a onclick=\"updateCityStatus('" + result[i].id + "," + result[i].status + "')\"  style=\"color:red; font-size:14px;cursor: pointer;\" data-toggle=\"tooltip\" data-placement=\"top\"><span class=\"fa fa-ban\"><\/span><\/a>";
                                                            strVar += " &nbsp;&nbsp;&nbsp;&nbsp;";
                                                            strVar += " <a onclick=\"openCity('" + result[i].id + "')\" title=\"Edit\"  style=\"font-size:14px;cursor: pointer;\" data-toggle=\"tooltip\" data-placement=\"top\"><span class=\"fa fa-edit\"><\/span><\/a>";
                                                            strVar += "  &nbsp;&nbsp;&nbsp;&nbsp;";
                                                            strVar += "  <a onclick=\"deleteCity('" + result[i].id + "')\" title=\"Delete\" style=\"color:red; font-size:14px;cursor: pointer;\" data-toggle=\"tooltip\" data-placement=\"top\" onclick=\"return deleteData();\"><span class=\"fa fa-trash-o\"><\/span><\/a>";
                                                            strVar += "  <\/td>";
                                                            strVar += "  <\/tr>";
                                                        }
                                                        $('#allCity tbody').html(strVar);
                                                    }
                                                });
                                            }

                                            function openDistrict(id) {
                                                console.log(id);
                                            }

                                            function openCity(id) {
                                                console.log(id);
                                            }


                                            function openState(id) {
                                                console.log(id);
//                                                            $('#myModal').show();
                                            }
                                            function updateStateStatus(id) {
                                                var status = id.split(",");
                                                var stateId = status[0];
                                                var msg = status[1];
                                                var sendInfo = {
                                                    stateId: stateId,
                                                    status: msg
                                                };
                                                $.ajax({
                                                    url: './updateState',
                                                    type: 'post',
                                                    dataType: 'json',
                                                    success: function (response) {
                                                        if (response.status === 1) {
                                                            swal("Success!", "Successfully Update state status", "success");
                                                            window.location = "../admin/location";
                                                        } else {
                                                            swal("Oops...", "Please try again later", "error");
                                                        }
                                                    },
                                                    data: sendInfo
                                                });
                                            }
                                            function deleteState(id) {
                                                var sendInfo = {
                                                    stateId: id
                                                };
                                                console.log(sendInfo);
                                                swal({
                                                    title: "Are you sure?",
                                                    text: "You will not be able to recover this stateName!",
                                                    type: "warning",
                                                    showCancelButton: true,
                                                    confirmButtonClass: "btn-danger",
                                                    confirmButtonText: "Yes, delete it!",
                                                    cancelButtonText: "No, cancel plx!",
                                                    closeOnConfirm: false,
                                                    closeOnCancel: false
                                                },
                                                        function (isConfirm) {
                                                            if (isConfirm) {
                                                                $.ajax({
                                                                    url: './deleteState',
                                                                    type: 'post',
                                                                    dataType: 'json',
                                                                    success: function (response) {
                                                                        if (response.status === 1) {
                                                                            swal("Deleted!", "Successfully deleted state", "success");
                                                                            window.location = "../admin/location";
                                                                        } else {
                                                                            swal("Oops...", "Please try again later", "error");
                                                                        }
                                                                    },
                                                                    data: sendInfo
                                                                });

                                                            } else {
                                                                swal("Cancelled", "Your state  is safe ", "error");
                                                            }
                                                        });

                                            }

                                            function updateDistrictStatus(id) {
                                                var status = id.split(",");
                                                var districtId = status[0];
                                                var msg = status[1];
                                                var sendInfo = {
                                                    districtId: districtId,
                                                    status: msg
                                                };
                                                $.ajax({
                                                    url: './updateDistrict',
                                                    type: 'post',
                                                    dataType: 'json',
                                                    success: function (response) {
                                                        if (response.status === 1) {
                                                            swal("Success!", "Successfully Update District status", "success");
                                                            window.location = "../admin/location";
                                                        } else {
                                                            swal("Oops...", "Please try again later", "error");
                                                        }
                                                    },
                                                    data: sendInfo
                                                });
                                            }

                                            function deleteDistrict(id) {
                                                var sendInfo = {
                                                    districtId: id
                                                };
                                                console.log(sendInfo);
                                                swal({
                                                    title: "Are you sure?",
                                                    text: "You will not be able to recover this stateName!",
                                                    type: "warning",
                                                    showCancelButton: true,
                                                    confirmButtonClass: "btn-danger",
                                                    confirmButtonText: "Yes, delete it!",
                                                    cancelButtonText: "No, cancel plx!",
                                                    closeOnConfirm: false,
                                                    closeOnCancel: false
                                                },
                                                        function (isConfirm) {
                                                            if (isConfirm) {
                                                                $.ajax({
                                                                    url: './deleteDistrict',
                                                                    type: 'post',
                                                                    dataType: 'json',
                                                                    success: function (response) {
                                                                        if (response.status === 1) {
                                                                            swal("Deleted!", "Successfully deleted District", "success");
                                                                            window.location = "../admin/location";
                                                                        } else {
                                                                            swal("Oops...", "Please try again later", "error");
                                                                        }
                                                                    },
                                                                    data: sendInfo
                                                                });

                                                            } else {
                                                                swal("Cancelled", "Your District  is safe ", "error");
                                                            }
                                                        });

                                            }

                                            function deleteCity(id) {
                                                var sendInfo = {
                                                    cityId: id
                                                };
                                                console.log(sendInfo);
                                                swal({
                                                    title: "Are you sure?",
                                                    text: "You will not be able to recover this stateName!",
                                                    type: "warning",
                                                    showCancelButton: true,
                                                    confirmButtonClass: "btn-danger",
                                                    confirmButtonText: "Yes, delete it!",
                                                    cancelButtonText: "No, cancel plx!",
                                                    closeOnConfirm: false,
                                                    closeOnCancel: false
                                                },
                                                        function (isConfirm) {
                                                            if (isConfirm) {
                                                                $.ajax({
                                                                    url: './deleteCity',
                                                                    type: 'post',
                                                                    dataType: 'json',
                                                                    success: function (response) {
                                                                        if (response.status === 1) {
                                                                            swal("Deleted!", "Successfully deleted City", "success");
                                                                            window.location = "../admin/location";
                                                                        } else {
                                                                            swal("Oops...", "Please try again later", "error");
                                                                        }
                                                                    },
                                                                    data: sendInfo
                                                                });

                                                            } else {
                                                                swal("Cancelled", "Your City  is safe ", "error");
                                                            }
                                                        });

                                            }

                                            function updateCityStatus(id) {
                                                var status = id.split(",");
                                                console.log(status);
                                                var cityId = status[0];
                                                var msg = status[1];
                                                var sendInfo = {
                                                    cityId: cityId,
                                                    status: msg
                                                };
                                                $.ajax({
                                                    url: './updateCityDetails',
                                                    type: 'post',
                                                    dataType: 'json',
                                                    success: function (response) {
                                                        if (response.status === 1) {
                                                            swal("Success!", "Successfully Update City status", "success");
                                                            window.location = "../admin/location";
                                                        } else {
                                                            swal("Oops...", "Please try again later", "error");
                                                        }
                                                    },
                                                    data: sendInfo
                                                });
                                            }

                                            function selectDistrict(id) {
                                                $.ajax({
                                                    url: "./getDistrictByState?stateId=" + id,
                                                    method: "get",
                                                    success: function (result)
                                                    {
                                                        console.log(result);
                                                        var strVar = "",
                                                                strVar = "<option value=\"\" selected>Select District<\/option>";
                                                        for (var i = 0; i < result.length; i++)
                                                        {
                                                            strVar += "<option value=\"" + result[i].id + "\">" + result[i].districtName + "<\/option>";

                                                        }
                                                        $('#selectDistrict').html(strVar);
                                                    }


                                                });

                                            }
                                            $(document).ready(function () {
//                                                getDistrict();
                                                getCity();
                                                getState();
                                                $("#cpa-form").submit(function (e) {
                                                    e.preventDefault();
                                                });
                                                $("#cpa-form1").submit(function (e) {
                                                    e.preventDefault();
                                                });
                                                $("#cpa-form2").submit(function (e) {
                                                    e.preventDefault();
                                                });
                                                $('#addCity').click(function () {
                                                    console.log($('#selectState1').val());
                                                });

                                                $('#addstate').click(function () {
                                                    console.log($('#statename').val());
                                                    var sendInfo = {
                                                        statename: $('#statename').val()
                                                    };

                                                    $.ajax({
                                                        url: './admin/addState',
                                                        type: 'post',
                                                        dataType: 'json',
                                                        success: function (response) {
                                                            if (response.status === 1) {
                                                                swal("Success!", "Successfully create state name", "success")
                                                                window.location = "../admin/location";
                                                            } else {
                                                                console.log(response.msg);
                                                                swal("Oops...", "State Name already exist", "error");
                                                            }
                                                        },
                                                        data: sendInfo
                                                    });
                                                });


                                                $('#addCity').click(function () {
                                                    console.log($('#cityname').val());
                                                    var sendInfo = {
                                                        cityname: $('#cityname').val(),
                                                        id: $('#selectState1').val(),
                                                    };
                                                    console.log(sendInfo);
                                                    $.ajax({
                                                        url: "./addNewCity",
                                                        type: 'post',
                                                        dataType: 'json',
                                                        success: function (response)
                                                        {
                                                            if (response.status === 1) {
                                                                swal("Success!", "Successfully added City name", "success")
                                                                window.location = "../admin/location";
                                                            } else {
                                                                console.log(response.msg);
                                                                swal("Oops...", "City Name already exist", "error");
                                                            }
                                                        },
                                                        data: sendInfo
                                                    });


                                                });


                                            });



</script>