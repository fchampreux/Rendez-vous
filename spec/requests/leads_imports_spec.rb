require 'rails_helper'

RSpec.describe "LeadsImports", type: :request do
  describe "GET /leads_imports" do
    it "works! (now write some real specs)" do
      get leads_imports_path
      expect(response).to have_http_status(200)
    end
  end
end
