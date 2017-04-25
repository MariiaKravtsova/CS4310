import matplotlib.pyplot as plt
import numpy as np
from scipy import stats
import csv

e = []
v = []
y = []

with open('output.csv','r') as csvfile:
    plots = csv.reader(csvfile, delimiter=',')
    for row in plots:
        v.append(int(row[0]))
        e.append(int(row[1]))
        y.append(float(row[2]))

a = (np.array(e)*(np.array(e)-1))/2
coefficients = np.polyfit(a*np.log(e),y,1) # Use log(v) as the input to polyfit.
fit = np.poly1d(coefficients) 

plt.plot(e, y, 'ro', label='10-300k')
plt.plot(e, fit(a*np.log(e)),"--", label="fit")
plt.xlabel('edges size')
plt.ylabel('time')
plt.show()
or_coeff = np.polyfit(e, y, 1)
p = np.poly1d(or_coeff)
print('Equation: ', p)

# # calcuate equation
# slope, intercept, r_value, p_value, std_err = stats.linregress(v, v*np.log(v))
# print('R value: ', r_value)
# print('Slope: ', slope)
# print('Intercept: ', intercept)
# print('Error: ', std_err)

# # n log n fit
# coefficients = np.polyfit(np.log(v),y,1) 
# fit = np.poly1d(coefficients) 

# # n^2 fit
# sqr = np.poly1d(np.polyfit(np.multiply(v, v), y, 1))

# # linear fit
# lin = np.poly1d(np.polyfit(v, y, 1))

# # plot everything
# plt.plot(v,y, 'ro', )
# plt.plot(v,fit(np.log(v)),"-", color="black", label="log n", linewidth=2)
# plt.plot(v,sqr(np.multiply(v, v)),"-", label="n^2", color="green", linewidth=1.5)
# plt.plot(v,lin(v),"-", label="n", color="yellow", linewidth=1.5)
# plt.xlabel('size')
# plt.ylabel('time')
# plt.title('Sort_by Analysis\n10,000 - 200,000 in 10,000 increments')
# plt.legend()
# plt.show()

