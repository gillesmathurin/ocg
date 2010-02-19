require 'spec_helper'

describe "/partenaires/index.html.erb" do
  include PartenairesHelper

  before(:each) do
    assigns[:partenaires] = [
      stub_model(Partenaire,
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
      ),
      stub_model(Partenaire,
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
    ]
  end

  # it "renders a list of partenaires" do
  #   render
  #   response.should have_tag("tr>td", "value for name".to_s, 2)
  #   response.should have_tag("tr>td", "value for adresse".to_s, 2)
  #   response.should have_tag("tr>td", "value for cp".to_s, 2)
  #   response.should have_tag("tr>td", "value for ville".to_s, 2)
  #   response.should have_tag("tr>td", "value for telephone".to_s, 2)
  #   response.should have_tag("tr>td", "value for fax".to_s, 2)
  #   response.should have_tag("tr>td", "value for email".to_s, 2)
  #   response.should have_tag("tr>td", "value for weburl".to_s, 2)
  #   response.should have_tag("tr>td", "value for logo_file_name".to_s, 2)
  #   response.should have_tag("tr>td", 1.to_s, 2)
  #   response.should have_tag("tr>td", "value for logo_content_type".to_s, 2)
  # end
end
