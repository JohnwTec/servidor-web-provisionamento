#!/bin/bash

# Atualiza a lista de pacotes
echo "Atualizando pacotes..."
sudo apt update -y

# Instala o Apache2
echo "Instalando Apache2..."
sudo apt install apache2 -y

# Habilita o serviço Apache para iniciar com o sistema
echo "Habilitando o Apache para iniciar automaticamente..."
sudo systemctl enable apache2

# Inicia o serviço Apache
echo "Iniciando o Apache..."
sudo systemctl start apache2

# Cria uma página inicial simples
echo "Criando página web padrão..."
echo "<html>
  <head>
    <title>Servidor Web Provisionado</title>
  </head>
  <body>
    <h1>Servidor Web Apache provisionado com sucesso!</h1>
    <p>Deploy realizado via script bash.</p>
  </body>
</html>" | sudo tee /var/www/html/index.html

# Informa o status final
echo "Provisionamento concluído! Acesse o servidor pelo navegador usando o IP da máquina."

# Exibe o status do Apache
sudo systemctl status apache2
