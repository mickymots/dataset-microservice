from flask import Flask
from markupsafe import escape


app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Index page!'


@app.route('/hello')
def hello():
    return 'Hello, World'




@app.route('/user/<username>/<last_name>')
def show_user_profile(username, last_name):
    # show the user profile for that user
    return f'User {escape(username) } - {escape(last_name) }'


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')