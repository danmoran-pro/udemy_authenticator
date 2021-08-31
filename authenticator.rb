require_relative 'user'
require 'pry'

def start
    @user_1 = User.create({username:"danmoran", password: "password1" }),
    @user_2 = User.create({username:"danielmoran", password: "password2" }),
    @user_3 = User.create({username:"saulmoran", password: "password3" })
    @users = [@user_1, @user_2, @user_3]
  end 
  puts "~~~*** Welcome to Authenticator ***~~~"
  75.times { print "-"}
  puts
  puts "This program will take input from the user and comare password"
  puts "If password is correct, you will get back the user object"