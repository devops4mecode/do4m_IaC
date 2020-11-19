#!/usr/bin/env bash
#=====================================================
#Purpose : Automation Script for AppService Creation
#Creator : Najib Radzuan
#Date Created : 19/11/2020
#=====================================================

#Resource Group
azRG='sea-do4m-client-rsg'
#Azure AppService Plan & AppService
azAppServicePlanName="do4m-appserviceplan-test"
azAppServiceName="do4m-appservice-test"
azNumberofWorker=1
#for sku value : B1, B2, B3, D1, F1, FREE, P1V2, P2V2, P3V2, PC2, PC3, PC4, S1, S2, S3, SHARED
azSKUType='S1'
#Tagging
azTagDesc='Description=Resource Group Test'
azTagProduct='Product=do4m'
azTagEnvironment='Environment=Test' 
azTagStakeholder='Stakeholder=DevOps4Me' 

azARMAppServiceTemp='AppService_ARMTemplate.json'

echo   "Creating App Service Plan for Web App Service"
az appservice plan create -g $azRG -n $azAppServicePlanName \
--subscription $azSubsID --number-of-workers $azNumberofWorker --sku $azSKUType --tags $myTag
echo   "Creating App Service from ARM template"
#No2.3: Create App Service from ARM template
az group deployment create --name $azAppServiceName --resource-group $azRG \
--subscription $azSubsID --template-file $azARMAppServiceTemp
echo   "Creating Azure App Service finished"