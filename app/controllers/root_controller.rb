class RootController < ApplicationController
  def create
    @user = "signedhire@gmail.com"

    RootMailer.mailer.deliver!
    

  end
end
