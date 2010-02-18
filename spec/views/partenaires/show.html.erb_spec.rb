require 'spec_helper'

describe "/partenaires/show.html.erb" do
  include PartenairesHelper
  before(:each) do
    assigns[:partenaire] = @partenaire = stub_model(Partenaire,
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

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ adresse/)
    response.should have_text(/value\ for\ cp/)
    response.should have_text(/value\ for\ ville/)
    response.should have_text(/value\ for\ telephone/)
    response.should have_text(/value\ for\ fax/)
    response.should have_text(/value\ for\ email/)
    response.should have_text(/value\ for\ weburl/)
    response.should have_text(/value\ for\ logo_file_name/)
    response.should have_text(/1/)
    response.should have_text(/value\ for\ logo_content_type/)
  end
end
