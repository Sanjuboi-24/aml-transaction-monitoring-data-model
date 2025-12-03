import pandas as pd

df = pd.read_csv("synthetic_transactions.csv")

alerts = []

for _, row in df.iterrows():
    if row["amount"] > 10000:
        alerts.append([row["transaction_id"], "LARGE_TRANSACTION", 90])

    if row["country"] in ["Russia","Iran","North Korea"]:
        alerts.append([row["transaction_id"], "HIGH_RISK_COUNTRY", 95])

alerts_df = pd.DataFrame(alerts, columns=["transaction_id","alert_type","risk_score"])
alerts_df.to_csv("generated_alerts.csv", index=False)

print("AML Alerts generated successfully.")
