#!/usr/bin/env bash

#Azure Credentials & Subs Details
azUsername="<email>"
azPassword="<password>"
azSubsID="Azure Subs ID"
azTenantID="Azure Tenant ID"

#AZ Login
az login -u $azUsername -p $azPassword