from db_connect import engine
import pandas as pd

movies_df = pd.read_sql('SELECT * FROM movies', engine)
for idx,rows in movies_df.iterrows():
    print(rows)