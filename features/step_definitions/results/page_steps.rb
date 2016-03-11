Then (/^I see the (.*) page$/) do |result|

  case result
    when 'no access'
      title = @app.no_access.title.to_s
      expect(title).to eq("Springer Nature")
      expect(@app.no_access).to have_message
      # Value checks
      current_page = @app.no_access.title
      puts "No Access: " + current_page
    when 'rejection breakdown'
      title = @app.rejection_list.title.to_s
      if title =~ /All BioMed Central/i
        expect(title).to eq("Springer Nature Rejection Tracker for BioMed Central : All BioMed Central journals")
        expect(@app.rejection_list).to have_rejected_from_heading
        expect(@app.rejection_list).to have_title_heading
        expect(@app.rejection_list).to have_rejected_heading
        expect(@app.rejection_list).to have_authors_heading
        expect(@app.rejection_list).to have_published_title_heading
      elsif title =~ /All Nature/i
        expect(title).to eq("Springer Nature Rejection Tracker for Nature : All Nature journals")
        expect(@app.rejection_list).to have_rejected_from_heading
        expect(@app.rejection_list).to have_title_heading
        expect(@app.rejection_list).to have_rejected_heading
        expect(@app.rejection_list).to have_authors_heading
        expect(@app.rejection_list).to have_published_title_heading
      elsif title =~ /All Springer/i
        expect(title).to eq("Springer Nature Rejection Tracker for Springer : All Springer journals")
        expect(@app.rejection_list).to have_rejected_from_heading
        expect(@app.rejection_list).to have_title_heading
        expect(@app.rejection_list).to have_rejected_heading
        expect(@app.rejection_list).to have_authors_heading
        expect(@app.rejection_list).to have_published_title_heading
      end
      current_page = @app.rejection_list.title
      puts "Rejection Breakdown: " + current_page
  end
end


Given (/^I am on the destination journal page in the rejection breakdown for the (bmc|springer|nature) brand$/) do |brand|

  step "I am a superuser"
  step "I have selected to view #{brand} rejections"
  @first_link_text=@app.tracker.rejection_chart_first_link.text.split(" : ").last
  step "I click on the first destination journal title"
end

Then (/^the destination journal page is the same as the one accessed from the rejection breakdown page$/) do

  puts @app.rejection_list.rejection_list_title.text
  expect(@app.rejection_list.rejection_list_title.text).to include(@first_link_text)
end