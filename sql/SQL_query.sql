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

-- 03. To use SQL to extract transaction fees data from each product category, and then sort them in descending order
SELECT
  product_category,
  ROUND (
    SUM(transaction_fee),
    2
    )
    AS fee_income,
  ROUND (
    SUM (transaction_fee) / SUM(SUM(transaction_fee)) OVER() * 100,
    2
    )
    AS fee_income_percentage
FROM
  `project1-502206.digital_wallet.digital_wallet_transactions`
GROUP BY
  product_category
ORDER BY
  fee_income DESC

-- 04. To use SQL to extract transaction fees and product amount from each product category. Then, calculate the fee yield.
-- Fee yield refers to how many percent the company earns from product amount (GMV).
SELECT
  product_category,
  ROUND (
    SUM (product_amount),
    2
    ) AS product_amount,
  ROUND (
    SUM(transaction_fee),
    2
    )
    AS transaction_fee,
  ROUND (
    SUM(transaction_fee) / SUM(product_amount) * 100,
    2
    ) AS fee_yield
FROM
  `project1-502206.digital_wallet.digital_wallet_transactions`
GROUP BY
  product_category
ORDER BY
  fee_yield DESC

-- 05. To use SQL to extract each device type with number of successful, failed and pending transactions. Then, calculate the transaction status rate.
SELECT
  device_type,
  transaction_status,
  COUNT (transaction_status) AS quantity,
  ROUND(
    COUNT (transaction_status) / SUM(COUNT(transaction_status)) OVER(PARTITION BY device_type) * 100,
    2
    ) AS transaction_status_rate
FROM
  `project1-502206.digital_wallet.digital_wallet_transactions`
GROUP BY
  Device_type,transaction_status
