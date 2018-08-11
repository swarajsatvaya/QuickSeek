<%-- 
    Document   : register2
    Created on : Jan 25, 2017, 12:43:27 PM
    Author     : PC6
--%>


<!DOCTYPE html>
<html lang="en">
    <head>        
        <!-- META SECTION -->
        <title>QckSeek | Register</title>           
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="icon" href="favicon.ico" type="image/x-icon">
        <!-- END META SECTION -->

        <!-- CSS INCLUDE -->        
        <link rel="stylesheet" type="text/css" id="theme" href="./resources/css/theme-default.css">
        <link rel="stylesheet" type="text/css" id="theme" href="./resources/css/custommycss.css">
        <link rel="stylesheet" type="text/css" id="theme" href="./resources/css/sweet-alert.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <!-- EOF CSS INCLUDE -->  
        <style>
            .reg-wrapper{width: 100%; float: left; min-height: 650px; background: #fff}
            .jdlc {
                float: left;
                width: 100%;}
            .ard, .jsu, #rmv, #ssu {
                float: none;
            }
            .jsu {
                width: 370px;
                margin: 0 auto 0;
                padding: 35px 0 0;
                display: table;
                clear: both;
            }
            .jerr, .addjerr {
                clear: left;
                color: red;
                display: table;
                font-size: 12px;
                text-align: center;
                margin: 0 auto 10px;
            }
            .error_orng {
                color: #ff6c00;
                font-size: 15px;
                margin: 20px 0;
                display: block;
            }
            .jsu h3 {
                font-size: 21px;
                color: #424242;
                padding: 6px 0;
                font-family: Arial;
            }
            #signup_user input {
                float: left;
                width: 213px;
                height: 33px;
                border: 1px solid #cbcbcb;
            }
            .jsu p {
                float: left;
                padding: 8px 0;
            }
            .jsu label {
                padding-left: 0;
                width: 120px;
                color: #424242;
                float: left;
                font-size: 13px;
                text-align: left;
                padding-top: 5px;
            }
            a:hover, sup, .bktblouter .ment {
                color: #1274C0;
            }
            sup {
                top: -0.5em;
            }
            sub, sup {
                font-size: 75%;
                line-height: 0;
                position: relative;
                vertical-align: baseline;
            }
            .jinpwrp {
                float: left;
                width: 245px;
            }
            .jsu .jinp, .jsu .jbtn {
                float: left;
            }
            .jinp {
                display: inline-block;
                font-size: 16px;
                height: 25px;
                margin: 0 10px 0 0;
                padding: 2px 0 2px 1px;
                width: 216px;
            }
            #signup_user .jerr {
                display: block;
                text-align: left;
                margin: 0;
            }
            .jerr, .addjerr {
                clear: left;
                color: red;
                display: table;
                font-size: 12px;
                text-align: center;
                margin: 0 auto 10px;
            }
            #signup_user input.disbld {
                float: left;
                border: 1px solid #CBCBCB;
                display: inline-block;
                font-size: 16px;
                height: 33px;
                margin: 0 10px 0 0;
                padding: 2px 0 2px 1px;
                width: 215px;
            }
            .jbtn {
                background: #53b1e5;
                color: #fff;
                font-weight: bold;
                border: 0;
                float: none;
                margin: 0;
                padding: 8px 13px;
            }
            .subwid {
                width: 217px;}
            .jinp input {
                border: 0 none;}
            .form-control{width: 80%}
            .table-area{
                box-shadow: 0px 0px 2px 1px #ccc;
            }.selecttag{
                height: 31px;
                width: 190px;
            }
        </style>
    </head>
    <body>
        <header class="header-head">
            <div class="container">
                <div class="col-xs-12 col-sm-6 col-md-6 padding-left">
                    <a href="#" class="logoimg"><img src="./resources/images/logo-clr.png" alt="" /></a>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6 padding-right">
                    <div class="right-alignheader">
                        <ul>
                            <li><a href="login.html"><i class="fa fa-user"></i>Login</a></li>
                            <!--<li><a href="register1.html"><i class="fa fa-sign-in"></i>Sign Up</a></li>-->
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        <div class="reg-wrapper">
            <section style="min-height: 418px; display: block;" class="jdlc">

                <section class="jsu">
                    <div id="su">
                        <span style="display: none;" class="jerr"></span>
                        <span class="error_orng"></span>
                        <h3>Enter your details below to register </h3>
                        <form class="form-horizontal" action="./user/registration" name="userBean" method="post">
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="email">First Name:*</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="name" placeholder="Enter first name" required="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="pwd">Last Name:*</label>
                                <div class="col-sm-8">          
                                    <input type="text" class="form-control" name="name1" placeholder="Enter last name" required="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="pwd">Mobile Number:</label>
                                <div class="col-sm-8">          
                                    <input type="text" class="form-control" name="phoneNo" style="color: black" value="${phoneNo}" readonly="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="pwd">Email Id:*</label>
                                <div class="col-sm-8">          
                                    <input type="text" class="form-control" id="pwd" placeholder="Enter Email"  name="emailId" required="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="pwd">Select Package*</label>
                                <div class="col-sm-8" class="form-control" >          
                                    <select class="selecttag" name="packageId">

                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="pwd">Password:*</label>
                                <div class="col-sm-8">          
                                    <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password" required="">
                                </div>
                            </div>
                            <div class="form-group">        
                                <div class=" col-sm-8 col-sm-offset-2">
                                    <button type="submit" class="jbtn subwid">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div><!--?php/* jsu */?-->
                    <div >
                        <br>
                        <br>
                    </div>
                    <div class="table-area">
                        <table class="table table-inverse" id="table-res">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Package Name</th>
                                    <th>Package Details</th>
                                    <th>Package Validity</th>
                                </tr>
                            </thead>
                            <tbody>


                            </tbody>
                        </table>
                    </div>
                </section>	

            </section>

        </div>
        <footer class="footer-section footer-newcss">
            <div class="container">
                <div class="col-md-12 text-center">
                    <a href="#">Copyrights 2017.All Rights Reserved Negant Technologies Pvt. Ltd</a>
                </div>
            </div>
        </footer>

        <script type="text/javascript" src="./resources/js/plugins/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="./resources/js/plugins/jquery/jquery-ui.min.js"></script>
        <script type="text/javascript" src="./resources/js/plugins/bootstrap/bootstrap.min.js"></script>        
        <script type="text/javascript" src="./resources/js/sweet-alert.min.js"></script>
    </body>
</html>

<script type="text/javascript">
    function getPackage() {
        var strVar = "";
        var strVar1 = "";
        $.ajax({url: "./packageDetails",
            method: "get",
            success: function (result) {
                console.log(result);
                for (var i = 0; i < result.length; i++) {
                    strVar1 += "<option value=\""+ result[i].packeageId+"\">"+result[i].packageName+"<\/option>";
                }
                for (var i = 0; i < result.length; i++) {
                    strVar += " <tr>";
                    strVar += " <th scope=\"row\">" + (i + 1) + "<\/th>";
                    strVar += "  <td>" + result[i].packageName + "<\/td>";
                    strVar += "  <td>" + result[i].packageDetails + "<\/td>";
                    strVar += " <td>" + result[i].packageValidity + " days <\/td>";
                    strVar += " <\/tr>";
                }
                $('#table-res tbody').html(strVar);
                $('.selecttag').html(strVar1);
            }

        });

    }
    $(document).ready(function () {
        $('#table-res tbody').html("");
        getPackage();
    });
</script>





