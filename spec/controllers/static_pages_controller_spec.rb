require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe "when get root path" do
    render_views
    it 'should render static_pages#index' do
      get :index
      expect(response.body).to match (/Книги/)
    end

  end
end
