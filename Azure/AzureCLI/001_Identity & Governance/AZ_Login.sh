#!/usr/bin/env bash
#=======================================================================
#Purpose : Automation Script for Login to Azure Cloud
#Creator : Najib Radzuan
#Date Created : 18/11/2020
#=======================================================================
#Azure Credentials & Subs Details
azUsername="<email>"
azPassword="<password>"
azSubsID="Azure Subs ID"
azTenantID="Azure Tenant ID"

#AZ Login
az login -u $azUsername -p $azPassword