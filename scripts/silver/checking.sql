/*
CHECK FOR DUPLICATES IN PRIMARY KEY IN silver.crm_cust_info
EXPECTATION NO RESULT
*/

SELECT cst_id,COUNT(*) FROM silver.crm_cust_info
GROUP BY cst_id
HAVING COUNT (*) > 1 OR cst_id IS NULL

/*
CHECK FOR UNWANTED SPACES in the tables (cst_firstname, cst_lastname,cst_gndr, cst_marital_status) from  silver.crm_cust_info
*/
SELECT cst_firstname FROM silver.crm_cust_info
WHERE cst_firstname != TRIM(cst_firstname)

SELECT cst_firstname FROM silver.crm_cust_info
WHERE cst_firstname != TRIM(cst_lastname)

SELECT cst_gndr FROM silver.crm_cust_info
WHERE cst_gndr != TRIM(cst_gndr)

SELECT cst_marital_status) from silver.crm_cust_info
WHERE cst_marital_status != TRIM(cst_marital_status)

/*
Dada Standarlization and Consistency
  CHECK FOR THE DIFFENT RESULTS FOR cst_gndr and cst_marital_status, 
to see if the change from 'M' to 'Male, 'F' to 'Female' and NULL 
to 'Unknown were successful. 
*/

SELECT DISTINCT cst_gndr FROM silver.crm_cust_info
