from flask import Flask
from flask import request
from flask import render_template
from flask import socket

	sample=Flask(__name__)
	@sample.route("/")
def main():
	return "you  machine name is"+socket.gethostname()+"/n" 
if __name__="__main__":
sample.run(host="0.0.0.0",port=8080)
