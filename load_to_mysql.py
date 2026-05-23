import pandas as pd
from sqlalchemy import create_engine

# Load cleaned CSV
df = pd.read_csv(
    "cleaned_customer_support_tickets.csv"
)

# MySQL connection
username = "root"
password = "neesha"

host = "localhost"
database = "support_analytics"

# Create connection engine
engine = create_engine(
    f"mysql+pymysql://{username}:{password}@{host}/{database}"
)

# Load data into MySQL
df.to_sql(
    name="tickets",
    con=engine,
    if_exists="replace",
    index=False
)

print("Data loaded successfully!")