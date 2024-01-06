require 'rails_helper'

RSpec.describe UsersController, type: :model do
  before :all do
    User.destroy_all
  end

  describe 'validate article' do
    subject { create(:user) }

    context 'ip' do
      it 'should be present' do
        subject.ip = nil

        expect(subject).to_not be_valid
      end
    end
  end
end
