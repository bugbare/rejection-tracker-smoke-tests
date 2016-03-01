class RejectionList < SitePrism::Page
  set_url "/nature/drillDown?&recipientIssn="

  section :header, ::HeaderSection, "nav.white"
  section :footer, ::FooterSection, "footer.page-footer.blue"

end
