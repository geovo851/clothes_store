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

  describe 'products' do
    let!(:category) { FactoryGirl.create(:category) }

    describe 'category' do
      before do
        visit root_path
        click_link category.title
      end

      context 'when category is found' do 
        it { expect(page).to have_selector('h2', text: category.title) }
      end
    end

    describe 'pagination' do
      context 'when pagination is found' do
        before do
          15.times { FactoryGirl.create(:product, category: category) }
          visit root_path
          click_link category.title
        end
        it { expect(page).to have_css('.pagination') }
      end

      context 'when pagination is not found' do
        before do
          1.times { FactoryGirl.create(:product, category: category) }
          visit root_path
          click_link category.title
        end
        it { expect(page).to_not have_css('.pagination') }
      end
    end

  end

end
