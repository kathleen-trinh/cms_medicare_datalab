CREATE TABLE cms_raw.inpatient_claims (
	desynpuf_id VARCHAR(32), -- Beneficiary Code (Foreign key reference to beneficiaries table)
    clm_id BIGINT,  -- Claim ID
    segment SMALLINT,  -- Claim Line Segment
    clm_from_dt DATE,  -- Claims start date
    clm_thru_dt DATE,  -- Claims end date
    prvdr_num VARCHAR(10),  -- Provider Institution
    clm_pmt_amt FLOAT,  -- Claim Payment Amount
    nch_prmry_pyr_clm_pd_amt FLOAT,  -- NCH Primary Payer Claim Paid Amount
    at_physn_npi VARCHAR(15),  -- Attending Physician - National Provider Identifier Number
    op_physn_npi VARCHAR(15),  -- Operating Physician - National Provider Identifier Number
    ot_physn_npi VARCHAR(15),  -- Other Physician - National Provider Identifier Number
    clm_admsn_dt DATE,  -- Inpatient admission date
    admtng_icd9_dgns_cd VARCHAR(10),  -- Claim Admitting Diagnosis Code
    clm_pass_thru_per_diem_amt FLOAT,  -- Claim Pass Thru Per Diem Amount
    nch_bene_ip_ddctbl_amt FLOAT,  -- NCH Beneficiary Inpatient Deductible Amount
    nch_bene_pta_coinsrnc_lblty_am FLOAT,  -- NCH Beneficiary Part A Coinsurance Liability Amount
    nch_bene_blood_ddctbl_lblty_am FLOAT,  -- NCH Beneficiary Blood Deductible Liability Amount
    clm_utlztn_day_cnt INTEGER,  -- Claim Utilization Day Count
    nch_bene_dschrg_dt DATE,  -- Inpatient discharged date
    clm_drg_cd VARCHAR(10),  -- Claim Diagnosis Related Group Code

    -- Claim Diagnosis Code 1 - Claim Diagnosis Code 10
    icd9_dgns_cd_1 VARCHAR(10),
    icd9_dgns_cd_2 VARCHAR(10),
    icd9_dgns_cd_3 VARCHAR(10),
    icd9_dgns_cd_4 VARCHAR(10),
    icd9_dgns_cd_5 VARCHAR(10),
    icd9_dgns_cd_6 VARCHAR(10),
    icd9_dgns_cd_7 VARCHAR(10),
    icd9_dgns_cd_8 VARCHAR(10),
    icd9_dgns_cd_9 VARCHAR(10),
    icd9_dgns_cd_10 VARCHAR(10),

    -- Claim Procedure Code 1 - Claim Procedure Code 10
    icd9_prcdr_cd_1 VARCHAR(10),
    icd9_prcdr_cd_2 VARCHAR(10),
    icd9_prcdr_cd_3 VARCHAR(10),
    icd9_prcdr_cd_4 VARCHAR(10),
    icd9_prcdr_cd_5 VARCHAR(10),
    icd9_prcdr_cd_6 VARCHAR(10),

    -- Revenue Center HCFA Common Procedure Coding System 1 - Revenue Center HCFA Common Procedure Coding System 45
    hcpcs_cd_1 VARCHAR(10),
    hcpcs_cd_2 VARCHAR(10),
    hcpcs_cd_3 VARCHAR(10),
    hcpcs_cd_4 VARCHAR(10),
    hcpcs_cd_5 VARCHAR(10),
    hcpcs_cd_6 VARCHAR(10),
    hcpcs_cd_7 VARCHAR(10),
    hcpcs_cd_8 VARCHAR(10),
    hcpcs_cd_9 VARCHAR(10),
    hcpcs_cd_10 VARCHAR(10),
    hcpcs_cd_11 VARCHAR(10),
    hcpcs_cd_12 VARCHAR(10),
    hcpcs_cd_13 VARCHAR(10),
    hcpcs_cd_14 VARCHAR(10),
    hcpcs_cd_15 VARCHAR(10),
    hcpcs_cd_16 VARCHAR(10),
    hcpcs_cd_17 VARCHAR(10),
    hcpcs_cd_18 VARCHAR(10),
    hcpcs_cd_19 VARCHAR(10),
    hcpcs_cd_20 VARCHAR(10),
    hcpcs_cd_21 VARCHAR(10),
    hcpcs_cd_22 VARCHAR(10),
    hcpcs_cd_23 VARCHAR(10),
    hcpcs_cd_24 VARCHAR(10),
    hcpcs_cd_25 VARCHAR(10),
    hcpcs_cd_26 VARCHAR(10),
    hcpcs_cd_27 VARCHAR(10),
    hcpcs_cd_28 VARCHAR(10),
    hcpcs_cd_29 VARCHAR(10),
    hcpcs_cd_30 VARCHAR(10),
    hcpcs_cd_31 VARCHAR(10),
    hcpcs_cd_32 VARCHAR(10),
    hcpcs_cd_33 VARCHAR(10),
    hcpcs_cd_34 VARCHAR(10),
    hcpcs_cd_35 VARCHAR(10),
    hcpcs_cd_36 VARCHAR(10),
    hcpcs_cd_37 VARCHAR(10),
    hcpcs_cd_38 VARCHAR(10),
    hcpcs_cd_39 VARCHAR(10),
    hcpcs_cd_40 VARCHAR(10),
    hcpcs_cd_41 VARCHAR(10),
    hcpcs_cd_42 VARCHAR(10),
    hcpcs_cd_43 VARCHAR(10),
    hcpcs_cd_44 VARCHAR(10),
    hcpcs_cd_45 VARCHAR(10)
	
	-- Composite Primary Key to Avoid Duplicates
	PRIMARY KEY (clm_id, segment)
);