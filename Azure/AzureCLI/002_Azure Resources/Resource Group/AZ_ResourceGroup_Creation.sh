#!/usr/bin/env bash
#=====================================================
#Purpose : Automation Script for Resource Group Creation
#Creator : Najib Radzuan
#Date Created : 18/11/2020
#=====================================================

#General Information
azSubsID='c78ae655-e599-44ee-b71d-c384b359eb81'
#Location & Region
azLocation='southeastasia'
azTagDesc=' "Description"="Resource Group Test" '
azTagProduct=' "Product"="do4m" '
azTagEnvironment=' "Environment"="Test" ' 
azTagStakeholder=' "Stakeholder"="DevOps4Me" ' 

#AUTOMATION SCRIPTS:

echo   "Creating Resource Group "
#No1 : Create Resource Group
az group create \
    --name $azRG \
    --subscription $azSubsID \
    --location $azLocation \
    --tags {$azTagDesc,$azTagProduct,$azTagEnvironment,$azTagStakeholder}

echo   "Creating Resource Group finished"

# echo   "Deleting Resource Group Starting"
# az group delete --name $azRG --yes
# echo   "Deleting Resource Group finished"