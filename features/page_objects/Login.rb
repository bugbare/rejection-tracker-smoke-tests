class Login < SitePrism::Page
  set_url "/login"

  element :username_field, :xpath, "//*[@id='username']"
  element :password_field, :xpath, "//*[@id='password']"
  element :login_button, "button.btn.waves-effect.waves-light"

  section :header, ::HeaderSection, "nav.white"
  section :footer, ::FooterSection, "footer.page-footer.blue"

end
