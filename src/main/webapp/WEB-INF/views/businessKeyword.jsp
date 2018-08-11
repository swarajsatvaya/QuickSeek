<%-- 
    Document   : manage-brand
    Created on : Jan 27, 2017, 11:41:24 AM
    Author     : pc2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        
        <!-- META SECTION -->
        <title>QckSeek | Add Keywords</title>           
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

                            </div>
                            <div class="panel-footer text-center">
                                <a href="pages-tasks.html">Show all tasks</a>
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
                                        <h3>Add New Keyword</h3>
                                        <span>Fill All Details Properly Before Submit </span>
                                    </div>
                                    <ul class="panel-controls" style="margin-top: 2px;">
                                        <li><a href="#" class="panel-fullscreen"><span class="fa fa-expand"></span></a></li>
                                        <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span></a></li>
                                    </ul>
                                </div>
                                <div class="panel-body">
                                    <form class="form-horizontal" method="post" id="addKeyword">
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Category</label>
                                            <div class="col-md-6">
                                                <select class="form-control" name="catid" style="height:33px;" id="selectCategory">
                                                    <option value="Select Category" selected>Select Category</option>

                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Sub Category</label>
                                            <div class="col-md-6">
                                                <select class="form-control" name="subcatid" style="height:33px;" id="selectSubCategory">
                                                    <option value="Select Sub-Category" selected>Select Sub-Category</option>

                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Keyword Name</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" name="keywordname" required id="keywordname">
                                            </div>
                                        </div>
                                        <div>
                                            <br><br>
                                            <div class="form-group">
                                                <label class="col-md-2 control-label"></label>
                                                <div class="col-md-10">
                                                    <input type="submit" name="addKeyword" id="addKeyword" class="btn btn-success" value="Add Keyword">
                                                </div>
                                            </div>
                                        </div>
                                    </form>

                                </div>
                            </div>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="panel-title-box">
                                        <h3>Manage Keywords</h3>
                                        <span>Manage All Keywords Here</span>
                                    </div>
                                    <ul class="panel-controls" style="margin-top: 2px;">
                                        <li><a href="#" class="panel-fullscreen"><span class="fa fa-expand"></span></a></li>
                                        <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span></a></li>
                                    </ul>
                                </div>
                                <div class="panel-body">
                                    <div class="col-md-12">
                                        <table class="table" id="allKeyword">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Category</th>
                                                    <th>Sub-Category</th>
                                                    <th>Keyword Name</th>
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
        </div>

        <!-- END PAGE CONTENT WRAPPER -->

        <!-- MESSAGE BOX-->
        <div class="message-box animated fadeIn" data-sound="alert" id="mb-signout">
            <div class="mb-container">
                <div class="mb-middle">
                    <div class="mb-title"><span class="fa fa-sign-out"></span> Log <strong>Out</strong> ?</div>
                    <div class="mb-content">
                        <p>Are you sure you want to log out?</p>
                        <p>Press No if you want to continue work. Press Yes to logout current user.</p>
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
        <script type="text/javascript" src="../resources/js/sweet-alert.min.js"></script>        
        <!-- END PLUGINS -->

        <!-- START THIS PAGE PLUGINS-->        
        <script type='text/javascript' src='../resources/js/plugins/icheck/icheck.min.js'></script>        
        <script type="text/javascript" src="../resources/js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>
        <script type="text/javascript" src="../resources/js/plugins/scrolltotop/scrolltopcontrol.js"></script>

        <script type="text/javascript" src="../resources/js/plugins/morris/raphael-min.js"></script>
        <!--        <script type="text/javascript" src="../resources/js/plugins/morris/morris.min.js"></script>       -->
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

        <!--        <script type="text/javascript" src="../resources/js/demo_dashboard.js"></script>-->
        <!-- END TEMPLATE -->
        <!-- END SCRIPTS -->    

        <script type="text/javascript">

            function getCategory() {

                $.ajax({url: "./loadAllCatagory",
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

            function selectSubcategory(id) {
                $.ajax({
                    url: "./getSubcategoryByCategory?categoryId=" + id,
                    method: "get",
                    success: function (result)
                    {
                        //console.log(result);
                        var strVar = "",
                                strVar = "<option value=\"\" selected>Select Sub-Category<\/option>";
                        for (var i = 0; i < result.length; i++)
                        {
                            strVar += "<option value=\"" + result[i].id + "\">" + result[i].name + "<\/option>";

                        }
                        $('#selectSubCategory').html(strVar);
                    }


                });

            }

            function updateKeywordStatus(id) {
                var status = id.split(",");
                //console.log(status);
                var keywordId = status[0];
                var msg = status[1];
                var sendInfo = {
                    keywordId: keywordId,
                    status: msg
                };
                $.ajax({
                    url: './updateKeyword',
                    type: 'post',
                    dataType: 'json',
                    success: function (response) {
                        if (response.status === 1) {
                            swal("Success!", "Successfully Update Keyword status", "success");
                            window.location = "../admin/keyword";
                        } else {
                            swal("Oops...", "Please try again later", "error");
                        }
                    },
                    data: sendInfo
                });
            }

            function getKeyword() {
                $.ajax({
                    url: "./getAllKeyword",
                    method: "get",
                    success: function (result) {
                        //console.log(result);
                        $('#allKeyword tbody').html("");
                        var strVar = "";
                        for (var i = 0; i < result.length; i++) {
                            console.log(result);
                            strVar += " <tr>";
                            strVar += " <td>" + (i + 1) + "<\/td>";
                            strVar += " <td>" + result[i].categoryname + "<\/td>";
                            strVar += " <td>" + result[i].subcategoryname + "<\/td>";
                            strVar += " <td>" + result[i].keywordName + "<\/td>";
                            strVar += " <td >";
                            strVar += result[i].status;
                            strVar += "<\/td>";
                            strVar += " <td>";
                            strVar += " <a onclick=\"updateKeywordStatus('" + result[i].id + "," + result[i].status + "')\"  style=\"color:red; font-size:14px;cursor: pointer;\" data-toggle=\"tooltip\" data-placement=\"top\"><span class=\"fa fa-ban\"><\/span><\/a>";
                            strVar += " &nbsp;&nbsp;&nbsp;&nbsp;";
                            strVar += " <a onclick=\"openCity('" + result[i].id + "')\" title=\"Edit\"  style=\"font-size:14px;cursor: pointer;\" data-toggle=\"tooltip\" data-placement=\"top\"><span class=\"fa fa-edit\"><\/span><\/a>";
                            strVar += "  &nbsp;&nbsp;&nbsp;&nbsp;";
                            strVar += "  <a onclick=\"deleteCity('" + result[i].id + "')\" title=\"Delete\" style=\"color:red; font-size:14px;cursor: pointer;\" data-toggle=\"tooltip\" data-placement=\"top\" onclick=\"return deleteData();\"><span class=\"fa fa-trash-o\"><\/span><\/a>";
                            strVar += "  <\/td>";
                            strVar += "  <\/tr>";
                        }
                        $('#allKeyword tbody').html(strVar);
                    }
                });
            }

            $(document).ready(function () {
                getCategory();
                getKeyword();

                $('#selectCategory').on('change', function () {
                    //console.log(this.value);
                    selectSubcategory(this.value);
                });
                $("#addKeyword").submit(function (e) {
                    e.preventDefault();
                });



                $('#addKeyword').click(function () {
                    console.log($('#keywordname').val());
                    var sendInfo = {
                        keywordname: $('#keywordname').val(),
                        id: $('#selectCategory').val(),
                        subcatId: $('#selectSubCategory').val()
                    };
                    console.log(sendInfo);
                    $.ajax({
                        url: "./admin/addKeyword",
                        type: 'post',
                        dataType: 'json',
                        success: function (response)
                        {
                            if (response.status === 1) {
                                swal("Success!", "Successfully added Keyword name", "success")
                                window.location = "../admin/keyword";
                            } else {
                                console.log(response.msg);
                                swal("Oops...", "Keyword already exist", "error");
                            }
                        },
                        data: sendInfo
                    });


                });



            });

        </script>
    </body>
</html>
