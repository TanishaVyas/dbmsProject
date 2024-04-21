<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.mycompany.dbms.Usermodel.allproduct" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Product</title>
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
        </style>
    </head>
    <body class="bg-gray-100">
        <div class="container mx-auto p-4">
            <table class="product-table">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Features</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <% List<allproduct> productList = (List<allproduct>) request.getAttribute("allproductsList");
                    if (productList != null) {
                        for (allproduct product : productList) { %>
                    <tr>
                        <td><%= product.getName() %></td>
                        <td><%= product.getDescription() %></td>
                        <td><%= product.getFeatures() %></td>
                        <td>Price Rs. <%= product.getPrice() %></td>
                        <td class="action-links">
                            <a href="AddToCart?productId=<%= product.getProductId() %>&productName=<%= product.getName() %>&productDescription=<%= product.getDescription() %>&productFeatures=<%= product.getFeatures() %>&productPrice=<%= product.getPrice() %>">Add to Cart</a>
                            <a href="#">Buy Now</a>

                        </td>
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
