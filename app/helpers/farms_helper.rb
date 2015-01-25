module FarmsHelper
  def is_my_farm?(farm)
    if current_user && farm.user_id == current_user.id
      return true
    else
      return false
    end
  end
end

