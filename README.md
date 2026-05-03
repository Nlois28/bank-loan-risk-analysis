# bank-loan-risk-analysis
End-to-end data analysis project using SQL (BigQuery) and Power BI to evaluate loan default risks.
<img width="2195" height="1234" alt="{73760007-ABFE-4DC5-B766-71738BF01512}" src="https://github.com/user-attachments/assets/91986c1a-70d0-4803-ba0f-32b867a575cd" />

# 📊 Bank Loan Risk & Portfolio Analysis (LendingClub) 
## 📌 Project Overview This project provides a comprehensive analysis of a large-scale loan dataset (1M+ records) using **SQL (Google BigQuery)** for data engineering and **Power BI** for advanced visualization. The goal is to identify key risk factors, evaluate the bank's pricing strategy, and calculate the **Non-Performing Loan (NPL) Ratio**. ## 🛠️ Tech Stack * **Data Warehouse:** Google BigQuery * **Language:** SQL (Standard SQL) * **Visualization:** Power BI Desktop * **Key Metrics:** NPL Ratio, Average Interest Rate, Loan Volume by State. ## 🗄️ Data Engineering (SQL) 
To prepare the data, I performed feature engineering in BigQuery to create a binary classification for risk: * **`is_npl`**: A flag created to distinguish between "Healthy" (Current, Fully Paid) and "Non-Performing" loans (Charged Off, Default, Late). * 
**Data Cleaning:** Handled null values and formatted date strings (`issue_d`) into time-series compatible formats. 
## 📈 Key Insights & Dashboards ### 1. Portfolio Health (Executive Summary) * **Overall NPL Ratio:** **12.86%** * **Finding:** The portfolio shows a stable default rate, but specific segments require closer monitoring. ### 2. Risk-Based Pricing (Interest Rate vs. NPL) * **Chart Title:** *Risk vs. Reward: Interest Rate & NPL Ratio by Grade* * 
**Insight:** There is a strong positive correlation between interest rates and defaults. The bank successfully charges higher premiums for higher-risk grades (E, F, G), validating the current scoring model. 
### 3. Term Analysis (36 vs 60 Months) * 
**Insight:** **60-month loans** exhibit a significantly higher default probability compared to 36-month terms, justifying the interest rate spread between the two products. 
### 4. Geographic Risk Distribution * **Insight:** Identified high-risk clusters in specific US states, allowing for localized credit policy adjustments. 
💡 Recommendations * **Tighten Credit Criteria:** Implement stricter DTI (Debt-to-Income) requirements for Grade F and G applicants. * **Term Optimization:** Re-evaluate the risk-adjusted return on 60-month loans to ensure the higher NPL is fully offset by the interest income.
●	Risk by Grade: "As expected, lower grades (E, F, G) show a much higher NPL ratio, reaching up to X%."
●	Interest Rate vs NPL: "There is a clear positive correlation. The bank charges more for higher risk, which is a correct pricing strategy."
●	Geographic Insights: "States like California and Texas show the highest volume, while [βάλε μια πολιτεία με υψηλό ρίσκο] shows the highest default rate."


Conclusion & Recommendations 
●	Review the 60-month loan product due to higher default rates and
Implement stricter criteria for Grade G loans
