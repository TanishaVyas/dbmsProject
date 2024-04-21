<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="Navbar.jsp" %>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <link rel="stylesheet" href="style.css" />
        <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.1.2/dist/tailwind.min.css" rel="stylesheet">
    </style>
    <title>Login page</title>
</head>
<body style="background-color: #110929;">
    <form action="/login" method="post" name="login"  class="form">
        <div class="action">
            <div style="width: 1440px; height: 829px; position: relative; background: #110929">
                <div style="width: 308px; height: 173px; left: 153px; top: 169px; position: absolute">
                    <div style="left: 27px; top: 0px; position: absolute; color: white; font-size: 50px; font-family: Poppins; font-weight: 600; word-wrap: break-word">Login</div>
                    <div style="width: 308px; height: 54px; left: 0px; top: 119px; position: absolute">
                        <div style="width: 308px; left: 0px; top: 0px; position: absolute; color: white; font-size: 16px; font-family: Poppins; font-weight: 400; word-wrap: break-word">If you don't have an account register</div>
                        <div style="width: 308px; left: 0px; top: 30px; position: absolute"><span style="color: white; font-size: 16px; font-family: Poppins; font-weight: 400; word-wrap: break-word">You can </span><a href="/Register" style="color: #4D47C3; font-weight: 600;">Register here !</a></div>
                    </div>
                </div>
                <div style="width: 313px; height: 556px; left: 485px; top: 235px; position: absolute">
                    <img src="https://chroniclestrategy.com/static/media/hero.98739928cc2d916b91e1.png" alt="Image" style="width: 313px; height: 556px; left: 0px; top: 0px; position: absolute" />
                </div>
                <div  class="login show-page">
                    <div style="width: 370px; height: 377px; left: 918px; top: 169px; position: absolute">
                        <div style="width: 369px; height: 62px; left: 0px; top: 73px; position: absolute">
                            <div style="width: 369px; height: 62px; left: 0px; top: 0px; position: absolute">
                                <div style="position: relative;">
                                    <input id="username" name="Username" type="text" required class="w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500" placeholder="Enter Username">
                                </div>
                            </div>
                        </div>
                        <div style="width: 370px; height: 99px; left: 0px; top: 173px; position: absolute">
                            <div style="width: 369px; height: 62px; left: 0px; top: 0px; position: absolute">
                                <div style="width: 369px; height: 62px; left: 0px; top: 0px; position: absolute">
                                    <div style="position: relative;">
                                        <input id="password" name="Password" type="password" required class="w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500" placeholder="Enter Password">
                                    </div>
                                </div>
                            </div>
                            <div style="left: 250px; top: 79px; position: absolute; font-size: 13px; font-family: Poppins; font-weight: 400; word-wrap: break-word">
                                <a href="#" style="color: #B0B0B0; text-decoration: none;">Forgot password ?</a>
                            </div>
                        </div>
                        <div style="width: 200px; height: 40px; left: 0px; top: 240px; position: absolute">
                            <div style="width: 200px; height: 40px; position: absolute;">
                                <select name="userRole" style="width: 100%; height: 100%; background: #F0EFFF;color: #4D47C3; border-radius: 8px; border: none; padding-left: 13px;padding-right: 13px">
                                    <option value="Seller">Seller</option>
                                    <option value="Customer">Customer</option>
                                </select>
                            </div>
                        </div>
                        <div style="width: 369px; height: 59px; left: 0px; top: 318px; position: absolute">
                            <button id="loginButton" style="width: 100%; height: 100%; background: #4D47C3; box-shadow: 0px 4px 61px rgba(77, 71, 195, 0.40); border-radius: 9px; border: none; cursor: pointer;" onclick="openLoginPage()">
                                <div style="color: white; font-size: 16px; font-family: Poppins; font-weight: 500; text-align: center;">Login</div>
                            </button>
                        </div>
                        <div style="left: 0px; top: 0px; position: absolute; color: white; font-size: 30px; font-family: Poppins; font-weight: 500; word-wrap: break-word">Login</div>

                    </div>
                </div>
            </div>
    </form>
</body>
<script>
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
