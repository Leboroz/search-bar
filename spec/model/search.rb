require 'rails_helper'

RSpec.describe SearchesController, type: :model do
  before :all do
    Search.destroy_all
  end

  describe 'validate search' do
    subject { create(:search) }

    context 'quantity' do
      it 'should be an integer' do
        subject.quantity = 'd'

        expect(subject).to_not be_valid
      end

      it 'should be present' do
        subject.quantity = nil

        expect(subject).to_not be_valid
      end

      it 'should be able to increase' do
        quantity = subject.quantity
        subject.increment_quantity

        expect(subject.quantity).to eq(quantity + 1)
      end
    end

    context 'content' do
      it 'should be present' do
        subject.content = nil

        expect(subject).to_not be_valid
      end
    end
  end
end
