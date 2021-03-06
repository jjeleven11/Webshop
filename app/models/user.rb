class User < ApplicationRecord

	has_many :carts
	has_many :items, {:through=>:carts, :source=>"item"}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
