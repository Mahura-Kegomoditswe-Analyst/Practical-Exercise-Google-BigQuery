# BrightLight Data Analytics — SQL Practicals (Google BigQuery)

This repository contains a collection of **SQL practicals** completed as part of the BrightLight Data Analytics program.  
Each practical focuses on applying different SQL concepts using real-world datasets and tools such as **Google BigQuery** and **Excel**.

---

## 📚 Table of Contents
- [Overview](#overview)
- [Practical 1 – SQL Fundamentals](#practical-1--sql-fundamentals)
- [Technologies Used](#technologies-used)
- [How to Run the Queries](#how-to-run-the-queries)
- [Author](#author)

---

## 🧠 Overview

This repository demonstrates practical SQL skills from beginner to intermediate level, including:
- Data selection and filtering (`SELECT`, `WHERE`, `DISTINCT`)
- Aggregation and grouping (`COUNT`, `AVG`, `SUM`, `GROUP BY`, `HAVING`)
- Conditional logic (`CASE`)
- Advanced filtering with subqueries
- Customer segmentation and data categorization
- Real dataset analysis with business insights

All practicals were executed in **Google BigQuery** using uploaded CSV datasets.

---

## 🧩 Practical 1 – SQL Fundamentals

**Dataset:** `retail_sales_dataset.csv`  
**Topics Covered:**
- Basic `SELECT` statements with `WHERE` clauses
- Aggregate functions (`SUM`, `COUNT`, `AVG`)
- `GROUP BY` and `HAVING` clauses
- `CASE` statements for conditional logic
- Subqueries for advanced filtering
- Date functions (`EXTRACT`)
- `DISTINCT` values and data categorization

**Questions Answered:**
1. **WHERE Clause** - Filter all transactions that occurred in the year 2023
2. **Filtering + Conditions** - Display transactions where Total Amount > average Total Amount
3. **Aggregate Functions** - Calculate the total revenue (sum of Total Amount)
4. **DISTINCT** - Display all distinct Product Categories
5. **GROUP BY** - For each Product Category, calculate total quantity sold
6. **CASE Statement** - Create Age_Group column (Youth <30, Adult 30-59, Senior 60+)
7. **Conditional Aggregation** - Count high-value transactions (Total Amount > 500) by Gender
8. **HAVING Clause** - Show categories where total revenue exceeds 5,000
9. **Calculated Fields** - Create Unit_Cost_Category (Cheap <50, Moderate 50-200, Expensive >200)
10. **Combining WHERE + CASE** - Transactions from customers aged 40+ with Spending_Level (High/Low)

**Output Files:**
- `practical_1_queries.sql`
- `retail_sales_dataset.csv`
- `Practical 1 - SQL Fundamentals (Google BigQuery).pdf`

---

## ⚙️ Technologies Used
- **Google BigQuery** – for SQL execution and data querying  
- **Microsoft Excel** – for dataset exploration and pivot visualization  
- **SQL** – for querying, transformation, and aggregation  
- **GitHub** – for version control and documentation

---

## ▶️ How to Run the Queries

1. Log in to your **Google Cloud Platform** account.
2. Navigate to **BigQuery** console and create a new project/dataset.
3. Upload the `retail_sales_dataset.csv` using the BigQuery interface.
4. Copy the SQL queries from the `practical_1_queries.sql` file.
5. Run the queries in order to reproduce the results shown in the practical PDF.
6. Use Excel pivot tables to visualize insights such as:
   - Sales by Product Category
   - Customer Age Distribution
   - Total Revenue by Gender
   - High-value transaction patterns

---

## 👩‍💻 Author
**Kegomoditswe Mahura**  
_Data Analyst in Training | Mathematics (Hons) | SQL • Excel • Python • Power BI • MySQL • ChatGPT for A-Z Data Analysis Certified (Udemy)_ 

---
