Then (/^I see the (.*) page$/) do |result|

  case result
    when 'no access'
      title = $app.no_access.title.to_s
      expect(title).to eq("Springer Nature")
      expect($app.no_access).to have_message
    when 'login page'
      title = $app.no_access.title.to_s
      expect(title).to eq("Springer Nature")
      expect($app.login).to have_login_button
    when 'rejection breakdown'
      title = $app.rejection_list.title.to_s
      if title =~ /All BioMed Central/i
        expect(title).to eq("Springer Nature Rejection Tracker for BioMed Central : All BioMed Central journals")
        validate_rejections_breakdown_page
        expect($app.rejection_list.rejection_list_title.text).to include($first_brand_link_text)
        expect($app.rejection_list.results_table_first_column.size).to eq($first_brand_link_count)
      elsif title =~ /All Nature/i
        expect(title).to eq("Springer Nature Rejection Tracker for Nature : All Nature journals")
        validate_rejections_breakdown_page
      elsif title =~ /All Springer/i
        expect(title).to eq("Springer Nature Rejection Tracker for Springer : All Springer journals")
        validate_rejections_breakdown_page
      end
  end
end