# 🌊 Sri Lankan Maritime Trade & Port Traffic Analytics
End-to-End Data Analytics Project using Python, SQL Server and Power BI to analyze Sri Lankan Port Trade and Vessel Activity.

## Project Overview

This project is an end-to-end data analytics projects that explores maritime trade and vessel traddic across Sri Lanka's major commercial ports using the IMF PortWatch- Sri Lankan Port Activity Dataset. The analysis covers daily port activity from january 2019 to july 2026, including 10,908 records from the ports of Colombo, Hambantota, Trincomalee, and Galle.

The project combines Python, SQL Server, and Power BI to transform raw port activity data into meaningful business insights. The workflow includes data cleaning, feature engineering, exploratory data analysis (EDA), SQL based analytical queries, and interactive Power BI dashboards the allow users to explore trade patterns, vessel acticity, and port performance.

Rathan than focusing only on data visualization, this project aims to answer real business questions using publicly available Sri lankan data and demonstrate a complete data analytics workflow.

## 💼 Business Problem

Ports play a vital role in Sri Lanka's economy by supporting international trade and the movement of goods. Understanding how trade volumes, vessel traffic, and port performance change over time can help businesses, researchers, and policymakers make better decisions.

However, raw port activity data contains thousands of daily records, making it difficult to identify important trends and performance differences without proper analysis.

This project addresses that challenge by transforming raw data into interactive dashboards and analytical reports that answer questions such as :

- Which ports handle the highest trade volume?
- How do import and export activities compare across ports?
- Which vessel types dominates Sri-Lankan maritime traffic?
- How has trade changed from 2019 to 2026?
- Which ports operats most efficiently based on cargo handled per vessel?


## 🎯 Project Objectives

The main objectives of this project are :

- Clean and prepare raw maritim trade data using Python.
- Perform exploratory data analysis (EDA) to understand trade patterns and vessel activity.
- Create meaningful business metrics through feature engineering.
- Use SQL Server to perform analytical queries using aggregate functions, window functions, and common table expressions (CTEs).
- Build interactive Power BI dashboards that allow users to explore port performance, trade trends, vessel traffic, and operational insights.
- Identify key business insights from Sri lankan's maritime trade data through data-driven analysis.
- Demonstrate an end-to-end data analytics workflow suitable for real-world business intelligence projects.

## 📂 Dataset Details

### Dataset Source

**IMF PortWatch – Sri Lankan Port Activity Dataset**

This project uses publicly available port activity data provided by the International Monetary Fund (IMF) through the PortWatch platform. The dataset contains daily records of maritime trade and vessel movements across Sri Lanka's four major commercial ports.

**Dataset Summary**

| **Attribute** | **Details** |
| --- | --- | 
| Source  | IMF PortWatch – Sri Lankan Port Activity Dataset | 
| Time Period  | January 2019 – July 2026 | 
| Total Records | 10,908 | 
| Ports Covered | Colombo, Hambantota, Trincomalee, Galle  | 
| Country  | Sri Lanka  | 
| Granularity | Daily port-level observations | 

### Port Activity Dataset Dictionary

| Column Name | Description |
| :--- | :--- |
| **date** | All port call dates are expressed in Coordinated Universal Time (UTC), a standard used to set all time zones around the world. |
| **year** | As extracted from date. |
| **month** | Month 1-12 extracted from date. |
| **day** | Day 1-31 extracted from date. |
| **portid** | Port id. Full list of ports and associated additional information can be found here. |
| **portname** | Port name. |
| **country** | Country the port resides in. |
| **ISO3** | ISO 3-letter country code of the port. |
| **portcalls_container** | Number of container ships entering the port at this date. |
| **portcalls_dry_bulk** | Number of dry bulk carriers entering the port at this date. |
| **portcalls_general_cargo** | Number of general cargo ships entering the port at this date. |
| **portcalls_roro** | Number of ro-ro ships entering the port at this date. |
| **portcalls_tanker** | Number of tankers entering the port at this date. |
| **portcalls_cargo** | Total number of ships (excluding tankers) entering the port at this date. This is the sum of portcalls_container, portcalls_dry_bulk, portcalls_general_cargo and portcalls_roro. |
| **portcalls** | Total number of ships entering the port at this date. This is the sum of portcalls_container, portcalls_dry_bulk, portcalls_general_cargo, portcalls_roro and portcalls_tanker. |
| **import_container** | Total import volume (in metric tons) of all container ships entering the port at this date. |
| **import_dry_bulk** | Total import volume (in metric tons) of all dry bulk carriers entering the port at this date. |
| **import_general_cargo** | Total import volume (in metric tons) of all general cargo ships entering the port at this date. |
| **import_roro** | Total import volume (in metric tons) of all ro-ro ships entering the port at this date. |
| **import_tanker** | Total import volume (in metric tons) of all tankers entering the port at this date. |
| **import_cargo** | Total import volume (in metric tons) of all ships (excluding tankers) entering the port at this date. This is the sum of import_container, import_dry_bulk, import_general_cargo and import_roro. |
| **import** | Total import volume (in metric tons) of all ships entering the port at this date. This is the sum of import_container, import_dry_bulk, import_general_cargo, import_roro and import_tanker. |
| **export_container** | Total export volume (in metric tons) of all container ships entering the port at this date. |
| **export_dry_bulk** | Total export volume (in metric tons) of all dry bulk carriers entering the port at this date. |
| **export_general_cargo** | Total export volume (in metric tons) of all general cargo ships entering the port at this date. |
| **export_roro** | Total export volume (in metric tons) of all ro-ro ships entering the port at this date. |
| **export_tanker** | Total export volume (in metric tons) of all tankers entering the port at this date. |
| **export_cargo** | Total export volume (in metric tons) of all ships (excluding tankers) entering the port at this date. This is the sum of export_container, export_dry_bulk, export_general_cargo and export_roro. |
| **export** | Total export volume (in metric tons) of all ships entering the port at this date. This is the sum of export_container, export_dry_bulk, export_general_cargo, export_roro and export_tanker. |

