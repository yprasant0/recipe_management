class SearchesController < ApplicationController
  def criteria
    query = params[:q]
    @result = Detail.where('recipe LIKE ?', "%#{query}%")
    render json: @result
  end
end
