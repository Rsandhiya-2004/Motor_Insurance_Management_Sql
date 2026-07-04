#CREATE TABLE

CREATE TABLE vehicle_make_t (
    make_id INT,
    make_desc VARCHAR(100) NOT NULL,
    status VARCHAR(20) NOT NULL, 
    added_on DATE DEFAULT (CURRENT_DATE),
    added_by VARCHAR(50),
    CONSTRAINT pk_vehicle_make_t PRIMARY KEY (make_id)
);

CREATE TABLE vehicle_model_t (
    model_id INT,
    model_desc VARCHAR(100) NOT NULL,
    make_id INT NOT NULL,
    status VARCHAR(20) NOT NULL, 
    added_on DATE DEFAULT (CURRENT_DATE),
    added_by VARCHAR(50),
    CONSTRAINT pk_vehicle_model_t PRIMARY KEY (model_id),
    CONSTRAINT fk_vehicle_model_t_make_id FOREIGN KEY (make_id) REFERENCES vehicle_make_t(make_id)
);

CREATE TABLE regions_t (
    region_id INT,
    region_name VARCHAR(50) NOT NULL, 
    state_info VARCHAR(50) NOT NULL,
    city_info VARCHAR(50) NOT NULL,
    CONSTRAINT pk_regions_t PRIMARY KEY (region_id)
);

CREATE TABLE vehicle_color_t (
    color_id INT,
    color_name VARCHAR(50) NOT NULL,
    status VARCHAR(20) NOT NULL,
    CONSTRAINT pk_vehicle_color_t PRIMARY KEY (color_id)
);

CREATE TABLE vehicle_body_t (
    body_id INT,
    body_type VARCHAR(50) NOT NULL, 
    status VARCHAR(20) NOT NULL,
    CONSTRAINT pk_vehicle_body_t PRIMARY KEY (body_id)
);

CREATE TABLE vehicle_category_t (
    category_id INT,
    category_type VARCHAR(50) NOT NULL, 
    status VARCHAR(20) NOT NULL,
    CONSTRAINT pk_vehicle_category_t PRIMARY KEY (category_id)
);

CREATE TABLE master_lov_t (
    lov_id INT,
    lov_category VARCHAR(50) NOT NULL, 
    lov_value VARCHAR(100) NOT NULL,
    CONSTRAINT pk_master_lov_t PRIMARY KEY (lov_id)
);


-- ================================================
-- USER / PERSONAL ARCHITECTURE TABLES
-- ================================================

CREATE TABLE personal_information_t (
    user_id INT,
    usertype VARCHAR(50) NOT NULL, 
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    dob DATE NOT NULL, -- Only date..no Time[cite: 3]
    email VARCHAR(100) NOT NULL,
    marital_status_id INT,
    education_id INT,
    phone VARCHAR(50) NOT NULL, 
    mobile VARCHAR(50),
    addr1 VARCHAR(150),
    addr2 VARCHAR(150),
    addr3 VARCHAR(150),
    street VARCHAR(100),
    city_id INT,
    state_id INT,
    country_id INT,
    national_id VARCHAR(50) NOT NULL, 
    nationality_id INT NOT NULL,
    status VARCHAR(20) NOT NULL, 
    added_on DATE DEFAULT (CURRENT_DATE),
    added_by VARCHAR(50),
    CONSTRAINT pk_personal_information_t PRIMARY KEY (user_id),
    CONSTRAINT fk_personal_info_marital FOREIGN KEY (marital_status_id) REFERENCES master_lov_t(lov_id),
    CONSTRAINT fk_personal_info_education FOREIGN KEY (education_id) REFERENCES master_lov_t(lov_id)
);

CREATE TABLE login_user_t (
    login_id INT,
    password VARCHAR(255) NOT NULL, 
    user_id INT NOT NULL,
    lead_id INT, 
    usertype VARCHAR(50) NOT NULL, 
    status VARCHAR(20) NOT NULL, 
    added_on DATE DEFAULT (CURRENT_DATE),
    added_by VARCHAR(50),
    CONSTRAINT pk_login_user_t PRIMARY KEY (login_id),
    CONSTRAINT fk_login_user_user_id FOREIGN KEY (user_id) REFERENCES personal_information_t(user_id)
);

