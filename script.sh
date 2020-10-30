az group create \

--name RG-19-ASR \

--location westeurope



az network vnet create \

  --resource-group RG-19-ASR \

  --name MAIN-vNET \

  --subnet-name SUBNET-01



az network nsg create \

  --resource-group RG-19-ASR \

  --name NSG-MAIN



az network nsg rule create \

  --resource-group RG-19-ASR \

  --name MAIN-vNET-NSG-RULE \

  --nsg-name NSG-MAIN \

  --protocol tcp \

  --direction inbound \

  --source-address-prefix '*' \

  --source-port-range '*' \

  --destination-address-prefix '*' \

  --destination-port-range 80 \

  --access allow \

  --priority 200


az network nsg rule create \

  --resource-group RG-19-ASR \

  --name MAIN-vNET-SSH-RULE \

  --nsg-name NSG-MAIN \

  --protocol tcp \

  --direction inbound \

  --source-address-prefix '*' \

  --source-port-range '*' \

  --destination-address-prefix '*' \

  --destination-port-range 22 \

  --access allow \

  --priority 300




az network vnet subnet update \

  --resource-group RG-19-ASR \

  --vnet-name MAIN-vNET \

  --name SUBNET-01 \

  --network-security-group NSG-MAIN


az vm create \

  --resource-group RG-19-ASR \

  --name VM-01 \

  --admin-username adminuser \

  --admin-password adminadmin123! \

  --image UbuntuLTS \
  
  --vnet-name MAIN-vNET \
  
  --nsg NSG-MAIN \
  
  --subnet SUBNET-01



az vm extension set \

  --publisher Microsoft.Azure.Extensions \

  --version 2.0 \

  --name CustomScript \

  --vm-name VM-01 \

  --resource-group RG-19-ASR \

  --settings '{"commandToExecute":"apt-get -y update && apt-get -y install apache2 && echo Web Server in Main Region - West Europe - VM-01 > /var/www/html/index.html"}'
