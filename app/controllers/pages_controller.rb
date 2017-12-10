class PagesController < ApplicationController
  def index
    @pages = Page.all
    @contact = Contact.new
  end
end