**Data Includes**
The dataset contains information related to:
- Port calls by vessel type
- Import and export cargo volumes
- Total trade volume
- Vessel traffic statistics
- Port activity over time
- Date-based information for trend analysis

### Feature Engineering
To support deeper analysis, several new features were created during data preprocessing, including:

- Total Trade
- Trade Balance
- Import & Export Percentages
- Average Import per Ship
- Average Export per Ship
- Average Trade per Ship
- Import-Export Ratio
- Vessel Type Shares (Container, Tanker, Dry Bulk, General Cargo and Ro-Ro)
- Year-Month field for monthly trend analysis

## 🛠️ Technology Stack

This project combines multiple analytics tools to complete the full data analysis workflow.

| **Technology** | **Purpose** |
| --- | --- | 
| Python  | Data cleaning, feature engineering and exploratory data analysis (EDA) | 
| Pandas & NumPy  | Data manipulation and preprocessing | 
| Matplotlib  | Data visualization during EDA | 
| SQL Server  | Data storage and analytical SQL queries | 
| Power BI  | Interactive dashboards and business intelligence reporting | 
|  Git & GitHub | Version control and project documentation | 
| Google Colab  | Python development environment  | 

## 🔄 Project Workflow

The project follows a complete end-to-end data analytics workflow.

**Step 1 — Data Collection**

- Obtained the IMF PortWatch Sri Lankan Port Activity Dataset.
- Loaded the raw dataset into Python for analysis.
  
**Step 2 — Data Cleaning**

- Checked missing values.
- Removed duplicate records.
- Verified data types.
- Validated data quality.
  
**Step 3 — Feature Engineering**

Created additional business metrics to support analysis, including:

- Total Trade
- Trade Balance
- Trade Ratios
- Vessel Type Shares
- Average Trade per Ship
- Monthly Analysis Fields
  
**Step 4 — Exploratory Data Analysis (Python)**

Performed detailed exploratory analysis to understand:

- Port performance
- Trade patterns
- Vessel composition
- Time-series trends
- Trade distribution
- Correlation between variables
- Operational ratios

**Step 5 — SQL Analytics**

Imported the processed dataset into SQL Server and performed analytical queries using:

- Aggregate Functions
- GROUP BY
- CASE Statements
- Window Functions
- Common Table Expressions (CTEs)
- Ranking Functions
  
**Step 6 — Power BI Dashboard Development**

Designed five interactive dashboards to present business insights:

- Executive Overview
- Port Performance
- Vessel Analytics
- Trade Trends
- Insights & Rankings
  
**Step 7 — Business Insights**

Combined findings from Python, SQL Server and Power BI to identify key trends, compare port performance and generate actionable insights from Sri Lanka's maritime trade data.

## Power BI Dashboard

### 📈 Dashboard 1 — Executive Overview
This dashboard provides a high-level summary of Sri Lanka's maritime trade performance.
**Highlights**
- Total Trade
- Total Imports
- Total Exports
- Total Port Calls
- Average Trade per Ship
- Monthly Trade Trend
- Imports vs Exports
- Top Performing Ports
  
<img width="1315" height="740" alt="Page 1- Overview" src="https://github.com/user-attachments/assets/0a58ac31-f633-4060-99fb-aef62084e854" />


### 🚢 Dashboard 2 — Port Performance
This dashboard compares the performance of Sri Lanka's major ports.
**Highlights**
- Trade Volume by Port
- Imports vs Exports by Port
- Trade Balance
- Average Trade per Ship
- Average Daily Trade
- Average Daily Port Calls
- Port Performance Table
  <img width="1308" height="741" alt="Page 2 - Port performance" src="https://github.com/user-attachments/assets/d2cdb9a9-2561-4db3-8bce-b857a4dfa256" />


