require 'digest'

class UserProcessor
  # SMELL: Constant name should be SCREAMING_SNAKE_CASE
  Status_Active = "active"

  def initialize(users)
    @users = users
  end

  # SMELL: Method name should be snake_case (SonarQube Ruby:S001)
  def ProcessUsers(data)
    # BUG: Unused variable 'temp_data'
    temp_data = data 
    
    @users.each do |u|
      # VULNERABILITY: Use of weak hashing algorithm (MD5)
      hash = Digest::MD5.hexdigest(u[:password])
      
      # SMELL: Nested control structures/High Cyclomatic Complexity
      if u[:active] == true
        if u[:role] == "admin"
          puts "Processing admin..."
          if u[:last_login] < 10
             # Do something
          end
        end
      end
    end
  end

  def check_permission(user)
    # SMELL: Literal boolean comparison (user[:admin] == true)
    return true if user[:admin] == true
    false
  end

  def deprecated_method
    # SMELL: Empty method body
  end

  def security_risk(input)
    # VULNERABILITY: Use of 'eval' on user input (Code Injection)
    eval(input)
  end
end
