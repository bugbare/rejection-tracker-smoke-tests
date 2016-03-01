class SelectBrand < SitePrism::Page
  set_url "/"

  element :bmcButton, :xpath, "//img[@src='images/bmc.jpg']"
  element :natureButton, :xpath, "//img[@src='images/nature.jpg']"
  element :springerButton, :xpath, "//img[@src='images/springer.jpg']"

  section :header, ::HeaderSection, "nav.white"
  section :footer, ::FooterSection, "footer.page-footer.blue"

end
