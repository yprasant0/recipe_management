class SearchesController < ApplicationController
  def criteria

    result = Detail.search((params[:q].present? ? params[:q] : '*')).records
    render json: result.results
  end
end
