from mako.template import Template
from mako.lookup import TemplateLookup
import os

basedir = os.path.dirname(os.path.abspath(__file__))

#collect all files to build
lyfiles = []
for root, dirs, files in os.walk(basedir):
		for file in files:
				if file.endswith("-mako.ly"):
					lyfiles.append(file)

lyfiles.sort()
print(lyfiles)


mylookup = TemplateLookup(directories=[basedir], input_encoding='utf-8')

mytemplate = mylookup.get_template('book.mako')
rendered = mytemplate.render(list=lyfiles)
file_ = open(os.path.join(basedir,'out.ly'), 'w')
file_.write(rendered)
file_.close()
