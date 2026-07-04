import pandas as pd
import matplotlib.pyplot as plt

# Load Dataset
df = pd.read_csv("Dataset/consumer_behavior_feature_engineered.csv")

# Heading
print("="*60)
print("DATA ANALYSIS")
print("="*60)

import os
os.makedirs("Reports", exist_ok=True)

# Gender Distribution - Bar Graph
print("="*60)
print("Gender Distribution")
print("="*60)

gender_count = df["Gender"].value_counts()

print(gender_count)

gender_count.plot(
    kind="bar",
    figsize=(6,5),
    edgecolor="black"
)

plt.title("Gender Distribution")
plt.xlabel("Gender")
plt.ylabel("Count")

plt.tight_layout()

plt.savefig("Reports/01_gender_distribution.png")

plt.show()

# Age Distribution - Histogram
print("="*60)
print("Age Distribution")
print("="*60)

print(df["Age"].describe())

df["Age"].plot(
    kind="hist",
    bins=10,
    figsize=(7,5),
    edgecolor="black"
)

plt.title("Age Distribution")
plt.xlabel("Age")
plt.ylabel("Customers")

plt.tight_layout()

plt.savefig("Reports/02_age_distribution.png")

plt.show()

# Age Group Distribution - Pie Chart
print("="*60)
print("Age Group Distribution")
print("="*60)

age_group = df["Age Group"].value_counts()

print(age_group)

age_group.plot(
    kind="pie",
    figsize=(6,6),
    autopct="%1.1f%%"
)

plt.title("Age Group Distribution")

plt.ylabel("")

plt.tight_layout()

plt.savefig("Reports/03_age_group_distribution.png")

plt.show()

# Purchase Amount Distribution - Histogram
print("="*60)
print("Purchase Amount Distribution")
print("="*60)

print(df["Purchase Amount (USD)"].describe())

df["Purchase Amount (USD)"].plot(
    kind="hist",
    bins=10,
    figsize=(8,5),
    edgecolor="black"
)

plt.title("Purchase Amount Distribution")
plt.xlabel("Purchase Amount (USD)")
plt.ylabel("Customers")

plt.tight_layout()

plt.savefig("Reports/04_purchase_amount_distribution.png")

plt.show()

# Category Distribution - Bar Graph
print("="*60)
print("Category Distribution")
print("="*60)

category = df["Category"].value_counts()

print(category)

category.plot(
    kind="bar",
    figsize=(8,5),
    edgecolor="black"
)

plt.title("Category Distribution")
plt.xlabel("Category")
plt.ylabel("Count")

plt.tight_layout()

plt.savefig("Reports/05_category_distribution.png")

plt.show()

# Payment Method Distribution - Bar Graph
print("="*60)
print("Payment Method Distribution")
print("="*60)

payment = df["Payment Method"].value_counts()

print(payment)

payment.plot(
    kind="bar",
    figsize=(8,5),
    edgecolor="black"
)

plt.title("Payment Method Distribution")
plt.xlabel("Payment Method")
plt.ylabel("Count")

plt.tight_layout()

plt.savefig("Reports/06_payment_method_distribution.png")

plt.show()

# Shipping Type Distribution - Bar Graph
print("="*60)
print("Shipping Type Distribution")
print("="*60)

shipping = df["Shipping Type"].value_counts()

print(shipping)

shipping.plot(
    kind="bar",
    figsize=(8,5),
    edgecolor="black"
)

plt.title("Shipping Type Distribution")
plt.xlabel("Shipping Type")
plt.ylabel("Count")

plt.tight_layout()

plt.savefig("Reports/07_shipping_type_distribution.png")

plt.show()

# Season Distribution - Bar Graph
print("="*60)
print("Season Distribution")
print("="*60)

season = df["Season"].value_counts()

print(season)

season.plot(
    kind="bar",
    figsize=(8,5),
    edgecolor="black"
)

plt.title("Season Distribution")
plt.xlabel("Season")
plt.ylabel("Count")

plt.tight_layout()

plt.savefig("Reports/08_season_distribution.png")

plt.show()

# Subscription Status - Pie Chart
print("="*60)
print("Subscription Status")
print("="*60)

subscription = df["Subscription Status"].value_counts()

print(subscription)

subscription.plot(
    kind="pie",
    figsize=(6,6),
    autopct="%1.1f%%"
)

plt.ylabel("")

plt.title("Subscription Status")

plt.tight_layout()

plt.savefig("Reports/09_subscription_status.png")

plt.show()

# Frequency of Purchases - Bar Graph
print("="*60)
print("Frequency of Purchases")
print("="*60)

frequency = df["Frequency of Purchases"].value_counts()

print(frequency)

frequency.plot(
    kind="bar",
    figsize=(9,5),
    edgecolor="black"
)

plt.title("Frequency of Purchases")
plt.xlabel("Frequency")
plt.ylabel("Count")

plt.tight_layout()

plt.savefig("Reports/10_frequency_distribution.png")

plt.show()