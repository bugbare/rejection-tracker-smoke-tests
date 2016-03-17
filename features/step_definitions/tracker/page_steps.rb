When (/^I click on the first destination journal title$/) do
  $app.tracker.rejection_chart_first_link.click
end

And(/^the rejection breakdown page for the brands (.*) are accessible$/) do |brands|

  for brand in brands.split(',')
    navigate_to_tracker_page(brand)
    $app.tracker.select_publisher_link.click
  end
end