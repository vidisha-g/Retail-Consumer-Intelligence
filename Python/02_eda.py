import pandas as pd
import matplotlib.pyplot as plt

# Load Dataset
df = pd.read_csv("Dataset/consumer_behavior.csv")

# Gender Distribution
print("="*60)
print("Gender Distribution")
print("="*60)

gender_count = df["Gender"].value_counts()

print(gender_count)

gender_count.plot(
    kind="bar",
    color=["skyblue", "pink"],
    edgecolor="black"
)

plt.title("Customer Distribution by Gender")
plt.xlabel("Gender")
plt.ylabel("Number of Customers")
plt.grid(axis="y")

plt.savefig("Reports/01_gender_distribution.png")
plt.show()

# Age Distribution
print("="*60)
print("Age Distribution")
print("="*60)

print(df["Age"].describe())

plt.figure(figsize=(8,5))

plt.hist(
    df["Age"],
    bins=10,
    edgecolor="black"
)

plt.title("Age Distribution")
plt.xlabel("Age")
plt.ylabel("Number of Customers")

plt.grid(axis="y")

plt.savefig("Reports/02_age_distribution.png")
plt.show()

# Age Group Distribution
print("="*60)
print("Age Group Distribution")
print("="*60)

df["Age Group"] = pd.cut(
    df["Age"],
    bins=[18,30,50,70],
    labels=["Young","Adult","Senior"]
)

age_group = df["Age Group"].value_counts()

print(age_group)

age_group.plot(
    kind="pie",
    autopct="%1.1f%%",
    startangle=90
)

plt.title("Customer Distribution by Age Group")
plt.ylabel("")

plt.savefig("Reports/03_age_group_distribution.png")
plt.show()

# Purchase Amount Distribution
print("="*60)
print("Purchase Amount Distribution")
print("="*60)

print(df["Purchase Amount (USD)"].describe())

plt.figure(figsize=(8,5))

plt.hist(
    df["Purchase Amount (USD)"],
    bins=15,
    edgecolor="black"
)

plt.title("Purchase Amount Distribution")
plt.xlabel("Purchase Amount (USD)")
plt.ylabel("Frequency")

plt.grid(axis="y")

plt.savefig("Reports/04_purchase_amount_distribution.png")
plt.show()

# Category Distribution
print("="*60)
print("Category Distribution")
print("="*60)

category_count = df["Category"].value_counts()

print(category_count)

category_count.plot(
    kind="bar",
    edgecolor="black"
)

plt.title("Products Sold by Category")
plt.xlabel("Category")
plt.ylabel("Number of Products Sold")

plt.grid(axis="y")

plt.savefig("Reports/05_category_distribution.png")
plt.show()

# Payment Method Distribution
print("="*60)
print("Payment Method Distribution")
print("="*60)

payment_count = df["Payment Method"].value_counts()

print(payment_count)

payment_count.plot(
    kind="bar",
    figsize=(8,5),
    edgecolor="black"
)

plt.title("Payment Method Distribution")
plt.xlabel("Payment Method")
plt.ylabel("Number of Customers")
plt.xticks(rotation=45)

plt.grid(axis="y")

plt.savefig("Reports/06_payment_method_distribution.png")

plt.show()

# Shipping Type Distribution
print("="*60)
print("Shipping Type Distribution")
print("="*60)

shipping_count = df["Shipping Type"].value_counts()

print(shipping_count)

shipping_count.plot(
    kind="bar",
    figsize=(8,5),
    edgecolor="black"
)

plt.title("Shipping Type Distribution")
plt.xlabel("Shipping Type")
plt.ylabel("Number of Orders")

plt.grid(axis="y")

plt.savefig("Reports/07_shipping_type_distribution.png")

plt.show()

# Season Distribution
print("="*60)
print("Season Distribution")
print("="*60)

season_count = df["Season"].value_counts()

print(season_count)

season_count.plot(
    kind="bar",
    figsize=(7,5),
    edgecolor="black"
)

plt.title("Purchases by Season")
plt.xlabel("Season")
plt.ylabel("Number of Purchases")

plt.grid(axis="y")

plt.savefig("Reports/08_season_distribution.png")

plt.show()

# Subscription Status 
print("="*60)
print("Subscription Status")
print("="*60)

subscription_count = df["Subscription Status"].value_counts()

print(subscription_count)

subscription_count.plot(
    kind="pie",
    autopct="%1.1f%%",
    figsize=(6,6),
    startangle=90
)

plt.title("Subscription Status")

plt.savefig("Reports/09_subscription_status.png")

plt.show()

# Purchase Frequency 
print("="*60)
print("Frequency of Purchases")
print("="*60)

frequency_count = df["Frequency of Purchases"].value_counts()

print(frequency_count)

frequency_count.plot(
    kind="bar",
    figsize=(9,5),
    edgecolor="black"
)

plt.title("Frequency of Purchases")
plt.xlabel("Purchase Frequency")
plt.ylabel("Customers")

plt.xticks(rotation=45)

plt.grid(axis="y")

plt.savefig("Reports/10_frequency_distribution.png")

plt.show() 