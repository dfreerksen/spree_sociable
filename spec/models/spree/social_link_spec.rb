require 'spec_helper'

describe Spree::SocialLink do
  context 'validations' do
    it { should validate_presence_of(:url) }
    it { should validate_presence_of(:icon) }
  end
end
