class ImagesController < ApplicationController
	before_action :set_image, only:[:show,:edit,:update,:destroy]
	def index
		@image=Image.all
	end




	def new
        @image=Image.new
	end



	def create
    	#render plain: params[:image].inspect
    	@image=Image.new(image_params)
    	if @image.save
    		redirect_to @image
    		
    	else
    		render :new
    	end
    end



    def show
    end

    def edit

    end

    def update
  
        if @image.update(image_params)
        	redirect_to @image
        else
        	render :edit
        end
    end


    def destroy
    	@image.destroy
    	redirect_to images_path
    end 

    private
    def image_params
    	params.require(:image).permit(:description)
    end

    def set_image
    	@image=Image.find(params[:id])
    end
end
