class ConfirmationMailer < ApplicationMailer
  default from: "marcellus.spears@gmail.com"

  def new_confirmation(user)
    # headers["Message-ID"] = "<registration confirmation/#{user.name}@mysterious-earth-19782>"
    # headers["In-Reply-To"] = "<registration confirmation/#{user.name}@@mysterious-earth-19782>"
    # headers["References"] = "<registration confirmation/#{user.name}@mysterious-earth-19782>"

    @user = user

    mail(to: user.email, subject: "Registration Confirmation for #{user.name}")
  end
end
