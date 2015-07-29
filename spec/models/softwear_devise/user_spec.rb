require 'spec_helper'
require 'rails_helper'

module SoftwearDevise
  RSpec.describe User, type: :model do
    describe 'Validations' do
      it { is_expected.to validate_presence_of(:first_name) }
      it { is_expected.to validate_presence_of(:last_name) }
      it { is_expected.to validate_presence_of(:email) }
    end
  end
end
