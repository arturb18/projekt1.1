module ProductsHelper
  def is_my_product?(product)
    if current_user && product.user_id == current_user.id
      return true
    else
      return false
    end
  end
end
