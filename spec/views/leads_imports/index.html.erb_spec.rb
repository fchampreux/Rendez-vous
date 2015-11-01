require 'rails_helper'

RSpec.describe "leads_imports/index", type: :view do
  before(:each) do
    assign(:leads_imports, [
      LeadsImport.create!(
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
      ),
      LeadsImport.create!(
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
      )
    ])
  end

  it "renders a list of leads_imports" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Language".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "From Date".to_s, :count => 2
    assert_select "tr>td", :text => "Job Location".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Industry".to_s, :count => 2
    assert_select "tr>td", :text => "Cy Number".to_s, :count => 2
    assert_select "tr>td", :text => "Cy Street".to_s, :count => 2
    assert_select "tr>td", :text => "Cy Address Info".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "P Obox".to_s, :count => 2
    assert_select "tr>td", :text => "Cy State".to_s, :count => 2
    assert_select "tr>td", :text => "Cy Country".to_s, :count => 2
  end
end
