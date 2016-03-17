class Tracker < SitePrism::Page
  #set_url "{/brand}/tracker"
  set_url "{url}"

# Journal Selector Drop Down
  element :journal_selector, "input.select-dropdown"
  elements :journal_selector_items, :xpath, ".//ul/li/span"
  element :journal_selector_second_item, :xpath, ".//ul/li[2]/span"

# Summary Rejection Stats Table Headings
  element :rejected_heading, :xpath, "//th[@data-field='id']"
  element :found_heading, :xpath, "//th[contains(.,'Found')]"
  element :not_found_heading, :xpath, "//th[contains(.,'Not Found')]"

# Summary Rejection Stats
  element :rejected_count, :xpath, "//table/tbody/tr/td[1]"
  element :rejected_found_count, :xpath, "//table/tbody/tr/td[2]"
  element :rejected_not_found_count, :xpath, "//table/tbody/tr/td[3]"

# Rejection Chart objects
  element :rejection_chart_first_link, "a.linked-journal"
  element :rejection_chart_last_link, "a.unlinked-journal"

# Destination Journal Stats Table Headings
  element :destination_heading, :xpath, "//th[contains(.,'Destination')]"
  element :count_heading, :xpath, "//th[contains(.,'Count')]"

# All Cells from all Tables on page
  elements :summary_stats, "tbody"

  section :header, ::HeaderSection, "nav.white"
  section :footer, ::FooterSection, "footer.page-footer.blue"

# Back to Select Publisher Page
  element :select_publisher_link, :xpath, "//a[text()=' << Select Publisher']"

# Download Data Link
  element :download_data_link, :xpath, "//a[text()='Download Data']"

end
