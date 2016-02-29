# JOURNAL CONTENT USE CASE EXPECTATIONS

Then(/^I should see the about main content section$/) do
	expect(@app.about).to have_aboutMain
end

And(/^I should see the about aims and scope section$/) do
	expect(@app.about).to have_aboutHeading
	expect(@app.about).to have_contentSections
	expect(@app.about.contentSections.map {|content| content = content.text.to_s}).to include(/Genome Biology/)
	# USEFUL FOR DEBUGGING CONTENTS OF ABOUT MAIN SECTION WHEN TEST FAILS
	#@app.about.contentSections.map {|content| puts content.text.to_s}
end