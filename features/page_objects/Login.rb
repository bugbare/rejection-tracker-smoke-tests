class Login < SitePrism::Page
  set_url "/login"

  element :userNameField, :xpath, "//*[@id='username']"
  element :passwordField, :xpath, "//*[@id='password']"
  element :loginButton, "button.btn.waves-effect.waves-light"

  section :header, ::HeaderSection, "nav.white"
  section :footer, ::FooterSection, "footer.page-footer.blue"

end
