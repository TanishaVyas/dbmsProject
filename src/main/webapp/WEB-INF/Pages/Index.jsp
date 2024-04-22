<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Campus TradeX</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet"/>
         <%@include file="Navbar.jsp" %>
         <style>
        .product-container {
            width: 234px;
            height: 320px;
            position: relative;
            background: white;
            border-radius: 3px;
            overflow: hidden;
            border: 1px #E4E7E9 solid;
            margin: 10px;
            float: left;
        }

        .product-description {
            width: 189px;
            height: 131px;
            position: absolute;
            left: 26px;
            top: 115px;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: flex-start;
            gap: 8px;
        }

        .product-description-text {
            width: 202px;
            height: 91px;
            color: #191C1F;
            font-size: 14px;
            font-family: 'Public Sans', sans-serif;
            font-weight: 400;
            line-height: 20px;
            word-wrap: break-word;
        }

        .product-price {
            display: flex;
            justify-content: flex-start;
            align-items: flex-start;
            gap: 4px;
        }

        .price-text {
            color: #2DA5F3;
            font-size: 14px;
            font-family: 'Public Sans', sans-serif;
            font-weight: 600;
            line-height: 20px;
            word-wrap: break-word;
        }

        .product-name {
            width: 116px;
            position: absolute;
            left: 63px;
            top: 47px;
            color: #191C1F;
            font-size: 14px;
            font-family: 'Public Sans', sans-serif;
            font-weight: 400;
            line-height: 20px;
            word-wrap: break-word;
        }

        .view-product-btn, .add-to-cart-btn {
            width: 100px;
            height: 38px;
            position: absolute;
            border-radius: 10px;
            overflow: hidden;
            cursor: pointer;
            font-family: 'Public Sans', sans-serif;
            font-weight: 500;
            text-align: center;
            line-height: 38px;
        }

        .view-product-btn {
            left: 10px;
            top: 264px;
            background: #E4E7E9;
            color: #191C1F;
        }

        .add-to-cart-btn {
            left: 120px;
            top: 264px;
            background: #4D47C3;
            color: white;
        }
    </style>
    </head>
    <body style="background-color: #110929">
        <%@include file="customersection.jsp" %>
  <div style="padding-top: 40px; padding-bottom: 72px; left: 48px; top: 88px; position: absolute; justify-content: flex-start; align-items: flex-start; gap: 24px; display: inline-flex">
    <div style="left: 120px ;width: 984px; height: 2128px; position: relative">
<div style="width: 911px; height: 44px; justify-content: flex-end; align-items: flex-start; gap: 0px; display: inline-flex">
    <div style="width: 460px; height: 44px; padding-left: 16px; padding-right: 96px; padding-top: 12px; padding-bottom: 12px; background: white; border-radius: 2px; border: 1px #E4E7E9 solid; display: flex; align-items: center;">
        <div style="flex: 1;"></div>
        <input type="text" style="width: calc(100% - 20px); padding: 8px; color: #77878F; font-size: 14px; font-family: 'Public Sans', sans-serif; font-weight: 400; line-height: 20px; border: none; outline: none;" placeholder="Search for anything...">
        <div style="width: 20px; height: 20px; position: relative;"></div>
    </div>
    <div style="width: 180px; height: 44px; position: relative; left: 350px; background: white; border-radius: 2px; overflow: hidden; border: 1px #E4E7E9 solid;">
        <select style="width: 100%; height: 100%; background: white; border: 1px #E4E7E9 solid; border-radius: 2px; font-size: 14px; font-family: Public Sans; font-weight: 400; line-height: 20px;">
            <option value="" disabled selected hidden>Categories</option>
            <option value="egl_tools">EGL Tools</option>
            <option value="textbooks_notes">Textbooks & Notes</option>
            <option value="electronic_equipment">Electronic Equipment</option>
        </select>
    </div>
</div>
      <div style="top: 50px;left: 330px ;width: 984px; position: relative">
            <div style="width: 984px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 16px; display: inline-flex">
                <%
                // Define product data (replace this with your actual product data)
                String[] products = {"Product 1", "Product 2", "Product 3", "Product 4", "Product 5", "Product 6", "Product 7", "Product 8", "Product 9", "Product 10", "Product 11", "Product 12", "Product 13", "Product 14", "Product 15", "Product 16", "Product 17", "Product 18", "Product 19", "Product 20", "Product 21", "Product 22", "Product 23", "Product 24"};
                
                // Calculate number of rows
                int numRows = (int) Math.ceil((double) products.length / 4);
                
                // Loop through product data to generate product displays
                for (int i = 0; i < numRows; i++) {
                %>
                <div style="display: flex; justify-content: space-between; width: 984px;">
                    <% for (int j = 0; j < 4; j++) { %>
                        <div class="product-container">
                            <div class="product-description">
                                <div class="product-description-text">Description</div>
                                <div class="product-price">
                                    <div class="price-text">Rs.</div>
                                </div>
                            </div>
                            <div class="product-name"><%= products[i * 4 + j] %></div>
                            <!-- "View Product" button -->
                            <button class="view-product-btn">View Product</button>
                            <!-- "Add to Cart" button -->
                            <button class="add-to-cart-btn">Add to Cart</button>
                        </div>
                    <% } %>
                </div>
                <%
                }
                %>
            </div>
            <script>
                document.querySelectorAll(".view-product-btn").forEach(function(button) {
                    button.addEventListener("click", function() {
                        // logic
                        alert("Navigating to its product page!"); 
                    });
                });

                document.querySelectorAll(".add-to-cart-btn").forEach(function(button) {
                    button.addEventListener("click", function() {
                        //logic
                        alert("Item added to cart!"); 
                    });
                });
            </script>
        </div>
    </div>
  </div>
</body>
</html>