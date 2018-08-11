

<%-- 
    Document   : adminlogin
    Created on : Jan 27, 2017, 3:06:40 PM
    Author     : PC6
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class=" gecko win js" lang="en-US">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-type" content="text/html; charset=UTF-8">
        <title>QckSeek | AdminLogin</title>
        <meta name="description" content="">
        <meta name="Author" content="">

        <!-- mobile settings -->
        <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0">

        <!-- WEB FONTS -->
        <!--<link href="./resources/css/css.css" rel="stylesheet" type="text/css">-->
        <!-- CORE CSS -->
        <link href="./resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">

        <!-- TEMPLATE CSS -->
        <link href="./resources/css/essentials.css" rel="stylesheet" type="text/css">
        <link href="./resources/css/layout.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" id="theme" href="./resources/css/sweet-alert.min.css" />
    </head>
    <body class="login-bg" background="../images/wall_1.jpg">


        <div class="padding-15">

            <div class="login-box">

                <!-- login form -->
                <div  class="sky-form boxed" style="background-color: white">
                    <header><i class="fa fa-users user"></i> Log In</header>
                    <fieldset>	

                        <section>
                            <label class="label">UserName</label>
                            <label class="input">
                                <i class="icon-append fa fa-envelope"></i>
                                <input type="email" required="" id="emailId">
                                <span class="tooltip tooltip-top-right">Email Address</span>
                            </label>
                        </section>

                        <section>
                            <label class="label">Password</label>
                            <label class="input">
                                <i class="icon-append fa fa-lock"></i>
                                <input type="password" required="" id="password">
                                <b class="tooltip tooltip-top-right">Type your Password</b>
                            </label>
                            <div class="label-area">
                                <label class="checkbox"><input name="checkbox-inline" checked="checked" type="checkbox"><i></i>Keep me logged in</label>
                                <span><a href="#">Forgot password?</a> </span>
                            </div>
<!--                            <label class="create-now">
                                <span> Don't have an account?<a href=Register><b> Create Now</b></a></span>
                            </label>-->
                        </section>

                    </fieldset>

                    <footer>
                        <button type="submit" id="adminlogin" class="sign-in pull-right" >Sign In</button>
                    </footer>
                </div>
                <!-- /login form -->
            </div>

        </div>

        <!-- JAVASCRIPT FILES -->
        <!--        <script src="./resources/js/analytics.js" async=""></script>
                <script type="text/javascript">var plugin_path = './resources/assets/plugins/';</script>-->
        <script type="text/javascript" src="./resources/js/jquery.min.js"></script>
        <!--<script type="text/javascript" src="./resources/js/app.js"></script>-->

        <script src="./resources/js/bootstrap.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="./resources/js/sweet-alert.min.js"></script>
    </body>
</html>

<script type="text/javascript">
    $(document).ready(function () {
        $("#adminlogin").click(function () {
            if ($('#emailId').val() === "") {
                sweetAlert("Oops...", "Enter Valid User Name!", "error");
            } else if ($('#password').val() === "") {
                sweetAlert("Oops...", "Enter Password!", "error");
            } else {
                var sendInfo = {
                    username: $('#emailId').val(),
                    password: $('#password').val()
                };
                $.ajax({
                    url: './admin/login',
                    type: 'post',
                    dataType: 'json',
                    success: function (response) {
                        if (response.status === 1) {
                            window.location = "./admin/dashboard";
                        } else {
                            sweetAlert("Oops...", "UserName and Password did not match!", "error");
                        }
                    },
                    data: sendInfo
                });
            }
        });
    });
</script>