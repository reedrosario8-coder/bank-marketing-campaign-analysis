-- Bank Marketing: first SQL project
-- BigQuery Standard SQL
-- Replace YOUR_PROJECT_ID with the project ID from BigQuery.

-- Question 1: How many records are in the dataset?
SELECT
  COUNT(*) AS total_records
FROM `YOUR_PROJECT_ID.bank_marketing.bank_full`;

-- Question 2: How many records show a subscription?
-- y = TRUE means the person subscribed to a term deposit.
SELECT
  COUNT(*) AS subscribed_records
FROM `YOUR_PROJECT_ID.bank_marketing.bank_full`
WHERE y = TRUE;

-- Question 3: What percentage of records show a subscription?
-- Use the two results above: subscribed_records / total_records * 100.
-- With the current results: 5,289 / 45,211 * 100 = about 11.7%.
-- This version calculates the percentage with ordinary arithmetic,
-- rather than adding a SQL function that has not been covered yet.
