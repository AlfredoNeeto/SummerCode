<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddHabit.aspx.cs" Inherits="HabitsToday.Views.AdicionarHabito" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Edit Habit - Habits Today</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400&500&family=Roboto&family=Roboto+Mono:wght@700&display=swap" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/8f780dfc0a.js" crossorigin="anonymous"></script>
    <style>
        body {
            background-color: #000;
            font-family: Roboto Mono;
            justify-content: center;
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
            color: #fff;
            width: 100%;
        }

            main h1 {
                margin: 0px;
                font-family: Roboto Mono;
                font-size: 28px;
            }

            main p {
                color: #348E91;
                font-family: Roboto Mono;
                font-size: 13px;
            }

            main i {
                margin-right: 6px;
            }

        .campos {
            color: #fff;
            margin: 8px 0;
            padding: 8px;
            box-sizing: border-box;
            font-family: Roboto Mono;
            display: flex;
            flex-direction: column;
            margin-bottom: 1em;
            width: 80%;
            height: 40px;
            border: 1px solid #FFFFFF;
            border-radius: 5px;
            background-color: #0A0C0D;
        }

        .camposEmoji {
            color: #fff;
            margin: 8px 0;
            padding: 8px;
            box-sizing: border-box;
            font-family: Roboto Mono;
            display: flex;
            flex-direction: column;
            margin-bottom: 1em;
            width: 8%;
            height: 40px;
            border: 1px solid #FFFFFF;
            border-radius: 5px;
            background-color: #0A0C0D;
        }

        .camposLong {
            color: #fff;
            margin: 8px 0;
            padding: 8px;
            box-sizing: border-box;
            font-family: Roboto Mono;
            display: flex;
            flex-direction: column;
            margin-bottom: 1em;
            width: 80%;
            height: 100px;
            border: 1px solid #FFFFFF;
            border-radius: 5px;
            background-color: #0A0C0D;
            resize: none;
        }

        label {
            margin-bottom: 0.5em;
        }

        .AbaCampos {
            margin-top: 40px;
        }

        .button {
            padding: 16px 24px;
            border-radius: 15px;
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

        #buttons {
            margin-top: 50px;
            display: flex;
            align-items: center;
            gap: 12px;
            justify-content: space-between;
            box-sizing: border-box;
            flex-direction: row;
            width: 80%;
        }

        #btnSalvar {
            color: white;
            background-color: #348E91;
        }

        #btnEcluirHabito {
            border-color: #B60000;
        }

            #btnEcluirHabito:hover {
                color: white;
                background-color: #B60000;
            }

        #div1 {
            display: flex;
            gap: 12px;
        }
    </style>
</head>
<body>
    <form id="adicionarHabito" runat="server">
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
            <div class="principal">
                <h1>Editar Hábito</h1>
                <p class="info"><i class="fa-solid fa-circle-info"></i>Hábito é uma ação frequente e repetitiva que se torna automática e inconsciente com o tempo... </p>
                <div class="AbaCampos">
                    <label>Nome do hábito</label>
                    <asp:TextBox CssClass="campos" ID="txtNomeHabito" runat="server" placeholder="Ex: Ler 5 páginas por dia..."></asp:TextBox>
                    <label>Descrição</label>
                    <textarea id="txtDescricao" class="camposLong" runat="server" cols="20" rows="3" placeholder="Ex: Este hábito consiste em ler 5 páginas de um livro todos os dias, como forma de desenvolver o hábito de leitura e adquirir novos conhecimentos. Ele é uma forma de estabelecer uma rotina diária de leitura, mesmo com tempo limitado, e pode..."></textarea>
                    <label>Emoji</label>
                    <asp:TextBox CssClass="camposEmoji" ID="txtEmoji" runat="server" placeholder="Ex: 📖"></asp:TextBox>
                </div>

                <div id="buttons">
                    <div>
                        <asp:Button runat="server" ID="btnEcluirHabito" Text="Excluir Hábito" CssClass="button" OnClick="btnEcluirHabito_Click" />
                    </div>
                    <div id="div1">
                        <asp:Button runat="server" ID="btnSalvar" Text="SALVAR" CssClass="button" OnClick="btnSalvar_Click" />
                        <a href="Home.aspx" class="button">VOLTAR</a>

                    </div>
                </div>
            </div>
        </main>
    </form>
</body>
</html>
