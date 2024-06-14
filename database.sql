
CREATE TABLE "user" (
    "id" SERIAL PRIMARY KEY,
    "email" VARCHAR (80) UNIQUE NOT NULL,
    "password" VARCHAR (1000) NOT NULL,
    "first_name" VARCHAR NOT NULL,
    "last_name" VARCHAR NOT NULL, 
    "company" VARCHAR NOT NULL, 
    "industry" int REFERENCES "industry" ON DELETE CASCADE 
);

CREATE TABLE "monthly_data" (
    "id" SERIAL PRIMARY KEY,
    "user_id" int REFERENCES "user" ON DELETE CASCADE,
    "year" INTEGER,
    "month" INTEGER,
    "net_income" DECIMAL, 
    "sales" DECIMAL, 
    "assets" DECIMAL, 
    "equity" DECIMAL, 
    "tax_rate"DECIMAL,
    "earning_before_taxes" DECIMAL,
);


CREATE TABLE "metrics" (
    "id" SERIAL PRIMARY KEY,
    "positive_text" VARCHAR,
    "negative_text" VARCHAR
);

CREATE TABLE "monthly_metrics" (
    "id" SERIAL PRIMARY KEY,
    "monthly_id" int REFERENCES "monthly_data" ON DELETE CASCADE,
    "metrics_id" int REFERENCES "metrics" ON DELETE CASCADE,
    "metric_value" DECIMAL, 
    "variance_value" DECIMAL, 
    "completed_date" DATETIME, 
    "notes" VARCHAR 
);

CREATE TABLE "industry" (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR, 
    "profit_margin" DECIMAL, 
    "asset_turnover_ratio" DECIMAL, 
    "financial_leverage_ratio" DECIMAL,
    "return_on_equity" DECIMAL, 
    "tax_burden" DECIMAL,
    "interest_burden" DECIMAL 
);















