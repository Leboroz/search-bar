require 'rails_helper'

RSpec.describe ArticlesController, type: :model do
  before :all do
    Article.destroy_all
  end

  describe 'validate article' do
    subject { create(:article) }

    context 'title' do
      it 'should be present' do
        subject.title = nil

        expect(subject).to_not be_valid
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
