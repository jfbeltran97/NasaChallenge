import pandas as pd
import matplotlib.pyplot as plt
file = pd.read_csv("Datasets/MODIS_C6_South_America_24h.csv")
axs = file.plot(x='longitude', y='latitude', kind='scatter')
