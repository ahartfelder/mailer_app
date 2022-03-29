class PostMailer < ApplicationMailer
  before_action :set_post
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.create.subject
  #
  def create
  end

  def update
  end

  def destroy
  end

  private

  def set_post
    @post = params[:post]
    mail to: "ahartfelder@gmail.com", subject: "[TEST] This is a test"
  end
end
