<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
        <title>navbar</title>
        <style>* {
                padding: 0;
                margin: 0;
                box-sizing: border-box;
                font-family: Arial, Helvetica, sans-serif;
            }

            .hero-section {
                display: flex;
                flex-direction: column;
                width: 100%;
            }

            .navbar {
                display: flex;
                background-color: rgb(17, 9, 41);
                padding: 15px 20px;
                color: white;
                width: 100%;
                align-items: center;
                justify-content: center;
            }

            .data-container {
                width: 100%;
                max-width: 1200px;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .hero-section-content {
                margin-top: auto;
                padding: 10px 20px;
            }

            .Logo {
                width: 70px;
            }

            a {
                text-decoration: none;
                color: white;
                padding: 10px 15px;
                border-radius: 25px;
                transition: background-color 0.3s ease-in;
                margin: 0 10px;
                font-weight: bold;
            }

            .menu-data {
                margin-left: auto;
                display: flex;
                align-items: center;
            }

            a:hover {
                background-color: white;
                color: rgb(0, 12, 34);
            }

            .size-icon {
                font-size: 26px;
            }

            #Menu-bar {
                display: none;
                margin-left: auto;
            }

            #close {
                display: none;
            }

            @media (max-width:761px) {
                .menu-data {
                    position: absolute;
                    flex-direction: column;
                    text-align: left;
                    align-items: flex-end;
                    left: 100%;
                    top: 0;
                    transform: translate(-100%);
                    background-color: black;
                    width: 250px;
                    padding: 20px;
                    transition: display ease-in 5s;
                    z-index: -10;
                }

                #Menu-bar {
                    display: block;
                }

                #close {
                    display: block;
                }

            }
            .hero-section-content {
                width: 100%;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                color: var(white);
            }

            .hero-section-content h1 {
                font-size: var(40px);
                text-transform: capitalize;
                text-align: center;
                padding: 10px 15px;
                color:white;
            }

            .hero-section-content p {
                font-size: var(24px);
                color: rgb(165, 165, 165);
                text-transform: capitalize;
                text-align: center;
                padding: 10px 15px;
            }
            h1 i{
                color: rgb(255, 96, 123);
            }</style>
    </head>

    <body>
        <section class="hero-section">
            <nav class="navbar">
                <div class="data-container">
                    <div>
                        <span style="color: #5D25A7; font-size: 33.23px; font-family: Inter; font-weight: 700; word-wrap: break-word">Campus</span>
                        <span style="color: #1C51FE; font-size: 33.23px; font-family: Inter; font-weight: 700; word-wrap: break-word">TradeX</span>
                    </div>

                    <div id="menu-time" class="menu-data animate__animated ">
                        <a onclick="closebar()"><i id="close" class="size fa-solid fa-xmark"></i></a>
                        <a href="/">Home</a>
                        <a href="/cart">Cart</a>
                        <a href="/login">Login</a>
                    </div>
                    <a id="Menu-bar" onclick="menubar()"><i class="size-icon fa-solid fa-bars"></i></a>
                </div>
            </nav>

        </section>
        <script src="https://kit.fontawesome.com/7103fc097b.js" crossorigin="anonymous"></script>
        <script >function menubar() {
                            var hihu = document.querySelector('.menu-data');
                            var element = document.getElementById('Menu-bar');

                            if (hihu) {
                                hihu.classList.remove('animate__fadeOut');
                                element.style.display = 'none';
                                hihu.style.zIndex = '1';
                                hihu.classList.add('animate__fadeIn');
                            }
                        }

                        function closebar() {
                            var hihu = document.querySelector('.menu-data');
                            var element = document.getElementById('Menu-bar');
                            if (hihu) {
                                hihu.classList.remove('animate__fadeIn');
                                hihu.style.zIndex = '-20';
                                element.style.display = 'block';
                                hihu.classList.add('animate__fadeOut');
                            }
                        }
        </script>
    </body>
</html>
