-- To identify which device type has the least transaction successful rate
-- There are 3 types of device: Android, iOS, Web
-- 3 types of transaction status: Successful, Failed, Pending

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
