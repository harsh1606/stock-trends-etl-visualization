# DMV Stocks Analysis ETL Pipeline

## 📚 Overview

This project demonstrates a complete ETL (Extract, Transform, Load) pipeline that analyzes stock market data for major DMV-based companies. The workflow automates the retrieval of time-series stock data, performs necessary data transformations and cleansing, stores the final output into a SQL database, and visualizes stock trends using Python plots.

## 🔍 Project Highlights

- **Extract**: Real-time stock data is fetched from the [Alpha Vantage API](https://www.alphavantage.co/), ensuring up-to-date financial insights.
- **Transform**: The raw data is processed using `pandas` to:
  - Parse date and time indices
  - Handle missing values
  - Standardize column formats
- **Load**: Cleaned and structured data is loaded into a relational database (e.g., PostgreSQL, MySQL) using a secure connection via the `db_config` module.
- **Visualize**: Post-ETL, trend analysis is performed using line plots to understand stock movement patterns over time for five selected companies.

## 🛠 Technologies Used

- Python 3.x
- Pandas, NumPy
- Requests (for API calls)
- SQLAlchemy / psycopg2 (for DB connectivity)
- Matplotlib / Seaborn (for visualization)
- Jupyter Notebook
- Alpha Vantage API

## 🔐 Configuration

Database credentials are managed via a separate configuration module:

```
db_config.py
```

This file should include:

```python
host = "your_host"
port = "your_port"
database = "your_database"
user = "your_username"
password = "your_password"
```

**⚠️ Note:** Add `db_config.py` to your `.gitignore` to avoid exposing credentials.

## 📈 Stock Symbols Covered

The notebook currently fetches and analyzes data for:
- Tesla (`TSLA`)
- Amazon (`AMZN`)
- IBM (`IBM`)
- MicroSoft (`MSFT`)
- Apple (`AAPL`)

Additional symbols can be added easily by modifying the symbol list.

## 📊 Trend Visualization

After loading the stock data into the database, trend analysis is performed using line plots to compare the closing prices over time across the selected companies. This allows users to gain insights into relative performance, volatility, and market patterns.

## ▶️ How to Run

1. Clone this repository.
2. Install required Python packages.
3. Set up `db_config.py` with your database credentials.
4. Add your Alpha Vantage API key into the notebook.
5. Run the notebook end-to-end.

## 📂 Output

- ETL pipeline populates a structured stock price database.
- Line charts showing trends in closing prices for all five companies.

## 📌 Future Enhancements

- Add support for additional APIs (e.g., Yahoo Finance)
- Schedule regular data fetch using Airflow or cron jobs
- Integrate dashboard tools like Power BI or Dash for dynamic visualizations

---

## 👤 Author

**Harsh Kumar Tyagi**  
*MSc in Computing (Data Analytics), Dublin City University*  
📧 [harshtyagi022@gmail.com](mailto:harshtyagi022@gmail.com)  
🔗 [GitHub: harsh1606](https://github.com/harsh1606)
