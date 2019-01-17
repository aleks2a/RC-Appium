class ErrorMessages

  def error_message_title
    find_element(id: "android:id/alertTitle").text
  end

  def error_message_body
    find_element(id: "android:id/message").text
  end

end