module ApplicationHelper
 def change_error_messages(user)
  user.errors.messages[:password_digest] = ["test"]
 end
end
