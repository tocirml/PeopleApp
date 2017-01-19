class Person < ActiveRecord::Base
	validates :first_name, :last_name, :email, :birthdate, presence: true
	validates :first_name, :last_name, :job, length: { maximum: 75 }
	validates :email, length: { maximum: 254 }, uniqueness: true#, email: true
	validates :bio, length: { maximum: 500 }

	def age
		now = Time.now.utc.to_date
  		now.year - birthdate.year - ((now.month > birthdate.month || (now.month == birthdate.month && now.day >= birthdate.day)) ? 0 : 1)
	end
end
