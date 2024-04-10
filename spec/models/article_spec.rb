require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:article) { create(:article) }

  it 'is valid with valid attributes' do
    expect(article).to be_valid
  end

  describe 'Validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:slug) }
    it { should validate_presence_of(:body) }
    it { should validate_presence_of(:publish_at) }
    it { should validate_uniqueness_of(:slug) }
  end
end