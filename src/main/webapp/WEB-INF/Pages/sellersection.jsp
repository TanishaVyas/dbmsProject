<%-- 
    Document   : sellersection
    Created on : 15-Apr-2024, 3:55:28 PM
    Author     : meetu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seller section</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet"/>
    </head>
    <body>
        <form action="/sellersection" method="post" name="sellersection" class="form">
            <div class="action">
                <div style="padding-top: 32px; padding-bottom: 32px; left: 60px; top: 144px; position: absolute; background: white; box-shadow: 0px 12px 48px rgba(0, 34, 51, 0.06); border-radius: 12px; border: 1px #EBEEF7 solid; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 24px; display: inline-flex">
                    <div id="another-div" style="padding-left: 32px; justify-content: flex-start; align-items: center; gap: 14px; display: inline-flex">

                        <div style="flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 12px; display: inline-flex">
                            <div id="full-name-display" style="color: #191F33; font-size: 20px; font-family: Nunito; font-weight: 600; line-height: 20px; word-wrap: break-word">Seller Name</div>
                            <div style="color: #767E94; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">Seller</div>
                        </div>
                    </div>
                    <div style="width: 296px; height: 0px; border: 1px #EBEEF7 solid"></div>
                    <div style="flex-direction: column; justify-content: flex-start; align-items: flex-start; display: flex">
                        <div style="padding-left: 24px; padding-right: 24px; padding-top: 12px; padding-bottom: 12px; justify-content: center; align-items: center; gap: 16px; display: inline-flex">
                            <div style="width: 24px; height: 24px; position: relative">
                                <i class="fas fa-th-large"style="font-size: 24px;color:#767E94"></i>
                            </div>
                            <div style="width: 208px; color: #767E94; font-size: 16px; font-family: Nunito; font-weight: 600; line-height: 24px; word-wrap: break-word">Orders Received</div>
                        </div>
                        <a href="/myproduct" >
                            <div style="padding-left: 24px; padding-right: 24px; padding-top: 12px; padding-bottom: 12px; justify-content: center; align-items: center; gap: 16px; display: inline-flex">
                                <div style="width: 24px; height: 24px; position: relative">
                                    <i class="far fa-plus-square" style="font-size: 24px;color:#767E94"></i>
                                </div>
                                <div style="width: 208px; color: #767E94; font-size: 16px; font-family: Nunito; font-weight: 600; line-height: 24px; word-wrap: break-word">Post a Product</div>
                            </div>
                        </a>
                        
                        <div style="padding-left: 24px; padding-right: 24px; padding-top: 12px; padding-bottom: 12px; justify-content: center; align-items: center; gap: 16px; display: inline-flex">
                            <div style="width: 24px; height: 24px; position: relative">
                                <i class="fas fa-clipboard-list" style="font-size: 24px;color:#767E94"></i>
                            </div>
                            <div style="width: 208px; color: #767E94; font-size: 16px; font-family: Nunito; font-weight: 600; line-height: 24px; word-wrap: break-word">My Products</div>
                        </div>
                        <div style="padding-left: 24px; padding-right: 24px; padding-top: 12px; padding-bottom: 12px; justify-content: center; align-items: center; gap: 16px; display: inline-flex">
                            <div style="width: 24px; height: 24px; position: relative">
                                <i class="fas fa-cog" style="font-size: 24px;color: #767E94;"></i>
                            </div>
                            <a href="/accset" style="width: 208px; color: #767E94; font-size: 16px; font-family: Nunito;text-decoration: none; font-weight: 600; line-height: 24px; word-wrap: break-word">Account Settings</a>
                        </div>
                        <div style="padding-left: 24px; padding-right: 24px; padding-top: 12px; padding-bottom: 12px; display: flex; align-items: center; gap: 16px;">
                            <div style="width: 24px; height: 24px; color: #767E94;">
                                <i class="fas fa-sign-out-alt" style="width: 100%; height: 100%; font-size: 24px;"></i>
                            </div>
                            <div style="color: #767E94; font-size: 16px; font-family: Nunito; font-weight: 600; line-height: 24px; word-wrap: break-word; max-width: 208px;">Sign Out</div>
                        </div>

                    </div>
                </div>
        </form>
    </div>
</body>
</html>
