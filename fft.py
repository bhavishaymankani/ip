# import sympy
from sympy import fft
# sequence
seq = [10, 12, 34, 23, 28]
# fft
transform = fft(seq)
print (transform)