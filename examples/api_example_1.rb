require 'httparty'
require 'pp'

response = HTTParty.get('http://api.data.sanjoseca.gov/datastreams/invoke/SAN-JOSE-EDUCA-STATI-12809?auth_key=91fe52a7f01ebd3d4372f4b49c00c2ad34505fd7')

pp response
