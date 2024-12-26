require 'rails_helper'

RSpec.describe Phone, type: :model do
  describe 'associações' do
    it { is_expected.to belong_to(:phone_arquivo).class_name('PhoneArquivo') }
  end
end
