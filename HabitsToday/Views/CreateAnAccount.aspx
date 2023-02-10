<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAnAccount.aspx.cs" Inherits="HabitsToday.Views.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>HABITS TODAY</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&family=Roboto+Mono:wght@700&display=swap" rel="stylesheet">
    <style>
        /* CSS para estilizar a página de login */
        body {
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
            font-family: Roboto Mono;
        }

        #formRegister {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            text-align: right;
        }

        .campos {
            width: 40%;
            margin: 12px 0;
            padding: 12px;
            border-radius: 4px;
            border: 1px solid #ccc;
            box-sizing: border-box;
            font-family: Roboto Mono;
        }

        #btnCriarConta {
            background-color: #213635;
            width: 40%;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 10px;
            font-family: Roboto Mono;
            font-weight: 600;
            font-size: 16px;
        }

        #formRegister label {
            padding: 0px 4px;
            margin-left: 10px;
            width: 40%;
            text-align: left;
        }

        #formRegister h1 {
            width: 40%;
            text-align: left;
            font-size: 22px;
            font-weight: 600;
            margin: 0px 0px 25px 0px;
            padding: 0px;
            font-family: Roboto Mono;
        }

        #formRegister p {
            margin: 6px 0px 6px;
            padding: 6px;
            font-size: 12px;
            font-family: Roboto;
            /*font-weight: 300;*/
        }

        #formRegister a {
            margin: 6px 0px 6px;
            padding: 6px;
            font-size: 12px;
            color: #348E91;
            font-family: Roboto;
            /* font-weight: 300;*/
        }

        @media (max-width: 570px) {
            #formRegister {
                flex-direction: column;
            }

            .campos {
                width: 80%;
            }

            #btnCriarConta {
                width: 80%;
                height: 50px;
                text-align: center;
            }

            #formRegister label {
                padding: 0px;
                /*  margin: 2px 0px 1px 10px;*/
                width: 80%;
                text-align: left;
                font-size: 13px;
            }

            #formRegister h1 {
                width: 80%;
                text-align: left;
                font-size: 18px;
                font-weight: 600;
                margin: 0px 0px 25px 0px;
                padding: 0px;
                font-family: Roboto Mono;
            }

            #formRegister p {
                margin: 6px 0px 6px;
                padding: 6px;
                font-size: 13px;
                font-family: Roboto;
                font-weight: 300;
            }

            #formRegister a {
                margin: 6px 0px 6px;
                padding: 6px;
                font-size: 13px;
                color: #348E91;
                font-family: Roboto;
                font-weight: 300;
            }
        }
    </style>
</head>
<body>
    <form id="formRegister" runat="server">
        <h1>Cadastre-se agora no Habits Today 🚀</h1>
        <label>Nome</label>
        <asp:TextBox ID="TxtNome" runat="server" CssClass="campos" placeholder="Digite seu nome" required="true"></asp:TextBox>

        <label>E-mail</label>
        <asp:TextBox ID="TxtEmail" runat="server" CssClass="campos" TextMode="Email" placeholder="Digite seu e-mail" required="true"></asp:TextBox>

        <label>Senha</label>
        <asp:TextBox ID="TxtSenha" runat="server" CssClass="campos" TextMode="Password" placeholder="Crie sua senha" required="true"></asp:TextBox>

        <label>Confirmar senha</label>
        <asp:TextBox ID="TxtConfirmarSenha" runat="server" CssClass="campos" TextMode="Password" placeholder="Confirme sua senha" required="true"></asp:TextBox>


        <asp:Button ID="btnCriarConta" runat="server" Text="Criar Minha Conta" OnClick="btnCriarConta_Click" />

        <p>Já possui uma conta?<a href="Login.aspx">Faça login aqui.</a></p>

    </form>
</body>
</html>
