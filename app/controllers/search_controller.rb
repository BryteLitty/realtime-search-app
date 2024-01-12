class SearchController < ApplicationController
  def index
    @searches = Search.all.order(created_at: :desc).limit(10)
  end

  def create
    query = params[:query].strip
    Search.create(query: query) if query.present?

    ActionCable.server.broadcast('search_channel', query: query)

    head :ok
  end
end
