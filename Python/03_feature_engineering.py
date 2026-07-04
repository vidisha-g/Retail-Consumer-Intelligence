import pandas as pd
import numpy as np

# Load Dataset
df = pd.read_csv("Dataset/consumer_behavior.csv")

# Heading
print("="*60)
print("FEATURE ENGINEERING")
print("="*60)

# Spending Level
df["Spending Level"] = pd.cut(
    df["Purchase Amount (USD)"],
    bins=[0,40,70,100],
    labels=["Low","Medium","High"]
)

print(df["Spending Level"].value_counts())  

# Discount Percentage
df["Discount %"] = np.where(
    df["Discount Applied"] == "Yes",
    10,
    0
)

print("="*60)
print("Discount Percentage")
print("="*60)
print(df["Discount %"].value_counts())

# Discount Amount
df["Discount Amount"] = (
    df["Purchase Amount (USD)"] *
    df["Discount %"] / 100
)

print("="*60)
print("Discount Amount")
print("="*60)
print(df["Discount Amount"].head())

# Final Amount
df["Final Amount"] = (
    df["Purchase Amount (USD)"] -
    df["Discount Amount"]
)

print("="*60)
print("Final Amount")
print("="*60)

print(df[[
    "Purchase Amount (USD)",
    "Discount %",
    "Discount Amount",
    "Final Amount"
]].head())

# High Value Customer
df["High Value Customer"] = np.where(
    df["Purchase Amount (USD)"] >= 80,
    "Yes",
    "No"
)

print("="*60)
print("High Value Customer")
print("="*60)
print(df["High Value Customer"].value_counts())

# Loyal Customer
df["Loyal Customer"] = np.where(
    df["Previous Purchases"] >= 25,
    "Yes",
    "No"
)

print("="*60)
print("Loyal Customer")
print("="*60)
print(df["Loyal Customer"].value_counts())

# Age Group
df["Age Group"] = pd.cut(
    df["Age"],
    bins=[18,30,45,60,70],
    labels=[
        "18-30",
        "31-45",
        "46-60",
        "61-70"
    ]
)

print("="*60)
print("Age Group")
print("="*60)
print(df["Age Group"].value_counts())

df.to_csv(
    "Dataset/consumer_behavior_feature_engineered.csv",
    index=False
)

print("="*60)
print("Feature Engineering Completed")
print("="*60)