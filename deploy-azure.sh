#!/bin/bash

# FOR-LOVE Azure Deployment Script
# This script helps deploy your love confession website to Azure Static Web Apps

echo "💕 FOR-LOVE Deployment Script 💕"
echo "=================================="

# Check if Azure CLI is installed
if ! command -v az &> /dev/null; then
    echo "❌ Azure CLI not found. Please install it first:"
    echo "   https://docs.microsoft.com/en-us/cli/azure/install-azure-cli"
    exit 1
fi

# Check if user is logged in
if ! az account show &> /dev/null; then
    echo "🔐 Please login to Azure first:"
    az login
fi

echo "📋 Available Azure subscriptions:"
az account list --output table

read -p "🎯 Enter your subscription ID (or press Enter for default): " SUBSCRIPTION_ID
if [ ! -z "$SUBSCRIPTION_ID" ]; then
    az account set --subscription "$SUBSCRIPTION_ID"
fi

read -p "🌍 Enter resource group name (or press Enter for 'rg-for-love'): " RESOURCE_GROUP
RESOURCE_GROUP=${RESOURCE_GROUP:-"rg-for-love"}

read -p "🏠 Enter Static Web App name (or press Enter for 'swa-for-love'): " APP_NAME
APP_NAME=${APP_NAME:-"swa-for-love"}

read -p "📍 Enter location (or press Enter for 'East US 2'): " LOCATION
LOCATION=${LOCATION:-"East US 2"}

echo ""
echo "🚀 Creating Azure resources..."
echo "   Resource Group: $RESOURCE_GROUP"
echo "   App Name: $APP_NAME"
echo "   Location: $LOCATION"
echo ""

# Create resource group
echo "📦 Creating resource group..."
az group create --name "$RESOURCE_GROUP" --location "$LOCATION"

# Create Static Web App
echo "🌐 Creating Static Web App..."
az staticwebapp create \
    --name "$APP_NAME" \
    --resource-group "$RESOURCE_GROUP" \
    --source "https://github.com/sreevarshan-xenoz/FOR-LOVE" \
    --location "$LOCATION" \
    --branch "main" \
    --app-location "/" \
    --output-location "/" \
    --login-with-github

echo ""
echo "✅ Deployment completed!"
echo ""
echo "🎉 Your love confession website is now live!"
echo "📱 You can access it at: https://$APP_NAME.azurestaticapps.net"
echo ""
echo "💡 Next steps:"
echo "   1. Customize the content in index.html (see CUSTOMIZATION.md)"
echo "   2. Test the website thoroughly"
echo "   3. Share the URL with your special someone!"
echo ""
echo "💍 Good luck with your proposal!"
