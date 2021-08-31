require 'pry'

  user_1 = {username: "danmoran", password: "password1"}
  user_2 = {username: "alexmoran", password: "password2"}
  user_3 = {username: "saulmoran", password: "password3"}
  users = [user_1, user_2, user_3]

  puts " ~~~*** Welcome to Authenticator ***~~~ "
   75.times { print "-"}
  puts
  puts "This program will take input from the user and comare password"
  puts "If password is correct, you will get back the user object"
  
  attempts = 0
  
  while attempts < 4 
    print "Username: "
    username = gets.chomp 
    print "Password: "
    password = gets.chomp
    
    users.each do |user|
      if user[:username] == username && user[:password] == password
        puts user
        break
      else
        puts "Invalid credentials"
      end
    end 

    puts "Press 'n' or any other key to continue: "
    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1
  end 
