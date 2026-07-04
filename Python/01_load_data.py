# ==========================================
# RETAIL CONSUMER INTELLIGENCE PROJECT
# Step 1 - Load Dataset
# ==========================================

import pandas as pd

# ----------------------------
# Load Dataset
# ----------------------------

df = pd.read_csv("Dataset/consumer_behavior.csv")

print("="*60)
print("DATASET LOADED SUCCESSFULLY")
print("="*60)

# ----------------------------
# First 5 Rows
# ----------------------------

print("\nFirst 5 Records")
print(df.head())

# ----------------------------
# Last 5 Rows
# ----------------------------

print("\nLast 5 Records")
print(df.tail())

# ----------------------------
# Shape
# ----------------------------

print("\nDataset Shape")
print(df.shape)

rows, columns = df.shape

print(f"Rows : {rows}")
print(f"Columns : {columns}")

# ----------------------------
# Column Names
# ----------------------------

print("\nColumn Names")

print(df.columns.tolist())

# ----------------------------
# Dataset Information
# ----------------------------

print("\nDataset Information")

df.info()

# ----------------------------
# Missing Values
# ----------------------------

print("\nMissing Values")

print(df.isnull().sum())

# ----------------------------
# Duplicate Records
# ----------------------------

duplicates = df.duplicated().sum()

print("\nDuplicate Records")

print(duplicates)

# ----------------------------
# Data Types
# ----------------------------

print("\nData Types")

print(df.dtypes)

# ----------------------------
# Statistical Summary
# ----------------------------

print("\nNumerical Summary")

print(df.describe())

# ----------------------------
# Categorical Summary
# ----------------------------

print("\nCategorical Summary")

print(df.describe(include="object"))

print("\nLoad Data Step Completed Successfully.") 
