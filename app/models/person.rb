class Person < ActiveRecord::Base
	validates :first_name, :last_name, :email, :birthdate, presence: true
	validates :first_name, :last_name, :job, length: { maximum: 75 }
	validates :email, length: { maximum: 254 }, uniqueness: true#, email: true
	validates :bio, length: { maximum: 500 }

end
