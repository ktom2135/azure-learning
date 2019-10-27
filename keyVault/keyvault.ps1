# To list locations: az account list-locations --output table

$groupName = "keyvault"
$keyVaultName = "ktomKeyVault"

az group create --name $groupName --location "West US"

az keyvault create --name $keyVaultName --resource-group $groupName --location "West US"

az keyvault secret set --vault-name $keyVaultName --name "AppSecret" --value "MySecret"

az keyvault secret show --name "AppSecret" --vault-name $keyVaultName

az group delete --name $groupName