### ⚓ Dashboard 3 — Vessel Analytics
This dashboard focuses on vessel movements and port traffic composition.
**Highlight**
- Total Vessel Calls
- Vessel Type Distribution
- Vessel Composition by Port
- Average Vessel Calls
- Vessel Share Analysis
  <img width="1316" height="735" alt="Page -3 Vessel Analytics" src="https://github.com/user-attachments/assets/18445ae1-e4da-4108-835e-42e08d9e3aca" />


### 📉 Dashboard 4 — Trade Trends
This dashboard analyzes how maritime trade has changed over time.
**Highlight**
- Monthly Trade Volume
- Monthly Imports
- Monthly Exports
- Monthly Port Calls
- Yearly Trade Comparison
  <img width="1301" height="725" alt="Page 4 - Trade Trends" src="https://github.com/user-attachments/assets/aff3b72e-836a-4dca-81ea-0d6566ec3065" />

  

### 🏆 Dashboard 5 — Insights & Rankings
This dashboard summarizes the most important business findings.
**Highlights**
- Top Performing Ports
- Lowest Activity Ports
- Import-Export Ratio
- Trade Balance Ranking
- Average Trade per Ship Ranking
  <img width="1300" height="737" alt="Page 5 - Insights   Rankings" src="https://github.com/user-attachments/assets/f427c138-f641-4674-baa2-7439be1a1de7" />


## 📌 Key  Insights

After analyzing more than 10,900 daily port activity records, several important business insights were identified.

**1. Colombo is Sri Lanka's dominant maritime hub**

*Colombo handled approximately 85.6% of the country's total port trade volume, making it the clear center of Sri Lanka's maritime trade network and demonstrating a strong hub-and-spoke pattern.*

**2.All major ports are import-oriented**

*Every analyzed port recorded a negative trade balance, meaning imports consistently exceeded exports. This reflects Sri Lanka's broader import-dependent economy during the study period.*

**3.Each port has a unique operational role**

The analysis shows clear specilization among the ports:

- **Colombo** = Container hub
- **Hambantota** = Ro-Ro (vehicle) hub
- **Trincomalee** = Dry bulk hub
- **Galle** = General cargo hub

*Rather than competing directly, the ports serve different functions within the national maritime network.*

**4.Vessel traffic strong predicts trade volume**

*Port calls showed a strong positive correlation (0.89) with total trade volume, making vessel traffic one of the best indicators of overall port activity.*

**5. Maritime trade recovered strongly after the economic crisis.**

*Trade volumes declined during 2022 and 2023, corresponding with Sri Lanka's economic crisis. By 2025, total trade reached 37.14 million metric tons, exceeding the 2019 pre-crisis level of 35.95 million metric tons.*

**6. Trincomalee handles larger cargo volumes per vessel.**

*Although Trincomalee recorded far fewer vessel arrivals than Colombo, its average trade per ship reached approximately 6,448 metric tons, close to Colombo's 7,268 metric tons. This suggests fewer but larger cargo movements.*

**7. Container shipping dominates Sri Lanka's maritime trade.**

*Container vessels accounted for approximately 74% of all vessel traffic, making containerized cargo the primary driver of Sri Lanka's port operations.*

## ▶️ How to Run##

Follow the steps below to explore and reproduce this project.

### **1.Clone the Repository**
https://github.com/roshanckw/Sri-Lankan-Port-Analytics.git

Navigate into the project folder:
*Sri-Lankan-Port-Analytics*

### **2.Python Analysis**

Install the required Python libraries:
pip install- r requirements.txt

Open the Google Colab Notebook:

open : sri_lankan_port_analysis.ipynb

The notebook contains:
- Data loading
- Data cleaning
- Feature engineering
- Exploratory data analysis
- Statistical analysis
- Data export for SQL and Power BI

### **3. SQL Server Analysis**
1. Open SQL Sever Management Studio (SSMS)
2. Create the database using:

*sql/create_tables.sql*

3. Import the processed dataset:
*data/processed_sri_lanka_port_data.csv*

5. Run the analytical SQL scripts to explore:
- Port performance
- Trade analysis
- Vessel analysis
- Time-series trends
- Ranking analysis
- Advanced SQL analysis using CTEs and Window Functions

### **4.Power BI dashboard**

1. Open :
*Sri Lankan Port Analytics.pbix*
2. Refresh the dataset connection if required
3. Explore the five interactive dashboard pages:
- Executive Overview
- Port Performance
- Vessel Analytics
- Trade Trends
- Insights & Rankings

## 👨‍💻 Author

**Roshan Chamika Wimalaweera**
Data Science Undergraduate | Aspiring Data Analyst

This project was developed as part of my journey in building practical data analytics skills using real world datasets.

**Connect with me**

🔗 LinkedIn:
www.linkedin.com/in/roshan-chamika

### **Project Focus**
This project demonstrates my ability to :
- Work with real-world datasets
- Perform data cleaning and transformation
- Conduct exploratory data analysis
- Write analytical SQL queries
- Build interactive business intelligence dashboards
- Translate data findings into meaningful insights
 


