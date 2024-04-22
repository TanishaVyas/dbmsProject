<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Campus TradeX</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet"/>
         <%@include file="Navbar.jsp" %>
         <style>
        .homepg {
            background-color: rgba(127, 255, 212, 1);
            width: 100%;
            height: 829px;
            display: flex;
            align-items: flex-start;
            flex-shrink: 0;
            position: relative;
            overflow: hidden;
        }

        .text {
            color: rgba(69, 76, 96, 1);
            width: 804px;
            height: auto;
            text-align: left;
            line-height: 40px;
            position: absolute;
            top: 430px;
            left: 480px;
            font-family: Poppins;
            font-size: 36px;
            font-weight: 400;
            font-stretch: normal;
            font-style: normal;
            text-decoration: none;
        }

        

        .button {
            background-color: rgba(77, 71, 195, 1);
            width: 390px;
            height: 90px;
            display: flex;
            justify-content: center;
            align-items: flex-end;
            gap: 10px;
            padding: 16px 32px;
            flex-shrink: 0;
            border-radius: 66px;
            position: absolute;
            top: 560px;
            left: 677px;
        }

        .button span {
            color: rgba(255, 255, 255, 1);
            width: 309px;
            height: auto;
            text-align: center;
            line-height: normal;
            align-self: stretch;
            font-family: Poppins;
            font-size: 48px;
            font-weight: 600;
            text-decoration: none;
        }

        .quarter-circle {
            width: 500px;
            height: 500px;
            background-color: rgba(77, 71, 195, 0.40);
            border-radius: 0 0 0 500px;
            position: absolute;
        }

        .top-right {
            top: 0;
            right: 0;
        }

        .bottom-left {
            bottom: 0;
            left: 0;
            transform:rotate(180deg);
        }
    </style>
    </head>
    <body style="background-color: rgba(127, 255, 212, 1)">
        <div class="homepg">
    <div class="text">
        <span>Buy and sell everything from used textbooks to electronics equipments at one place!</span>
    </div>
    
        <div style="width: 670px; height: 181px; left: 342px; top: 150px; position: absolute"><span style="color: black; font-size: 94px; font-family: Inter; font-weight: 800; line-height: 90px; word-wrap: break-word">Virtual Hub for <br/></span><span style="color: #4D47C3; font-size: 94px; font-family: Inter; font-weight: 800; line-height: 90px; word-wrap: break-word">Campus Deals<br/></span></div>
    
        <div class="button" style="text-decoration: none;">
        <a href="/Register" style="text-decoration: none; color: inherit;">
            <span>Get Started</span>
        </a>
    </div>
    <div class="quarter-circle top-right"></div>
    <div class="quarter-circle bottom-left"></div>
</div>
    
</div>
    </body>
</html>
