require 'spec_helper'

describe "/partenaires/edit.html.erb" do
  include PartenairesHelper

  before(:each) do
    assigns[:partenaire] = @partenaire = stub_model(Partenaire,
      :new_record? => false,
      :name => "value for name",
      :adresse => "value for adresse",
      :cp => "value for cp",
      :ville => "value for ville",
      :telephone => "value for telephone",
      :fax => "value for fax",
      :email => "value for email",
      :weburl => "value for weburl",
      :logo_file_name => "value for logo_file_name",
      :logo_file_size => 1,
      :logo_content_type => "value for logo_content_type"
    )
  end

  it "renders the edit partenaire form" do
    render

    response.should have_tag("form[action=#{partenaire_path(@partenaire)}][method=post]") do
      with_tag('input#partenaire_name[name=?]', "partenaire[name]")
      with_tag('input#partenaire_adresse[name=?]', "partenaire[adresse]")
      with_tag('input#partenaire_cp[name=?]', "partenaire[cp]")
      with_tag('input#partenaire_ville[name=?]', "partenaire[ville]")
      with_tag('input#partenaire_telephone[name=?]', "partenaire[telephone]")
      with_tag('input#partenaire_fax[name=?]', "partenaire[fax]")
      with_tag('input#partenaire_email[name=?]', "partenaire[email]")
      with_tag('input#partenaire_weburl[name=?]', "partenaire[weburl]")
      with_tag('input#partenaire_logo_file_name[name=?]', "partenaire[logo_file_name]")
      with_tag('input#partenaire_logo_file_size[name=?]', "partenaire[logo_file_size]")
      with_tag('input#partenaire_logo_content_type[name=?]', "partenaire[logo_content_type]")
    end
  end
end
