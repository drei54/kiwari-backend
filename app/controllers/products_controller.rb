class ProductsController < ApplicationController

  def index
    @response = Response.new(200,"Success", Product.find_each)
    render :json => @response
  end

  def show
    begin
      data = Product.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e
      data = nil
    end
    @response = Response.new(200,"Success", data)
    render :json => @response
  end

  def create
    params.permit!
    product = Product.new(params[:product])
    product.save
    @response = Response.new(200,"Success", product )
    render :json => @response
  end

  def update
    params.permit!
    begin
      product = Product.update(params[:id],params[:product])
    rescue ActiveRecord::RecordNotFound => e
      puts "record not found"
      product = nil
    end
    @response = Response.new(200,"Success", product)
    render :json => @response
  end

  def destroy
    begin
      Product.destroy(params[:id])
    rescue ActiveRecord::RecordNotFound => e
      puts "record not found"
    end
    @response = Response.new(200,"Success", [])
    render :json => @response
  end

end
