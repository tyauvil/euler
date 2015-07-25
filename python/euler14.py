#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 14
#
# The following iterative sequence is defined for the set of positive integers:
#
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
#
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.

num = 13
result = 1
high = 0
highnum = 0

for i in range(77031, 999999):
    num = i
    while num > 2:
        if num % 2 == 0:
            num = num / 2
            result += 1
        else:
            num = num * 3 + 1
            result += 1

    if result > high:
        high = result
        highnum = i

    result = 0

print highnum