CREATE TABLE broker_t (
    broker_id INT, 
    broker_name VARCHAR(100), 
    broker_org_name VARCHAR(100), 
    contact_info VARCHAR(255), 
    prepaid_credit_balance DECIMAL(12,2) DEFAULT 0.00,
    status VARCHAR(20) NOT NULL, 
    added_on DATE DEFAULT (CURRENT_DATE),
    added_by VARCHAR(50),
    CONSTRAINT pk_broker_t PRIMARY KEY (broker_id),
    CONSTRAINT fk_broker_user_id FOREIGN KEY (broker_id) REFERENCES personal_information_t(user_id)
);

-- ================================================
-- TRANSACTIONAL / PRODUCT TABLES
-- ================================================


CREATE TABLE product_config_t (
    product_id INT,
    product_name VARCHAR(100) NOT NULL, 
    base_rate DECIMAL(5,2) NOT NULL,
    status VARCHAR(20) NOT NULL,
    CONSTRAINT pk_product_config_t PRIMARY KEY (product_id)
);

CREATE TABLE premium_rate_config_t (
    rate_id INT,
    product_id INT NOT NULL,
    risk_factor VARCHAR(50) NOT NULL,
    modifier_value DECIMAL(5,2) NOT NULL,
    CONSTRAINT pk_premium_rate_config_t PRIMARY KEY (rate_id),
    CONSTRAINT fk_premium_rate_product_id FOREIGN KEY (product_id) REFERENCES product_config_t(product_id)
);

CREATE TABLE quote_information_t (
    quote_id INT,
    customer_name VARCHAR(100) NOT NULL,
    vehicle_make_id INT NOT NULL,
    vehicle_model_id INT NOT NULL,
    vehicle_category_id INT NOT NULL,
    region_id INT NOT NULL,
    cover_plan_type VARCHAR(50) NOT NULL, 
    created_by_user_id INT NOT NULL,
    quote_status VARCHAR(20) NOT NULL,
    CONSTRAINT pk_quote_information_t PRIMARY KEY (quote_id),
    CONSTRAINT fk_quote_vehicle_make_id FOREIGN KEY (vehicle_make_id) REFERENCES vehicle_make_t(make_id),
    CONSTRAINT fk_quote_vehicle_model_id FOREIGN KEY (vehicle_model_id) REFERENCES vehicle_model_t(model_id),
    CONSTRAINT fk_quote_vehicle_cat_id FOREIGN KEY (vehicle_category_id) REFERENCES vehicle_category_t(category_id),
    CONSTRAINT fk_quote_region_id FOREIGN KEY (region_id) REFERENCES regions_t(region_id),
    CONSTRAINT fk_quote_user_id FOREIGN KEY (created_by_user_id) REFERENCES personal_information_t(user_id)
);

CREATE TABLE policy_transaction_t (
    policy_id INT,
    policy_number VARCHAR(50) UNIQUE NOT NULL, 
    quote_id INT NOT NULL,
    premium_amount DECIMAL(10,2) NOT NULL,
    tax_amount DECIMAL(10,2) NOT NULL,
    final_premium DECIMAL(10,2) NOT NULL,
    currency VARCHAR(10) NOT NULL, 
    payment_method VARCHAR(30) NOT NULL, 
    issue_date DATE NOT NULL,
    CONSTRAINT pk_policy_transaction_t PRIMARY KEY (policy_id),
    CONSTRAINT fk_policy_quote_id FOREIGN KEY (quote_id) REFERENCES quote_information_t(quote_id)
);

CREATE TABLE accounting_notes_t (
    note_id INT,
    policy_id INT NOT NULL,
    note_type VARCHAR(20) NOT NULL, 
    amount DECIMAL(10,2) NOT NULL,
    generated_date DATE DEFAULT (CURRENT_DATE),
    CONSTRAINT pk_accounting_notes_t PRIMARY KEY (note_id),
    CONSTRAINT fk_accounting_notes_policy_id FOREIGN KEY (policy_id) REFERENCES policy_transaction_t(policy_id)
);


