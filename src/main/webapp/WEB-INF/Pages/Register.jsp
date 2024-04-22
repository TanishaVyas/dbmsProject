<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="Navbar.jsp" %>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <link rel="stylesheet" href="style.css" />
        <title>Campus TradeX</title>
    </head>
    <body style="background-color: #110929;">
        <form action="/Register" method="post" name="Register"  class="form">
            <div class="action">
                <div style="width: 100%; height: 100%; position: relative; background: white">
                    <div style="width: 606px; height: 662px; left: 196px; top: 183px; position: absolute">
                        <div style="width: 321px; height: 179px; left: 0px; top: 0px; position: absolute">
                            <div style="left: 0px; top: 0px; position: absolute;  font-size: 64px; font-family: Poppins; font-weight: 600;; color: white; word-wrap: break-word">Sign Up  </div>
                            <div style="width: 321px; height: 54px; left: 0px; top: 125px; position: absolute">
                                <div style="width: 321px; left: 0px; top: 0px; position: absolute;  font-size: 16px; font-family: Poppins; font-weight: 400; word-wrap: break-word; color: white;">If you already have an account </div>
                                <div style="width: 308px; left: 0px; top: 30px; position: absolute"><span style="font-size: 16px; font-family: Poppins; font-weight: 400; ; color: white;word-wrap: break-word">You can </span><a href="/login" style="color: #4D47C3; font-weight: 600;">Login here!</a></div>
                            </div>
                        </div>
                    </div>
                    <div style="width: 313px; height: 556px; left: 485px; top: 235px; position: absolute">
                        <img src="https://chroniclestrategy.com/static/media/hero.98739928cc2d916b91e1.png" alt="Image" style="width: 313px; height: 556px; left: 0px; top: 0px; position: absolute" />
                    </div>
                    <div style="width: 369px; height: 543px; left: 892px; top: 100px; position: absolute">
                        <div  class="login show-page">
                            <div style="width: 369px; height: 62px; left: 0px; top: 73px; position: absolute">
                                <div style="width: 369px; height: 62px; position: absolute;">
                                    <input placeholder="Email" name="Email" type="text" style="width: 100%; height: 100%; background: #F0EFFF; border-radius: 8px; border: none;padding-left: 13px;padding-right: 13px;" placeholder="Enter Email">
                                    <style>
                                        #email::placeholder {
                                            color: #a7a3ff;
                                        }</style>
                                </div>
                            </div>

                            <div style="width: 369px; height: 62px; left: 0px; top: 153px; position: absolute">
                                <div style="width: 369px; height: 62px; left: 0px; top: 0px; position: absolute;">
                                    <div style="width: 369px; height: 62px; position: absolute;">
                                        <input placeholder="Username" name="Username" type="text" style="width: 100%; height: 100%; background: #F0EFFF; border-radius: 8px; border: none; padding-left: 13px;padding-right: 13px;" placeholder="Enter Username">
                                        <style>
                                            #username::placeholder {
                                                color: #a7a3ff;
                                            }
                                        </style>
                                    </div>
                                </div>
                            </div>
                            <div style="width: 369px; height: 62px; left: 0px; top: 233px; position: absolute">
                                <div style="width: 369px; height: 62px; left: 0px; top: 0px; position: absolute;">
                                    <div style="width: 369px; height: 62px; position: absolute;">
                                        <input placeholder ="Contact" name="Phone" type="text" style="width: 100%; height: 100%; background: #F0EFFF; border-radius: 8px; border: none; padding-left: 13px;padding-right: 13px;" placeholder="Enter Contact Number">
                                        <style>
                                            #contact::placeholder {
                                                color: #a7a3ff;
                                            }
                                        </style>
                                    </div>
                                </div>

                            </div>
                            <div style="width: 369px; height: 62px; left: 0px; top: 394px; position: absolute">
                                <div style="width: 369px; height: 62px; left: 0px; top: 0px; position: absolute;">
                                    <div style="width: 369px; height: 62px; position: absolute;">
                                        <input Placeholder="Password" name="Password" type="password" style="width: 100%; height: 100%; background: #F0EFFF; border-radius: 8px; border: none; padding-left: 13px;padding-right: 13px;" placeholder="Confirm Password">
                                        <style>
                                            #password::placeholder {
                                                color: #a7a3ff;
                                            }
                                        </style>
                                    </div>
                                </div>
                            </div>
                            <div style="width: 369px; height: 62px; left: 0px; top: 313px; position: absolute">
                                <div style="width: 369px; height: 62px; left: 0px; top: 0px; position: absolute;">
                                    <div style="width: 369px; height: 62px; position: absolute;">
                                        <input placeholder="password" name="password" type="Password" style="width: 100%; height: 100%; background: #F0EFFF; border-radius: 8px; border: none; padding-left: 13px;padding-right: 13px;" placeholder="Password">
                                        <style>
                                            #password::placeholder {
                                                color: #a7a3ff;
                                            }
                                        </style>
                                    </div>
                                </div>
                            </div>
                            <div style="width: 369px; height: 59px; left: 0px; top: 484px; position: absolute">
                                <div style="width: 369px; height: 59px; left: 0px; top: 0px; position: absolute">
                                    <div style="width: 369px; height: 59px; left: 0px; top: 0px; position: absolute">
                                        <button> <a style="text-decoration: none;">
                                            <div style="width: 369px; height: 59px; left: 0px; top: 0px; position: absolute; background: #4D47C3; box-shadow: 0px 4px 61px rgba(77, 71, 195, 0.40); border-radius: 9px;padding-left: 13px;padding-right: 13px;"></div>
                                            <div style="left: 158px; top: 18px; position: absolute; color: white; font-size: 16px; font-family: Poppins; font-weight: 500; word-wrap: break-word;">
                                                 Register
                                            </div>
                                        </a></button>
                                    </div>

                                </div>
                            </div>
                            <div style="left: 0px; top: 0px; position: absolute;  font-size: 30px; font-family: Poppins; font-weight: 500; ; color: white; word-wrap: break-word">Sign Up</div>
                            <div style="width: 200px; height: 0px; left: 140px; top: 0px; position: absolute">
                                <div style="width: 200px; height: 40px; position: absolute;">
                                    <!-- Insert the select element for user roles here -->
                                    <select name="userRole" style="width: 100%; height: 100%; background: #4D47C3;color: white; border-radius: 8px; border: none; padding-left: 13px;padding-right: 13px">
                                        <option value="Seller">Seller</option>
                                        <option value="Customer">Customer</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </form>
    </body>
    <script>
        function redirectlogin() {
            window.location.href = '/login';
        }
        function openLoginPage() {
            document.querySelector(".reg").classList.remove("show-page");
            document.querySelector(".login").classList.add("show-page");
            document.getElementById("login-action").classList.add("show");
            document.getElementById("reg-action").classList.remove("show");
        }
        function openRegPage() {
            document.querySelector(".reg").classList.add("show-page");
            document.querySelector(".login").classList.remove("show-page");
            document.getElementById("reg-action").classList.add("show");
            document.getElementById("login-action").classList.remove("show");
        }
    </script>
</html>
