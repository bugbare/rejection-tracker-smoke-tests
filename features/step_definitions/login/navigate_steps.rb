Before do
  $app = App.new
  $app.login.load
end

Given(/^I login as an? (.*)$/) do |role|
  title = $app.login.title.to_s
  expect(title).to eq("Springer Nature")
  login_as(role)
end

def login_as (role)
  case role
    when 'user'
      $app.login.username_field.set "demo"
      $app.login.password_field.set "demo1"
      $app.login.login_button.click
      expect($app.login.title.to_s).to eq("Springer Nature Rejection Tracker")
    when 'superuser'
      $app.login.username_field.set "special"
      $app.login.password_field.set "demo2854242"
      $app.login.login_button.click
      expect($app.login.title.to_s).to eq("Springer Nature Rejection Tracker")
    when 'unauthorized user'
      $app.login.username_field.set "unauthorized"
      $app.login.password_field.set "password"
      $app.login.login_button.click
      expect($app.login.title.to_s).to eq("Springer Nature")
  end
end
