<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout Success Page</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet"/>
         <%@include file="Navbar.jsp" %>
    </head>
    <body style="background: #110929">
  <div style="padding-top: 124px; padding-bottom: 124px; left: 60px; top: 153px; position: absolute; flex-direction: column; justify-content: center; align-items: center; gap: 32px; display: inline-flex">
    <div style="flex-direction: column; justify-content: center; align-items: center; gap: 24px; display: flex">
      <div style="width: 88px; height: 88px; position: relative">
        <div style="width: 88px; height: 88px; left: 0px; top: 0px; position: absolute"></div>
        <i class="fas fa-check-circle" style="font-size: 80px;color: greenyellow"></i>
      </div>
      <div style="flex-direction: column; justify-content: center; align-items: center; gap: 12px; display: flex">
        <div style="width: 1320px; text-align: center; color: #FBF8F8; font-size: 24px; font-family: Public Sans; font-weight: 600; line-height: 32px; word-wrap: break-word">Your order is successfully placed</div>
      </div>
    </div>
    <div style="justify-content: flex-start; align-items: flex-start; gap: 12px; display: inline-flex">
        
        <a href="/accountsection">
      <div style="padding-left: 24px; padding-right: 24px; background: #5D25A7; border-radius: 2px; justify-content: center; align-items: center; gap: 8px; display: flex">
        <div style="color: white; font-size: 14px; font-family: Public Sans; font-weight: 700; text-transform: uppercase; line-height: 48px; letter-spacing: 0.17px; word-wrap: break-word">Go to Main Page</div>
        <div style="width: 20px; height: 20px; position: relative">
          <div style="width: 20px; height: 20px; left: 0px; top: 0px; position: absolute"></div>
          <i class="fas fa-layer-group" style="font-size: 20px; color: white"></i>
        </div>
      </div>
            </a>
    </div>
  </div>
    </body>
</html>