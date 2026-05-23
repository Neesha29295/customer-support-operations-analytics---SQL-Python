import pandas as pd

# Load CSV
df = pd.read_csv("customer_support_tickets.csv")

# Show original rows and columns
print("Original Shape:")
print(df.shape)

# Convert date column
df['Date of Purchase'] = pd.to_datetime(
    df['Date of Purchase'],
    dayfirst=True,
    errors='coerce'
)

# Remove only invalid dates
df = df.dropna(
    subset=['Date of Purchase']
)

# Remove duplicates
df.drop_duplicates(inplace=True)

# Show cleaned rows and columns
print("\nCleaned Shape:")
print(df.shape)

# Save cleaned CSV
df.to_csv(
    "cleaned_customer_support_tickets.csv",
    index=False
)

print("\nCleaned CSV Created Successfully!")