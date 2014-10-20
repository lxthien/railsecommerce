class Admin::Productcat < ::Productcat
  def deactivate_widgets
    widgets.update_all active: false
  end

  has_many :product
end