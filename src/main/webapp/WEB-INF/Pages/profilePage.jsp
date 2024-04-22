<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mycompany.dbms.Usermodel.Trial" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Campus TradeX</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <style>
        /* Import Font Dancing Script */
        @import url(https://fonts.googleapis.com/css?family=Dancing+Script);

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        h1, h2 {
            font-family: 'Dancing Script', cursive;
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        .profile-picture {
            text-align: center;
            margin-bottom: 20px;
        }

        .profile-picture img {
            border-radius: 50%;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .order-history {
            margin-bottom: 20px;
        }

        .order-history h2 {
            margin-bottom: 10px;
        }

        .order-history table {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>

<body>
    <div class="container">
        <a href="/accountsection">prduct hopefully</a>
        <a href="/cart">cart</a>
        <a href="/billing">billing</a>
        <h1>User Profile</h1>
       
         <%
        Trial user = (Trial) session.getAttribute("user");
    %>

        <table>
            <tr>
                <th>User Id</th>
                <td><%= user.getId() %></td>
            </tr>
            <tr>
                <th>Name</th>
                <td><%= user.getName() %></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><%= user.getEmail() %></td>
            </tr>
            <tr>
                <th>Phone Number</th>
                <td><%= user.getPhone() %></td>
            </tr>
        </table>
        <div class="order-history">
            <h2>Order History</h2>
            <table>
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Date</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <%-- Example loop to display orders 
                    <%
                        List<Order> orders = user.getOrderHistory(); // Assuming user has a method getOrderHistory() to retrieve orders
                        for (Order order : orders) {
                    %>
                        <tr>
                            <td><%= order.getId() %></td>
                            <td><%= order.getDate() %></td>
                            <td><%= order.getTotal() %></td>
                        </tr>
                    <% 
                        }
                    %>
                    --%>
                </tbody>
            </table>
        </div>
    </div>
</body>

</html>
