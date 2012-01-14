class User < ActiveRecord::Base
  # Include default devise modules.
  # Others available are :lockable, :timeoutable and :activatable.
  devise :database_authenticatable, :confirmable, :recoverable, :rememberable, :trackable, :validatable, :encryptable, :encryptor => :sha1

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation
end
