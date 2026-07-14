# Digital Wallet Transaction Analysis

## Project Overview

This project analyzes one year of transaction records from a simulated digital wallet company to identify opportunities for improving profitability.

The analysis was conducted using SQL in Google BigQuery, with a focus on transaction fee performance, fee yield, and transaction success rates across different devices.

---

## Dataset

- **Source:** Kaggle
- **Dataset:** Digital Wallet Transactions
- **Records:** 5,000 transactions
- **Time Period:** 19 Aug 2023 – 18 Aug 2024
- **Features:** 16 columns including transaction amount, fee, cashback, payment method, device type, merchant, and transaction status.

> This dataset is synthetic and created for learning purposes.

---

## Business Questions

This project aims to answer the following business questions:

1. Which product category generates the highest transaction fee income?
2. Which product category has the highest transaction fee yield?
3. Which device type has the lowest transaction success rate?

---

## Data Quality Checks

Before analysis, several data validation checks were performed:

- Verified data types
- Confirmed all transaction IDs are unique
- Checked for negative values in numeric fields

---

## Analysis

### 1. To identify top product category that generates most transaction fees

Calculated total transaction fee collected from each product category and ranked them in descending order.

**Finding**

- Streaming Service generated the highest transaction fee income.

---

### 2. To identify which product category has the highest fee yield

Calculated fee yield using:

```
Fee Yield = Transaction Fee / Product Amount × 100%
```

**Finding**

- Grocery Shopping achieved the highest fee yield.

---

### 3. Transaction Success Rate by Device

Calculated successful, failed, and pending transaction status and rates for each device type.

**Finding**

- Web platform recorded the lowest transaction success rate.

---

## Key Findings

- Streaming Service is the largest contributor to transaction fee income.
- Grocery Shopping produces the highest fee yield.
- Web transactions have the lowest success rate among all device types.

---

## Business Recommendations

Based on the analysis:

- The company may build an “auto pay” function in the digital wallet platform for users to make periodic payment to Streaming Service merchants automatically, to strengthen this largest source of income。
- Suggest the company to further investigate why grocery merchants accept higher fee rate charges to gain some insights to increase fee yields on other product categories.
- The company should optimize the Web-based payment process, to safeguard the revenue that the company supposed to earn.
