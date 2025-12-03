import pandas as pd
import random
from datetime import datetime, timedelta

customers = ["C001","C002","C003"]
accounts = ["A001","A002","A003"]
merchants = ["M001","M002"]

data = []

for i in range(100):
    data.append([
        f"T{i+100}",
        random.choice(accounts),
        random.choice(merchants),
        random.randint(100,20000),
        "USD",
        "DEBIT",
        datetime.now() - timedelta(hours=random.randint(1,72)),
        random.choice(["USA","Russia","India"]),
        random.choice(["ONLINE","POS"])
    ])

df = pd.DataFrame(data, columns=[
    "transaction_id","account_id","merchant_id","amount",
    "currency","transaction_type","transaction_timestamp",
    "country","channel"
])

df.to_csv("synthetic_transactions.csv", index=False)
print("Synthetic transaction data generated.")
