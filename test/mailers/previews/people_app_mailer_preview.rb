# Preview all emails at http://localhost:3000/rails/mailers/people_app_mailer
class PeopleAppMailerPreview < ActionMailer::Preview

	def user_created_notification_preview
		PeopleAppMailer.user_created_notification(Person.first)
	end

	def user_removed_notification_preview
		PeopleAppMailer.user_removed_notification(Person.first)
	end

end
