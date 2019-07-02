class SuggestionsController < ApplicationController
    def index
        @suggestions = Suggestion.all
        if @suggestions
          render json: @suggestions
        else
          render json: { error: 'Cannot find suggestion' }, status: 404
        end
      end
 end
 