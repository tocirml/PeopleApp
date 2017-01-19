class PeopleAppMailer < ApplicationMailer
	include Resque::Mailer
	default to: Proc.new { Person.pluck(:email) }

	def user_created_notification person
		@person = person
		mail(subject: 'People App - New person added')
	end

	def user_removed_notification person
		@person = person
		mail(subject: 'People App - Person removed')
	end
end
