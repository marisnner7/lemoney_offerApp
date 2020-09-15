RSpec.describe Offer do
  subject { offer }
  let(:offer) { FactoryBot.build :offer }

  it { is_expected.to be_valid }

  describe 'Validations' do
    it { is_expected.to validate_presence_of :advertiser_name }
    it { is_expected.to validate_uniqueness_of :advertiser_name }
    it { is_expected.to validate_presence_of :url }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :starts_at }
  end

end  