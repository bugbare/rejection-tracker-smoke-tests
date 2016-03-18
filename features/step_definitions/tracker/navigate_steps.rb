Given(/^I am on the rejections breakdown page for (.*) as a (.*)$/) do |brand, role|

  step "I login as a #{role}"
  navigate_to_tracker_page(brand)
end

Given(/^I am on the rejections tracker page as a (.*)$/) do |role|

  brand=$product_data["product_data"]["brands"].keys.sample
  step "I login as a #{role}"
  navigate_to_tracker_page(brand)
end

def save_first_tracker_brand_text

  $first_brand_link_text=$app.tracker.rejection_chart_first_link.text.split(" : ").last
  $first_brand_link_count=$app.tracker.rejection_chart_first_link.text.split(" : ").first.to_i
end

def navigate_to_tracker_page (brand)

  expected_title="Rejection Tracker"
  case brand
    when 'bmc'
      $app.select_brand.bmc_button.click
      expected_title="Rejection Tracker for BioMed Central: All BioMed Central journals"
    when 'nature'
      $app.select_brand.nature_button.click
      expected_title="Rejection Tracker for Nature: All Nature journals"
    when 'springer'
      $app.select_brand.springer_button.click
      expected_title="Rejection Tracker for Springer: All Springer journals"
  end
  $app.tracker.wait_until_rejection_chart_first_link_visible
  validate_page_title(expected_title)
end

def validate_page_title (expected_title)

  title = $app.tracker.title.to_s
  expect(title).to eq(expected_title)
end

def validate_tracker_page_elements

  expect($app.tracker).to have_journal_selector
  expect($app.tracker).to have_rejected_heading
  expect($app.tracker).to have_found_heading
  expect($app.tracker).to have_not_found_heading
  expect($app.tracker).to have_rejection_chart_first_link
  expect($app.tracker).to have_rejection_chart_last_link
  expect($app.tracker).to have_destination_heading
  expect($app.tracker).to have_count_heading
  expect($app.tracker).to have_summary_stats
end