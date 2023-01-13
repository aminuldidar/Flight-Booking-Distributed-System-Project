from flask import Flask, render_template, render_template_string,request
from sql import searchQuery,registerQuery

app = Flask(__name__)


#Using the below, the popup message appears on the page load of index.html
#0x00001000 - This makes the popup appear over the browser window
@app.route('/')
def index():
    #win32api.MessageBox(0, 'You have just run a python script on the page load!', 'Running a Python Script via Javascript', 0x00001000)

    #win32api.MessageBox(0, 'You have just run a python script on the page load!', 'Running a Python Script via Javascript', 0x00001000)
    return render_template('index 3.html')

#Using the below, the popup message appears when the button is clicked on the webpage.
#0x00001000 - This makes the popup appear over the browser window
@app.route('/registration')    #int has been used as a filter that only integer will be passed in the url otherwise it will give a 404 error
def registration():  
    #return ('you asked for question{0}'.format(question_id))
     return render_template('index.html')

@app.route('/register', methods=['POST'])
def register():
    print('in register')
    if request.method == 'POST':
        user_name = request.form['fullname']
        user_email = request.form['email']
        user_phone = request.form['phone']
        user_country = request.form['country']
        res=registerQuery(user_name,user_email,user_phone,user_country)
    #print(user_name,user_email,user_phone,user_country)
    return render_template('index 3.html')

@app.route('/test', methods=['POST'])
def test():
    print('in index')
    if request.method == 'POST':
      dc = request.form['dc']
      ac = request.form['ac']
    #exec(open("./sql.py").read())
    #res=searchQuery('Newyork','Lappenranta')
    res=searchQuery(ac,dc)
    html = "<div style='"'+"padding-left: 200px; display: flex" align-items:center, justify-content:center+'"'><table border="+"1 "+"class="+'"'+"table table-striped"+'"'+"><tr><th>arrival_city</th><th>departure_city</th><th>airline_name</th><th>airline_model</th></tr>"
   
    for each in res:
        print(each)
        html= html+ "<tr>"

        for i in each:
            html= html+ "<td>"+i+"</td>"
        html= html+ "</tr>"
        
    
    html = html +"</table></div>"
    #win32api.MessageBox(0, 'You have just run a python script on the button press!', 'Running a Python Script via Javascript', 0x00001000)
    return render_template_string(html) #render_template('index 3.html')

if __name__ == "__main__":
    app = Flask(__name__, template_folder='templates')
    app.run(debug=True)