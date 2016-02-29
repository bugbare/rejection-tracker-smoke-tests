Given(/^I am a (.*)$/) do |role|
  @app = App.new

  case role
  when 'member of the editorial department'
  puts "The current page being tested is: " + @app.login.title
    @app.login.load
    @app.login.userNameField.set "demo"
    @app.login.passwordField.set "demo1"
    @app.login.loginButton.click
  end
end


Given(/^I view the (.*) page for (.*)$/) do |pageLocator|
  #Create an instance of the App class and instantiate the home page definition from that class
  #@app = App.new
  #@app.journalpage.load

  case pageLocator
  when 'select brand'
      @app.selectbrand.load(pageLocator: pageLocator)
      puts "Title: " + @app.selectbrand.title
      expect(@app.selectbrand.title).to match(%r{#{"Springer Nature Rejection Tracker"}}i)
  		#@app.selectbrand.load
  		#puts "The current page being tested is: " + pageLocator

  end
end
