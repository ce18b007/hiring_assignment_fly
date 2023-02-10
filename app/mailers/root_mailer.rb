class RootMailer < ApplicationMailer
    def mailer
        mail(to: "signedhire@gmail.com", subject: "Hire")
      end
end
