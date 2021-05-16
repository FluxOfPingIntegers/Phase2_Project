require_relative './config/environment'
require 'dotenv/load'

User.create({username: "test", email: "foo@bar.com", password_digest: "foobar"})