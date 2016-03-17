def validate_rejections_breakdown_page
  expect($app.rejection_list).to have_rejected_from_heading
  expect($app.rejection_list).to have_title_heading
  expect($app.rejection_list).to have_rejected_heading
  expect($app.rejection_list).to have_authors_heading
  expect($app.rejection_list).to have_published_title_heading
end