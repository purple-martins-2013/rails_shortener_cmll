class UrlsController < ActionController::Base
  def index
    @url = Url.new
    @all_urls = Url.all
  end

  def create
    @url = Url.new(params[:url])
    # @url = Url.new
    # @url.original_url = params[:url][:original_url]
    @url.save
    redirect_to @url
  end

  def show
    @url = Url.find(params[:id])
  end

end
