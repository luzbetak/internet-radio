#!/bin/bash                                                                                                                                              

# tidy -config config.txt one.txt > kevin.html 
# tidy -f errs.txt -config config.txt -m $1

tidy -f errs.txt -config tidy.conf -m $1

