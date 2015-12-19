require 'rails_helper'

describe 'Products pages' do

  subject { page }

  shared_examples_for 'all static pages' do
    it { should have_selector('h2', text: heading) }
    it { should have_title(page_title) }
  end

  describe 'Home page' do
    before { visit root_path }
    let(:heading)    { 'featured products' }
    let(:page_title) { 'Home | Clothes store' }

    it_should_behave_like "all static pages"
    it { should_not have_title('Contact Us |') }
  end

  describe 'categories' do
    let!(:category) { FactoryGirl.create(:category) }
    before do
      visit root_path
      click_link category.title
    end

    context 'should category' do 
      it { expect(page).to have_selector('h2', text: category.title) }
    end
  end

end
