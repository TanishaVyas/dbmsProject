<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.mycompany.dbms.Usermodel.cart" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.1.2/dist/tailwind.min.css">
        <%@include file="Navbar.jsp" %>
        <style>
            .product-table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
            }

            .product-table th,
            .product-table td {
                padding: 10px;
                text-align: left;
            }

            .product-table th {
                background-color: #4D47C3;
                color: #fff;
            }

            .product-row td {
                padding-top: 10px;
                padding-bottom: 10px;
            }

            .arrow-left {
                display: inline-block;
                width: 40px;
                color: #2DA5F3;
                font-style: normal;
                font-weight: bold;
                text-align: center;
            }

            .arrow-right {
                display: inline-block;
                width: 40px;
                color: white;
                font-style: normal;
                font-weight: bold;
                text-align: center;
            }

            .arrow-left::before {
                content: "\2190";
            }

            .arrow-right::after {
                content: "\2192";
            }
        </style>
    </head>
    <body>
        <form action="/buy" method="post" name="cart" class="form">
            <div class="action">
                <div style="width: 1440px;
                     height: 829px;
                     position: relative;
                     background: white">
                    <!-- Cart Items -->
                    <div style="left: 40px;
                         top: 138px;
                         position: absolute;
                         background: white;
                         border-radius: 4px;
                         display: flex;
                         flex-direction: column;">
                        <!-- Cart Header -->
                        <div style="padding: 20px;
                             gap: 10px;
                             display: flex;
                             align-items: center;
                             background: #F2F4F5;">
                            <div style="width: 200px;">Product ID</div>
                            <div style="width: 400px;">Name</div>
                            <div style="width: 100px;">Quantity</div>
                            <div style="width: 100px;">Price</div>
                        </div>
                        <!-- Cart Items List -->
                        <div class="product-table">
                            <table>
                                <tbody>
                                    <!-- Iterate over cart items -->
                                    <% 
                                        List<cart> productList = (List<cart>) request.getAttribute("allproductList");
                                        if (productList != null) {
                                            for (cart product : productList) { %>
                                    <tr class="product-row">
                                        <td style="width: 200px;"><%= product.getProductId() %></td>
                                        <td style="width: 400px;"><%= product.getName() %></td>
                                        <td style="width: 100px;"><%= product.getQuantity() %></td>
                                        <td style="width: 100px;"><%= product.getPrice() %></td>
                                    </tr>
                                    <%     }
                            } else { %>
                                    <tr>
                                        <td colspan="5">No products available</td>
                                    </tr>
                                    <% } %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- Cart Controls -->
                    <div style="padding: 24px;
                         justify-content: space-between;
                         align-items: center;
                         display: flex;">
                        <div style="padding: 8px;
                             border-radius: 2px;
                             border: 2px #2DA5F3 solid;
                             display: flex;
                             align-items: center;">
                            <div><i class="fas fa-arrow-left arrow-left"></i></div>
                            <a href="/accountsection" style="color: #2DA5F3;
                               font-size: 14px;
                               font-family: Public Sans;
                               font-weight: 700;
                               text-transform: uppercase;
                               line-height: 48px;
                               letter-spacing: 0.17px;
                               text-decoration: none;">
                                Return to Shop
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Buy button -->
            <div style="padding: 24px; justify-content: center; align-items: center; display: flex;">
                <button  href="/buy" type="submit" style="padding: 8px 16px; border: none; background-color: #2DA5F3; color: white; font-size: 16px; font-weight: bold; text-transform: uppercase; cursor: pointer;">Buy Now</button>
            </div>
        </form>

    </body>
</html>
