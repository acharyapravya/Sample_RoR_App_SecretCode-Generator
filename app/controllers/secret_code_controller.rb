class SecretCodeController < ApplicationController
	load_and_authorize_resource
	PER_PAGE = 5
	
	def index
		@codes = SecretCode.paginate(:page => params[:page], :per_page => PER_PAGE)
	end

	def create
		SecretCode.bulk_generate_code(params[:count])
		redirect_to action: "index"
	end
end