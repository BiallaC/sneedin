# encoding: utf-8
require 'spec_helper'

describe "Static pages" do
	
	subject { page }

	# Examples for Home page
	describe "Home page" do
		before {visit root_path}
		
		it { should have_title("SneedIn | Entdecken, Mitbestellen, Geld sparen!") }
		it { should have_selector('h1', :text =>"Entdecken, Mitbestellen, Geld sparen") }
	end

	# Examples for Ueber uns page

	describe "Ueber uns" do
		before {visit ueberuns_path}
		
		it {should have_title("SneedIn | Über uns") }
		it {should have_selector('h1', :text =>"Über uns")}
	end	

	# Examples for Kontakt page

	describe "Kontakt" do
		before {visit kontakt_path}

		it {should have_title("SneedIn | Kontakt")}
		it {should have_selector('h1', :text =>"Kontakt")}
	end

	# Examples for Impressum page

	describe "Impressum" do
		before {visit impressum_path}
		
		it {should have_title("SneedIn | Impressum")}
		it {should have_selector('h1', :text =>"Impressum")}
	end
end