
Given(/^I have selected to view (.*) rejections$/) do |brand|
  case brand
    when 'bmc'
      #puts "\nThe brand selected is: " + brand.to_s
      @app.select_brand.bmc_button.click
      @app.tracker.wait_until_rejection_chart_first_link_visible
      title = @app.tracker.title.to_s
      expect(title).to eq("Rejection Tracker for BioMed Central: All BioMed Central journals")
      expect(@app.tracker).to have_journal_selector
      expect(@app.tracker).to have_rejected_heading
      expect(@app.tracker).to have_found_heading
      expect(@app.tracker).to have_not_found_heading
      expect(@app.tracker).to have_rejection_chart_first_link
      expect(@app.tracker).to have_rejection_chart_last_link
      expect(@app.tracker).to have_destination_heading
      expect(@app.tracker).to have_count_heading
      expect(@app.tracker).to have_summary_stats
      $first_brand_link_text=@app.tracker.rejection_chart_first_link.text.split(" : ").last
      $first_brand_link_count=@app.tracker.rejection_chart_first_link.text.split(" : ").first.to_i
      #puts "\nPage displayed is: " + @app.select_brand.title
    when 'nature'
      #puts "\nThe brand selected is: " + brand.to_s
      @app.select_brand.nature_button.click
      @app.tracker.wait_until_rejection_chart_first_link_visible
      title = @app.tracker.title.to_s
      expect(title).to eq("Rejection Tracker for Nature: All Nature journals")
      expect(@app.tracker).to have_journal_selector
      expect(@app.tracker).to have_rejected_heading
      expect(@app.tracker).to have_found_heading
      expect(@app.tracker).to have_not_found_heading
      expect(@app.tracker).to have_rejection_chart_first_link
      expect(@app.tracker).to have_rejection_chart_last_link
      expect(@app.tracker).to have_destination_heading
      expect(@app.tracker).to have_count_heading
      expect(@app.tracker).to have_summary_stats
      #puts "\nPage displayed is: " + @app.select_brand.title
    when 'springer'
      #puts "\nThe brand selected is: " + brand.to_s
      @app.select_brand.springer_button.click
      @app.tracker.wait_until_rejection_chart_first_link_visible
      title = @app.tracker.title.to_s
      expect(title).to eq("Rejection Tracker for Springer: All Springer journals")
      expect(@app.tracker).to have_journal_selector
      expect(@app.tracker).to have_rejected_heading
      expect(@app.tracker).to have_found_heading
      expect(@app.tracker).to have_not_found_heading
      expect(@app.tracker).to have_rejection_chart_first_link
      expect(@app.tracker).to have_rejection_chart_last_link
      expect(@app.tracker).to have_destination_heading
      expect(@app.tracker).to have_count_heading
      expect(@app.tracker).to have_summary_stats
      #puts "\nPage displayed is: " + @app.select_brand.title
  end
end
