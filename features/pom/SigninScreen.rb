class SigninScreen

  def signup_button
    find_element(id: "sign_up")
  end

  def sign_in_btn
    find_element(id: "sign_in")
  end

  def send_phone_number(phone)
    find_element(id: "phone").send_keys(phone)
  end

  def send_password(pass)
    find_element(id: "password").send_keys(pass)
  end

  def submit_credentials
    find_element(id: "btnSignIn").click
  end






end