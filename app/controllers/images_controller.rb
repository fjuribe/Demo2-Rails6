class ImagesController < ApplicationController
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
    	@image=Image.find(params[:id])
    end

    def edit
    	@image=Image.find(params[:id])

    end

    def update
        @image=Image.find(params[:id])
        if @image.update(image_params)
        	redirect_to @image
        else
        	render :edit
        end
    end


    def destroy
    	@image=Image.find(params[:id])
    	@image.destroy
    	redirect_to images_path
    end 

    private
    def image_params
    	params.require(:image).permit(:description)
    end
end
