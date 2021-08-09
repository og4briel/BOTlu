#!bin/bash
pkg update -y
pkg upgrade -y

CYAN="\033[1;36m"
YELLOW="\033[1;33m"
PURPLE="\033[1;35m"
GREEN="\033[1;32m"
RED='\033[1;31m'
NC='\033[0m'

echo $YELLOW"Você tem certeza que deseja atualizar o bot? [s/n]"
read -p "> " opts

if [ $opts = "s" ]; then

clear
echo $YELLOW"Atualizando o bot, aguarde..."
git clone https://github.com/og4briel/BOTlucifer > /dev/null 2> /dev/null

cd BOTlucifer
cp -r * ..
cd ..
rm -rf BOTlucifer
npm i

clear
echo $GREEN"Bot atualizado com sucesso!!"

elif [ $opts = "n"]; then
    clear
    echo $RED"Atualização do bot abortada"
    exit
fi
