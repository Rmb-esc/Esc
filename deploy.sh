#!/bin/bash
# Entrar na pasta do projeto
cd ~/Chess-Web-Site || exit

# Criar arquivo CNAME para o domínio personalizado
echo "esc.rmb.com" > CNAME
echo "[✔] Arquivo CNAME criado com 'esc.rmb.com'"

# Adicionar e commitar todas as alterações
git add .
git commit -m "Configurar GitHub Pages com domínio personalizado"
git push origin main
echo "[✔] Alterações enviadas para o GitHub"

# Testar conexão SSH
ssh -T git@github.com

# Checar DNS (opcional, só para verificar se já está apontando para GitHub)
echo "[⚡] Verificando propagação do DNS de esc.rmb.com..."
nslookup esc.rmb.com
