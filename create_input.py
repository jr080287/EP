#!/usr/bin/env python

import sys
import os
file = sys.argv[1]

ref={}
with open(file) as f:
	for line in f:
		line = line.strip()
		ref[line]=1

for i in ref:
	try:
		for file in os.listdir("%s/seqs/" % i):
#			print file
			name = os.path.splitext(file)[0]

#			print name
			print "/home/tue39618/EP/Programs/Living_seq_Poisson_G5.mao /home/tue39618/EP/Test_data/%s/seqs/%s /home/tue39618/EP/Test_data/%s/trees/%s.nwk /home/tue39618/EP/Test_data/%s/AS/%s.results" % (i,file,i,name,i,name)
	except:
		#print i
		pass
