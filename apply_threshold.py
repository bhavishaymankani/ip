# Python program to illustrate
# simple thresholding type on an image

import cv2
from google.colab.patches import cv2_imshow
import numpy as np
# path to input image is specified and
# image is loaded with imread command
image1 = cv2.imread('sceen1.jpeg')

img = cv2.cvtColor(image1, cv2.COLOR_BGR2GRAY)

ret, thresh1 = cv2.threshold(img, 120, 255, cv2.THRESH_BINARY)
ret, thresh2 = cv2.threshold(img, 120, 255, cv2.THRESH_BINARY_INV)
ret, thresh3 = cv2.threshold(img, 120, 255, cv2.THRESH_TRUNC)
ret, thresh4 = cv2.threshold(img, 120, 255, cv2.THRESH_TOZERO)
ret, thresh5 = cv2.threshold(img, 120, 255, cv2.THRESH_TOZERO_INV)

cv2_imshow(thresh1)
cv2_imshow(thresh2)
cv2_imshow(thresh3)
cv2_imshow(thresh4)
cv2_imshow(thresh5)

if cv2.waitKey(0) & 0xff == 27:
  cv2.destroyAllWindows()