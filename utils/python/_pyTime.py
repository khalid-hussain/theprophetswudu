import argparse
import sys
from datetime import datetime
from hijri_converter import convert

# datetime object containing current date and time
now = datetime.now()

todayHijri = convert.Gregorian.today().to_hijri()
theDate = todayHijri.datetuple()[2]
theDay = todayHijri.day_name('en')

theMonth = todayHijri.month_name('en')
theYear = todayHijri.year

theHijriDate = f'{theDay}, {theDate} {theMonth}, {theYear}'

# dd/mm/YY H:M:S
# dt_string = now.strftime("%A, %d %B %Y (%I:%M:%S %p)")
dt_string = now.strftime("(%I:%M:%S %p)")
theHijriDateAndTime = theHijriDate + ' ' + dt_string

# https://stackoverflow.com/questions/3597480/how-to-make-python-3-print-utf8/3603160#3603160
sys.stdout.buffer.write((theHijriDateAndTime).encode('utf-8'))

# Remove newline at the end of the string
# print("\"", theHijriDate, dt_string, "\"", end='')
