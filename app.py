from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route('/', methods=['GET'])
def heartbeat():
    return 'alive'

@app.route('/api/hello', methods=['GET'])
def hello():
    return jsonify({'message': 'Hello, World!'})

@app.route('/api/echo', methods=['POST'])
def echo():
    data = request.get_json()
    return jsonify({'you_sent': data}), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8088, debug=False)
