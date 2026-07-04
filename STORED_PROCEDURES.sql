# STORED_PROCEDURES


DELIMITER $$

-- ================================================
-- STORED PROCEDURES 
-- ================================================

-- 1. In/Out params calculation procedure: Computes dynamic total financial obligation including policy taxes
CREATE PROCEDURE DeductPrepaidBrokerBalance(
    IN p_broker_id INT,
    IN p_amount DECIMAL(10,2),
    OUT p_success_flag VARCHAR(20)
)
BEGIN
    DECLARE v_current_balance DECIMAL(12,2);
    
    SELECT prepaid_credit_balance INTO v_current_balance 
    FROM broker_t WHERE broker_id = p_broker_id;
    
    IF v_current_balance >= p_amount THEN
        UPDATE broker_t 
        SET prepaid_credit_balance = prepaid_credit_balance - p_amount 
        WHERE broker_id = p_broker_id;
        SET p_success_flag = 'SUCCESS';
    ELSE
        SET p_success_flag = 'INSUFFICIENT_FUNDS';
    END IF;
END$$

-- 2. Data management modification procedure: Updates dynamic asset states cleanly
CREATE PROCEDURE UpdateQuoteStatus(
    IN p_quote_id INT,
    IN p_status VARCHAR(20)
)
BEGIN
    UPDATE quote_information_t 
    SET quote_status = p_status 
    WHERE quote_id = p_quote_id;
END$$

-- 3. Informational fetch procedure: Returns profile metrics
CREATE PROCEDURE GetRegionalBusinessPerformance(
    IN p_region_id INT
)
BEGIN
    SELECT 
        q.quote_status, 
        COUNT(q.quote_id) AS record_count
    FROM quote_information_t q
    WHERE q.region_id = p_region_id
    GROUP BY q.quote_status;
END$$
