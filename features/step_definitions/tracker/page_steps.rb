When (/^I click on the first destination journal title$/) do
  $app.tracker.rejection_chart_first_link.click
end

And(/^the rejection breakdown page for the brands (.*) are accessible$/) do |brands|

  for brand in brands.split(',')
    navigate_to_tracker_page(brand)
    $app.tracker.select_publisher_link.click
  end
end

Then(/^the rejections breakdown page is displayed correctly$/) do
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
  expect($app.tracker).to have_rejection_chart_first_link
  expect($app.tracker).to have_destination_heading
  expect($app.tracker).to have_count_heading
  expect($app.tracker).to have_count_heading
  expect($app.tracker).to have_summary_stats
  expect($app.tracker).to have_select_publisher_link
  expect($app.tracker).to have_download_data_link
end