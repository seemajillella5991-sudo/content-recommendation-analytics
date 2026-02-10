# Content Recommendation & Watch Behavior Analytics Using Python
🎯 Project Overview

This project simulates a streaming platform analytics scenario.
I created synthetic user watch history and content catalog data to explore how a platform can increase engagement and watch time through smart content recommendations.

The project answers key business questions:

What are users’ most-watched genres?

Which genres keep users engaged the longest?

How do users binge-watch content?

Which content pairs have strong viewing affinity?

How can we recommend content to increase watch hours?

🛠 Key Skills & Tools

Python (pandas, numpy, matplotlib)

Data Analysis & Exploratory Data Analysis (EDA)

Recommendation logic (item-item collaborative filtering)

Data visualization & business insights

Synthetic dataset design

📂 Repository Structure
content-recommendation-analytics/
│
├── data/
│   ├── content_catalog.csv
│   └── user_watch_history.csv
│
├── notebooks/
│   ├── 01_data_generation.ipynb   # Create synthetic dataset
│   └── 02_eda_watch_patterns.ipynb # EDA & recommendation logic
│
├── dashboard/   # Optional for future dashboards
├── README.md
└── .gitignore

📊 Key Insights

Most watched genre: Action

Highest engagement genre (avg watch time): Comedy (~93.5 min)

Heavy binge users: 73

Top content pair for recommendation: C165 → C021

Sample recommendations: For content C165 → ['C021', 'C004', 'C149']

This simulates real-world recommendation intelligence used by streaming platforms.

🚀 How It Works

Data Generation: Designed realistic synthetic datasets for users and content.

Exploratory Data Analysis: Analyzed watch behavior, genre popularity, binge patterns, and content affinity.

Recommendation Logic: Built item-item content recommendations using co-watch patterns.

Business Insights: Translated analytics into actionable insights that could drive engagement.

💡 Why This Project Matters

This project demonstrates the full workflow of a data analyst:

From dataset design

To insight generation

To recommendation strategy

It’s a strong portfolio piece that shows analyst thinking + technical skills + business impact.

🔗 Future Enhancements

Add user-user collaborative filtering

Build a visualization dashboard

Simulate time-based watch sequences for trend analysis

Extend dataset to 1000+ users for production-level scenarios