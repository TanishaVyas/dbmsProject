<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Billing Page</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet"/>
        <%@include file="Navbar.jsp" %>
        <style>
            /* Hide the actual radio button */
            input[type="radio"] {
                display: none;
            }

            /* Styling for the custom radio button */
            .custom-radio {
                width: 20px;
                height: 20px;
                border-radius: 100px;
                background-color: #FFFFFF; /* White by default */
                border: 1px solid #CCCCCC;
                cursor: pointer;
                display: inline-block;
                position: relative;
            }

            /* Styling for the inner dot indicating selection */
            .inner-dot {
                width: 8px;
                height: 8px;
                border-radius: 50%;
                background-color: #FA8232; /* Orange by default */
                display: none; /* Hidden by default */
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
            }

            /* Show the inner dot when radio button is checked */
            input[type="radio"]:checked + label .inner-dot {
                display: block;
            }
        </style>
    </head>
    <body style="background: #110929">
        <form action="/billing" method="POST">
            <div>
                <label for="firstname">First Name:</label>
                <input type="text" id="firstname" name="firstname" required>
            </div>
            <div>
                <label for="lastname">Last Name:</label>
                <input type="text" id="lastname" name="lastname" required>
            </div>
            <div>
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" required>
            </div>
            <div>
                <label for="phone_number">Phone Number:</label>
                <input type="tel" id="phone_number" name="phone_number" required>
            </div>
            <button type="submit">Submit</button>
        </form>
    </body>
</html>
