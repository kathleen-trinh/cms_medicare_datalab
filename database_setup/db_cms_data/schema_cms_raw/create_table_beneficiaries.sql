CREATE TABLE cms_raw.beneficiaries (
    desynpuf_id VARCHAR(32) PRIMARY KEY,  -- Beneficiary Code (Unique identifier)
    bene_birth_dt DATE,  -- Date of birth
    bene_death_dt DATE,  -- Date of death (nullable)
    bene_sex_ident_cd INTEGER CHECK (bene_sex_ident_cd IN (1, 2)),  -- Sex
    bene_race_cd INTEGER,  -- Beneficiary Race Code
    bene_esrd_ind CHAR(1) CHECK (bene_esrd_ind IN ('0', 'Y')),  -- End-stage renal disease Indicator
    sp_state_code INTEGER,  -- State Code
    bene_county_cd INTEGER,  -- County Code
    bene_hi_cvrage_tot_mons INTEGER,  -- Total number of months of part A coverage for the beneficiary
    bene_smi_cvrage_tot_mons INTEGER,  -- Total number of months of part B coverage for the beneficiary
    bene_hmo_cvrage_tot_mons INTEGER,  -- Total number of months of HMO coverage for the beneficiary
    plan_cvrg_mos_num INTEGER,  -- Total number of months of part D plan coverage for the beneficiary
    sp_alzhdmta INTEGER CHECK (sp_alzhdmta IN (1, 2)),  -- Chronic Condition: Alzheimer or related disorders or senile
    sp_chf INTEGER CHECK (sp_chf IN (1, 2)),  -- Chronic Condition: Heart Failure
    sp_chrnkidn INTEGER CHECK (sp_chrnkidn IN (1, 2)),  -- Chronic Condition: Chronic Kidney Disease
    sp_cncr INTEGER CHECK (sp_cncr IN (1, 2)),  -- Chronic Condition: Cancer
    sp_copd INTEGER CHECK (sp_copd IN (1, 2)),  -- Chronic Condition: Chronic Obstructive Pulmonary Disease
    sp_depressn INTEGER CHECK (sp_depressn IN (1, 2)),  -- Chronic Condition: Depression
    sp_diabetes INTEGER CHECK (sp_diabetes IN (1, 2)),  -- Chronic Condition: Diabetes
    sp_ischmcht INTEGER CHECK (sp_ischmcht IN (1, 2)),  -- Chronic Condition: Ischemic Heart Disease
    sp_osteoprs INTEGER CHECK (sp_osteoprs IN (1, 2)),  -- Chronic Condition: Osteoporosis
    sp_ra_oa INTEGER CHECK (sp_ra_oa IN (1, 2)),  -- Chronic Condition: rheumatoid arthritis and osteoarthritis (RA/OA)
    sp_strketia INTEGER CHECK (sp_strketia IN (1, 2)),  -- Chronic Condition: Stroke/transient Ischemic Attack
    medreimb_ip FLOAT,  -- Inpatient annual Medicare reimbursement amount
    benres_ip FLOAT,  -- Inpatient annual beneficiary responsibility amount
    pppymt_ip FLOAT,  -- Inpatient annual primary payer reimbursement amount
    medreimb_op FLOAT,  -- Outpatient Institutional annual Medicare reimbursement amount
    benres_op FLOAT,  -- Outpatient Institutional annual beneficiary responsibility amount
    pppymt_op FLOAT,  -- Outpatient Institutional annual primary payer reimbursement amount
    medreimb_car FLOAT,  -- Carrier annual Medicare reimbursement amount
    benres_car FLOAT,  -- Carrier annual beneficiary responsibility amount
    pppymt_car FLOAT  -- Carrier annual primary payer reimbursement amount
);