-- To identify top product category that generates most transaction fees

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
