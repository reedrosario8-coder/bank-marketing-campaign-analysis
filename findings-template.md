# Findings

## 1. How many records are in the dataset?

**45,211 records.** The query used `COUNT(*)` to count every row in `bank_full`.

## 2. How many records show a subscription?

**5,289 records.** The query counted rows where `y = TRUE`; in this imported table, `TRUE` represents a subscription.

## 3. What percentage of records show a subscription?

**About 11.7%.** Calculation: `5,289 ÷ 45,211 × 100`.

In plain language, about 12 out of every 100 records in this historical dataset show a subscription. This summary does not tell us why people subscribed or whether a current campaign would get the same result.

## What I practiced

- `COUNT(*)` counts rows.
- `FROM` selects the table to analyze.
- `WHERE y = TRUE` filters to records marked as subscribed.
- `AS` gives a result column a readable name.
- The percentage was calculated from the two query results with basic arithmetic.
