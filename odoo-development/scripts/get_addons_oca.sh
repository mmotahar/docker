#!/bin/sh

{
git clone -b 8.0 https://github.com/OCA/account-analytic.git
} || {

cd account-analytic
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/account-budgeting.git
} || {

cd account-budgeting
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/account-closing.git
} || {

cd account-closing
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/account-consolidation.git
} || {

cd account-consolidation
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/account-financial-reporting.git
} || {

cd account-financial-reporting
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/account-financial-tools.git
} || {

cd account-financial-tools
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/account-fiscal-rule.git
} || {

cd account-fiscal-rule
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/account-invoice-reporting.git
} || {

cd account-invoice-reporting
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/account-invoicing.git
} || {

cd account-invoicing
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/account-payment.git
} || {

cd account-payment
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/vertical-hotel.git
} || {

cd vertical-hotel
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/vertical-travel.git
} || {

cd vertical-travel
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/delivery-carrier.git
} || {

cd delivery-carrier
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/event.git
} || {

cd event
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/server-tools.git
} || {

cd server-tools
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/odoomrp/odoomrp-wip.git
} || {

cd odoomrp-wip
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/odoomrp/odoomrp-utils.git
} || {

cd odoomrp-utils
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/oca/operating-unit.git
} || {

cd operating-unit
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/reporting-engine.git
} || {

cd reporting-engine
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/commission.git
} || {

cd commission
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/connector.git
} || {

cd connector
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/connector-interfaces.git
} || {

cd connector-interfaces
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/connector-telephony.git
} || {

cd connector-telephony
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/partner-contact.git
} || {

cd partner-contact
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/stock-logistics-warehouse.git
} || {

cd stock-logistics-warehouse
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/sale-workflow.git
} || {

cd sale-workflow
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/project.git
} || {

cd project
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/project-service.git
} || {

cd project-service
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/contract.git
} || {

cd contract
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/web.git
} || {

cd web
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/product-attribute.git
} || {

cd product-attribute
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/pos.git
} || {

cd pos
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/manufacture.git
} || {

cd manufacture
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/manufacture-reporting.git
} || {

cd manufacture-reporting
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/knowledge.git
} || {

cd knowledge
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/stock-logistics-barcode.git
} || {

cd stock-logistics-barcode
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/multi-company.git
} || {

cd multi-company
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/hr.git
} || {

cd hr
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/l10n-spain.git
} || {

cd l10n-spain
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/purchase-workflow.git
} || {

cd purchase-workflow
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/crm.git
} || {

cd crm
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/stock-logistics-workflow.git
} || {

cd stock-logistics-workflow
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/social.git
} || {

cd social
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/rma.git
} || {

cd rma
git pull
cd ..
}

{
git clone -b master https://github.com/OCA/maintainer-quality-tools.git
} || {

cd maintainer-quality-tools
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/management-system.git
} || {

cd management-system
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/bank-statement-import.git
} || {

cd bank-statement-import
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/runbot-addons.git
} || {

cd runbot-addons
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/e-commerce.git
} || {

cd e-commerce
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/sale-reporting.git
} || {

cd sale-reporting
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/bank-payment.git
} || {

cd bank-payment
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/bank-statement-reconcile.git
} || {

cd bank-statement-reconcile
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/business-requirement.git
} || {

cd business-requirement
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/hr-timesheet.git
} || {

cd hr-timesheet
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/intrastat.git
} || {

cd intrastat
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/stock-logistics-transport.git
} || {

cd stock-logistics-transport
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/product-variant.git
} || {

cd product-variant
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/product-kitting.git
} || {

cd product-kitting
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/department.git
} || {

cd department
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/stock-logistics-reporting.git
} || {

cd stock-logistics-reporting
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/purchase-reporting.git
} || {

cd purchase-reporting
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/sale-financial.git
} || {

cd sale-financial
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/stock-logistics-tracking.git
} || {

cd stock-logistics-tracking
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/project-reporting.git
} || {

cd project-reporting
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/margin-analysis.git
} || {

cd margin-analysis
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/webkit-tools.git
} || {

cd webkit-tools
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/website.git
} || {

cd website
git pull
cd ..
}

{
git clone -b 8.0 https://github.com/OCA/website-cms.git
} || {

cd website-cms
git pull
cd ..
}
