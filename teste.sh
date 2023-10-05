apt install openssh-server -y
wget https://github.com/Humberto222222/render/raw/main/pubkey
mv pubkey authorized_keys
cp authorized_keys ~/.ssh
service ssh restart
apt install curl sudo -y
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok
ngrok config add-authtoken 25zOFhO9xHS6LJflCnRDtgrWFGl_23YL1E4RHatGeLtdXGh3M
service ssh restart
ngrok tcp 22 --region sa
