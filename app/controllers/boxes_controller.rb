class BoxesController < ApplicationController
    def index
      @boxes = Box.all
      render json: @boxes
    end

    def show
      @box = Box.find(params[:id])
      render json: @box
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

    def edit
      @box = Box.find(params[:id])
    end

    def update
      @box = Box.find(params[:id])
      if @box.update(box_params)
        redirect_to boxes_path, notice: "Box was successfully updated."
      else
        render :edit
      end
    end

    def destroy
      @box = Box.find(params[:id])
      @box.destroy
      redirect_to boxes_path, notice: "Box was successfully deleted."
    end

    private

    def box_params
      params.require(:box).permit(:range, :cost_to_move_boxes)
    end

end
