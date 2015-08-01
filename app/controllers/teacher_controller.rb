class TeacherController < ApplicationController
  # You can protect you controller from CSRF attacks using
  # protect_from_forgery with: :exception
  # But all controllers extend from ApplicationController. So its kept there.

  def response_with_redirect
    redirect_to :new_user_registration
  end

  def response_with_simple_text
    end
end
