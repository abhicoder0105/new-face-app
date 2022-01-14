class User < ApplicationRecord
  has_many :blogs
      # scope :active, lambda {where(:active => true)}
  scope :admin, lambda {where(:role => "Admin")}
  scope :user, lambda {where(:role => "User")}
      # scope :phone_num, lambda {where(:phone_num => )}

 
  after_create :send_email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable


         def self.active
           User.where(:active => true)
         end

         def is_active?
           active 
         end

  private

    def send_email
      UserMailer.welcome_email(self.email).deliver_later          
    end

end
