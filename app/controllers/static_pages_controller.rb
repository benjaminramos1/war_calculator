class StaticPagesController < ApplicationController
    def home
		@result = ''
	end
	
    def calculate
		@result = params[:f].to_i + params[:s].to_i
		render :action => :home
	end

  def batter_war
  end

  def pitcher_war
  end

  def about
  end
end
