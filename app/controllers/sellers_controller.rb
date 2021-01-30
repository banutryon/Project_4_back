class SellersController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
      render json: Seller.all
    end
    def show
      render json: Seller.find(params["id"])
    end

    def create
      render json: Seller.create(params["seller"])
    end

    def delete
      render json: Seller.delete(params["id"])
    end

    def update
      render json: Seller.update(params["id"], params["seller"])
  end
end
