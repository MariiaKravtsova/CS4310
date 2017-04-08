import matplotlib.pyplot as plt
import numpy as np
from scipy import stats
import csv

x = []
y = []

with open('sort.csv','r') as csvfile:
    plots = csv.reader(csvfile, delimiter=',')
    for row in plots:
        x.append(int(row[0]))
        y.append(float(row[1]))

or_coeff = np.polyfit(x, y, 1)
p = np.poly1d(or_coeff)
print('Equation: ', p)

# calcuate equation
slope, intercept, r_value, p_value, std_err = stats.linregress(x, x*np.log(x))
print('R value: ', r_value)
print('Slope: ', slope)
print('Intercept: ', intercept)
print('Error: ', std_err)

# n log n fit
coefficients = np.polyfit(x*np.log(x),y,1) 
fit = np.poly1d(coefficients) 

# n^2 fit
sqr = np.poly1d(np.polyfit(np.multiply(x, x), y, 1))

# linear fit
lin = np.poly1d(np.polyfit(x, y, 1))

# plot everything
plt.plot(x,y, 'ro', )
plt.plot(x,fit(x*np.log(x)),"-", color="black", label="n log n", linewidth=2)
plt.plot(x,sqr(np.multiply(x, x)),"-", label="n^2", color="green", linewidth=1.5)
plt.plot(x,lin(x),"-", label="n", color="yellow", linewidth=1.5)
plt.xlabel('size')
plt.ylabel('time')
plt.title('Sort_by Analysis\n10,000 - 200,000 in 10,000 increments')
plt.legend()
plt.show()

