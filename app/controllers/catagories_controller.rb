class CatagoriesController < ApplicationController
    def show
      @catagory = Catagory.find(params[:id])
      @products = @catagory.products
      if params[:max].present?
        @products = @products.where("price <= ?", params[:max])
      end
      if params[:min].present?
        @products = @products.where("price >= ?", params[:min])
      end
    end
  end