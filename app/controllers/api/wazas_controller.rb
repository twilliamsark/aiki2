module API
  class WazasController < ApplicationController
    # curl -iH "Accept: application/json" http://localhost:3000/api/wazas?sort_by=Rank
    # curl -iH "Accept: application/json" https://yurusu-video.herokuapp.com/api/wazas?sort_by=Technique
    def index
      @sort_class = params[:sort_by]
      @selection = @sort_class.constantize.send(:get_wazas)
    end

    def show
      #TODO
    end

    def show_waza_format
      #TODO
    end
  end
end
