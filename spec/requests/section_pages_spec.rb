require 'spec_helper'

describe "SectionPages" do

  describe "Home" do

    it "should have the content 'Fennec'" do
      visit '/section_pages/home'
      page.should have_content('Fennec')
    end

  describe "Topic1" do

    it "should have the content 'Fennec'" do
      visit '/section_pages/topic1'
      page.should have_content('Fennec')
    end

  describe "Topic2" do

    it "should have the content 'Fennec'" do
      visit '/section_pages/topic2'
      page.should have_content('Fennec')
    end

  end
end