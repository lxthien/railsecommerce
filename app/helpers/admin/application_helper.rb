module Admin::ApplicationHelper
  def odd_or_even
    { class: cycle("odd", "even", name: "rows") }
  end
end