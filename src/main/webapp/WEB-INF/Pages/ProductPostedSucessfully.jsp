<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Campus TradeX</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet"/>
         <%@include file="Navbar.jsp" %>
    </head>
    <body style="background-color: #110929">
  <div style="padding-left: 32px; padding-right: 32px; padding-top: 132px; padding-bottom: 132px; left: 450px; top: 123px; position: absolute; background: white; box-shadow: 0px 12px 48px rgba(0, 34, 51, 0.06); border-radius: 12px; border: 1px #EBEEF7 solid; flex-direction: column; justify-content: flex-start; align-items: center; gap: 32px; display: inline-flex">
    <div style="width: 90px; height: 90px; position: relative">
      <div style="width: 90px; height: 90px; left: 0px; top: 0px; position: absolute"></div>
      <i class="fas fa-check-circle" style="color: #27C200;font-size: 100px"></i>
    </div>
    <div style="flex-direction: column; justify-content: flex-start; align-items: center; gap: 24px; display: flex">
      <div style="width: 920px; text-align: center; color: #191F33; font-size: 40px; font-family: Nunito Sans; font-weight: 600; line-height: 48px; word-wrap: break-word">Your product is successfully published</div>
    </div>
    <div style="justify-content: flex-start; align-items: flex-start; gap: 12px; display: inline-flex">
        <a href="/myproduct">
      <div style="padding-left: 20px; padding-right: 20px; background: white; border-radius: 4px; border: 1px #6742D6 solid; justify-content: center; align-items: center; gap: 8px; display: flex">
        <div style="text-align: center; color: #110929; font-size: 16px; font-family: Nunito Sans; font-weight: 700; text-transform: capitalize; line-height: 50px; word-wrap: break-word">Ok</div>
      </div>
        </a>
        <a href="/">
      <div style="padding-left: 20px; padding-right: 20px; background: #110929; border-radius: 4px; justify-content: center; align-items: center; gap: 8px; display: flex">
        <div style="text-align: center; color: white; font-size: 16px; font-family: Nunito Sans; font-weight: 700; text-transform: capitalize; line-height: 50px; word-wrap: break-word">View Product</div>
        <div style="width: 24px; height: 24px; position: relative">
          <div style="width: 24px; height: 24px; left: 0px; top: 0px; position: absolute;padding-top: 5px">
            <div style="width: 24px; height: 24px; left: 0px; top: 0px; position: absolute"></div>
            <i class="fas fa-arrow-right" style="color: white;font-size: 18px;"></i>
          </div>
        </div>
      </div>
        </a>
    </div>
  </div>
        <%@include file="sellersection.jsp" %>
    </body>
</html>
