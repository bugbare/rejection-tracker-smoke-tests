Then(/^the brands are displayed$/) do

  brands=$product_data["product_data"]["brands"].keys
  for brand in brands
    if brand == "bmc"
      expect($app.select_brand).to have_bmc_button
    elsif brand == "springer"
      expect($app.select_brand).to have_springer_button
    elsif brand == "nature"
      expect($app.select_brand).to have_nature_button
    else
      fail "Brand mismatch in step"
    end
  end
end

Given(/^I try to access links that need authorization$/) do

  #todo: this needs a check and a fix
  @tracker = Tracker.new
  @tracker.load(url: "/nature/drillDown?&recipientIssn=2045-2322")
end

Given(/^I am on the brand selection page for user (.*)$/) do |role|
  login_as(role)
end