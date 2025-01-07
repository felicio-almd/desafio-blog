require 'rails_helper'

RSpec.describe BlogPost, type: :model do
  # Teste de validações
  context 'Validações' do
    it 'é válido com título e corpo' do
      blog_post = BlogPost.new(title: 'Título', body: 'Corpo do post.')
      expect(blog_post).to be_valid
    end

    it 'não é válido sem título' do
      blog_post = BlogPost.new(title: nil, body: 'Corpo do post.')
      expect(blog_post).not_to be_valid
    end

    it 'não é válido sem corpo' do
      blog_post = BlogPost.new(title: 'Título', body: nil)
      expect(blog_post).not_to be_valid
    end
  end

  context 'Associações' do
    it 'deleta os comentários associados ao deletar o post' do
      blog_post = BlogPost.create!(title: 'Post', body: 'Corpo')
      blog_post.comments.create!(body: 'Comentário')

      expect { blog_post.destroy }.to change(Comment, :count).by(-1)
    end
  end
end
