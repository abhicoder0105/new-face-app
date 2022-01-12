class User < ApplicationRecord
  
  after_create :send_email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

        
         
  
  private

    def send_email
      
     UserMailer.welcome_email(self.email).deliver_later          
    end

end
