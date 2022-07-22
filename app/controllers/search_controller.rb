class SearchController < ApplicationController
  def index
    @all_members = AirbenderFacade.create_members(params[:nation])
    @members = @all_members.first(25)
  end
end
