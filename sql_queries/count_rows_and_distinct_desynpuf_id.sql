DO $$ 
DECLARE 
    r RECORD;
    sql_query TEXT;
    row_count INT;
    unique_count INT;
BEGIN
    -- Loop through each table in the 'cms_raw' schema
    FOR r IN (SELECT tablename FROM pg_tables WHERE schemaname = 'cms_raw') LOOP
        -- Generate the dynamic query
        sql_query := format(
            'SELECT COUNT(*), COUNT(DISTINCT desynpuf_id) FROM cms_raw.%I', 
            r.tablename
        );

        -- Execute the query and store the results
        EXECUTE sql_query INTO row_count, unique_count;

        -- Print results to the console
        RAISE NOTICE 'Table: %, Total Rows: %, Distinct desynpuf_id: %', 
            r.tablename, row_count, unique_count;
    END LOOP;
END $$;

/*
Output of CMS SynPUF Sample 1:

NOTICE:  Table: beneficiaries_2008, Total Rows: 116352, Distinct desynpuf_id: 116352
NOTICE:  Table: beneficiaries_2009, Total Rows: 114538, Distinct desynpuf_id: 114538
NOTICE:  Table: beneficiaries_2010, Total Rows: 112754, Distinct desynpuf_id: 112754
NOTICE:  Table: carrier_claims, Total Rows: 4741335, Distinct desynpuf_id: 98626
NOTICE:  Table: prescription_drug_events, Total Rows: 5552421, Distinct desynpuf_id: 99538
NOTICE:  Table: inpatient_claims, Total Rows: 66773, Distinct desynpuf_id: 37780
NOTICE:  Table: outpatient_claims, Total Rows: 790790, Distinct desynpuf_id: 85272
DO

Query returned successfully in 17 secs 218 msec.
*/