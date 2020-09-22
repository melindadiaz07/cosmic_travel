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


    private

    def scientist_params(*args)
        params.require(:scientist).permit(*args)
    end

   

end
