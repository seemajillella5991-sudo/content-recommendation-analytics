# Content Recommendation & Watch Behavior Analytics Using Python
Hello! Welcome to my project

Have you ever wondered how streaming platforms decide what to recommend next? This project is my attempt to simulate exactly that. I designed synthetic user data and content catalogs to explore patterns in viewing behavior and create smart content recommendations that could increase engagement and watch time.

🎯 What this project does

In simple terms, this project answers these questions:

Which genres do users watch the most?

Which genres keep users watching longer?

How do users binge-watch content?

Which content is frequently watched together?

How can we recommend content intelligently to increase engagement?

🛠 Tools & Skills Demonstrated

Python (pandas, numpy, matplotlib) for data analysis

Exploratory Data Analysis (EDA) to find watch patterns and binge behavior

Recommendation logic using item-item co-watch patterns

Data visualization to show insights in an intuitive way

Business thinking — translating analytics into actionable insights

📊 What I discovered

Most watched genre: Action

Highest engagement genre: Comedy (avg watch time ~93.5 min)

Heavy binge users: 73 users watched 50+ contents in a short span

Top content pair for recommendations: C165 → C021

Example recommendation: For content C165 → ['C021', 'C004', 'C149']

These insights simulate how a streaming platform might personalize recommendations to keep viewers engaged.

## 📂 Repository Structure
content-recommendation-analytics/
│
├── data/
│   ├── content_catalog.csv        # All movies/shows
│   └── user_watch_history.csv     # User viewing behavior
│
├── notebooks/
│   ├── 01_data_generation.ipynb   # Create synthetic dataset
│   └── 02_eda_watch_patterns.ipynb # Analyze watch patterns & build recommendation logic
│
├── dashboard/                     # Optional future dashboards
├── README.md                       # You are here!
└── .gitignore



How I approached this project

Data Generation: Created a realistic dataset of users and content.

Exploratory Analysis: Looked at genre popularity, watch time, binge behavior, and content affinity.

Recommendation Logic: Built item-item recommendations based on co-watch patterns.

Business Insights: Translated patterns into actionable recommendations for a streaming platform.

💡 Why this project matters

This is more than just coding — it shows analyst thinking, problem solving, and business impact. It demonstrates how data can be turned into recommendations that make real users spend more time on a platform.

🔮 Future Improvements

Include user-user collaborative filtering

Build a visualization dashboard for insights

Scale to 1000+ users for production-level scenarios

Analyze watch sequences over time for trends