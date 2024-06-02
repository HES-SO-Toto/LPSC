from fixedpoint import FixedPoint as fp
import numpy as np 
import numba
import matplotlib.pyplot as plt
from math import pi

m=4
n=14
X= 720
Y = 720

for i in np.arange(0,6):
    print(-2+0.5*i,fp(-2+0.5*i, signed=1, m=m, n=n,str_base=2))

imag_00 = fp(2/720, signed=1, m=m, n=n,str_base=2)
print(imag_00)
step_x = fp(2.5/X, signed=1, m=m, n=n,str_base=2)
step_y = fp(2/Y, signed=1, m=m, n=n,str_base=2)
print(step_x, step_y)
four = fp(4, signed=1, m=m, n=n,str_base=16)
one = fp(1, signed=1, m=m, n=n,str_base=16)

