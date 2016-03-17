Given(/^I have selected to view (bmc|nature|springer) rejections$/) do |brand|

  $app.select_brand.wait_until_bmc_button_visible
  navigate_to_tracker_page(brand)
  validate_tracker_page_elements
  save_first_tracker_brand_text
end
