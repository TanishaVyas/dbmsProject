<%-- 
    Document   : login
    Created on : 08-Apr-2024, 8:12:58 PM
    Author     : meetu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <!-- Link to Tailwind CSS here -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.1.2/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="min-h-screen flex items-center justify-center bg-[#110929]">

    <div class="max-w-4xl w-full space-y-8 text-white">
        <h2 class="text-center text-5xl font-semibold" th:text="${title}">Login</h2>
        <p class="text-center text-sm" th:text="${subtext}">
            If you don't have an account register 
            <a href="#" class="text-blue-500 underline" th:href="@{/register}" th:text="${subtextLink}">Register here!</a>
        </p>
        
        <div class="flex justify-center">
            <!-- Replace with your path to the image or use an image tag if needed -->
            <img src="images/saly-14.png" alt="Illustration">
        </div>
        
        <form class="mt-8 space-y-6" action="#" method="POST">
            <input type="hidden" name="remember" value="true">
            <div class="rounded-md shadow-sm -space-y-px">
                <div>
                    <input id="username" name="username" type="text" required class="w-full px-3 py-2 mb-3 border placeholder-[#a7a3ff] text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500" placeholder="Enter username">
                </div>
                <div>
                    <input id="password" name="password" type="password" required class="w-full px-3 py-2 border placeholder-[#a7a3ff] text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500" placeholder="Password">
                </div>
            </div>
            <div class="flex items-center justify-between">
                <div class="text-sm">
                    <a href="#" class="text-[#b0b0b0]" th:href="@{/forgot-password}" th:text="${forgotPasswordText}">Forgot password?</a>
                </div>
            </div>
            <div>
                <button type="submit" class="w-full py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-[#4d47c3] hover:bg-[#3730a3] focus:outline-none">Login</button>
            </div>
        </form>
    </div>

</body>
</html>




