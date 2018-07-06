class HomeController < ApplicationController
  def index
    @shops = Shop.last(6)
      respond_to do |format|
      format.html
      format.js
     end 
  end
    

  def shop_search_result
      q = params[:q]
      @near_by_shops = Shop.search(address_cont: q).result
      lat = params[:shop_search][:latitude].to_f
      long = params[:shop_search][:longitude].to_f
      distance = params[:shop_search][:kms].to_i
 	    @near_by_shops = Shop.near([lat, long], distance, units: :km) 
  end  
end
