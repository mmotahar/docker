#!/bin/bash

folderRepos=`pwd`
folderOca="$folderRepos/oca"
ocaBranch='11.0'

function getModulesOca()
{
    ### Repo OCA ####
    if [ -d $folderOca ]; then
        exit
    fi
    mkdir $folderOca
    cd $folderOca
    git clone https://github.com/OCA/stock-logistics-workflow.git -b $ocaBranch
    git clone https://github.com/OCA/account-financial-reporting.git -b $ocaBranch
    git clone https://github.com/OCA/server-tools.git -b $ocaBranch
    git clone https://github.com/OCA/web.git -b $ocaBranch
    git clone https://github.com/OCA/reporting-engine.git -b $ocaBranch
    git clone https://github.com/OCA/partner-contact.git -b $ocaBranch
    git clone https://github.com/OCA/website.git -b $ocaBranch
    git clone https://github.com/OCA/sale-workflow.git -b $ocaBranch
    git clone https://github.com/OCA/stock-logistics-warehouse.git -b $ocaBranch
    git clone https://github.com/OCA/stock-logistics-barcode.git -b $ocaBranch
    git clone https://github.com/OCA/social.git -b $ocaBranch
    git clone https://github.com/OCA/rma.git -b $ocaBranch
    git clone https://github.com/OCA/account-payment.git -b $ocaBranch
    git clone https://github.com/OCA/account-financial-tools.git -b $ocaBranch
    git clone https://github.com/OCA/account-invoicing.git -b $ocaBranch
    git clone https://github.com/OCA/purchase-workflow.git -b $ocaBranch
    git clone https://github.com/OCA/product-variant.git -b $ocaBranch
    git clone https://github.com/OCA/product-attribute.git -b $ocaBranch
    git clone https://github.com/OCA/pos.git -b $ocaBranch
    git clone https://github.com/OCA/manufacture.git -b $ocaBranch
    git clone https://github.com/OCA/management-system.git -b $ocaBranch
    git clone https://github.com/OCA/knowledge.git -b $ocaBranch
    git clone https://github.com/OCA/hr.git
    git clone https://github.com/OCA/e-commerce.git -b $ocaBranch
    git clone https://github.com/OCA/crm.git -b $ocaBranch
    git clone https://github.com/OCA/contract.git -b $ocaBranch
    git clone https://github.com/OCA/commission.git -b $ocaBranch
    git clone https://github.com/OCA/bank-statement-reconcile.git -b $ocaBranch
    git clone https://github.com/OCA/bank-statement-import.git -b $ocaBranch
    git clone https://github.com/OCA/bank-payment.git -b $ocaBranch
    git clone https://github.com/OCA/account-fiscal-rule.git -b $ocaBranch
    git clone https://github.com/OCA/account-invoice-reporting.git -b $ocaBranch
    git clone https://github.com/OCA/account-closing.git -b $ocaBranch
    git clone https://github.com/OCA/account-budgeting.git -b $ocaBranch
    git clone https://github.com/OCA/account-analytic.git -b $ocaBranch
    git clone https://github.com/OCA/operating-unit.git -b $ocaBranch
    git clone https://github.com/OCA/stock-logistics-transport.git -b $ocaBranch
    git clone https://github.com/OCA/hr-timesheet.git -b $ocaBranch
    git clone https://github.com/OCA/event.git -b $ocaBranch
    git clone https://github.com/OCA/intrastat.git -b $ocaBranch
    git clone https://github.com/OCA/sale-financial.git -b $ocaBranch
    git clone https://github.com/OCA/project-reporting.git -b $ocaBranch
    git clone https://github.com/OCA/margin-analysis.git -b $ocaBranch
    git clone https://github.com/OCA/stock-logistics-tracking.git -b $ocaBranch
    git clone https://github.com/OCA/sale-reporting.git -b $ocaBranch
    git clone https://github.com/OCA/purchase-reporting.git -b $ocaBranch
    git clone https://github.com/OCA/manufacture-reporting.git -b $ocaBranch
    git clone https://github.com/OCA/account-consolidation.git -b $ocaBranch
    git clone https://github.com/OCA/l10n-spain.git -b $ocaBranch
    git clone https://github.com/OCA/connector.git -b $ocaBranch
}

getModulesOca
