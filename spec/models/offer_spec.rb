require 'rails_helper'

RSpec.describe Offer, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:url) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:starts_at) }
  end

  describe 'Scopes' do
    describe '#enabled' do
      subject { Offer.enabled }

      it { is_expected.to be_an ActiveRecord::Relation }
    end
  end
end
