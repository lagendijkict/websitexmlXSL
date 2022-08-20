from flask import Flask
from flask.templating import render_template
from helper_function import transform_and_store

app = Flask(__name__)


@app.route('/')
def hello():
    return '<h1>Welkom bij het Toezichtssysteem van IGJ, Toezie</h1>' \
           '<h2>Ga naar <a href="/content">het Instantieregister</a> voor het bekijken van de instanties die onder ' \
           'toezicht staan.</h2>' \


@app.route('/content')
def content():
    if transform_and_store('templates/sample.xml', 'templates/sample.xsl') == "Yes":
        return render_template('styled.xml')
    else:
        print("Something went wrong, no styling applied.")
        return render_template('sample.xml')


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)