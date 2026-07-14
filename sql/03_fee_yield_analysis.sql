-- To identify which product category has the highest fee yield
-- Fee yield refers to how many percent the company earns from product amount (GMV)

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
