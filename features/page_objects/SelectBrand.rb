class SelectBrand < SitePrism::Page
  set_url "/"

  elements :selectors, "div.row"

  section :header, ::HeaderSection, "nav.white"
  section :footer, ::FooterSection, "footer.page-footer.blue"

end
