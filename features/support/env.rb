require 'capybara'

  case ENV['TARGET']
   when 'staging' then Capybara.app_host = 'http://rejection-dev.dev.cf.private.springer.com/'
    puts  "\n>>>> ENVIRONMENT = STAGING <<<<\n\n"
   when 'live' then Capybara.app_host = 'http://rejection-dev.dev.cf.private.springer.com/'
    puts  "\n>>>> ENVIRONMENT = LIVE <<<<\n\n"
  end

  $product_data=YAML.load_file(File.dirname(__FILE__) + '/../../resources/test-data/' + "product_data.yml")