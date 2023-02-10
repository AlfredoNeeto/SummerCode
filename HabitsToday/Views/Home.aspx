<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HabitsToday.Views.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Home - Habits Today</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400&500&family=Roboto&family=Roboto+Mono:wght@700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/8f780dfc0a.js" crossorigin="anonymous"></script>
    <style>
        body {
            background-color: #000;
            font-family: Roboto Mono;
        }

        header {
            background-color: #fff;
            padding: 4px;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 1;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem 3rem;
            height: 20px;
        }

        .logo {
            display: flex;
            align-items: center;
            /*border: 1px solid red;*/
        }

            .logo img {
                height: 45px;
            }

        nav ul {
            float: right;
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        li {
            margin: 0 1rem;
        }

        nav a {
            color: #333;
            text-decoration: none;
            font-size: 20px;
            display: block;
            padding: 10px;
        }

            nav a:hover {
                color: #348E91;
            }

        main {
            margin-top: 70px;
            padding: 20px 70px 20px 50px;
        }

        .button {
            padding: 16px 24px;
            border-radius: 8px;
            border: 2px solid #348E91;
            background-color: transparent;
            color: white;
            display: flex;
            align-items: center;
            gap: 12px;
            font-family: Roboto Mono;
            font-weight: 600;
            font-size: 16px;
            line-height: 125%;
            text-decoration: none;
        }

            .button i {
                color: #348E91;
            }

        #buttons {
            display: flex;
            align-items: center;
            gap: 12px;
            justify-content: space-between;
            align-items: center;
        }

        #FormHabits {
            display: flex;
            padding: 182px 48px 48px;
            width: fit-content;
        }

        .habits {
            margin-top: 60px;
            display: flex;
            flex-direction: column;
            gap: 24px;
        }
    </style>
</head>

<body>
    <form id="home" runat="server">
        <header>
            <nav>
                <div class="logo">
                    <img src="img/img3.png" />
                </div>
                <ul>
                    <li><a href="#">Aprender</a></li>
                    <li><a href="#">Meus Hábitos</a></li>
                </ul>
            </nav>
        </header>
        <main>
            <div id="buttons">
                <a href="AddHabit.aspx" class="button"><i class="fa-solid fa-plus"></i>Novo Hábito</a>
                <asp:Button runat="server" ID="btnRegistrarDia" Text="Registrar Meu Dia" CssClass="button" OnClick="btnRegistrarDia_Click" />
            </div>

            <div id="FormHabits">
                
            </div>


        </main>


    </form>
</body>
</html>
