<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <link rel="stylesheet" href="style.css" />
        <style>* {
                padding: 0;
                margin: 0;
                box-sizing: border-box;
            }
            body {
                font-family: sans-serif;
                display: flex;
                align-items: center;
                justify-content: center;
                min-height: 100vh;
                background: url(bg.jpg);
                background-repeat: no-repeat;
                background-size: cover;
            }

            .form {
                background: rgba(0, 0, 0, 0.7);
                padding: 20px 15px;
                min-height: 250px;
            }

            input {
                display: block;
                outline: none;
                padding: 15px 10px;
                margin: 30px;
                border: solid 1px transparent;
                background: none;
                color: white;
                width: 200px;
                transition: border-color 1s;
            }

            input:focus {
                border-color: royalblue;
            }

            .form button {
                padding: 10px;
                color: white;
                background: royalblue;
                border: none;
                width: 200px;
                margin-left: 30px;
                transition: 0.2s;
                cursor: pointer;
            }
            .form button:hover {
                background: rgb(114, 149, 255);
            }

            .action {
                color: white;
                text-align: center;
                font-size: 18px;
                margin: 30px;
                text-transform: uppercase;
                font-weight: bold;
            }
            .load {
                position: relative;
                margin: 2px 5px;
                padding-bottom: 5px;
                border-bottom: solid 2px transparent;
                cursor: pointer;
                transition: 0.5s;
            }
            .load.show {
                border-bottom-color: royalblue;
            }

            .form a {
                color: white;
                text-decoration: none;
                display: block;
                margin: 15px;
                text-align: center;
                transition: 0.5s;
            }
            .form a:hover {
                color: royalblue;
            }

            .login {
                display: none;
            }
            .reg {
                display: none;
            }

            .show-page {
                display: block;
                animation: show-page 1s;
            }

            @keyframes show-page {
                0% {
                    opacity: 0;
                }
                100% {
                    opacity: 1;
                }
            }
        </style>
        <title>Registration page</title>
    </head>
    <body>
            <form action="/login" method="post" name="login"  class="form">
            <div class="action">
                <span class="load show" id="login-action" onclick="openLoginPage()"
                      >Login</span
                >
            </div>
            <div  class="login show-page">
                <input type="text" name="email" placeholder="Email" />
                <input type="password" name="Password" placeholder="Password" />
                <button>Login</button>
                <a href = "/Register">Register</a>
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
