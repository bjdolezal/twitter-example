class PagesController < ApplicationController
  def index
  end

  def about
  end

  def contact
    @phone_number = "555-555-5555"
    @foo = ["foo", "bar", "baz"]
  end

  def careers
  end
end
