class BuyersController < ApplicationController
    before_action :find_planet, only: [:name, :show, :edit]
    

    def index
        @buyers = Buyer.all
    end

    def show
    end

    def new
        @buyer = Buyer.new
    end

    def edit
    end

    # def update 
    #     if @buyer.update(buyer_params)
    #       redirect_to buyer_path(@buyer.id)
    #     else 
    #       flash[:my_errors] = @buyer.errors.full_messages
    #       redirect_to edit_buyer_path
    #     end 
    # end

    # def create 
    #     @buyer = Buyer.create(buyer_params)
        
    #     if @buyer.valid? 
    #       redirect_to buyer_path(@buyer.id)
    #     else 
    #       flash[:my_errors] = @buyer.errors.full_messages
    #       redirect_to new_buyer_path
    #     end 
    # end 
      
    
    private

    def buyer_params
        params.require(:buyer).permit(:name, :address, :img_url)
    end

    def find_planet
        @buyer = Buyer.find(params[:id])
    end
end