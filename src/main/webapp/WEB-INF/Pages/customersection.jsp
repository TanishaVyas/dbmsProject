<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.mycompany.dbms.Usermodel.Trial" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer section Page</title>
    </head>
    <body>
        <form action="/customersection" method="post" name="customersection" class="form">
    <div class="action">
        <div style="padding-top: 32px; padding-bottom: 32px; left: 60px; top: 144px; position: absolute; background: white; box-shadow: 0px 12px 48px rgba(0, 34, 51, 0.06); border-radius: 12px; border: 1px #EBEEF7 solid; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 24px; display: inline-flex">
    <div id="another-div" style="padding-left: 32px; justify-content: flex-start; align-items: center; gap: 14px; display: inline-flex">
        <div style="flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 12px; display: inline-flex">
                     <%
        Trial user = (Trial) session.getAttribute("user");
    %>
            <div id="full-name-display" style="color: #191F33; font-size: 20px; font-family: Nunito; font-weight: 600; line-height: 20px; word-wrap: break-word">Customer <%= user.getName() %></div>
            <div style="color: #767E94; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">Customer</div>
        </div>
    </div>
    <div style="width: 296px; height: 0px; border: 1px #EBEEF7 solid"></div>
    <div style="flex-direction: column; justify-content: flex-start; align-items: flex-start; display: flex">
        <a href="/accountsection" id="home">
        <div onclick="changeColor('home')" style="padding-left: 24px; padding-right: 24px; padding-top: 12px; padding-bottom: 12px; justify-content: center; align-items: center; gap: 16px; display: inline-flex">
            <div style="width: 24px; height: 24px; position: relative">
                <i class="fas fa-th-large" id="home-icon" style="font-size: 24px;color: #767E94"></i>
            </div>
            <div style="width: 208px; color: #767E94; font-size: 16px; font-family: Nunito; font-weight: 600; line-height: 24px;text-decoration: none; word-wrap: break-word">Home</div>
        </div>
        </a>
        <div onclick="changeColor('cart')" style="padding-left: 24px; padding-right: 24px; padding-top: 12px; padding-bottom: 12px; justify-content: center; align-items: center; gap: 16px; display: inline-flex">
            <div style="width: 24px; height: 24px; position: relative">
                <i class="fas fa-shopping-cart" id="cart-icon" style="font-size: 24px;color: #767E94"></i>
            </div>
            <a href="/cart" id="cart" style="width: 208px; color: #767E94; font-size: 16px; font-family: Nunito; font-weight: 600; line-height: 24px; text-decoration: none;word-wrap: break-word">Cart</a>
        </div>
        <div onclick="changeColor('account-settings')" style="padding-left: 24px; padding-right: 24px; padding-top: 12px; padding-bottom: 12px; justify-content: center; align-items: center; gap: 16px; display: inline-flex">
            <div style="width: 24px; height: 24px; position: relative">
                <i class="fas fa-cog" id="account-settings-icon" style="font-size: 24px;color:#767E94;"></i>
            </div>
            <a href="/accset" style="width: 208px; color: #767E94; font-size: 16px; font-family: Nunito;text-decoration: none; font-weight: 600; line-height: 24px; word-wrap: break-word">Account Settings</a>
        </div>
        <div onclick="changeColor('sign-out')" style="padding-left: 24px; padding-right: 24px; padding-top: 12px; padding-bottom: 12px; justify-content: center; align-items: center; gap: 16px; display: inline-flex">
            <div style="width: 24px; height: 24px; position: relative">
                <i class="fas fa-sign-out-alt" id="sign-out-icon" style="font-size: 24px;color:#767E94;"></i>
            </div>
            <a href="/signout" style="width: 208px; color: #767E94; font-size: 16px; font-family: Nunito;text-decoration: none; font-weight: 600; line-height: 24px; word-wrap: break-word">Sign Out</a>
        </div>
    </div>
</div>

    </div>
</form>
<script>
    function changeColor(id) {
        var element = document.getElementById(id);
        var icon = document.getElementById(id + "-icon");
        if (element.style.backgroundColor === 'rgb(232, 247, 255)') {
            element.style.backgroundColor = 'inherit';
            element.style.boxShadow = 'none';
            element.style.color = '#767E94';
            icon.style.color = '#767E94';
        } else {
            element.style.backgroundColor = '#E8F7FF';
            element.style.boxShadow = '2px 0px 0px #00AAFF inset';
            element.style.color = '#00AAFF';
            icon.style.color = '#00AAFF';
        }
    }
</script>
    </body>
</html>
