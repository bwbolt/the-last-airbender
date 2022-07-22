class SearchController < ApplicationController
  def index
    @members = AirbenderFacade.create_members(params[:nation])
  end
end
