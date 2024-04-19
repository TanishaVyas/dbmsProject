<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <!-- Link to Tailwind CSS here -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.1.2/dist/tailwind.min.css" rel="stylesheet">
</head>
<body action="/login" method="post" name="login" method="post" style="background-color: #110929;">

    <div style="width: 1440px; height: 829px; position: relative; background: #110929">
        <div style="width: 308px; height: 173px; left: 153px; top: 169px; position: absolute">
            <div style="left: 27px; top: 0px; position: absolute; color: white; font-size: 50px; font-family: Poppins; font-weight: 600; word-wrap: break-word">Login</div>
            <div style="width: 308px; height: 54px; left: 0px; top: 119px; position: absolute">
                <div style="width: 308px; left: 0px; top: 0px; position: absolute; color: white; font-size: 16px; font-family: Poppins; font-weight: 400; word-wrap: break-word">If you don’t have an account register</div>
                <div style="width: 308px; left: 0px; top: 30px; position: absolute"><span style="color: white; font-size: 16px; font-family: Poppins; font-weight: 400; word-wrap: break-word">You can   </span><a href="#" style="color: #4D47C3; font-weight: 600; text-decoration: underline;">Register here !</a></div>
            </div>
        </div>
        <div style="width: 370px; height: 377px; left: 918px; top: 169px; position: absolute">
            <div style="width: 369px; height: 62px; left: 0px; top: 73px; position: absolute">
                <div style="width: 369px; height: 62px; left: 0px; top: 0px; position: absolute">
                    <div style="position: relative;">
                        <input type="text" name="Email" placeholder="Email" required class="w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500" placeholder="Enter Username">
                    </div>
                </div>
            </div>
            <div style="width: 370px; height: 99px; left: 0px; top: 173px; position: absolute">
                <div style="width: 369px; height: 62px; left: 0px; top: 0px; position: absolute">
                    <div style="width: 369px; height: 62px; left: 0px; top: 0px; position: absolute">
                        <div style="position: relative;">
                            <input type="password" name="Password" placeholder="Password" required class="w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500" placeholder="Enter Password">
                        </div>
                    </div>
                </div>
                <div style="left: 250px; top: 79px; position: absolute; font-size: 13px; font-family: Poppins; font-weight: 400; word-wrap: break-word">
                    <a href="#" style="color: #B0B0B0; text-decoration: underline;">Forgot password ?</a>
                </div>
            </div>
            <div style="width: 369px; height: 59px; left: 0px; top: 318px; position: absolute">
                <button  type="submit" style="width: 100%; height: 100%; background: #4D47C3; box-shadow: 0px 4px 61px rgba(77, 71, 195, 0.40); border-radius: 9px; border: none; cursor: pointer;">
                    <div style="color: white; font-size: 16px; font-family: Poppins; font-weight: 500; text-align: center;">Login</div>
                </button>
            </div>
            <div style="left: 0px; top: 0px; position: absolute; color: white; font-size: 30px; font-family: Poppins; font-weight: 500; word-wrap: break-word">Login</div>
        </div>
    </div>
</body>
</html>