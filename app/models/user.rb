class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :registerable, :trackable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email

  has_many :authentications, :dependent => :destroy
  has_many :projects, :dependent => :destroy

  def self.create_with_omniauth(auth)  
    user_info  = auth["info"]
    extra_info = auth["extra"] && auth["extra"]["raw_info"]

    create! do |user|  
      user.email      = user_info["email"].presence

      user.authentications << Authentication.new(
        :provider => auth['provider'], 
        :uid => auth['uid'],
        :token => auth["credentials"]["token"]
      )
    end  
  end  

end
