import pandas as pd

print("="*60)
print("EXPORTING DATASET")
print("="*60)

df = pd.read_csv("Dataset/consumer_behavior_feature_engineered.csv")

df.to_csv(
    "Dataset/consumer_behavior_final.csv",
    index=False
)

print("Dataset exported successfully!")
print(df.shape)
print(df.head())