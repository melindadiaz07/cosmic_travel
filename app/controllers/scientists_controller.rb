class ScientistsController < ApplicationController

    
    def index
        @scientists = Scientist.all
    end

    def show
        @scientist = Scientist.find(params[:id])
    end

    def new
        @scientist = Scientist.new
    end

    def create
        scientist = Scientist.new(scientist_params(:name, :field_of_study))
        # scientist.errors
        scientist.save
        redirect_to scientists_path
    end

    def edit
        @scientist = Scientist.find(params[:id])
    end

    def update
        scientist = Scientist.find(params[:scientist][:id])
        scientist.update(scientist_params(:name, :field_of_study))
    end


    private

    def scientist_params(*args)
        params.require(:scientist).permit(*args)
    end

    #build method to find scientist
   

end
