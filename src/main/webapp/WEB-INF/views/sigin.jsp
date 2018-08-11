<%-- 
    Document   : sigin
    Created on : Jan 25, 2017, 2:26:10 PM
    Author     : PC6
--%>

<html class=" gecko win js" lang="en-US">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-type" content="text/html; charset=UTF-8">
        <title>QckSeek | Login</title>
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
                <form action="./user/userLogin" method="post" class="sky-form boxed" name="userBean">
                    <header><a href="./"><img src="./resources/images/qckseeklogo2.png" style="width: 25px;margin-right: 7px;"></a> Log In</header>
                    <fieldset>	

                        <section>
                            <label class="label">E-mail</label>
                            <label class="input">
                                <i class="icon-append fa fa-envelope"></i>
                                <input type="email" required="" id="emailId" name="emailId">
                                <span class="tooltip tooltip-top-right">Email Address</span>
                            </label>
                        </section>

                        <section>
                            <label class="label">Password</label>
                            <label class="input">
                                <i class="icon-append fa fa-lock"></i>
                                <input type="password" required="" id="password" name="password">
                                <b class="tooltip tooltip-top-right">Type your Password</b>
                            </label>
                            <div class="label-area">
                                <label class="checkbox"><input name="checkbox-inline" checked="checked" type="checkbox"><i></i>Keep me logged in</label>
                                <!--<span><a href="forgot.html">Forgot password?</a> </span>-->
                            </div>
                            <label class="create-now">
                                <span> Don't have an account?<a href=./signUp><b> Create Now</b></a></span>
                            </label>
                        </section>

                    </fieldset>

                    <footer>
                        <button type="button"  class="sign-in pull-right" id="login">Sign In</button>
                    </footer>
                </form>
                <!-- /login form -->
            </div>

        </div>

        <!-- JAVASCRIPT FILES -->
        <!--<script src="./resources/js/analytics.js" async=""></script>-->
        <script type="text/javascript">var plugin_path = './resources/assets/plugins/';</script>
        <script type="text/javascript" src="./resources/js/jquery-2.1.3.min.js"></script>
        <!--<script type="text/javascript" src="./resources/js/app.js"></script>-->

        <script src="./resources/js/bootstrap.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="./resources/js/sweet-alert.min.js"></script>
    </body>
    <script type="text/javascript">
            $(document).ready(function () {
                $('#login').click(function () {
                    var job = {};
                    job["emailId"] = $("#emailId").val();
                    job["password"] = $("#password").val();
                    console.log(job);
                    $.ajax({
                        url: "./user/userLogin",
                        type: "POST",
                        data: JSON.stringify(job),
                        dataType: "json",
                        contentType: "application/json",
                        success: function (data) {
                            if (data.status === 1) {
                                window.location = "./user/loginsuccess";
                            } else if(data.status ===2){
                                sweetAlert("Oops...", "you are blocked!", "error");
                            }else{
                                 sweetAlert("Oops...", "Incorrect credential!", "error");
                            }
                        }

                    });
                });
            });
    </script>
</html>
