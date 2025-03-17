CREATE TABLE cms_raw.prescription_drug_events (
    desynpuf_id VARCHAR(32),  -- Beneficiary Code (Foreign key reference to beneficiaries table)
    pde_id BIGINT PRIMARY KEY,  -- CCW Part D Event Number
    srvc_dt DATE,  -- RX Service Date
    prod_srvc_id VARCHAR(20),  -- Product Service ID
    qty_dspnsd_num FLOAT,  -- Quantity Dispensed
    days_suply_num INTEGER,  -- Days Supply
    ptnt_pay_amt FLOAT,  -- Patient Pay Amount
    tot_rx_cst_amt FLOAT  -- Gross Drug Cost
);