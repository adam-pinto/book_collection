# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'book 1', author: 'author 1', price: '9.99', published_date: '09/05/2023')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is valid with author attribute' do
    expect(subject.author).to be_present
  end

  it 'is valid with price attribute' do
    expect(subject.price).to be_present
  end

  it 'is valid with published_date attribute' do
    expect(subject.published_date).to be_present
  end

end