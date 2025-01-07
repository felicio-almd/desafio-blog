require 'rails_helper'

RSpec.describe Comment, type: :model do
  it 'não é válido sem corpo' do
    comment = Comment.new(body: nil)
    expect(comment).not_to be_valid
  end
end
