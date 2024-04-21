<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Product 2 Page</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet"/>
        <%@include file="Navbar.jsp" %>
    </head>
    <body style="background-color: #110929">
        <div style="padding-bottom: 32px; left: 450px; top: 125px; position: absolute; background: white; box-shadow: 0px 12px 48px rgba(0, 34, 51, 0.06); border-radius: 12px; border: 1px #EBEEF7 solid; flex-direction: column; justify-content: center; align-items: center; gap: 32px; display: inline-flex">
            <div style="width: 984px; height: 108px; position: relative; background: white; border-top-left-radius: 12px; border-top-right-radius: 12px; border: 1px #EBEEF7 solid">
                <div style="padding-bottom: 20px; left: 349px; top: 32px; position: absolute; background: white; box-shadow: 0px -2px 0px #00AAFF inset; justify-content: center; align-items: center; gap: 16px; display: inline-flex">
                    <div style="padding: 16px; background: #00AAFF; border-radius: 100px; flex-direction: column; justify-content: flex-start; align-items: flex-start; display: inline-flex">
                        <div style="width: 24px; height: 24px; position: relative">
                            <div style="width: 24px; height: 24px; left: 0px; top: 0px; position: absolute">
                                <div style="width: 24px; height: 24px; left: 0px; top: 0px; position: absolute"></div>
                                <i class="fas fa-layer-group" style="color: white;font-size: 21px"></i>
                            </div>
                        </div>
                    </div>
                    <div style="flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 6px; display: inline-flex">
                        <div style="width: 214px; color: #191F33; font-size: 16px; font-family: Nunito; font-weight: 600; line-height: 24px; word-wrap: break-word">Step 02</div>
                        <div style="width: 214px; color: #767E94; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">Advance Info</div>
                    </div>
                </div>
                
                <div style="padding-bottom: 20px; left: 32px; top: 32px; position: absolute; justify-content: center; align-items: center; gap: 16px; display: inline-flex">
                    <div style="padding: 16px; background: #27C200; border-radius: 100px; flex-direction: column; justify-content: flex-start; align-items: flex-start; display: inline-flex">
                        <div style="width: 24px; height: 24px; position: relative">
                            <div style="width: 24px; height: 24px; left: 0px; top: 0px; position: absolute;padding-left: 5px;padding-top: 2px">
                                <div style="width: 24px; height: 24px; left: 0px; top: 0px; position: absolute"></div>
                                <i class="fas fa-check" style="color: white; font-size: 18px;"></i>
                            </div>
                        </div>
                    </div>
                    <div style="flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 6px; display: inline-flex">
                        <div style="width: 213px; color: #191F33; font-size: 16px; font-family: Nunito; font-weight: 600; line-height: 24px; word-wrap: break-word">Step 01</div>
                        <div style="width: 213px; color: #767E94; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">Basic Info</div>
                    </div>
                </div>

            </div>
            <form action="/Add_Product_desc" method="post" name="Add_Product_desc" method="post">
                <div style="justify-content: flex-start; align-items: flex-start; gap: 18px; display: inline-flex">
                    <div style="width: 451px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 8px; display: inline-flex">
                        <div style="align-self: stretch; height: 20px; color: #191F33; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">Category</div>
                        <select id="Type_Product" name="Type_Product" style="width: 451px; height: 48px; position: relative; background: white; border-radius: 5px; border: 1px #EDEFF5 solid;align-self: stretch; height: 48px; color: #939AAD;padding-left: 15px; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word" cursor: pointer;" onchange="selectOption(this.value)">
                            <option value="egl tools" style="left: 18px; top: 12px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; word-wrap: break-word" >EGL Tools</option>
                            <option value="textbooks & notes" style="left: 18px; top: 12px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; word-wrap: break-word">Textbooks & Notes</option>
                            <option value="electronic equipment" style="left: 18px; top: 12px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; word-wrap: break-word">Electronic Equipment</option>
                            <option value="Accessories" style="left: 18px; top: 12px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; word-wrap: break-word">Accessories</option>
                        </select>
                    </div>
                </div>
                <div style="height: 148px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 8px; display: flex">
                    <div style="align-self: stretch; height: 20px; color: #191F33; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">Description</div>
                    <div style="width: 920px; height: 120px; position: relative; background: white; border-radius: 5px; border: 1px #EDEFF5 solid">
                        <textarea id="description_product" name="description_product" style="width: 100%; height: 100%; padding-left: 18px; padding-top: 12px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; word-wrap: break-word; border: none; outline: none; resize: none" placeholder="Add description"></textarea>
                    </div>
                </div>

                <div style="height: 148px; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 8px; display: flex">
                    <div style="align-self: stretch; height: 20px">
                        <span style="color: #191F33; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">Feature </span>
                        <span style="color: #939AAD; font-size: 14px; font-family: Nunito; font-weight: 400; line-height: 20px; word-wrap: break-word">(optional)</span>
                    </div>
                    <div style="width: 920px; height: 120px; position: relative; background: white; border-radius: 5px; border: 1px #EDEFF5 solid">
                        <textarea id="features" name="features" style="width: 100%; height: 100%; padding-left: 18px; padding-top: 12px; position: absolute; color: #939AAD; font-size: 16px; font-family: Nunito; font-weight: 400; line-height: 24px; word-wrap: break-word; border: none; outline: none; resize: none" placeholder="Write a feature in each line eg.
                                  Feature 1
                                  Feature 2"> </textarea>
                    </div>
                </div>

                <div style="width: 920px; height: 76px; position: relative">

                    <button>
                        <div style="padding-left: 32px; padding-right: 32px; left: 727px; top: 18px; position: absolute; background: #110929; border-radius: 6px; justify-content: center; align-items: center; gap: 12px; display: inline-flex">
                            <div style="text-align: center; color: white; font-size: 18px; font-family: Nunito Sans; font-weight: 700; text-transform: capitalize; line-height: 58px; word-wrap: break-word">Post Product</div>
                            <div style="width: 24px; height: 24px; position: relative;padding-top: 2px">
                                <i class="fas fa-arrow-right" style="color: white;font-size: 18px;"></i>
                            </div>
                        </div>
                    </button>
                </div>
            </form>            

        </div>
        <%@include file="sellersection.jsp" %>
    </body>
</html>
