class User < ActiveRecord::Base
  
  before_save { self.email = email.downcase }
  before_create :create_remember_token
  
  validates :username,  presence: true, 
                        uniqueness: true, 
                        length: { maximum: 20 }
                        
  validates :name,  presence: true, 
                    length: { maximum: 100 }
  
  VALID_EMAIL_REGEX = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$\z/i
  validates :email, presence: true, 
                    format: { with: VALID_EMAIL_REGEX }, 
                    uniqueness: { case_sensitive: false }
  
  has_secure_password
  validates :password, length: { minimum: 6 }  
   
  self.primary_key = "username"
  
  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end    
end
