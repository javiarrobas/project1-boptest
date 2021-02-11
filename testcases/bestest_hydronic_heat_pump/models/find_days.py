'''
Created on Feb 5, 2021

@author: Javier Arroyo

Finds the peak and typical heat days for the bestest_hydronic_heatpump
case. This case needs to be deployed.

'''

from data.find_days import find_days
import json

days = find_days(heat='reaPHeaPum_y', cool=None, data='simulate')

with open('days.json', 'w') as f:
    json.dump(days, f)