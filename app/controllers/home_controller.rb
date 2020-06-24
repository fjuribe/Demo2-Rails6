class HomeController < ApplicationController
	def index
		if user_signed_in?
			#@books = Book.all.paginate(page: params[:page], per_page:12)
		   @image = Image.all.paginate(page: params[:page], per_page:6)
		                 .order(id: :desc)
		                 .where user_id: current_user.id
		end
	end
end
