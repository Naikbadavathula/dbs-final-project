import mysql.connector

mydb = mysql.connector.connect(
   host="localhost",
   user="root",
   password="Kalirao",
   database="gklearning"
)

mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM Customers")

myresult = mycursor.fetchall()

for x in myresult:
  print(x)
