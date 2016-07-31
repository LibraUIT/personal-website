class CreateAdminService
  def call
    User.find_or_create_by!(email: Rails.application.secrets.admin_email) do |user|
      user.password = Rails.application.secrets.admin_password
      user.password_confirmation = Rails.application.secrets.admin_password
      user.user_type = 1
      user.username = Rails.application.secrets.admin_username
      user.fullname = Rails.application.secrets.admin_name
      user.status = true
    end
  end
end
