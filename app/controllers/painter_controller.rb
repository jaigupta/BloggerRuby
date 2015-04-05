class PainterController < ApplicationController

  def index
    # Call render method with dict {plain: "text"}
    if user_signed_in?
      @is_painter = "this is painter: " + current_user.email
    else
      @is_painter = "this is not the painter"
    end
  end
end
