require 'digest/sha2'

class User < ActiveRecord::Base
	#check that the name is present and unique (that is, no two users can have the same name in the database)
  validates :name, :presence => true, :uniqueness => true
 
 	# automatically validation that the two passwords match
  validates :password, :confirmation => true
  attr_accessor :password_confirmation
  attr_reader   :password
  
  def User.authenticate(name, password)
    if user = find_by_name(name)
      if user.hashed_password == encrypt_password(password, user.salt)
        user
      end
    end
  end

  def User.encrypt_password(password, salt)
    Digest::SHA2.hexdigest(password + "wibble" + salt)
  end
  
  # 'password' is a virtual attribute
  def password=(password)
    @password = password

    if password.present?
      generate_salt
      self.hashed_password = self.class.encrypt_password(password, salt)
    end
  end
  
  private
  
  		#There’s a subtlety in this code we haven’t seen before. Note that we wrote self.salt =....
  		#This forces the assignment to use the salt= accessor method—we’re saying “call the method salt= in the current object.”
  		#Without the self., Ruby would have thought we were assigning to a local variable, and our code would have no effect.
    def generate_salt
      self.salt = self.object_id.to_s + rand.to_s
    end
end
