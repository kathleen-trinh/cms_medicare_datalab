# database_setup
Use the SQL files in this folder to create a database for CMS Data.

# Database Structure
cms_data (Database) \
│ \
├── cms_raw (Schema)    -- Raw Data from CMS \
│   ├── beneficiaries_2008 \
│   ├── beneficiaries_2009 \
│   ├── beneficiaries_2010 \
│   ├── carrier_claims \
│   ├── inpatient_claims \
│   ├── outpatient_claims \
│   ├── prescription_drug_events \
│ \
├── cms_stg (Schema)    -- Staging Tables \
│   ├── TBD \
│ \
├── cms_prd (Schema)    -- Production Tables \
│   ├── gender_lookup \
│   ├── race_lookup \
│   ├── state_lookup \
│ \
└── logs \
    ├── TBD