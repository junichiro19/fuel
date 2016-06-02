class MapsController < ApplicationController
    before_action :set_map, only: [:show, :edit, :update, :destroy]
    
    
    def index
     @map = Map.all
    end
    
    def new
     @map = Map.new
    end
    
    def create
     @map = Map.new(set_map)
     @map.save
     redirect_to show_path 
    end
    
    private
    
    def set_map
        params.require(:map).permit(:title, :address, :latitude, :longitude)
    end
    
end
