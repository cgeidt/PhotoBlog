module ApplicationHelper

  def is_active?(test_path)
    current_page?(test_path) ? "active" : ""
  end
end
