# TRIGGERS
-- ================================================
-- TRIGGERS
-- ================================================

-- 1. BEFORE INSERT: Prevents negative financial base allocations on product entry 
CREATE TRIGGER BeforeProductConfigInsert
BEFORE INSERT ON product_config_t
FOR EACH ROW
BEGIN
    IF NEW.base_rate < 0.00 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Error: Premium operational base rate metric configurations cannot be negative.';
    END IF;
END$$

-- 2. AFTER UPDATE: Tracks premium configuration updates for regional risk compliance audits
CREATE TRIGGER AfterPremiumRateConfigUpdate
AFTER UPDATE ON premium_rate_config_t
FOR EACH ROW
BEGIN
    IF OLD.modifier_value <> NEW.modifier_value THEN
        SET @audit_last_modified_rate_id = NEW.rate_id;
    END IF;
END$$

-- 3. BEFORE INSERT: Normalizes target strings for data consistency
CREATE TRIGGER BeforePersonalInformationInsert
BEFORE INSERT ON personal_information_t
FOR EACH ROW
BEGIN
    SET NEW.email = LOWER(TRIM(NEW.email));
END$$

DELIMITER ;


