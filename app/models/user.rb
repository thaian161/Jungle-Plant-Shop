class User < ApplicationRecord

  has_secure_password

	# Verify that email field is not blank and that it doesn't already exist in the db (prevents duplicates):
	
  validates_uniqueness_of :email, case_sensitive: false, presence: true

  validates :first_name, :last_name, :email, presence: true

  validates :password, :password_confirmation, presence: true, length: { minimum: 3}

  private

  def self.authenticate_with_credentials(email, password)

    if email == nil || password == nil
      return false

    else
      user_email = email.downcase.strip

      user = User.find_by_email(user_email)

      user && user.authenticate(password) ? user : false
    end
    
  end
  
  


  
end
