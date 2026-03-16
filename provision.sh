#!/usr/bin/env bash

echo "Instalando e configurando Apache..."

dnf install -y httpd

mkdir -p /var/www/html
cp /vagrant/index.html /var/www/html/index.html

systemctl enable httpd
systemctl start httpd

systemctl enable firewalld
systemctl start firewalld
firewall-cmd --permanent --add-service=http
firewall-cmd --reload