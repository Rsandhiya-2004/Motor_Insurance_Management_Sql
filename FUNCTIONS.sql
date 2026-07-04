# FUNCTIONS
-- ================================================
-- FUNCTIONS
-- ================================================

-- 1. String processing scalar function: Concatenates structural human fields securely
CREATE FUNCTION GetFormattedUserName(p_user_id INT) 
RETURNS VARCHAR(105)
DETERMINISTIC
BEGIN
    DECLARE v_first VARCHAR(50);
    DECLARE v_last VARCHAR(50);
    SELECT first_name, last_name INTO v_first, v_last 
    FROM personal_information_t WHERE user_id = p_user_id;
    RETURN CONCAT(v_last, ', ', v_first);
END$$

-- 2. Numerical aggregation processing function: Determines dynamic portfolio averages
CREATE FUNCTION GetAverageRegionalPremium(p_region_id INT) 
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE v_avg DECIMAL(10,2);
    SELECT AVG(p.final_premium) INTO v_avg 
    FROM policy_transaction_t p
    JOIN quote_information_t q ON p.quote_id = q.quote_id
    WHERE q.region_id = p_region_id;
    RETURN COALESCE(v_avg, 0.00);
END$$

-- 3. Business logical status confirmation function: Checks structural eligibility ranges
CREATE FUNCTION EvaluateAccountActivityStatus(p_login_id INT) 
RETURNS VARCHAR(30)
DETERMINISTIC
BEGIN
    DECLARE v_status VARCHAR(20);
    SELECT status INTO v_status 
    FROM login_user_t WHERE login_id = p_login_id;
    
    IF v_status = 'True' THEN
        RETURN 'ACCESS_GRANTED';
    ELSE
        RETURN 'ACCESS_DENIED_SUSPENDED';
    END IF;
END$$


