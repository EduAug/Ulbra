import os

if not os.path.exists("testArchive.txt"):
    n = open("testArchive.txt","a")
    n.write("Created and written!")
else:
    n = open("testArchive.txt","r")


n2 = open("testArchive.txt")
print(n2.read())