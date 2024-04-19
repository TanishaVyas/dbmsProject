<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.mycompany.dbms.Usermodel.Product" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seller Product page</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet"/>
        <%@include file="Navbar.jsp" %>
        <%
   List<Product> productList = (List<Product>) request.getAttribute("productList");
        %>
    </head>
    <body>
        <form action="/myproduct" method="post" name="myproduct" class="form">
            <div class="action">
                <div style="width: 1440px; height: 829px; position: relative; background: white">
                    <div style="width: 996px; left: 450px; top: 90px; position: absolute; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 32px; display: inline-flex">
                        <div style="width: 984px; justify-content: space-between; align-items: center; display: inline-flex">
                            <div style="width: 380px; height: 56px; position: relative; background: white; border-radius: 5px; border: 1px #EBEEF7 solid">
                                <input type="text" placeholder="Product title, keyword..." style="width: calc(100% - 48px); height: 100%; padding-left: 48px; border: none; outline: none; font-size: 16px; color: #939AAD; font-family: Nunito; font-weight: 400; line-height: 24px; border-radius: 5px;">
                                <div style="width: 24px; height: 24px; left: 18px; top: 16px; position: absolute">
                                    <i class="fas fa-search" style="font-size: 24px;color: #00AAFF"></i>
                                </div>
                            </div>

                            <div style="justify-content: flex-start; align-items: flex-start; gap: 10px; display: flex">
                                <div style="position: relative; display: inline-block;padding-right: 16px">
                                    <select name="category" style="width: 164px; height: 44px; padding-left: 16px;background: white; color: #464D61; border-radius: 4px; border: 1px #EDEFF5 solid; cursor: pointer;" onchange="selectOption(this.value)">
                                        <option value="all">All Category</option>
                                        <option value="egl tools">EGL Tools</option>
                                        <option value="textbooks & notes">Textbooks & Notes</option>
                                        <option value="electronic equipment">Electronic Equipment</option>
                                    </select>
                                </div>

                            </div>
                        </div>
                        <div style="width: 996px; height: 563px; position: relative">
                            <div style="padding-bottom: 20px; left: 0px; top: 0px; position: absolute; background: white; box-shadow: 0px -1px 0px #EBEEF7 inset; justify-content: center; align-items: center; gap: 24px; display: inline-flex">

                                <div style="width: 328px; color: #464D61; font-size: 14px; font-family: Nunito; font-weight: 600; line-height: 20px; word-wrap: break-word">Products</div>
                                <div style="width: 132px; color: #464D61; font-size: 14px; font-family: Nunito; font-weight: 600; line-height: 20px; word-wrap: break-word">Date</div>
                                <div style="width: 132px; color: #464D61; font-size: 14px; font-family: Nunito; font-weight: 600; line-height: 20px; word-wrap: break-word">Prices</div>
                                <div style="width: 132px; color: #464D61; font-size: 14px; font-family: Nunito; font-weight: 600; line-height: 20px; word-wrap: break-word">Status</div>
                                <div style="width: 164px; color: #464D61; font-size: 14px; font-family: Nunito; font-weight: 600; line-height: 20px; word-wrap: break-word">Action</div>

                            </div>
                            
                        </div>
                    </div>
                    <%@include file="sellersection.jsp" %>
                </div>
        </form>
    </div>
    <script>
        function selectOption(option) {
            console.log("Selected option:", option);
        }
    </script>
</body>
</html>
