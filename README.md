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




