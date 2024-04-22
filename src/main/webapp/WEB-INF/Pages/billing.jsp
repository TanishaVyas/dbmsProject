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
    <div style="left: 71px; top: 114px; position: absolute; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 40px; display: inline-flex">
        <div style="flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 24px; display: flex">
            <div style="width: 872px; color: white; font-size: 18px; font-family: Public Sans; font-weight: 500; line-height: 24px; word-wrap: break-word">Billing Information</div>
            <div style="flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 16px; display: flex">
                <div style="justify-content: flex-start; align-items: flex-start; gap: 16px; display: inline-flex">
                    <div style="justify-content: center; align-items: flex-end; gap: 16px; display: flex">
                        <div style="width: 206px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 8px; display: inline-flex">
                            <div style="align-self: stretch; color: #FBF8F8; font-size: 14px; font-family: Public Sans; font-weight: 400; line-height: 20px; word-wrap: break-word">Name</div>
                            <div style="width: 206px; position: relative;">
                                <input type="text" id="firstname" name="firstname" style="width: 100%; height: 44px; padding: 12px; background: white; border-radius: 2px; border: 1px #E4E7E9 solid; color: #77878F; font-size: 14px; font-family: Public Sans; font-weight: 400; line-height: 20px; outline: none; box-sizing: border-box;" placeholder="First name" required>
                            </div>
                        </div>

                        <div style="width: 206px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 8px; display: inline-flex">
                            <div style="width: 206px; position: relative;">
                                <input type="text" id="lastname" name="lastname" style="width: 100%; height: 44px; padding: 12px; background: white; border-radius: 2px; border: 1px #E4E7E9 solid; color: #77878F; font-size: 14px; font-family: Public Sans; font-weight: 400; line-height: 20px; outline: none; box-sizing: border-box;" placeholder="Last name" required>
                            </div>
                        </div>
                    </div>

                </div>
                <div style="height: 72px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 8px; display: flex">
                    <div style="align-self: stretch; color: #FBF8F8; font-size: 14px; font-family: Public Sans; font-weight: 400; line-height: 20px; word-wrap: break-word">Address</div>
                    <div style="width: 872px; position: relative;">
                        <input type="text" id="address" name="address" style="width: 100%; height: 44px; padding: 12px; background: white; border-radius: 2px; border: 1px #E4E7E9 solid; color: #77878F; font-size: 14px; font-family: Public Sans; font-weight: 400; line-height: 20px; outline: none; box-sizing: border-box;" placeholder="Address" required>
                    </div>
                </div>

                <div style="justify-content: flex-start; align-items: flex-start; gap: 16px; display: inline-flex">
                    

                    <div style="width: 428px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 8px; display: inline-flex">
                        <div style="align-self: stretch; color: #FBF8F8; font-size: 14px; font-family: Public Sans; font-weight: 400; line-height: 20px; word-wrap: break-word">Phone Number</div>
                        <div style="width: 100%; position: relative;">
                            <input type="tel" id="phone_number" name="phone_number" style="width: 100%; height: 44px; padding: 12px; background: white; border-radius: 2px; border: 1px #E4E7E9 solid; color: #77878F; font-size: 14px; font-family: Public Sans; font-weight: 400; line-height: 20px; outline: none; box-sizing: border-box;" placeholder="Phone number" required>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div style="width: 888px; height: 520px; padding-top: 20px; padding-bottom: 32px; background: white; border-radius: 4px; overflow: hidden; border: 1px #E4E7E9 solid; flex-direction: column; justify-content: center; align-items: center; gap: 20px; display: inline-flex">
            <div style="width: 808px; color: #191C1F; font-size: 18px; font-family: Public Sans; font-weight: 500; line-height: 24px; word-wrap: break-word">Payment Option</div>
            <div style="width: 540px; padding: 24px; background: white; border: 1px white solid; justify-content: space-between; align-items: flex-start; display: inline-flex">
                <div style="flex-direction: column; justify-content: center; align-items: center; gap: 16px; display: inline-flex">
                    <div style="flex-direction: column; justify-content: center; align-items: center; gap: 8px; display: flex">
                        <div style="width: 32px; height: 32px; position: relative">
                            <i class="fas fa-wallet" style="font-size: 24px"></i>
                        </div>
                        <div style="width: 160px; text-align: center; color: #191C1F; font-size: 14px; font-family: Public Sans; font-weight: 500; line-height: 20px; word-wrap: break-word">Cash on Delivery</div>
                    </div>
                    <input type="radio" id="cashOnDelivery" name="paymentMethod">
                    <label for="cashOnDelivery" class="custom-radio" onclick="showCodDetails()">
                        <!-- Inner dot indicating selection -->
                        <div class="inner-dot"></div>
                    </label>
                </div>

                <div style="padding-top: 12px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 16px; display: none;" id="codDetails">
                    <div style="color: #191C1F; font-size: 14px; font-family: Public Sans; font-weight: 400; line-height: 20px; word-wrap: break-word">Cash on Delivery (COD). We also accept Credit/Debit cards on delivery subject to availability of the payment device.</div>
                </div>
            </div>

        </div>
            <div style="padding-bottom: 24px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 16px; display: flex">
    <div style="width: 376px; height: 0px; border: 1px #E4E7E9 solid"></div>
    <div style="justify-content: flex-start; align-items: center; gap: 218px; display: inline-flex">
    <div style="padding-bottom: 24px; left: 967px; top: 114px; position: absolute; background: white; border-radius: 4px; overflow: hidden; border: 1px #E4E7E9 solid; flex-direction: column; justify-content: center; align-items: center; display: inline-flex">
    <div style="padding-left: 24px; padding-right: 24px; padding-top: 20px; padding-bottom: 20px; justify-content: flex-start; align-items: flex-start; gap: 10px; display: inline-flex">
      <div style="width: 376px; color: #191C1F; font-size: 18px; font-family: Public Sans; font-weight: 500; line-height: 24px; word-wrap: break-word">Cart Totals</div>
    </div>
    <div style="padding-bottom: 24px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 16px; display: flex">
      
      <div style="width: 376px; height: 0px; border: 1px #E4E7E9 solid"></div>
      <div style="justify-content: flex-start; align-items: center; gap: 218px; display: inline-flex">
        <div style="color: #191C1F; font-size: 16px; font-family: Public Sans; font-weight: 400; line-height: 24px; word-wrap: break-word">Total</div>
        <div style="color: #191C1F; font-size: 16px; font-family: Public Sans; font-weight: 400; line-height: 24px; word-wrap: break-word"><%= request.getAttribute("bill") %></div>
      </div>
    </div>
    
        <button type="submit" style="color: white; font-size: 16px; background: #FA8232;font-family: Public Sans; font-weight: 700; text-transform: uppercase; line-height: 56px; letter-spacing: 0.19px; word-wrap: break-word;width: 376px; padding-left: 32px; padding-right: 32px; background: #FA8232; border-radius: 3px; justify-content: center; align-items: center; gap: 12px; display: inline-flex"">Proceed to Checkout</button>
      <div style="width: 24px; height: 24px; position: relative;padding-top: 5px">
        <i class="fas fa-arrow-right" style="color: white;font-size: 18px;"></i>
      </div>
    
  </div>
        <script>
    function showCodDetails() {
        document.getElementById("codDetails").style.display = "flex";
    }
</script>

        </form>
    </body>
</html>