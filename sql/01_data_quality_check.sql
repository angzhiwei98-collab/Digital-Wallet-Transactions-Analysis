-- The dataset is ready for analysis when it was uploaded to Kaggle, yet the following simple data quality checks were conducted to confirm its readiness
-- 01. To make sure the 5,000 transaction IDs are unique
SELECT
  COUNT (DISTINCT transaction_id)
FROM
  `project1-502206.digital_wallet.digital_wallet_transactions`

  
-- 02. To check is there any negative value in numeric columns
SELECT
  COUNTIF(product_amount < 0),
  COUNTIF(transaction_fee < 0),
  COUNTIF(cashback < 0),
  COUNTIF(loyalty_points < 0)
FROM
  `project1-502206.digital_wallet.digital_wallet_transactions`
