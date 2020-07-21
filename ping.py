import os

hostname = "google.com"
response = os.system("ping -c 1" + hostname)

if response == 0:
    print("down")
else:
    print("up")
