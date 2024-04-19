<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Product 1 Page</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet"/>
        <%@include file="Navbar.jsp" %>
    </head>
    <body   style="background-color: #110929">
        <div style="padding-bottom: 32px; left: 450px; top: 90px; position: absolute; background: white; box-shadow: 0px 12px 48px rgba(0, 34, 51, 0.06); border-radius: 12px; border: 1px #EBEEF7 solid; flex-direction: column; justify-content: center; align-items: center; gap: 32px; display: inline-flex">
            <div style="width: 984px; height: 108px; position: relative; background: white; border-top-left-radius: 12px; border-top-right-radius: 12px; border: 1px #EBEEF7 solid">
                <div style="padding-bottom: 20px; left: 349px; top: 32px; position: absolute; justify-content: center; align-items: center; gap: 16px; display: inline-flex">
                    <div style="padding: 16px; background: #C5C9D6; border-radius: 100px; flex-direction: column; justify-content: flex-start; align-items: flex-start; display: inline-flex">
                        <div style="width: 24px; height: 24px; position: relative">
                            <div style="width: 24px; height: 24px; left: 0px; top: 0px; position: absolute">
                                <div style="width: 24px; height: 24px; left: 0px; top: 0px; position: absolute"></div>
                                <i class="fas fa-layer-group" style="color: white;font-size: 21px"></i>
                            </div>
                        </div>
                    </div>
                    <div style="flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 6px; display: inline-flex">
                        <div style="width: 213px; color: #191F33; font-size: 16px; font-family: Nunito; font-weight: 600; line-height: 24px; word-wrap: break-word">Step 02</div>
                        <div style="width: 213px; color: #767E94; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">Description and Features</div>
                    </div>
                </div>
                
                <div style="padding-bottom: 20px; left: 32px; top: 32px; position: absolute; background: white; box-shadow: 0px -2px 0px #00AAFF inset; justify-content: center; align-items: center; gap: 16px; display: inline-flex">
                    <div style="padding: 16px; background: #00AAFF; border-radius: 100px; flex-direction: column; justify-content: flex-start; align-items: flex-start; display: inline-flex">
                        <div style="width: 24px; height: 24px; position: relative">
                            <div style="width: 24px; height: 24px; left: 0px; top: 0px; position: absolute">
                                <div style="width: 24px; height: 24px; left: 0px; top: 0px; position: absolute"></div>
                                <i class="fas fa-layer-group" style="color: white;font-size: 21px"></i>
                            </div>
                        </div>
                    </div>
                    <div style="flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 6px; display: inline-flex">
                        <div style="width: 214px; color: #191F33; font-size: 16px; font-family: Nunito; font-weight: 600; line-height: 24px; word-wrap: break-word">Step 01</div>
                        <div style="width: 214px; color: #767E94; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">Product Information</div>
                    </div>
                </div>
            </div>
            <form action="/Add_Product" method="post" name="Add_Product" method="post">
                <div style="flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 18px; display: flex">
                    <div style="height: 76px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 8px; display: flex">
                        <div style="align-self: stretch; height: 20px; color: #191F33; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">Product Name</div>
                        <div style="width: 451px; height: 48px; position: relative; background: white; border-radius: 5px; border: 1px #EDEFF5 solid">
                            <input  name="Name" type="text" style="width: 100%; height: 100%; padding-left: 18px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; word-wrap: break-word; border: none; outline: none" placeholder="Product name">
                        </div>

                    </div>


                    <div style="justify-content: flex-start; align-items: flex-start; gap: 18px; display: inline-flex">
                        <div style="width: 451px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 8px; display: inline-flex">
                            <div style="align-self: stretch; height: 20px; color: #191F33; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">Conditions</div>
                            <select name="category" style="width: 451px; height: 48px; position: relative; background: white; border-radius: 5px; border: 1px #EDEFF5 solid;align-self: stretch; height: 48px; color: #939AAD;padding-left: 15px; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word" cursor: pointer;" onchange="selectOption(this.value)">
                                <option value="all" style="left: 18px; top: 12px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px;word-wrap: break-word">Select...</option>
                                <option value="new" style="left: 18px; top: 12px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; word-wrap: break-word" >New</option>
                                <option value="used" style="left: 18px; top: 12px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; word-wrap: break-word">Used</option>
                                <option value="refurbished" style="left: 18px; top: 12px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; word-wrap: break-word">Refurbished</option>
                                <option value="damaged" style="left: 18px; top: 12px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; word-wrap: break-word">Damaged</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div style="justify-content: flex-start; align-items: flex-start; gap: 18px; display: inline-flex">
                    <div style="width: 451px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 8px; display: inline-flex">
                        <div style="align-self: stretch; height: 20px; color: #191F33; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">Product Prices (INR)</div>
                        <div style="width: 451px; height: 48px; position: relative; background: white; border-radius: 5px; border: 1px #EDEFF5 solid">
                            <input  name="Prize" type="text" style="width: 100%; height: 100%; padding-left: 18px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; word-wrap: break-word; border: none; outline: none" placeholder="Pick a good price - what would you pay?">
                        </div>
                    </div>
                </div>
                <div style="justify-content: flex-start; align-items: flex-start; gap: 18px; display: inline-flex">
                    <div style="width: 451px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 8px; display: inline-flex">
                        <div style="align-self: stretch; height: 20px; color: #191F33; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">Stock</div>
                        <div style="width: 451px; height: 48px; position: relative; background: white; border-radius: 5px; border: 1px #EDEFF5 solid">
                            <input name="Stock" type="text" style="width: 100%; height: 100%; padding-left: 18px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; word-wrap: break-word; border: none; outline: none" placeholder="Quantity you have">
                        </div>
                    </div>
                </div>

                <div style="width: 920px; height: 76px; position: relative">

                    <button>
                        <div style="padding-left: 32px; padding-right: 32px; left: 727px; top: 18px; position: absolute; background: #110929; border-radius: 6px; justify-content: center; align-items: center; gap: 12px; display: inline-flex">
                            <div style="text-align: center; color: white; font-size: 18px; font-family: Nunito Sans; font-weight: 700; text-transform: capitalize; line-height: 58px; word-wrap: break-word">Next Step</div>
                            <div style="width: 24px; height: 24px; position: relative;padding-top: 2px">
                                
                            </div>
                        </div>
                    </button>
                </div>
            </form>

        </div>
    </div>
    <%@include file="sellersection.jsp" %>
</div>
</body>
</html>
