#!/usr/bin/env bash
#=======================================================================
#Purpose : Azure Resource Automation Script for VM Creation
#Creator : Najib Radzuan
#Date Created : 18/11/2020
#=======================================================================
#General Information
azSubsID='c78ae655-e599-44ee-b71d-c384b359eb81'
azRG='sea-do4m-client-rsg'
#ARM for VM RSG Template List
azARMTemplateFile='VM_ARMTemplate.json'

#AUTOMATION SCRIPTS:

#No2 : Create for following resources:
#2.1 Network Interface
#2.2 Public IP address
#2.3 Network Security Group
#2.4 Virtual Network	
#2.5 Storage Account
#2.6 Disk
#2.7 Network Interface
az group deployment create --resource-group $azRG \
--subscription $azSubsID --template-file $azARMTemplateFile