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

  $app.login.username_field.set $product_data["product_data"]["roles"][role]["username"]
  $app.login.password_field.set $product_data["product_data"]["roles"][role]["password"]
  $app.login.login_button.click
end
