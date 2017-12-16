class StaticController < ApplicationController
  def home
  end

  def contact_us
    @page_title = 'Contact Us'
  end
end
