When (/^I click on the first destination journal title$/) do

  $app.tracker.rejection_chart_first_link.click
end

And(/^the rejection breakdown page for the brands are accessible$/) do

  #todo: move brands to test data yaml
  brands=["bmc","springer","nature"]
  for brand in brands
    navigate_to_tracker_page(brand)
    $app.tracker.select_publisher_link.click
  end
end

Then(/^the rejections tracker page is displayed correctly$/) do

  validate_rejections_tracker_page
end

def validate_rejections_tracker_page

  title = $app.tracker.title.to_s
  if title =~ /All BioMed Central/i
    expect(title).to eq("Rejection Tracker for BioMed Central: All BioMed Central journals")
  elsif title =~ /All Nature/i
    expect(title).to eq("Rejection Tracker for Nature: All Nature journals")
  elsif title =~ /All Springer/i
    expect(title).to eq("Rejection Tracker for Springer: All Springer journals")
  end

  expect($app.tracker).to have_journal_selector
  expect($app.tracker).to have_rejected_heading
  expect($app.tracker).to have_found_heading
  expect($app.tracker).to have_not_found_heading
  expect($app.tracker).to have_rejection_chart_first_link
  expect($app.tracker).to have_destination_heading
  expect($app.tracker).to have_count_heading
  expect($app.tracker).to have_summary_stats
  expect($app.tracker).to have_select_publisher_link
  expect($app.tracker).to have_download_data_link
end

When(/^I select a journal from the list$/) do

  @original_items_count=$app.tracker.rejected_count.text.to_i
  $app.tracker.journal_selector.click
  $app.tracker.journal_selector_second_item.click
end

Then(/^the tracker page is updated to display results for the selected journal$/) do

  updated_items_count=$app.tracker.rejected_count.text.to_i
  expect(updated_items_count).to be < @original_items_count
end