# Import the Flask class from the flask module
from flask import Flask

# Create an instance of the Flask class, typically named 'app'
app = Flask(__name__)

# Define a route for the root URL ("/"), where the function below will be executed
@app.route("/")
def helloworld():
    # Return a simple string as the response when accessing the root URL
    return "Hello World!"

# Ensure the Flask app is started only when executed directly (not imported as a module)
if __name__ == "__main__":
    # Run the Flask application on all available network interfaces (0.0.0.0) on port 5000
    app.run(host="0.0.0.0", port=5000)


