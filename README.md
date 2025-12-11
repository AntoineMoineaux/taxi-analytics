🚖 Ride-Hailing Analytics — Funnel, Retention & City Performance Analysis

SQL • Power BI • Star Schema • DAX

📌 1. Project Overview

This project analyzes the activity of a fictional ride-hailing app (similar to Uber/Bolt).
The dataset includes rides, users, drivers and city identifiers.

The main objective is to understand:

why users rarely return after their first ride,

how city performance influences overall revenue,

what business actions could improve growth, retention and profitability.

This project combines two essential analytical dimensions used in real Product & Data teams:

👉 User behavior analysis (funnel & retention)
👉 Geographical performance analysis (city-level revenue & insights)

🎯 2. Business Problem

Why do users fail to return after their first completed ride, and how can city-level performance be optimized to maximize company growth?

Sub-questions:

Where in the funnel do we lose the most users?

Why is short-term retention so low?

Which cities generate the highest revenue?

How do geographical patterns influence user behavior?

What strategies should be prioritized to increase growth?

📐 3. Analytical Objectives
Axis A — Funnel & Retention Analysis

Step1 → Step2 → Step3 definition

Conversion ratios

Day-1 and Day-7 retention

Identification of friction points

Behavior comparison between retained and churned users

Axis B — City Performance Analysis

Total revenue by city

City market share

Average revenue per ride

Anomalies (over- or under-performing cities)

Connecting geography to retention & user behavior

📊 4. Key Metrics (KPIs)
🔹 Global Performance

Total revenue

Completed rides

Average revenue per ride

Active customers

Cancellation rate

🔹 Funnel Metrics

Step1 / Step2 / Step3

Conversion Step1→Step2

Conversion Step2→Step3

Conversion Step1→Step3

🔹 Retention

Day-1 retention

Day-7 retention

🔹 Geographic Performance

Revenue by city

Market share

Average revenue per ride

Ride volume

🧱 5. Methodology
1. SQL — Initial analysis

Aggregations, window functions

Funnel definition

Retention computation

Outlier detection

2. Data Modeling — Star Schema

Fact table: Trips

Dimension tables: Customers, Drivers, Cities

Calculated tables: CustomerTrips, CustomerFirstTrip

3. Power BI — Dashboard

Page 1: KPIs

Page 2: Funnel & retention

Page 3: City performance & insights

Custom DAX measures

🧠 6. Key Insights
🔸 Major drop-off after first ride

Step1 → Step2 conversion: 72%

Step2 → Step3 conversion: 55%

Day-1 retention: 0%

Day-7 retention: 2.8%

➡️ The first ride is the critical moment in the whole user journey.

🔸 Strong geographical disparities

Bordeaux, Lille, Marseille = 55% of total revenue

Paris underperforms despite market size

➡️ Strategic recommendation:
Reinforce supply and pricing in underperforming cities.

💡 7. Business Recommendations

Improve first-ride experience

Increase driver availability where conversion is low

Launch reactivation campaigns

Investigate cancellation causes

Prioritize growth in high-value cities

🗂️ 8. Repository Structure
📁 data/
📁 sql/
📁 powerbi/
📁 docs/
README.md

📸 9. Dashboard Screenshots

Add 2–3 images of your Power BI pages.
/powerbi  
/docs  
README.md

📸 9. Dashboard Screenshots

(add your 2–3 visuals here)
