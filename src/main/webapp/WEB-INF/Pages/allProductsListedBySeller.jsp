<%@ page import="java.util.List" %>
<%@ page import="com.mycompany.dbms.Usermodel.Product" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Campus TradeX</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet"/>
        <%@include file="Navbar.jsp" %>
        <style>
            .table-container {
                width: 996px;
                height: 563px;
                position: relative;
            }

            .table-header {
                padding-bottom: 20px;
                left: 0px;
                top: 0px;
                position: absolute;
                background: white;
                box-shadow: 0px -1px 0px #EBEEF7 inset;
                justify-content: center;
                align-items: center;
                gap: 24px;
                display: flex;
                width: 100%; /* Ensure full width */
                padding-left: 20px; /* Adjust left padding as needed */
            }

            .table-header > div {
                flex: 1; /* Equal width for all divs */
                color: #464D61;
                font-size: 14px;
                font-family: Nunito;
                font-weight: 600;
                line-height: 20px;
                word-wrap: break-word;
                text-align: center; /* Center align text */
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 50px;
            }

            th, td {
                padding: 8px;
                border: 1px solid #EBEEF7;
                text-align: left;
            }
        </style>
    </head>
    <body>
        <form action="/myproduct" method="post" name="myproduct" class="form">
            <div class="action">
                <div style="width: 1440px; height: 829px; position: relative; background: white">
                    <div style="width: 996px; left: 450px; top: 90px; position: absolute; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 32px; display: inline-flex">
                        <div style="width: 984px; justify-content: space-between; align-items: center; display: inline-flex">
                            

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
                        <div class="table-container">
                            <div class="table-header">
                                <div>Product ID</div>
                                <div>Name</div>
                                <div>Price</div>
                                <div>Stock</div>
                                
                            </div>
                            <table>
                                <tbody>
                                    <% 
                                        // Retrieve the productList from request attribute
                                        List<Product> productList = (List<Product>) request.getAttribute("productList");
                                        
                                        // Iterate over the productList and display product details
                                        for (Product product : productList) {
                                    %>
                                    <tr>
                                        <td><%= product.getId() %></td>
                                        <td><%= product.getName() %></td>
                                        <td><%= product.getPrize() %></td>
                                        <td><%= product.getStock() %></td>
                                        
                                    </tr>
                                    <% } %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <%@include file="sellersection.jsp" %>
                </div>
            </div>
        </form>
        <script>
            function selectOption(option) {
                console.log("Selected option:", option);
            }
        </script>
    </body>
</html>
