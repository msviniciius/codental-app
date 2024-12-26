require 'rails_helper'

RSpec.describe "phone_arquivos/index", type: :view do
  before(:each) do
    assign(:phone_arquivos, [
      PhoneArquivo.create!(
        :month => "Mes",
        : => "Ano",
        :file => "File"
      ),
      PhoneArquivo.create!(
        :month => "Mes",
        : => "Ano",
        :file => "File"
      )
    ])
  end

  it "renders a list of phone_arquivos" do
    render
    assert_select "tr>td", :text => "Mes".to_s, :count => 2
    assert_select "tr>td", :text => "Ano".to_s, :count => 2
    assert_select "tr>td", :text => "File".to_s, :count => 2
  end
end
