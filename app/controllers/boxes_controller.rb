class BoxesController < ApplicationController

    def index
      @boxes = Box.all
      render json: @boxes
    end

    def new
      @box = Box.new
    end

    def create
      @box = Box.new(box_params)
      if @box.save
        redirect_to boxes_path, notice: "Box was successfully created."
      else
        render :new
      end
    end

    private

    def box_params
      params.require(:box).permit(:range, :cost_to_move_boxes)
    end

end
