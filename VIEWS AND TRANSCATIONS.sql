# VIEWS AND TRANSCATIONS

views_and_transactions.sql
-- Creating Database Reporting Views (Aggregate Dashboards)
CREATE VIEW RegionalBusinessAggregateDashboard AS
SELECT 
    r.region_id,
    r.region_name,
    COUNT(p.policy_id) AS complete_issued_policies_count,
    SUM(p.final_premium) AS aggregate_gross_written_premium,
    AVG(p.premium_amount) AS normalized_average_base_premium
FROM regions_t r
LEFT JOIN quote_information_t q ON r.region_id = q.region_id
LEFT JOIN policy_transaction_t p ON q.quote_id = p.quote_id
GROUP BY r.region_id, r.region_name;


-- Core Targeted Execution DML Modifications (INSERT, UPDATE, DELETE)
INSERT INTO vehicle_color_t VALUES (26, 'Titanium Grey Metal', 'Active');

UPDATE vehicle_color_t 
SET status = 'Deactive' 
WHERE color_id = 21;

DELETE FROM vehicle_color_t 
WHERE color_id = 26;


-- Comprehensive Transaction Flow honoring full ACID properties
START TRANSACTION;

SAVEPOINT OrderVerificationState;

-- Setup structural transaction record
INSERT INTO quote_information_t VALUES (26, 'Transaction Stress Client', 1, 101, 1, 1, 'Comprehensive', 5, 'Quoted');

-- Perform state mutation based on financial operations outcome
UPDATE quote_information_t 
SET quote_status = 'Issued' 
WHERE quote_id = 26;

-- Verification block simulation: if failure metrics trigger, revert states safely using:
-- ROLLBACK TO SAVEPOINT OrderVerificationState;

COMMIT;

