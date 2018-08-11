
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
        <!-- EOF CSS INCLUDE -->  
        <style>
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
            .jsu h3 {
                font-size: 21px;
                color: #424242;
                padding: 6px 0;
                font-family: Arial;
            }
            .jsubg {
                background-color: #f6f6f6;
                margin: 10px 0;
                padding: 15px;
            }
            input:focus, div, a:focus {
                outline: 0 none;
            }
            .jsbltxt {
                color: #1274c0;
                font-size: 15px;
            }
            .js_sbmt {
                background-color: #53B1E5;
                border: 0 none;
                color: #FFFFFF;
                font-size: 16px;
                font-weight: bold;
                margin: 10px 0;
                padding: 7px;
                width: 322px;
            }
            .jsinp {
                width: 321px;
                padding: 7px;
                margin: 15px 0 5px;
                font-size: 15px;
                color: #a6a6a6;
            }
            .reg-wrapper{width: 100%; float: left; min-height: 650px; background: #fff}
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
                            <li><a href="./Login"><i class="fa fa-user"></i>Login</a></li>
                            <!--<li><a href="register1.html"><i class="fa fa-sign-in"></i>Sign Up</a></li>-->
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        <div class="reg-wrapper">
            <section style="min-height: 418px; display: block;" class="jdlc">

                <section class="jsu">
                    <h3>Sign Up below. It's absolutely FREE!</h3>
                    <div class="jsubg">
                        <span class="jsbltxt">Enter your mobile number below</span>

                        <!--                        <form action="./Register-Search" id="register_user" method="post">							-->
                        <input style="color: rgb(166, 166, 166);" class="jsinp" autocomplete="off" id="mobile_srch" name="mobile_srch" placeholder="e.g. 9999999999" tabindex="0" maxlength="15" type="text">
                        <span style="display: none;" class="jerr"></span>

                        <button class="js_sbmt"  name="btnSubmit3" id="btnSubmit3" type="button">Submit</button>
                        <!--</form>-->

                    </div> 	</section>	
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
    $(document).ready(function () {
        $("#btnSubmit3").click(function () {
            var sendInfo = {
                phoneNo: $('#mobile_srch').val()
            };
            if ($('#mobile_srch').val() !== "") {
                $.ajax({
                    url: './user/mobileNoCheck',
                    type: 'post',
                    dataType: 'json',
                    success: function (response) {
                        if (response.status === 1) {
                            window.location = "./Register-Search";
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
    });
</script>





