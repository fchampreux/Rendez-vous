require 'rails_helper'

RSpec.describe "leads_imports/show", type: :view do
  before(:each) do
    @leads_import = assign(:leads_import, LeadsImport.create!(
      :title => "Title",
      :name => "Name",
      :first_name => "First Name",
      :language => "Language",
      :description => "MyText",
      :location => "Location",
      :email => "Email",
      :phone => "Phone",
      :URL => "Url",
      :note => "MyText",
      :image_URL => "Image Url",
      :role => "Role",
      :company => "Company",
      :from_date => "From Date",
      :job_location => "Job Location",
      :job_desc => "MyText",
      :industry => "Industry",
      :cy_number => "Cy Number",
      :cy_street => "Cy Street",
      :cy_address_info => "Cy Address Info",
      :zip => "Zip",
      :PObox => "P Obox",
      :cy_state => "Cy State",
      :cy_country => "Cy Country"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Language/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Image Url/)
    expect(rendered).to match(/Role/)
    expect(rendered).to match(/Company/)
    expect(rendered).to match(/From Date/)
    expect(rendered).to match(/Job Location/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Industry/)
    expect(rendered).to match(/Cy Number/)
    expect(rendered).to match(/Cy Street/)
    expect(rendered).to match(/Cy Address Info/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/P Obox/)
    expect(rendered).to match(/Cy State/)
    expect(rendered).to match(/Cy Country/)
  end
end
