from config import s3app
#from flask import Flask


from config import app
import routes

#import routes

#f __name__=="__main__":
    #s3app.run(debug=True,host="0.0.0.0")



@app.route('/')
def greet():
    return "Hello Flask app is running!!!"

if __name__=="__main__":
    s3app.run(debug=True,host="0.0.0.0")