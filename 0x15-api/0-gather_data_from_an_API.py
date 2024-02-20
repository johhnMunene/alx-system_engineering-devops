#!/usr/bin/python3
"""Gather data from an API"""
import requests
import sys

employee_id =sys.argv[1]
api_url = 'https://jsonplaceholder.typicode.com/users/{}'.format(employee_id)
api_url2 = 'https://jsonplaceholder.typicode.com/users/{}/todos'.format(employee_id)

response = requests.get(api_url)
response2 = requests.get(api_url2);

if response.status_code == 200 & response2.status_code == 200:
    emp_data = response.json()
    emp_name = emp_data.get('name')
    data = response2.json()
    title2 = ''
    total = 0
    done = 0
    for todo in data:
        total += 1
        completed = todo.get('completed') 
        if completed == True:
            done += 1
            title = todo.get('title')
            title2 = title2 + title 
    print("Employee {} is done with tasks({}/{})".format(emp_name, done, total))
    print('\t {}'.format(title2))
else:
    print('failed')

