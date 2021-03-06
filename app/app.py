"""Main application file"""
from flask import Flask
app = Flask(__name__)

@app.route('/<random_string>')
def returnBackwardsString(random_string):
    """Reverse and return the provided URI"""
    return "".join(reversed(random_string))


@app.route('/')
def index():
    """Test http connection"""
    return "New Deploy"


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3000)