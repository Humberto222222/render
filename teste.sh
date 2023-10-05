apt install openssh-server -y
service ssh restart
echo ARQUIVO DE CONFIGURACAO DE SSH - INICIO
cat /etc/ssh/sshd_config
echo ARQUIVO DE CONFIGURACAO DE SSH - FINAL
