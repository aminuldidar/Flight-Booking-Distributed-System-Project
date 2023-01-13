import pymysql.cursors
# Connect to the database
connection = pymysql.connect(host='localhost',
user='root',
password='Sphings@19',
db='air_booking',
charset='utf8mb4',
cursorclass=pymysql.cursors.DictCursor)
try:
    '''
    with connection.cursor() as cursor:
        # Create a new record
        #sql = "INSERT INTO `books` (`name`, `owner`, `purchase`) VALUES ('Tukunjil', 'Zafar Iqbal', now())"
        #sql = "INSERT INTO `books` (`name`, `owner`, `purchase`) VALUES ('Tukunjil', 'Zafar Iqbal', STR_TO_DATE('17/07/2013 18:33:55', '%d/%m/%Y %H:%i:%s'))"
        sql = "SELECT * FROM reservation"
        cursor.execute(sql)
        # connection is not autocommit by default. So you must commit to save
        # your changes.
        connection.commit()
    '''
    with connection.cursor() as cursor:
        # Read a single record
        sql = "SELECT * FROM `reservation`"
        cursor.execute(sql)
        results = cursor.fetchall()
        for row in results:
            name = row['passenger_id']
            owner = row['date_time']
            purchase = row['flight_id']
            
          # Now print fetched result
            print ("name = %s,owner = %s,purchase = %s" % (name, owner, purchase))
        
finally:
    connection.close()
