require 'rails_helper'

RSpec.describe "phone_arquivos/show", type: :view do
  before(:each) do
    @phone_arquivo = assign(:phone_arquivo, PhoneArquivo.create!(
      :month => "Mes",
      : => "Ano",
      :file => "File"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Mes/)
    expect(rendered).to match(/Ano/)
    expect(rendered).to match(/File/)
  end
end
