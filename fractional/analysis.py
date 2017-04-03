import matplotlib.pyplot as plt
import numpy as np
import csv

x = []
y = []

with open('outputsort-30.csv','r') as csvfile:
    plots = csv.reader(csvfile, delimiter=',')
    for row in plots:
        x.append(int(row[0]))
        y.append(float(row[1]))

coefficients = np.polyfit(np.log(x),y,1) # Use log(x) as the input to polyfit.
fit = np.poly1d(coefficients) 

plt.plot(x,y, 'ro', label='10-300k')
plt.plot(x,fit(np.log(x)),"--", label="fit")
plt.xlabel('x')
plt.ylabel('y')
plt.title('Interesting Graph\nCheck it out')
plt.legend()
plt.show()
