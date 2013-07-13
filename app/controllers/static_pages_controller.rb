# Code was based off of http://www.luisramalho.com/ruby-on-rails-simple-html-form-calculator

class StaticPagesController < ApplicationController
    def home
	end
	
    def bcalculate
		@result = params[:f].to_i + params[:s].to_i
		render :action => :batter_war
	end
	
	def pcalculate
		@result = params[:f].to_i + params[:s].to_i
		render :action => :pitcher_war
	end

  def batter_war
		@result = ''
  end

  def pitcher_war
		@result = ''
  end

  def about
  end
end
