# DNS-recursivo
Configuração de Servidor DNS Recursivo utilizando Bind9

## REQUISITOS
Nesse exemplo estarei determinando com base no Ubuntu 22.04 LTS mais recente a epoca

Ubuntu Server ou Desktop 22.04

#### Ansible V2.10.8 instalado

sudo apt update -y

sudo apt install ansible -y

#### Instalar o sshpass

sudo apt update

sudo apt install sshpass

### ssh server habilitador na maquina de destino

sudo apt instal ssh

## CONFIGURAÇÕES

Ajuste os arquivos db.example.com e db.sub.example conforme o seu dominio que seja necessario alem do nome nos arquivo name.conf

No arquivo db.example os * fazem o coringa do dominio podendo distribuir a carga por diversos servidores

## EXECUÇÃO

Para executar basta esta na pasta do projeto e executar

ansible-playbook -i playbooks/inventory.yml playbooks/install_bind.yml --ask-become-pass

apontando o playbook e o arquivo de inventario com as credenciais do servidor

## FINALIZANDO

Não esqueça de apontar suas maquinas para esse servidor DNS onde o mesmo fara o encaminhamento dos pacotes para um DNS publico caso não seja seu dominio interno


