from flask import Flask

app = Flask(__name__)

@app.route("/t")
def pagina_inicial():
    return "Hello World - Feu"

if __name__ == '__main__':
    app.run()