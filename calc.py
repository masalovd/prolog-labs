import math as m
import numpy as np


X = float(input('X (initial value of x): '))
Xf = float(input('Xf (final value of x): '))
H = float(input('H (step size X-Xf): '))
N = int(input('N (number of iterations): '))

result = []

for x in np.arange(X, Xf + H - 0.01, H):
  acc = 0
  
  for i in range(2, N+1):
    acc += 1 / (x**2 + i)
  
  acc += m.sin(x**2)
  result.append(acc)

print(f'List of results: {result}')