# PowerBIProject

Welcome to the Power BI Data Analytics Report repository! This README provides an overview of the steps followed to complete the report, from setting up a GitHub repo to sharing metrics with users outside the company. Follow this guide to understand how I built the report and to replicate it in your own environment.


## 📑 Table of Contents

1. [Abstract](#abstract)
2. [Setting up the Environment](#setting-up-the-environment)
    1. [GitHub Repo & Cloning](#github-repo--cloning)
    2. [Azure VM Setup](#azure-vm-setup)
3. [Data Import into Power BI](#data-import-into-power-bi)
    1. [SQL Database](#sql-database)
    2. [CSV File](#csv-file)
    3. [Azure Blob Storage](#azure-blob-storage)
    4. [ZIP File](#zip-file)
4. [Creating a Data Model](#creating-a-data-model)
    1. [Date Table](#date-table)
    2. [Star Schema Model](#star-schema-model)
    3. [Measures Table](#measures-table)
    4. [Hierarchies](#hierarchies)
5. [Setting up the Report](#setting-up-the-report)
    1. [Report Pages](#report-pages)
    2. [Navigation Sidebar](#navigation-sidebar)
6. [Building Each Report Page](#building-each-report-page)
    1. [Customer Detail Page](#customer-detail-page)
    2. [Executive Summary Page](#executive-summary-page)
    3. [Customer Performance Page](#customer-performance-page)
    4. [Stores Map Page](#stores-map-page)
    5. [Stores Drill-Through Page](#stores-drill-through-page)
    6. [Stores Tooltip Page](#stores-tooltip-page)
7. [Cross-Filtering and Navigation](#cross-filtering-and-navigation)
8. [Metrics for External Users](#metrics-for-external-users)

---

## 📝 Abstract

This report showcases the results of a comprehensive data analytics project using Power BI. The report was developed to provide insights into various business operations and customer behaviors. It includes the process of importing, transforming, and visualizing data from diverse sources such as SQL databases, CSV files, Azure Blob Storage, and ZIP files. 

Key elements of this project:
- Setting up a local environment and connecting to external data sources.
- Designing a clean and structured data model using a star schema.
- Creating dynamic and interactive report pages.
- Cross-filtering and advanced navigation functionality.
- Sharing valuable metrics with external stakeholders using SQL.

---

## ⚙️ Setting up the Environment

### GitHub Repo & Cloning

1. Create a repository on GitHub with a meaningful name for your project (eg."PoweBIProject").
2. Create an appropriate place within your local file directory
3. Clone the repo to your local machine using the following command:
   ```bash
   git clone https://github.com/PavenSS/PowerBIProject.git
4. Initialise git on your file strucutre. You are now ready to add, commit and push updates to you Git Repository!
    ```bash
   git init 

## ⚙️ Azure VM Setup
1. Create a Windows Virtual Machine (VM) on Azure.
    Go to Azure Portal -> Virtual Machines -> Add.
    Select Windows Server (or your preferred version).
    Configure the VM's size, disk type, and networking options.
2. Install Power BI Desktop and any necessary libraries for data connectivity on the VM.

## 📊 Data Import into Power BI

### SQL Database
Use Azure SQL Database or any SQL Server to import data.
To import data:
    In Power BI Desktop, click Home -> Get Data -> SQL Server.
    Enter the server and database credentials and select the data you need.

### CSV
Click Home -> Get Data -> Text/CSV.
Navigate to the file and load it into Power BI.

### Azure Blob Storage
Click Home -> Get Data -> Azure -> Azure Blob Storage.
Connect to your Azure storage account and select the desired files to import.

### Zip File
If the ZIP contains CSV or text files, extract them and load them into Power BI using the Text/CSV connector.

## 🧩 Creating a Data Model
### Date Table
Power BI allows you to automatically create a date table by going to Modeling -> New Table and entering the DAX formula for a Date table.
    ```DAX
    DateTable = CALENDAR(DATE(2020,1,1), DATE(2025,12,31))

### Star Schema Model
Design a star schema to organize your data model:

### Measures Table
Create a Measures Table to store all your DAX calculations.
    ```DAX
    Total Sales = SUM(Sales[Amount])

### Hierarchies
In the Model View, create hierarchies by right-clicking on the field (e.g., Date) and selecting Create Hierarchy.

## 📋 Setting up the Report
###Report Pages
Add report pages using the Page options at the bottom of Power BI.
Choose themes, color schemes, and fonts to ensure consistency.

###Navigation Sidebar
Add a navigation sidebar using Text boxes and Buttons in Power BI.
Create a Bookmark for each report page to enable seamless navigation.

🖼️ Building Each Report Page
###Customer Detail Page
Add multiple Cards to display key metrics (e.g., Total Customers, Active Customers).
Create 2 Donut Charts to represent customer segmentation.
Add a Line Chart for customer trends over time.
Insert a Table for detailed customer data.
Include a Date Slicer for time-based filtering.

### Executive Summary Page
Add Multiple Cards for key performance metrics.
Create a Line Chart showing performance trends.
Add 2 Donut Charts for market share.
Use a Bar Chart to display product performance.
Add KPI Cards for goals vs actuals.

### Customer Performance Page
Include Multiple Cards for customer KPIs.
Add 2 Gauge Visuals to track customer satisfaction or performance.
Create an Area Chart for customer growth.
Include a Table for detailed performance metrics.
Add a Scatter Graph to show customer distribution.

### Stores Map Page
Create an interactive Map to show store locations.
Add a Slicer to filter stores by region or performance.

### Stores Drill-Through Page
Set the page type to Drillthrough to allow users to click on a store and see detailed metrics.
Add a Table, Column Chart, 2 Gauge Visuals, and a Card Visual to show key store metrics.

### Stores Tooltip Page
Create a Tooltip Page with visuals like a Gauge.
Set the Tooltip of the map visual to show the information from the Tooltip Page when users hover.

## 🔄 Cross-Filtering and Navigation
Review and edit Interactions between visuals:
Ensure certain visuals do not affect others when interacting (use Edit Interactions).
Add Navigation Buttons:
Configure the buttons to move between report pages and highlight the button color on hover.

## 📊 Metrics for External Users
SQL Connection in Visual Studio
Connect to a PostgreSQL Database using Visual Studio.
Save the list of tables and columns as CSV files for reference.
Store queries and their results as separate files for each analysis question.

## 💬 Contributing
If you’d like to contribute or make improvements to this project, feel free to fork this repository and submit a pull request!

## 📜 License
This project is licensed under the MIT License - see the LICENSE file for details.

📞 Contact
For questions or feedback, feel free to open an issue