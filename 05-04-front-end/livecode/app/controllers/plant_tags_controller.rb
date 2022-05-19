class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    @plant = Plant.find(params[:plant_id])
    @tag_ids = params[:plant_tag][:tag]
    @tag_ids.each do |id|
      if id != ""
        @tag = Tag.find(id)
        @plant_tag = PlantTag.new({
          plant: @plant,
          tag: @tag
        })
        if !@plant_tag.save
          break
        end
      end
    end
    unless @plant_tag.save
      render "new"
    else
      redirect_to garden_path(@plant.garden)
    end
  end
end
