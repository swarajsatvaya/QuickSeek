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
        <title>QckSeek | Manage User</title>           
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

                <!-- END X-NAVIGATION VERTICAL -->
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                    <br>
                    <div> <div class="row">
                            <div class="col-md-12" >
                                <form action="#" method="post">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h3 class="panel-title">Manage User Details</h3>
                                            <div class="btn-group pull-right">
                                                <button type="submit" value="publish" name="userAllow"  class="btn btn-success"> Allow</button>
                                                <a type="submit" data-toggle="modal" data-target="#myModal"   class="btn btn-warning"> Block</a>
                                                <a  name="userDelete" id="deleteuser" class="btn btn-danger"> Delete</a>
                                            </div>
                                        </div>
                                        <div class="panel-body">
                                            <table class="table" id="allUser">
                                                <thead>
                                                    <tr>
                                                        <th></th>
                                                        <th>Last Login</th>
                                                        <th>Name</th>
                                                        <th>Email</th>
                                                        <th>Mobile</th>
                                                        <th>Package Name</th>
                                                        <th>Status</th>

                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <!--                                                    <tr>
                                                                                                            <td><input type="checkbox" name="select[]" value="2"></td>
                                                                                                            <td>18-05-2016</td>
                                                                                                            <td>Vishal Joshi</td>
                                                                                                            <td>vgaire@gmail.com</td>
                                                                                                            <td>1231231231</td>
                                                                                                            <td>123</td>
                                                                                                            <td>
                                                                                                                Allowed
                                                                                                            </td>
                                                    
                                                                                                        </tr>-->
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--            <script type="text/javascript">
                            
                        $("#checkAll").change(function () {
                                $("input:checkbox").prop('checked', $(this).prop("checked"));
                            });
                            
                        </script>-->

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
            <!--Modal-->
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center">Block User</h4>
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
            <!-- Modal End-->
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

                function getUser() {
                    $.ajax({url: "./getAllUser",
                        method: "get",
                        success: function (result) {
                            $('#allUser tbody').html("");
                            var strVar = "";
                            for (var i = 0; i < result.length; i++)
                            {
                                strVar += "<tr>";
                                strVar += "<td><input type=\"checkbox\"  class=\"singlecheck2\" value=\"" + result[i].id + "\"><\/td>";
                                strVar += "<td>" + result[i].login + "<\/td>";
                                strVar += "<td>" + result[i].name + "<\/td>";
                                strVar += "<td>" + result[i].emailId + "<\/td>";
                                strVar += "<td>" + result[i].phoneNo + "<\/td>";
                                strVar += "<td>" + result[i].packageName + "<\/td>";
                                strVar += "<td>";
                                strVar += result[i].status;
                                strVar += "<\/td>";
                                strVar += "";
                                strVar += "<\/tr>";
                            }
                            $('#allUser tbody').html(strVar);

                        }
                    });

                }
                function deleteUser(arr) {
                    var sendInfo = {
                        userid: arr
                    };
                    console.log(sendInfo);
                    $.ajax({url: "./deleteuser",
                        method: "post",
                        dataType: 'json',
                        success: function (result) {
                            swal("Deleted!", "Your data has successfully deleted", "success");
                            window.location = "../admin/userList";
                        },
                        data: sendInfo
                    });
                }

                $(document).ready(function () {
                    getUser();


                    $('#deleteuser').click(function () {
                        var arr = new Array();
                        $('.singlecheck2').each(function () {
                            if ($(this).is(':checked')) {
                                arr.push($(this).val());
                            }
                        });
                        swal({
                            title: "Are you sure?",
                            text: "You will not be able to recover this data!",
                            type: "warning",
                            showCancelButton: true,
                            confirmButtonClass: "btn-danger",
                            confirmButtonText: "Yes, delete it!",
                            cancelButtonText: "No, cancel plx!",
                            closeOnConfirm: false,
                            closeOnCancel: false
                        },
                                function (isConfirm) {
                                    var id = "";
                                    if (isConfirm) {
                                        for (var i = 0; i < arr.length; i++) {
                                            if (id == "") {
                                                id = arr[i];
                                            } else 
                                            {
                                                id = id + "," + arr[i];
                                            }

                                        }
                                        deleteUser(id);
                                    } else {
                                        swal("Cancelled", "Your data is safe :)", "error");
                                    }
                                });

                    });
                });

            </script>
    </body>
</html>
