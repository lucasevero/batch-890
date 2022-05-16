class PagesController < ApplicationController
  def about
  end

  def contact
    # make variables available in your view by making them @instance_variables
    @students = ['wolf', 'elio', 'boyan', 'lara'].select do |student|
      if params[:member].present?
        student.starts_with?(params[:member])
      else
        student
      end
    end
  end

  def home
    @date = Date.today
  end
end
