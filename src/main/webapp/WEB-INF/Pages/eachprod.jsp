<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.mycompany.dbms.Usermodel.allproduct" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Campus TradeX</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.1.2/dist/tailwind.min.css">
        <%@include file="Navbar.jsp" %>
        <style>
            /* Custom Styles */
            .product-table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
            }

            .product-table th,
            .product-table td {
                border: 1px solid #e2e8f0;
                padding: 10px;
                text-align: left;
            }

            .product-table th {
                background-color: #4D47C3;
                color: #fff;
            }

            .action-links {
                display: flex;
                justify-content: space-between;
            }

            .action-links a {
                text-decoration: none;
                color: #4D47C3;
                padding: 8px 16px;
                border: 2px solid #4D47C3;
                border-radius: 5px;
                transition: all 0.3s ease;
            }

            .action-links a:hover {
                background-color: #4D47C3;
                color: #fff;
            }

            .error-message {
                color: red;
                font-weight: bold;
                margin-bottom: 10px;
            }
        </style>
    </head>
    <body class="bg-gray-100">
        <div class="container mx-auto p-4">
            <div style="padding: 8px;
                 border-radius: 2px;
                 border: 2px #2DA5F3 solid;
                 display: flex;
                 align-items: center;">

                <a href="/cart" style="color: #2DA5F3;
                   font-size: 14px;
                   font-family: Public Sans;
                   font-weight: 700;
                   text-transform: uppercase;
                   line-height: 48px;
                   letter-spacing: 0.17px;
                   text-decoration: none;">
                    Cart
                </a>
            </div>
            <form action="/categorywiseeachprod" method="">
                <div style="justify-content: flex-start; align-items: flex-start; gap: 10px; display: flex">
                    <div style="position: relative; display: inline-block;padding-right: 16px">
                        <select name="category" style="width: 164px; height: 44px; padding-left: 16px;background: white; color: #464D61; border-radius: 4px; border: 1px #EDEFF5 solid; cursor: pointer;" onchange="selectOption(this.value)">
                            <option value="all">All Category</option>
                            <option value="egl tools">EGL Tools</option>
                            <option value="textbooks & notes">Textbooks & Notes</option>
                            <option value="electronic equipment">Electronic Equipment</option>
                        </select>
                    </div>
                    <button>submit</button>
                </div>
            </form>
            <table class="product-table">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Features</th>
                        <th>Price</th>
                        <th>Stock Available</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <% List<allproduct> productList = (List<allproduct>) request.getAttribute("allproductsList");
                    if (productList != null) {
                        for (allproduct product : productList) { %>
                    <tr>
                <form action="AddToCart" method="GET"> <!-- Update the action URL accordingly -->
                    <td><%= product.getName() %></td>
                    <td><%= product.getDescription() %></td>
                    <td><%= product.getFeatures() %></td>
                    <td>Price Rs. <%= product.getPrice() %></td>
                    <td><%= product.getStock() %></td>
                    <td class="action-links">
                        <input type="hidden" name="productId" value="<%= product.getProductId() %>">
                        <input type="hidden" name="productName" value="<%= product.getName() %>">
                        <input type="hidden" name="productDescription" value="<%= product.getDescription() %>">
                        <input type="hidden" name="productFeatures" value="<%= product.getFeatures() %>">
                        <input type="hidden" name="productPrice" value="<%= product.getPrice() %>">
                        <input type="number" id="quantity" name="quantity" required class="w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500" placeholder="Enter quantity(default 1)">
                        <button type="submit">Add to Cart</button>
                    </td>
                </form>
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
    </body>
</html>