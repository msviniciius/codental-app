require 'rails_helper'

RSpec.describe "PhoneArquivos", type: :request do
  describe "GET /phone_arquivos" do
    it "works! (now write some real specs)" do
      get phone_arquivos_path
      expect(response).to have_http_status(200)
    end
  end
end
