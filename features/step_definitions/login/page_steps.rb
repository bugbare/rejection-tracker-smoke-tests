Then(/^access is denied$/) do
  step "I see the login page"
end

def validate_login_page
  title = $app.no_access.title.to_s
  expect(title).to eq("Springer Nature")
  expect($app.login).to have_login_button
end