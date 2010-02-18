module PartenairesHelper
  def logo_present?(partenaire)
    partenaire.logo.url == "/logos/original/missing.png" ? false : true
  end
end
