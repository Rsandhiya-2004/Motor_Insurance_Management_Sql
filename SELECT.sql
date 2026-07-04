# SELECT QUERIES
rigorous_queries.sql
-- 1. Linked Join processing aligning user operational profiles across structural roles
SELECT 
    p.user_id,
    p.first_name,
    p.last_name,
    l.usertype,
    l.status AS operational_status,
    b.broker_org_name
FROM personal_information_t p
INNER JOIN login_user_t l ON p.user_id = l.user_id
INNER JOIN broker_t b ON p.user_id = b.broker_id
ORDER BY b.broker_org_name ASC, p.last_name DESC;

-- 2. Outer Left Join auditing tracking configurations back through structural product quotes
SELECT 
    q.quote_id,
    q.customer_name,
    q.cover_plan_type,
    p.policy_number,
    p.final_premium
FROM quote_information_t q
LEFT JOIN policy_transaction_t p ON q.quote_id = p.quote_id
WHERE q.quote_status = 'Issued'
ORDER BY p.final_premium DESC;

-- 3. Right Join isolating completeness of geographic system entities
SELECT 
    q.quote_id,
    q.customer_name,
    r.region_name,
    r.state_info,
    r.city_info
FROM quote_information_t q
RIGHT JOIN regions_t r ON q.region_id = r.region_id
WHERE r.region_id BETWEEN 1 AND 15
ORDER BY r.region_id ASC;

-- 4. Analytical Window function tracking financial ranking distributions
SELECT 
    pt.policy_id,
    pt.policy_number,
    pt.final_premium,
    pt.currency,
    DENSE_RANK() OVER (
        PARTITION BY pt.currency 
        ORDER BY pt.final_premium DESC
    ) AS pricing_rank_within_currency
FROM policy_transaction_t pt;

-- 5. Multi-level aggregate execution using specific filter parameters and grouping overrides
SELECT 
    m.make_id,
    m.make_desc,
    COUNT(mo.model_id) AS total_tracked_models_count
FROM vehicle_make_t m
INNER JOIN vehicle_model_t mo ON m.make_id = mo.make_id
WHERE m.status = 'Active'
GROUP BY m.make_id, m.make_desc
HAVING COUNT(mo.model_id) >= 1;

-- 6. Advanced conditional classification matching operational requirements
SELECT 
    pi.user_id,
    pi.first_name,
    pi.last_name,
    CASE 
        WHEN pi.dob > '1990-01-01' THEN 'Young Operational Tier'
        WHEN pi.dob BETWEEN '1980-01-01' AND '1990-01-01' THEN 'Experienced Mid Tier'
        ELSE 'Senior Leadership Tier'
    END AS user_demographic_classification
FROM personal_information_t pi
ORDER BY pi.dob ASC;

-- 7. Subquery execution inside filter blocks identifying above-average parameters
SELECT 
    p.policy_id,
    p.policy_number,
    p.final_premium,
    p.issue_date
FROM policy_transaction_t p
WHERE p.final_premium > (
    SELECT AVG(final_premium) 
    FROM policy_transaction_t
)
ORDER BY p.final_premium DESC;

-- 8. Nested Subquery architecture executed inside the FROM clause evaluating performance parameters
SELECT 
    derived_summary.created_by_user_id,
    derived_summary.total_quotes_generated
FROM (
    SELECT q.created_by_user_id, COUNT(q.quote_id) AS total_quotes_generated
    FROM quote_information_t q
    GROUP BY q.created_by_user_id
) AS derived_summary
WHERE derived_summary.total_quotes_generated > 2;

-- 9. Advanced relational string tracking matching operational filter boundaries
SELECT 
    b.body_id,
    b.body_type,
    b.status
FROM vehicle_body_t b
WHERE b.body_type LIKE '%Sedan%' 
   OR b.body_type LIKE '%Jeep%' 
   OR b.body_type LIKE '%4x4%'
ORDER BY b.body_id ASC;

-- 10. Quantitative financial overview metrics generation parsing base operational transaction values
SELECT 
    COUNT(pol.policy_id) AS system_total_issued_policies,
    SUM(pol.final_premium) AS consolidated_gross_written_premium,
    AVG(pol.premium_amount) AS computed_average_base_premium,
    MIN(pol.final_premium) AS lowest_individual_policy_premium,
    MAX(pol.final_premium) AS highest_individual_policy_premium
FROM policy_transaction_t pol
WHERE pol.issue_date >= '2026-01-01';

-- 11. Multi-record structural set checking utilizing ANY operations
SELECT 
    p.user_id,
    p.first_name,
    p.last_name
FROM personal_information_t p
WHERE p.user_id = ANY (
    SELECT q.created_by_user_id 
    FROM quote_information_t q 
    WHERE q.quote_status = 'Issued'
)
ORDER BY p.user_id ASC;

-- 12. Multi-record set exclusion evaluation executing precise ALL subquery statements
SELECT 
    pc.product_id,
    pc.product_name,
    pc.base_rate
FROM product_config_t pc
WHERE pc.product_id <> ALL (
    SELECT pr.product_id 
    FROM premium_rate_config_t pr 
    WHERE pr.modifier_value > 1.50
)
ORDER BY pc.product_id ASC;

-- 13. Distinct structural evaluation filtering processing unique classification subsets
SELECT DISTINCT 
    qi.cover_plan_type,
    qi.quote_status
FROM quote_information_t qi
WHERE qi.quote_status IS NOT NULL
ORDER BY qi.cover_plan_type ASC;

-- 14. Quad-join verification path evaluating system user credential flows
SELECT 
    lu.login_id,
    pi.first_name,
    pi.last_name,
    br.broker_org_name,
    pt.policy_number
FROM login_user_t lu
INNER JOIN personal_information_t pi ON lu.user_id = pi.user_id
INNER JOIN broker_t br ON pi.user_id = br.broker_id
INNER JOIN quote_information_t qi ON pi.user_id = qi.created_by_user_id
INNER JOIN policy_transaction_t pt ON qi.quote_id = pt.quote_id
ORDER BY lu.login_id ASC;

-- 15. Cross-relational audit trace mapping accounting logs to primary policies
SELECT 
    an.note_id,
    an.note_type,
    an.amount AS note_face_value,
    pt.policy_number,
    qi.customer_name
FROM accounting_notes_t an
INNER JOIN policy_transaction_t pt ON an.policy_id = pt.policy_id
INNER JOIN quote_information_t qi ON pt.quote_id = qi.quote_id
WHERE an.generated_date <= '2026-12-31'
ORDER BY an.amount DESC;
