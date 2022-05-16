require 'open-uri'

class FlatsController < ApplicationController
  before_action :set_flats, only: [:index, :show]

  def index # How we call a page with all the flats
  end

  def show # How we call a page for a specific flat
    @flat = @flats.find do |flat|
      flat['id'] == params[:id].to_i
    end
  end

  private

  def set_flats
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    @flats = JSON.parse(URI.open(url).read)
  end
end
