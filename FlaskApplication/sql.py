import pymysql.cursors
def searchQuery(ac,dc):
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
        searchRes = []
        #print(dc, ac)
        with connection.cursor() as cursor:
            # Read a single record
            #sql = "SELECT * FROM `flight_search` where `departure_city` = 'Lappenranta' and `arrival_city` = 'Newyork'"
            sql = "SELECT * FROM `flight_search` where `departure_city` = "+"'"+dc+"'"+" and `arrival_city` = "+"'"+ac+"'"
            #print(sql)
            #flight_search where departure_city = 'Lappenranta' and arrival_city = 'Newyork'
            cursor.execute(sql)
            results = cursor.fetchall()
            for row in results:
                arrival_city = row['arrival_city']
                departure_city = row['departure_city']
                airline_name = row['airline_name']
                airline_model = row['airline_model']
                
            # Now print fetched result
                print ("arrival_city = %s,departure_city = %s,airline_name = %s, airline_model = %s" % (arrival_city, departure_city, airline_name,airline_model))
                searchRes.append([arrival_city, departure_city, airline_name,airline_model])
    finally:
        connection.close()
    return searchRes

def registerQuery(user_name,user_email,user_phone,user_city):
    # Connect to the database
    if user_city == 'Lappenranta' or user_city == 'Helsinki':

        database= 'air_booking_fin'
        user_country=2
        if user_city == 'Lappenranta':
            site_office=3
        else:
            site_office=4
    else:
        site_office=1
        user_country=1
        database='air_booking_usa'
    print(database)
    connection = pymysql.connect(host='localhost',
    user='root',
    password='Sphings@19',
    db=database,
    charset='utf8mb4',
    cursorclass=pymysql.cursors.DictCursor)
    print(connection)
    try:
       
        searchRes = []
        print('Query')
        
        with connection.cursor() as cursor:
            
            # Read a single record
            
            #sql = "SELECT * FROM `flight_search` where `departure_city` = "+"'"+dc+"'"+" and `arrival_city` = "+"'"+ac+"'"
            #sql = "INSERT INTO `passenger` (`passenger_name`, `passenger_email`, `passenger_tel`, `agency_site_office_id`,`country_id`)  VALUES ("+"'"+user_name+"'"+","+"'"+user_email+"'"+","+"'"+str(user_phone)+"'"+","+str(site_office)+","+str(user_country)+")"
            insert_stmt = (
  "INSERT INTO passenger (passenger_name, passenger_email, passenger_tel, agency_site_office_id,country_id) "
  "VALUES (%s, %s, %s, %s, %s)"
)
            print(insert_stmt)
            data = (user_name,user_email,user_phone,site_office,user_country)
            #flight_search where departure_city = 'Lappenranta' and arrival_city = 'Newyork'
            #sql = "SELECT * FROM `flight_search` where `departure_city` = 'Lappenranta' and `arrival_city` = 'Newyork'"
            cursor.execute(insert_stmt,data)
            
            '''
            sql = "SELECT * FROM passenger"
            cursor.execute(sql)
            results = cursor.fetchall()

            for row in results:
                print(row['passenger_name'])
            '''

            
    finally:
        connection.commit()
        connection.close()
    return searchRes