import glob
import os
for f in glob.glob("cv-*.png"):
  cmd = "convert "+f+" -background white -flatten "+f
  os.system(cmd)

