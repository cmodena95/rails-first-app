class PagesController < ApplicationController
  def about
  end

  def contact
    search = params[:member]
    @members = ["Ringo", "Paul", "John"]

    if search.present?
      @members = @members.select { |name| name.capitalize == search.capitalize }
    end
  end

  def home
  end
end
