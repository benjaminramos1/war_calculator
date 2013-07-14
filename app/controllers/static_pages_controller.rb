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
	
	def fcalculate
		constant1 = 13 * params[:hr].to_f
		constant2 = 3 * (params[:bb].to_f + params[:hbp].to_f)
		constant3 = 2 * params[:k].to_f
		constant4 = params[:ip].to_f
		compute = ((constant1 + constant2 - constant3)/constant4 + 3.066).to_s
		@result = /\d[.]\d{2}/.match(compute)
		render :action => :fip
	end

  def batter_war
		@result = ''
  end

  def pitcher_war
		@result = ''
  end

  def fip
		@result = ''
  end
  
  def about
  end
end
