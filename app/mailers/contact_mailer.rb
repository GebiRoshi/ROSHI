class ContactMailer < ApplicationMailer
	    default to: "gebi.roshi@gmail.com"

    def contact_mailer(name, email, body)
        @name = name
        @email = email
        @body = body

        mail(from: email, subject: 'Contact Request')
    end
end

