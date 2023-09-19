import os
from os import path

mappings = [("。", "．")]

dirname = path.abspath(path.dirname(__file__))

for current, dirs, files in os.walk(dirname):
    for file in files:
        if path.extname(file) == '.typ':
            print(current, file)