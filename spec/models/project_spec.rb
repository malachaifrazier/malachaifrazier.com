require 'rails_helper'

RSpec.describe Project, type: :model do
  let(:project) { create(:project) }

  it 'is valid with valid attributes' do
    expect(project).to be_valid
  end

  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:slug) }
    it { should validate_presence_of(:year) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:outcome) }
    it { should validate_uniqueness_of(:slug) }
  end

  describe 'methods' do
    it 'should return the slug' do
      expect(project.to_param).to eq(project.slug)
    end
  end
end
