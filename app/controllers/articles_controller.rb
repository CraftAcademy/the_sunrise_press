class ArticlesController < ApplicationController
    def index
        @articles = Articles.all
    end
end
