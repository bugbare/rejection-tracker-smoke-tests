def validate_rejections_list_page

  title = $app.rejection_list.title.to_s
  if title =~ /All BioMed Central/i
    expect(title).to eq("Springer Nature Rejection Tracker for BioMed Central : All BioMed Central journals")
  elsif title =~ /All Nature/i
    expect(title).to eq("Springer Nature Rejection Tracker for Nature : All Nature journals")
  elsif title =~ /All Springer/i
    expect(title).to eq("Springer Nature Rejection Tracker for Springer : All Springer journals")
  end

  expect($app.rejection_list).to have_rejected_from_heading
  expect($app.rejection_list).to have_title_heading
  expect($app.rejection_list).to have_rejected_heading
  expect($app.rejection_list).to have_authors_heading
  expect($app.rejection_list).to have_published_title_heading
end