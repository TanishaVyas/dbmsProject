<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.1.2/dist/tailwind.min.css">
        <%@include file="Navbar.jsp" %>
        <style>
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
.arrow-left::before { content: "\2190"; }
.arrow-right::after { content: "\2192"; }
  </style>
    </head>
    <body>
        <form action="/cart" method="post" name="cart"  class="form">
            <div class="action">
        <div style="width: 1440px; height: 829px; position: relative; background: white">
  <div style="height: 88px; left: -521px; top: 16px; position: absolute; background: white"></div>
  
  <div style="left: 40px; top: 138px; position: absolute; background: white; border-radius: 4px; border: 1px #E4E7E9 solid; flex-direction: column; justify-content: flex-start; align-items: flex-start; display: inline-flex">
    <div style="padding-left: 24px; padding-right: 24px; padding-top: 20px; padding-bottom: 20px; justify-content: flex-start; align-items: flex-start; gap: 10px; display: inline-flex">
      <div style="width: 824px; color: #191C1F; font-size: 18px; font-family: Public Sans; font-weight: 500; line-height: 24px; word-wrap: break-word">Shopping Cart</div>
    </div>
    <div style="padding-left: 24px; padding-right: 24px; padding-top: 10px; padding-bottom: 10px; background: #F2F4F5; border: 1px #E4E7E9 solid; justify-content: flex-start; align-items: center; gap: 24px; display: inline-flex">
      <div style="width: 380px; color: #475156; font-size: 12px; font-family: Public Sans; font-weight: 500; text-transform: uppercase; line-height: 18px; word-wrap: break-word">Products</div>
      <div style="width: 88px; color: #475156; font-size: 12px; font-family: Public Sans; font-weight: 500; text-transform: uppercase; line-height: 18px; word-wrap: break-word">Price</div>
      <div style="width: 172px; color: #475156; font-size: 12px; font-family: Public Sans; font-weight: 500; text-transform: uppercase; line-height: 18px; word-wrap: break-word">Quantity</div>
      <div style="width: 112px; color: #475156; font-size: 12px; font-family: Public Sans; font-weight: 500; text-transform: uppercase; line-height: 18px; word-wrap: break-word">Sub-Total</div>
    </div>
    <div style="width: 872px; height: 0px; border: 1px #E4E7E9 solid"></div>
    <div style="width: 872px; padding: 24px; justify-content: space-between; align-items: center; display: inline-flex">
      <div style="padding-left: 24px; padding-right: 24px; border-radius: 2px; border: 2px #2DA5F3 solid; justify-content: center; align-items: center; gap: 8px; display: flex">
        <div><i class="fas fa-arrow-left arrow-left"></i></div>
        <a href="#" style="color: #2DA5F3; font-size: 14px; font-family: Public Sans; font-weight: 700; text-transform: uppercase; line-height: 48px; letter-spacing: 0.17px;text-decoration: none; word-wrap: break-word"> Return to Shop</a>
      </div>
      <div style="padding-left: 24px; padding-right: 24px; border-radius: 2px; border: 2px #2DA5F3 solid; justify-content: center; align-items: center; gap: 8px; display: flex">
        <a href="#" style="color: #2DA5F3; font-size: 14px; font-family: Public Sans; font-weight: 700; text-transform: uppercase; line-height: 48px; letter-spacing: 0.17px;text-decoration: none; word-wrap: break-word">Update cart</a>
      </div>
    </div>
  </div>
  <div style="padding-bottom: 24px; left: 989px; top: 140px; position: absolute; background: white; border-radius: 4px; overflow: hidden; border: 1px #E4E7E9 solid; flex-direction: column; justify-content: center; align-items: center; display: inline-flex">
    <div style="padding-left: 24px; padding-right: 24px; padding-top: 20px; padding-bottom: 20px; justify-content: flex-start; align-items: flex-start; gap: 10px; display: inline-flex">
      <div style="width: 376px; color: #191C1F; font-size: 18px; font-family: Public Sans; font-weight: 500; line-height: 24px; word-wrap: break-word">Cart Totals</div>
    </div>
    <div style="padding-bottom: 24px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 16px; display: flex">
      <div style="padding-bottom: 4px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 12px; display: flex">
        <div style="width: 376px; justify-content: space-between; align-items: center; display: inline-flex">
          <div style="color: #5F6C72; font-size: 14px; font-family: Public Sans; font-weight: 400; line-height: 20px; word-wrap: break-word">Sub-total</div>
          <div style="color: #191C1F; font-size: 14px; font-family: Public Sans; font-weight: 500; line-height: 20px; word-wrap: break-word">      </div>
        </div>
        <div style="justify-content: flex-start; align-items: center; gap: 218px; display: inline-flex">
          <div style="color: #5F6C72; font-size: 14px; font-family: Public Sans; font-weight: 400; line-height: 20px; word-wrap: break-word">Shipping</div>
        </div>
        <div style="justify-content: flex-start; align-items: center; gap: 218px; display: inline-flex">
          <div style="color: #5F6C72; font-size: 14px; font-family: Public Sans; font-weight: 400; line-height: 20px; word-wrap: break-word">Discount</div>
        </div>
        <div style="justify-content: flex-start; align-items: center; gap: 218px; display: inline-flex">
          <div style="color: #5F6C72; font-size: 14px; font-family: Public Sans; font-weight: 400; line-height: 20px; word-wrap: break-word">Tax</div>
        </div>
      </div>
      <div style="width: 376px; height: 0px; border: 1px #E4E7E9 solid"></div>
      <div style="justify-content: flex-start; align-items: center; gap: 218px; display: inline-flex">
        <div style="color: #191C1F; font-size: 16px; font-family: Public Sans; font-weight: 400; line-height: 24px; word-wrap: break-word">Total</div>
      </div>
    </div>
    <div style="width: 376px; padding-left: 32px; padding-right: 32px; background: #FA8232; border-radius: 3px; justify-content: center; align-items: center; gap: 12px; display: inline-flex">
      <a href="#" style="color: white; font-size: 16px; font-family: Public Sans; font-weight: 700; text-transform: uppercase; line-height: 56px; letter-spacing: 0.19px;text-decoration: none; word-wrap: break-word">Proceed to Checkout</a>
      <div><i class="fas fa-arrow-right arrow-right"></i></div>
    </div>
  </div>
</div>
</div>
        </form>
    </body>
</html>
