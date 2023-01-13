import time
from http.server import BaseHTTPRequestHandler, HTTPServer

HOST_NAME = 'localhost'
PORT_NUMBER = 9000


class MyHandler(BaseHTTPRequestHandler):
    def do_HEAD(self):
        self.send_response(200)
        self.send_header('Content-type', 'text/html')
        self.end_headers()

    def do_GET(self):
        paths = {
            '/foo': {'status': 200},
            '/bar': {'status': 302},
            '/baz': {'status': 404},
            '/qux': {'status': 500}
        }

        if self.path in paths:
            self.respond(paths[self.path])
        else:
            self.respond({'status': 500})

    def handle_http(self, status_code, path):
        self.send_response(status_code)
        self.send_header('Content-type', 'text/html')
        self.end_headers()
        content = '''
        <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>

	<link rel="stylesheet" type="text/css" href="./style 3.css">

	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="css2.css" rel="stylesheet">
</head>
<body>
	

	<!---3rd page start--->
<div class="bg-img">

	<button><a href="file:///D:/Class%20Practice/project/project%206%20r/index%204.html">Sing In</a></button>
	<div class="search-container">
		
		&nbsp &nbsp &nbsp &nbsp<div><p>Departure</p>
			<select> 
				<option>Finland </option>
				<option>Canada </option>
				<option>Bangladesh </option>
				<option>America</option>
				<option>Uganda </option>
				<option>Turkey </option>
				<option>USA</option>
				</select>



		</div>&nbsp &nbsp
		<div><p>Arrival</p>

			<select> 
				<option>Turkey </option>
				<option>Canada </option>
				<option>Bangladesh </option>
				<option>America</option>
				<option>Uganda </option>
				<option>Finland </option>
				<option>USA</option>
				</select>


		</div>&nbsp &nbsp
		<div><p>Journey Date</p>
			<input  class="feild" type="datetime-local" name="dt" id="dt" required="required">


		</div>&nbsp &nbsp
		<div><p>Return Date</p>

			<input  class="feild" type="datetime-local" name="dt" id="dt" required="required">


		</div>&nbsp &nbsp
			<button class="btn"><a href="file:///D:/Class%20Practice/project/project%206%20r/index%204.html">Search</a></button>
	</div>



</div>

<!---3rd page end--->
	
</body>
</html>
        '''.format(path)
        return bytes(content, 'UTF-8')

    def respond(self, opts):
        response = self.handle_http(opts['status'], self.path)
        self.wfile.write(response)

if __name__ == '__main__':
    server_class = HTTPServer
    httpd = server_class((HOST_NAME, PORT_NUMBER), MyHandler)
    print(time.asctime(), 'Server Starts - %s:%s' % (HOST_NAME, PORT_NUMBER))
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        pass
    httpd.server_close()
    print(time.asctime(), 'Server Stops - %s:%s' % (HOST_NAME, PORT_NUMBER))
