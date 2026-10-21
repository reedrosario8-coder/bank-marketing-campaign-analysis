# Bank Marketing: First SQL Project

> **Status:** Beginner project in progress. The first two count queries have been run in BigQuery.

## Project goal

Use a small set of beginner SQL queries to summarize the outcome of a historical bank phone-marketing campaign.

## Questions

1. How many records are in the dataset?
2. How many records show that a person subscribed to a term deposit?
3. What percentage of records show a subscription?

The subscription percentage is calculated from the first two results. It is not a column or table in the dataset.

## Dataset

This project uses `bank-full.csv` from the [UCI Bank Marketing dataset](https://archive.ics.uci.edu/dataset/222/bank%2Bmarketing). It contains 45,211 records from direct phone-marketing campaigns conducted by a Portuguese bank. The outcome field `y` records whether the term deposit was subscribed to. In the BigQuery table used here, `y` was auto-detected as a Boolean: `TRUE` means yes and `FALSE` means no.

**Attribution:** Moro, S., Rita, P., & Cortez, P. (2014). *Bank Marketing* [Dataset]. UCI Machine Learning Repository. [https://doi.org/10.24432/C5K306](https://doi.org/10.24432/C5K306). Licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).

## Results so far

- Total records: **45,211**
- Records with a subscription (`y = TRUE`): **5,289**
- Subscription share: **11.7%** (`5,289 ÷ 45,211 × 100`)

In this dataset, about 12 out of every 100 records show a subscription. This is a descriptive summary of this historical dataset, not a prediction for a current campaign.

## SQL used

The queries in [`sql/analysis.sql`](sql/analysis.sql) practice `SELECT`, `FROM`, `COUNT(*)`, and `WHERE`. They are kept simple so each part can be explained. The percentage is shown above using arithmetic on the two query results; this first version does not calculate it inside SQL.

## How to run

1. Download and unzip `bank.zip` from the [UCI dataset page](https://archive.ics.uci.edu/dataset/222/bank%2Bmarketing).
2. In BigQuery, create a dataset named `bank_marketing` and upload `bank-full.csv` as `bank_full`. Use `;` as the CSV delimiter and skip the header row.
3. In [`sql/analysis.sql`](sql/analysis.sql), replace `YOUR_PROJECT_ID` with your BigQuery project ID.
4. Run each query separately.

## Limitations

- The records describe historical campaigns from one Portuguese bank, so they may not represent current campaigns or customers.
- The subscription percentage describes these records; it does not explain what caused subscriptions.
- The dataset does not include campaign costs or subscription value, so this analysis cannot estimate return on investment.

## Skills practiced

- Counting table rows with `COUNT(*)`
- Filtering rows with `WHERE`
- Reading a Boolean outcome field
- Explaining a result in plain language
