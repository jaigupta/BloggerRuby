module ApplicationHelper
  def current_profile
    profile = current_user.profile
    if profile
      profile
    else
      profile = Profile.new(first_name: :Guest, last_name: "", user_id: current_user.id)
      profile.save
      profile
    end
  end
end
