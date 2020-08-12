module PostsHelper
  def logged_username (username)
    username if current_member
  end
  def logged_label
    "Author" if current_member
  end
end
