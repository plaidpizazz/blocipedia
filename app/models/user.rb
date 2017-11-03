class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # after_create :send_confirmation_email
  #
  # private
  #
  # def send_confirmation_email
  #   ConfirmationMailer.new_confirmation(user).deliver_now
  # end

end
