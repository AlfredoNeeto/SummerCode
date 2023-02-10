<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aprender.aspx.cs" Inherits="HabitsToday.Views.Aprender" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /* Estilo geral da página */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        /* Estilo para a lista de vídeos */
        .video-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            padding: 20px;
        }

        /* Estilo para cada item na lista */
        .video-item {
            width: 30%;
            height: 200px;
            overflow: hidden;
            cursor: pointer;
            margin-bottom: 20px;
            position: relative;
            box-shadow: 0 0 10px #ccc;
        }

        /* Estilo para a miniatura do vídeo */
        .video-thumbnail {
            width: 100%;
            height: 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        /* Estilo para o nome do vídeo */
        .video-name {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background-color: rgba(0, 0, 0, 0.5);
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        /* Estilo para o vídeo selecionado */
        .video-item.selected {
            width: 60%;
            height: 400px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="video-list">
            <!-- Adicione os itens da sua playlist aqui -->
            <div class="video-item">
                <div class="video-thumbnail" style="background-image: url(thumbnail1.jpg)"></div>
                <div class="video-name">Vídeo 1</div>
            </div>
            <div class="video-item">
                <div class="video-thumbnail" style="background-image: url(thumbnail2.jpg)"></div>
                <div class="video-name">Vídeo 2</div>
            </div>
            <!-- Adicione mais itens aqui, se necessário -->
        </div>
        <!-- O código JavaScript abaixo adiciona a funcionalidade de reprodução de vídeo aos itens na playlist -->
        <script>
            // Obtém todos os elementos "video-item" na playlist
            let videoItems = document.querySelectorAll(".video-item");

            // Adiciona um evento de clique em cada item da playlist
            videoItems.forEach(function (item) {
                item.addEventListener("click", function () {
                    // Remove a classe "selected" de todos os itens da playlist
                    videoItems.forEach(function (i) {
                        i.classList.remove("selected");
                    });
                    // Adiciona a classe "selected" ao item clicado
                    this.classList.add("selected");
                });
            });
        </script>


    </form>
</body>
</html>
