require 'spec_helper'

describe "Static pages" do
  
  #tests for hom page below

  describe "home page" do
    
    it "should have the h1 'Home'" do
     visit '/static_pages/home' 
     page.should have_selector('h1', :text => 'Home') 

    end
    
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "MyFishBook | Home")
    end
  end
  
  #tests for help page below
    
    describe "help page" do

      it "should have the h1 'Help'" do
       visit '/static_pages/help' 
       page.should have_selector('h1', :text => 'Help') 
       
      end
      
      it 'should have the right title' do
        visit '/static_pages/help'
        page.should have_selector('title', :text => "MyFishBook | Help")
        
      end
      
    end
    
    #tests for about page below
    
     describe "About Page" do

        it "should have the h1 'About'" do
         visit '/static_pages/about' 
         page.should have_selector('h1', :text => 'About Us') 
  
        end
        
        it 'should have the right title' do
          visit '/static_pages/about'
          page.should have_selector('title', :text => "MyFishBook | About Us")
        
        end
        
      end
      
      #tests for contact us page below

       describe "Contact Us" do

          it "should have the content 'Contact Us'" do
           visit '/static_pages/contact' 
           page.should have_selector('h1', :text => 'Contact Us') 

          end

          it 'should have the right title' do
            visit '/static_pages/contact'
            page.should have_selector('title', :text => "MyFishBook | Contact Us")

          end

        end
    
end
