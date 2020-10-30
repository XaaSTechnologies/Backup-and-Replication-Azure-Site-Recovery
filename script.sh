{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Calibri;}
{\colortbl;\red255\green255\blue255;\red27\green31\blue34;\red255\green255\blue255;\red21\green23\blue26;
\red6\green33\blue79;\red203\green35\blue57;\red7\green68\blue184;}
{\*\expandedcolortbl;;\cssrgb\c14118\c16078\c18039;\cssrgb\c100000\c100000\c100000;\cssrgb\c10588\c12157\c13725\c30196;
\cssrgb\c1176\c18431\c38431;\cssrgb\c84314\c22745\c28627;\cssrgb\c0\c36078\c77255;}
\paperw11900\paperh16840\margl1440\margr1440\vieww13940\viewh9340\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs32 \cf2 \cb3 \expnd0\expndtw0\kerning0
az group create \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 --name RG-19-ASR \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 --location westeurope\cb1 \
\
\
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 az network vnet create \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --resource-group RG-19-ASR \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --name MAIN-vNET \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --subnet-name SUBNET-01\cb1 \
\
\
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 az network nsg create \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --resource-group RG-19-ASR \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --name NSG-MAIN\cb1 \
\cb3 \
\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 az network nsg rule create \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --resource-group RG-19-ASR \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --name MAIN-vNET-NSG-RULE \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --nsg-name NSG-MAIN \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --protocol tcp \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --direction inbound \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --source-address-prefix \cf5 '*'\cf2  \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --source-port-range \cf5 '*'\cf2  \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --destination-address-prefix \cf5 '*'\cf2  \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --destination-port-range 80 \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --access allow \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --priority 200\
\
\
az network nsg rule create \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --resource-group RG-19-ASR \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --name MAIN-vNET-SSH-RULE \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --nsg-name NSG-MAIN \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --protocol tcp \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --direction inbound \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --source-address-prefix \cf5 '*'\cf2  \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --source-port-range \cf5 '*'\cf2  \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --destination-address-prefix \cf5 '*'\cf2  \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --destination-port-range 22 \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --access allow \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --priority 300\cb1 \
\
\cb3 \
\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 az network vnet subnet update \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --resource-group RG-19-ASR \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --vnet-name MAIN-vNET \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --name SUBNET-01 \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --network-security-group NSG-MAIN\cb1 \
\cb3 \
\
az vm create \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --resource-group RG-19-ASR \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --name VM-01 \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --admin-username adminuser \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --admin-password adminadmin123\cf6 !\cf2  \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --image UbuntuLTS \\\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 \cb1 \kerning1\expnd0\expndtw0   --vnet-name \cf2 \cb3 \expnd0\expndtw0\kerning0
MAIN-vNET\cf0 \cb1 \kerning1\expnd0\expndtw0  \\\
  --nsg \cf2 \cb3 \expnd0\expndtw0\kerning0
NSG-MAIN\cf0 \cb1 \kerning1\expnd0\expndtw0  \\\
  --subnet \cf2 \cb3 \expnd0\expndtw0\kerning0
SUBNET-01\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 az vm extension \cf7 set\cf2  \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --publisher Microsoft.Azure.Extensions \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --version 2.0 \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --name CustomScript \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --vm-name VM-01 \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --resource-group RG-19-ASR \\\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3   --settings \cf5 '\{"commandToExecute":"apt-get -y update && apt-get -y install apache2 && echo Web Server in Main Region - West Europe - VM-01 > /var/www/html/index.html"\}'}