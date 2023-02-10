<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HabitsToday.Views.WebForm1" %>

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

        #formLogin {
            display: flex;
            flex-direction: column;
            align-items: center;
            /*justify-content: center;*/
            height: 100vh;
            text-align: right;
        }


        .img {
            max-width: 50%;
            max-height: 50%;
            margin: 0;
            display: flex;
        }

        .campos {
            width: 40%;
            margin: 10px 0;
            padding: 12px;
            border-radius: 4px;
            border: 1px solid #ccc;
            box-sizing: border-box;
            font-family: Roboto Mono;
        }

        #entrar {
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

        #formLogin label {
            padding: 4px;
            margin-left: 10px;
            width: 40%;
            text-align: left;
        }

        #formLogin p {
            margin: 6px 0px 6px;
            padding: 6px;
            font-size: 12px;
            font-family: Roboto;
            /*font-weight: 300;*/
        }

        #formLogin a {
            margin: 6px 0px 6px;
            padding: 6px;
            font-size: 12px;
            color: #348E91;
            font-family: Roboto;
            /* font-weight: 300;*/
        }

        @media (max-width: 570px) {
            #formLogin {
                flex-direction: column;
            }

            .campos {
                width: 80%;
            }

            #entrar {
                width: 80%;
                height: 50px;
                text-align: center;
            }

            #formLogin label {
                padding: 4px;
                margin-left: 10px;
                width: 80%;
                text-align: left;
                font-size: 15px;
            }

            .img {
                max-width: 60%;
                max-height: 60%;
                margin: 0;
                display: flex;
            }

            #formLogin p {
                margin: 6px 0px 6px;
                padding: 6px;
                font-size: 13px;
                font-family: Roboto;
                font-weight: 300;
            }

            #formLogin a {
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
    <form id="formLogin" runat="server">
        <img class="img" src="img/img.png" />
        <label>E-mail:</label>
        <asp:TextBox ID="TxtEmail" runat="server" CssClass="campos" TextMode="Email" placeholder="Seu email" required="true"></asp:TextBox>
        <label>Senha:</label>
        <asp:TextBox ID="TxtSenha" runat="server" CssClass="campos" TextMode="Password" placeholder="Sua senha" required="true"></asp:TextBox>
        <asp:Button ID="entrar" runat="server" Text="ENTRAR" OnClick="entrar_Click" />
        <p>Não tem uma conta?<a href="CreateAnAccount.aspx">Cadastre-se agora</a></p>
    </form>
</body>
</html>
