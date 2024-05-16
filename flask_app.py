from flask import Flask 
import json
app = Flask(__name__)

@app.route('/')
def hello_name():
    with open("dwsample3-json.json") as test_file:
        data = json.load(test_file)
    return data["phoneNumbers"][0]["number"]

if __name__ == '__main__':
   app.run()
