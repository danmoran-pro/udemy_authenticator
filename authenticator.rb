  user_1 = {username: "danmoran", password: "password1"}
  user_2 = {username: "alexmoran", password: "password2"}
  user_3 = {username: "saulmoran", password: "password3"}
  @users = [user_1, user_2, user_3]

  puts " ~~~*** Welcome to Authenticator ***~~~ "
   75.times { print "-"}
  puts
  puts "This program will take input from the user and comare password"
  puts "If password is correct, you will get back the user object"
  
  attempts = 0
  
  def authenticate(username, password)
    @users.each do |user|
      if user[:username] == username && user[:password] == password
        return user
      end
    end
    "Invalid credentials"
  end 

  while attempts < 3
    print "Username: "
    username = gets.chomp 
    print "Password: "
    password = gets.chomp
    authentication = authenticate(username, password)
    puts authentication
    puts "Press 'n' or any other key to continue: "
    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1
  end 
  puts "you have exceeded the number of attempts" if attempts == 3
