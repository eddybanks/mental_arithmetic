class HomeController < ApplicationController
  def index
  end

  def about
    @page_header = "About Us"
  end

  def faqs
    @page_header = "Frequently Asked Questions"
  end

  def contact
    @page_header = "Contact Info"
  end
end
