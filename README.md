# E-Commerce Sales Analytics using Azure

## 📌 Project Overview

An end-to-end e-commerce sales analytics project built using Microsoft Azure, SQL, and Power BI.

The project demonstrates a complete data analytics workflow, starting with raw sales data stored in Azure Blob Storage, moving and processing the data using Azure Data Factory, storing the sales data in Azure SQL Database, performing SQL analysis, and creating an interactive Power BI dashboard for business reporting.

### Data Flow

Raw CSV → Azure Blob Storage → Azure Data Factory → Processed Data → Azure SQL Database → SQL Analysis → Power BI

---

## 🎯 Objectives

- Build an end-to-end cloud-based data analytics solution.
- Store raw and processed sales data using Azure Blob Storage.
- Use Azure Data Factory for data integration and data movement.
- Store structured sales data in Azure SQL Database.
- Perform data validation and business analysis using SQL.
- Calculate important sales KPIs.
- Analyze revenue and sales performance across different dimensions.
- Build an interactive Power BI dashboard for business reporting.

---

## 🏗️ Architecture

                    Raw Sales Data
                         │
                         ▼
                Azure Blob Storage
                    raw-data
                         │
                         ▼
                Azure Data Factory
                 PL_Load_Sales_Data
                    │         │
                    ▼         ▼
              Copy data1   Copy data2
                         │
                         ▼
                Processed Data
                Azure Blob Storage
                  processed-data
                         │
                         ▼
                Azure SQL Database
                    EcommerceDB
                         │
                         ▼
                    SQL Analysis
                         │
                         ▼
                  Power BI Dashboard

## ☁️ Azure Services

### Azure Blob Storage

Used to store the raw and processed sales data.

```text
raw-data/
└── sales.csv

processed-data/
└── sales_processed.csv
```

### Azure Data Factory

Used as the data integration layer.

**Pipeline:** `PL_Load_Sales_Data`

**Activities:**

- `Copy data1`
- `Copy data2`

The pipeline was successfully validated and executed.

### Azure SQL Database

Used to store and query the structured sales data.

**Database:** `EcommerceDB`

**Table:** `dbo.Sales`

## 🔄 Data Pipeline

Raw sales.csv is stored in Azure Blob Storage.
Azure Data Factory processes and moves the data.
Processed data is stored in the processed-data container.
Sales data is available in Azure SQL Database.
SQL queries are used for validation and analysis.
The analyzed data is visualized in Power BI.

## 🔍 SQL Analysis

SQL was used for data validation, KPI analysis, and revenue analysis.

### SQL Files

```text
sql/
├── 01_data_validation.sql
├── 02_kpi_analysis.sql
└── 03_revenue_analysis.sql
```

### Analysis Performed

- Data validation
- Total revenue analysis
- Total orders
- Total units sold
- Average Order Value (AOV)
- Revenue by product
- Revenue by category
- Revenue by city
- Revenue by payment method
- Revenue trends over time

### Example Query

```sql
SELECT TOP 10 *
FROM dbo.Sales;
```

📊 Power BI Dashboard

The Power BI dashboard provides an interactive view of e-commerce sales performance.

Key KPIs
Total Revenue
Total Orders
Total Units Sold
Average Order Value (AOV)
Dashboard Analysis

The dashboard analyzes:

Monthly revenue
Revenue by category
Revenue by city
Revenue by product
Revenue by payment method
Revenue vs. units sold
Interactive Filters
Date
Category
City

Power Query and DAX were used to prepare and analyze the data within Power BI.

📸 Project Screenshots
Azure Data Factory Pipeline

<img width="957" height="473" alt="03_adf_pipeline" src="https://github.com/user-attachments/assets/add1aeb0-0b67-461a-a227-1743479f5af6" />

Azure Data Factory Successful Execution

<img width="956" height="473" alt="adf-pipeline-success" src="https://github.com/user-attachments/assets/5ca7b33c-c273-47ba-a05c-be8ab075939f" />

Azure Blob Storage

<img width="956" height="470" alt="azure_blob_containers" src="https://github.com/user-attachments/assets/3dcc53d5-4fc3-47e5-97d3-c810acca0fe5" />

Raw Sales Data

<img width="959" height="467" alt="azure_blob_raw_data" src="https://github.com/user-attachments/assets/d7180939-1b50-4fad-b4f0-beee567c1f8e" />

Processed Sales Data

<img width="950" height="472" alt="azure_blob_processed_data" src="https://github.com/user-attachments/assets/e64cf251-0149-47ee-91e3-86035bc880bb" />

Azure SQL Database

<img width="956" height="473" alt="azure-sql-query" src="https://github.com/user-attachments/assets/73fc14be-fb6a-4a09-aee9-f312b08d7ea2" />

Power BI Dashboard


<img width="389" height="437" alt="ecommerce-sales-dashboard" src="https://github.com/user-attachments/assets/57e0960e-87e2-40cc-a4c9-34d78c721c11" />


## 📁 Project Structure

```text
ecommerce-sales-analytics-azure/
│
├── adf/
│   └── README.md
│
├── power-bi/
│   ├── ecommerce_sales_dashboard.pbix
│   └── README.md
│
├── sql/
│   ├── 01_data_validation.sql
│   ├── 02_kpi_analysis.sql
│   └── 03_revenue_analysis.sql
│
├── screenshots/
│   ├── 01_powerbi_dashboard.png
│   ├── 02_azure_sql_query.png
│   ├── 03_adf_pipeline.png
│   ├── 04_adf_success.png
│   ├── 05_blob_storage.png
│   ├── 06_blob_raw_data.png
│   └── 07_blob_processed_data.png
│
└── README.md
```

## 🛠️ Technologies Used

### Cloud & Data

- Microsoft Azure
- Azure Blob Storage
- Azure Data Factory
- Azure SQL Database

### Analytics & Visualization

- SQL
- Microsoft Power BI
- Power Query
- DAX
- Microsoft Excel

### Development

- Visual Studio Code
- Git
- GitHub

  
## 💡 Key Business Analysis

The project enables analysis of:

- Overall sales performance
- Revenue trends
- Product performance
- Category performance
- City-level sales
- Payment method distribution
- Order volume
- Units sold
- Average Order Value

🔐 Security

No sensitive credentials should be stored in this repository.

The project should not contain:

Azure SQL passwords
Storage account access keys
Connection strings containing passwords
API keys
SAS tokens
Client secrets

Azure credentials are kept outside the source-controlled project files.

🎯 Skills Demonstrated
Azure Blob Storage
Azure Data Factory
Azure SQL Database
Data integration
SQL querying
Data validation
KPI analysis
Power Query
DAX
Power BI
Data visualization
Git & GitHub
End-to-end data analytics
👤 Author

Bhuvan P

BCA Graduate | Aspiring Data Analyst

Areas of Interest: Data Analytics, SQL, Power BI, Excel, Azure, Python, and Data Visualization.
