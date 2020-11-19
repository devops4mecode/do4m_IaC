#!/usr/bin/env bash
#=====================================================
#Purpose : Automation Script for Storage Account Creation
#Creator : Najib Radzuan
#Date Created : 18/11/2020
#=====================================================

#Resource Group
azRG='sea-do4m-client-rsg'
#Location & Region
azLocation='southeastasia'
#Storage Account
azStorageName="do4mstorageacct"
# Standard_LRS	Storage, BlobStorage	Standard Locally Redundant Storage
azStorageSKU='Standard_LRS'
#Tagging
azTagDesc=' "Description"="Resource Group Test" '
azTagProduct=' "Product"="do4m" '
azTagEnvironment=' "Environment"="Test" ' 
azTagStakeholder=' "Stakeholder"="DevOps4Me" ' 

# Create an azure storage account
echo   "Creating Storage Account"
az storage account create \
  --name $azStorageName \
  --location $azLocation \
  --resource-group $azRG \
  --subscription $azSubsID \
  --sku $azStorageSKU \
  --tags {$azTagDesc,$azTagProduct,$azTagEnvironment,$azTagStakeholder}
  echo   "Finsihed creating Storage Account"
