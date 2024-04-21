<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Profile</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet"/>
         <%@include file="Navbar.jsp" %>
    </head>
    <body>
        <form action="/custaccset" method="post" name="custaccset" class="form">
    <div class="action">
        <div style="width: 1440px; height: 1385px; position: relative; background: white">
  <div style="left: 450px; top: 90px; position: absolute; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 32px; display: inline-flex">
    <div style="flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 24px; display: flex">
      <div style="color: #191F33; font-size: 20px; font-family: Nunito; font-weight: 600; line-height: 32px; word-wrap: break-word">Account Information</div>
      <div style="width: 981px; justify-content: space-between; align-items: center; display: inline-flex">
</div>

      <div style="flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 18px; display: flex">
        <div style="justify-content: flex-start; align-items: flex-start; gap: 18px; display: inline-flex">
          <div style="width: 483px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 8px; display: inline-flex">
    <div style="align-self: stretch; height: 20px; color: #191F33; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">Full Name</div>
    <div style="width: 483px; height: 48px; position: relative; background: white; border-radius: 5px; border: 1px #EDEFF5 solid">
        <input id="fullname" name="fullname" type="text" onchange="updateFullName(this.value)" style="left: 18px; top: 12px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; width: 445px; height: 24px; background: transparent; border: none; border-radius: 0; outline: none;" placeholder="Full name">
    </div>
</div>

          <div style="width: 483px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 8px; display: inline-flex">
    <div style="align-self: stretch; height: 20px; color: #191F33; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">Phone Number</div>
    <div style="width: 483px; height: 48px; position: relative; background: white; border-radius: 5px; border: 1px #EDEFF5 solid">
        <input id="phone" name="phone" type="tel" style="left: 21px; top: 7px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; width: 445px; height: 24px; background: transparent; border: none; border-radius: 0; outline: none;" placeholder="Phone">
    </div>
</div>

        </div>
        <div style="justify-content: flex-start; align-items: flex-start; gap: 18px; display: inline-flex">
          <div style="width: 483px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 8px; display: inline-flex">
    <div style="align-self: stretch; height: 20px; color: #191F33; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">Email</div>
    <div style="width: 483px; height: 48px; position: relative; background: white; border-radius: 5px; border: 1px #EDEFF5 solid">
        <input id="email" name="email" type="email" style="left: 18px; top: 12px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; width: 445px; height: 24px; background: transparent; border: none; border-radius: 0; outline: none;" placeholder="Enter email">
    </div>
</div>
        </div>
      </div>
      <div style="align-self: stretch; height: 152px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 8px; display: flex">
    <div style="align-self: stretch; height: 20px; color: #191F33; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">Biography</div>
    <div style="width: 984px; height: 124px; position: relative; background: white; border-radius: 5px; border: 1px #EDEFF5 solid">
        <textarea id="biography" name="biography" style="left: 18px; top: 12px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; width: 948px; height: 100px; background: transparent; border: none; border-radius: 0; outline: none;" placeholder="Write something about yourself"></textarea>
    </div>
</div>

      <div style="padding-left: 20px; padding-right: 20px; background: #00AAFF; border-radius: 4px; justify-content: center; align-items: center; gap: 8px; display: inline-flex">
          <a href="" style="text-decoration: none;padding-left: 20px; padding-right: 20px; background: #00AAFF; border-radius: 4px; justify-content: center; align-items: center; gap: 8px; display: inline-flex; text-align: center; color: white; font-size: 16px; font-family: Nunito Sans; font-weight: 700; text-transform: capitalize; line-height: 50px; word-wrap: break-word; border: none; cursor: pointer;">
    Save Changes</a>
    </div>
    </div>
    <div style="width: 984px; height: 0px; border: 1px #EBEEF7 solid"></div>
    <div style="width: 984px; height: 0px; border: 1px #EBEEF7 solid"></div>
    <div style="flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 24px; display: flex">
      <div style="color: #191F33; font-size: 20px; font-family: Nunito; font-weight: 600; line-height: 32px; word-wrap: break-word">Change Password</div>
      <div style="justify-content: flex-start; align-items: flex-start; gap: 18px; display: inline-flex">
        <div style="width: 316px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 8px; display: inline-flex">
    <div style="align-self: stretch; height: 20px; color: #191F33; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">Current Password</div>
    <div style="width: 316px; height: 48px; position: relative; background: white; border-radius: 5px; border: 1px #EDEFF5 solid">
        <input id="password" name="password" type="password" style="left: 18px; top: 12px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; width: 280px; height: 24px;  background: transparent; border: none; border-radius: 0; outline: none;" placeholder="Password">
    </div>
