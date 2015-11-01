require 'rails_helper'

RSpec.describe "leads_imports/edit", type: :view do
  before(:each) do
    @leads_import = assign(:leads_import, LeadsImport.create!(
      :title => "MyString",
      :name => "MyString",
      :first_name => "MyString",
      :language => "MyString",
      :description => "MyText",
      :location => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :URL => "MyString",
      :note => "MyText",
      :image_URL => "MyString",
      :role => "MyString",
      :company => "MyString",
      :from_date => "MyString",
      :job_location => "MyString",
      :job_desc => "MyText",
      :industry => "MyString",
      :cy_number => "MyString",
      :cy_street => "MyString",
      :cy_address_info => "MyString",
      :zip => "MyString",
      :PObox => "MyString",
      :cy_state => "MyString",
      :cy_country => "MyString"
    ))
  end

  it "renders the edit leads_import form" do
    render

    assert_select "form[action=?][method=?]", leads_import_path(@leads_import), "post" do

      assert_select "input#leads_import_title[name=?]", "leads_import[title]"

      assert_select "input#leads_import_name[name=?]", "leads_import[name]"

      assert_select "input#leads_import_first_name[name=?]", "leads_import[first_name]"

      assert_select "input#leads_import_language[name=?]", "leads_import[language]"

      assert_select "textarea#leads_import_description[name=?]", "leads_import[description]"

      assert_select "input#leads_import_location[name=?]", "leads_import[location]"

      assert_select "input#leads_import_email[name=?]", "leads_import[email]"

      assert_select "input#leads_import_phone[name=?]", "leads_import[phone]"

      assert_select "input#leads_import_URL[name=?]", "leads_import[URL]"

      assert_select "textarea#leads_import_note[name=?]", "leads_import[note]"

      assert_select "input#leads_import_image_URL[name=?]", "leads_import[image_URL]"

      assert_select "input#leads_import_role[name=?]", "leads_import[role]"

      assert_select "input#leads_import_company[name=?]", "leads_import[company]"

      assert_select "input#leads_import_from_date[name=?]", "leads_import[from_date]"

      assert_select "input#leads_import_job_location[name=?]", "leads_import[job_location]"

      assert_select "textarea#leads_import_job_desc[name=?]", "leads_import[job_desc]"

      assert_select "input#leads_import_industry[name=?]", "leads_import[industry]"

      assert_select "input#leads_import_cy_number[name=?]", "leads_import[cy_number]"

      assert_select "input#leads_import_cy_street[name=?]", "leads_import[cy_street]"

      assert_select "input#leads_import_cy_address_info[name=?]", "leads_import[cy_address_info]"

      assert_select "input#leads_import_zip[name=?]", "leads_import[zip]"

      assert_select "input#leads_import_PObox[name=?]", "leads_import[PObox]"

      assert_select "input#leads_import_cy_state[name=?]", "leads_import[cy_state]"

      assert_select "input#leads_import_cy_country[name=?]", "leads_import[cy_country]"
    end
  end
end
