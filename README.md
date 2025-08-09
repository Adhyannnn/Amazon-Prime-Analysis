Amazon Prime Data Analysis Project
This project focuses on analyzing an Amazon Prime Movies & TV Shows dataset using Python (Pandas), MS Excel, MySQL, and Power BI.

📁 Project Structure
data/: Contains the original and cleaned datasets.

notebooks/: Jupyter Notebook used for data cleaning and preprocessing.

sql/: SQL script used for schema creation and analysis queries.

dashboard/: Power BI dashboard providing visual insights.

🔧 Tools & Technologies
Python (Pandas, Jupyter Notebook)

MS Excel

MySQL

Power BI

📊 Steps Followed
Data Cleaning

Cleaned dataset using Pandas in Jupyter Notebook.

Removed nulls, handled missing values, and corrected data types.

Exported cleaned dataset as Cleaned Amazon Data.csv.

Applied additional formatting in MS Excel for better readability.

SQL Analysis

Created MySQL schema and table for Amazon Prime dataset.

Imported cleaned data into MySQL.

Executed SQL queries to analyze content type distribution, country-based trends, release year patterns, and genre insights.

Power BI Visualization

Designed an interactive dashboard showing:

Movie vs TV Show counts

Country-wise content distribution

Genre/category trends

Year-wise release analysis

Ratings and duration patterns

🧠 SQL Usage
Open MySQL Workbench or any SQL editor.

Run the script sql/Amazon_Analysis.sql to create the schema and execute analysis queries.

Import Cleaned Amazon Data.csv into the amazon_data table (via MySQL import or LOAD DATA INFILE).

🚀 How to Use
Clone the repo.

Open notebooks/Cleaning.ipynb to view the data cleaning process.

Open sql/Amazon_Analysis.sql to explore the database schema and queries.

Open dashboard/Amazon_Analysis.pbix in Power BI to explore the interactive visuals.