</div>
        <div style="width: 316px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 8px; display: inline-flex">
    <div style="align-self: stretch; height: 20px; color: #191F33; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">New Password</div>
    <div style="width: 316px; height: 48px; position: relative; background: white; border-radius: 5px; border: 1px #EDEFF5 solid">
        <input id="password" name="password" type="password" style="left: 18px; top: 12px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; width: 280px; height: 24px;  background: transparent; border: none; border-radius: 0; outline: none;" placeholder="Password">
    </div>
</div>

        <div style="width: 316px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 8px; display: inline-flex">
    <div style="align-self: stretch; height: 20px; color: #191F33; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">Confirm Password</div>
    <div style="width: 316px; height: 48px; position: relative; background: white; border-radius: 5px; border: 1px #EDEFF5 solid">
        <input id="password" name="password" type="password" style="left: 18px; top: 12px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; width: 280px; height: 24px;  background: transparent; border: none; border-radius: 0; outline: none;" placeholder="Password">
    </div>
</div>
      </div>
      <div style="padding-left: 20px; padding-right: 20px; background: #00AAFF; border-radius: 4px; justify-content: center; align-items: center; gap: 8px; display: inline-flex">
          <a href="" style="text-decoration: none;padding-left: 20px; padding-right: 20px; background: #00AAFF; border-radius: 4px; justify-content: center; align-items: center; gap: 8px; display: inline-flex; text-align: center; color: white; font-size: 16px; font-family: Nunito Sans; font-weight: 700; text-transform: capitalize; line-height: 50px; word-wrap: break-word; border: none; cursor: pointer;">
    Save Changes</a>
    </div>

    </div>
    <div style="width: 984px; height: 0px; border: 1px #EBEEF7 solid"></div>
    <div style="width: 984px; height: 0px; border: 1px #EBEEF7 solid"></div>
    <div style="flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 24px; display: flex">
      <div style="flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 12px; display: flex">
        <div style="color: #191F33; font-size: 20px; font-family: Nunito; font-weight: 600; line-height: 32px; word-wrap: break-word">Delete Account</div>
        <div style="width: 648px; color: #767E94; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; word-wrap: break-word"> Confirm your decision, and your account will be permanently removed from our system.</div>
      </div>
      <div style="padding-left: 20px; padding-right: 20px; background: #FFE5E5; border-radius: 4px; justify-content: center; align-items: center; gap: 8px; display: inline-flex">
        <div style="width: 24px; height: 24px; position: relative">
          <i class="far fa-trash-alt" style="color: #FF4F4F;font-size: 20px;padding-left: 12px"></i>
        </div>
          <a href="" style="text-align: center;text-decoration: none; color: #FF4F4F; font-size: 16px; font-family: Nunito Sans; font-weight: 700; text-transform: capitalize; line-height: 50px;display: inline-flex; word-wrap: break-word;text-decoration: none;cursor: pointer">Delete Account</a>
      </div>
    </div>
  </div>
            <%@include file="customersection.jsp" %>
</div>
        </form>
            </div>
        <script>
function updateFullName(value) {
    document.getElementById('full-name-display').innerText = value;
}


</script>
    </body>
</html>

