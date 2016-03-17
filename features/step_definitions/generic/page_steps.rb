Then (/^I see the (.*) page$/) do |result|

  case result
    when 'no access'
      validate_no_access_to_rejection_list_page
    when 'login page'
      validate_login_page
    when 'rejection list'
      validate_rejections_list_page
      unless $first_brand_link_text.nil?
        expect($app.rejection_list.rejection_list_title.text).to include($first_brand_link_text)
        expect($app.rejection_list.results_table_first_column.size).to eq($first_brand_link_count)
      end
  end
end

def validate_no_access_to_rejection_list_page
  title = $app.no_access.title.to_s
  expect(title).to eq("Springer Nature")
  expect($app.no_access).to have_message
end