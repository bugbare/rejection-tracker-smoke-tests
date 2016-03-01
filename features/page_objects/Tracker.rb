class Tracker < SitePrism::Page
  set_url "/{brand}"

  section :header, ::HeaderSection, "nav.white"
  section :footer, ::FooterSection, "footer.page-footer.blue"

end
