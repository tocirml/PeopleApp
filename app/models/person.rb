class Person < ActiveRecord::Base
	validates :first_name, :last_name, :email, :birthday, presence: true
	validates :first_name, :last_name, :job, length: { maximum: 75 }
	validates :email, length: { maximum: 254 }, uniqueness: true#, email: true
	validates :bio, length: { maximum: 500 }

	def age
		now = Time.now.utc.to_date
  		now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
	end
end
