class ApplicationController < ActionController::API
  def index
    @response = Response.new(200,"Success", Sample.new("Belanja API Demo", "1.00.0"))
    render :json => @response
  end

end
