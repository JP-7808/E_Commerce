class HomeController < ApplicationController
    def index
        @main_catagories = Catagory.take(4)

    end
end