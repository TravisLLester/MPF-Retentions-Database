import mysql.connector
import os

# Below are the variables that will be used to connect to the database
DB_HOST = "localhost"
DB_USER = "root"
DB_PASSWORD = ""
DB_NAME = "retentions"

# Below is the code that will connect to the database using the variables above
try:
    connection = mysql.connector.connect(
        host=DB_HOST,
        user=DB_USER,
        password=DB_PASSWORD,
        database=DB_NAME
    )
    cursor = connection.cursor()
    print(f"Successfully connected to the '{DB_NAME}' database.")
except mysql.connector.Error as err:
    print(f"Error: {err}")
    exit()

# below is the query that will be executed in mySQL
query = """
SELECT c.last_name, c.first_name, s.Squadron_Name, s.CSS_Email 
FROM customer_information c
JOIN squadrons s ON s.squadron_ID = c.squadron_ID
LIMIT 10;
"""
# below is the code that will execute the query and output the results to the user on screen and in .txt file
try:
    cursor.execute(query)
    results = cursor.fetchall()

    # Define output file path, path is where the python code is
    output_file = "retention_report.txt"

    # Open the file in write mode
    with open(output_file, "w") as file:
        # Write header
        header = "Last Name | First Name | Squadron Name | CSS Email\n"
        header += "-" * 60 + "\n"
        print(header)
        file.write(header)
# Loop through the results and print them to the console and write them to the file
        for row in results:
            row_data = f"{row[0]} | {row[1]} | {row[2]} | {row[3]}\n"
            print(row_data.strip()) 
            file.write(row_data)
# Output a message to the user that the report has been generated and saved to the file
    print(f"\nReport successfully generated and saved to {output_file}.")
# Output an error message if the query fails
except mysql.connector.Error as err:
    print(f"Query failed: {err}")
# Close the cursor and connection
cursor.close()
connection.close()
print(f"Connection to the '{DB_NAME}' database has successfully closed.") #outputs a message to the user that the connection has been closed
