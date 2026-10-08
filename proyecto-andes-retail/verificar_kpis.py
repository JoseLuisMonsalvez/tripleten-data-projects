"""Recalcular los indicadores del Excel de Andes Retail.

Ejecutar desde esta carpeta: python verificar_kpis.py
La ganancia del caso se define como ingresos menos el coste del dataset.
"""
from pathlib import Path
import pandas as pd

project = Path(__file__).resolve().parent
source = project / 'data' / 'Andes_Retail_Group_2024_2025.xlsx'
sales = pd.read_excel(source)
income = sales['Ingresos'].sum()
cost = sales['Costo'].sum()
profit = income - cost
metrics = pd.DataFrame([
    ('Pedidos (filas)', len(sales)),
    ('Ingresos', income),
    ('Costes', cost),
    ('Ganancia = ingresos - costes', profit),
    ('Margen de ganancia (%)', 100 * profit / income),
    ('Unidades vendidas', sales['Unidades_Vendidas'].sum()),
], columns=['Indicador', 'Valor'])
metrics.to_csv(project / 'kpis_verificados.csv', index=False)
print(metrics.to_string(index=False))
