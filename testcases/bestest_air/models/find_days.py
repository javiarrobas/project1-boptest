#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Thu Jan  7 13:20:58 2021

@author: dhbubu18
"""

from data.find_days import find_days
import json

days = find_days(heat='fcu_reaPCoo_y', cool='fcu_reaPHea_y', data='simulate')

with open('days.json', 'w') as f:
    json.dump(days, f)