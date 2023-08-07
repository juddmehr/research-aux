# Author: Colton Johnson
# A lot of this code was taken from random corners of the internet
# Purpose: 30 minute background removal tool blitz

# We need OS and PIL for file I/O and Images respectively
import os
from PIL import Image

# Move current work directory to current file
# Get path directory
os.chdir(os.path.dirname(os.path.abspath(__file__)))
currPath = os.path.split(__file__)[0]
print("Current Path: " + currPath)

# List images that haven't been converted already, but are .pngs
imageList = []
for file in os.listdir(currPath):
    if file.endswith(".png") and not(file.startswith("_")):
        imageList.append(file)
print(imageList)

# Function taken from:
# https://www.geeksforgeeks.org/how-to-make-background-image-transparent-using-python/
# Edited to generalize filename I/O
# Final file has prepended "_" for ease of selection
def convertImage(filename):
    img = Image.open(filename)
    img = img.convert("RGBA")
    datas = img.getdata()
    newData = []
    for item in datas:
        if item[0] == 255 and item[1] == 255 and item[2] == 255:
            newData.append((255, 255, 255, 0))
        else:
            newData.append(item)
    img.putdata(newData)
    img.save("_"+filename, "PNG")
    print("Successfully Converted: " + filename + " --> _"+filename)

# Loop through and remove all
# Note this will overwrite files we already did in past runs
for file in imageList:
    convertImage(file)
