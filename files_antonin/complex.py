from fixedpoint import FixedPoint as fp
import numpy as np 
import matplotlib.pyplot as plt
from math import pi
m = 4
n=14
X= 720
Y = 720

real_00 = -2
imag_00 = 1.5
step = 3 / X

imag = np.zeros((Y,X ))

for y in np.arange(0,Y) : 
    print(y)
    for x in np.arange(0,X) :
        c_re = real_00 + step *x 
        c_im = imag_00 - step *y 
        c = complex(c_re,c_im)
        z = complex(0,0)
        dist = 0
        n = 0 
        while dist < 4 and n <20:
            z = z**2+c
            dist = abs(z)
            n = n+1
        imag[y,x] = n-1
print(imag)
plt.figure()
plt.imshow(imag)
plt.show()