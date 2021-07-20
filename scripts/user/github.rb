#!/usr/bin/ruby2.5

require 'openssl'

require 'jwt'

private_pem = File.read(*.pem) 
private_key = OpenSSL::PKey::RSA.new(private_pem)

payload = {
  iat: Time.now.to_i - 60,
  exp: Time.now.to_i + (10 * 60),
  iss: MY_APP_ID_HERE
}

jwt = JWT.encode(payload, private_key, "RSA256")
puts jwt



