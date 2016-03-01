
Given(/^I have selected to view (.*) rejections$/) do |brand|
  case brand
    when 'bmc'
      #puts "\nThe brand selected is: " + brand.to_s
      @app.select_brand.bmcButton.click
      title = @app.select_brand.title.to_s
      expect(title).to eq("Rejection Tracker for BioMed Central: All BioMed Central journals")
      #puts "\nPage displayed is: " + @app.select_brand.title
    when 'nature'
      #puts "\nThe brand selected is: " + brand.to_s
      @app.select_brand.natureButton.click
      title = @app.select_brand.title.to_s
      expect(title).to eq("Rejection Tracker for Nature: All Nature journals")
      #puts "\nPage displayed is: " + @app.select_brand.title
    when 'springer'
      #puts "\nThe brand selected is: " + brand.to_s
      @app.select_brand.springerButton.click
      title = @app.select_brand.title.to_s
      expect(title).to eq("Rejection Tracker for Springer: All Springer journals")
      #puts "\nPage displayed is: " + @app.select_brand.title
  end
end
