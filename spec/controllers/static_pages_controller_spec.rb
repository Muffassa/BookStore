require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe "when get root path" do
    render_views
    it 'should render static_pages#index' do
      get :index
      expect(response.body).to match (/Книги/)
    end

    it 'should have registration and sign in buttons' do
      get :index
      expect(response.body).to match(/Регистрация/)
      expect(response.body).to match(/Вход/) 
    end

  end
end
