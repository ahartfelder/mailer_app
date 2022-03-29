# Preview all emails at http://localhost:3000/rails/mailers/post_mailer
class PostMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/post_mailer/create
  def create
    PostMailer.create
  end

  # Preview this email at http://localhost:3000/rails/mailers/post_mailer/update
  def update
    PostMailer.update
  end

  # Preview this email at http://localhost:3000/rails/mailers/post_mailer/destroy
  def destroy
    PostMailer.destroy
  end

end
