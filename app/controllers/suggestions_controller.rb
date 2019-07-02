class SuggestionsController < ApplicationController
    def index
        @suggestions = Suggestion.all
        if @suggestions
          render json: @suggestions
        else
          render json: { error: 'Cannot find suggestion' }, status: 404
        end
    end

    def create
      suggestion = Suggestion.new(plant_id: params[:plant_id], suggestion: params[:suggestion])
      
      if suggestion.save
          render json: suggestion
      else
         render json: {
           error: "The suggestion was not succesfully added. Please try again later.",
           status: 400
           }, status: 400
      end
  end
 end
 