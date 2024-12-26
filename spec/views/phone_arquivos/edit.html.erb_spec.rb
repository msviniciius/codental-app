require 'rails_helper'

RSpec.describe "phone_arquivos/edit", type: :view do
  before(:each) do
    @phone_arquivo = assign(:phone_arquivo, PhoneArquivo.create!(
      :month => "MyString",
      : => "MyString",
      :file => "MyString"
    ))
  end

  it "renders the edit phone_arquivo form" do
    render

    assert_select "form[action=?][method=?]", phone_arquivo_path(@phone_arquivo), "post" do

      assert_select "input[name=?]", "phone_arquivo[month]"

      assert_select "input[name=?]", "phone_arquivo[]"

      assert_select "input[name=?]", "phone_arquivo[file]"
    end
  end
end
