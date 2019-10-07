class SearchesController < ApplicationController
  def criteria

    result = Detail.search_published((params[:q].present? ? params[:q] : '*')).records
    render json: result.results
  end
end

