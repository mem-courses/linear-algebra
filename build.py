import os
from datetime import datetime

header_snippet = '''
#import "./template.typ": *

#show: project.with(
  title: "线性代数笔记",
  authors: (
    (name: "memset0", email: "memset0@outlook.com", phone: ""),
  ),
  date: "%s",
)
'''

reset_snippet = '''
#let alpha = math.alpha
#let beta = math.beta
#let xi = math.xi
'''

def process(content):
    start_pos = content.find('#show: project.with')

    if start_pos != -1:
        open_brackets = 0
        close_brackets = 0
        end_pos = None
        for i in range(start_pos, len(content)):
            if content[i] == '(':
                open_brackets += 1
            elif content[i] == ')':
                close_brackets += 1
            if open_brackets == close_brackets and open_brackets > 0:
                end_pos = i
                break
        if end_pos is not None:
            content = content[end_pos+1:]

    content = reset_snippet + content
    return content

script_dir = os.path.dirname(os.path.realpath(__file__))
source_dir = os.path.join(script_dir, 'note')
all_content = header_snippet % (datetime.today().strftime("%B %d, %Y"))
for filename in os.listdir(source_dir):
    file = os.path.join(source_dir, filename)
    if os.path.isfile(file) and filename.endswith('.typ'):
        with open(file, 'r', encoding='utf8') as file:
            content = process(file.read())
            all_content += content

distfile = os.path.join(script_dir, '线性代数笔记@memset0.typ')
with open(distfile, 'w', encoding='utf8') as file:
    file.write(all_content)
os.system(f'typst compile {distfile}')