class ProjectsController < ApplicationController
	before_action :set_project, only: [:show, :update, :destroy]
	def index
		@projects = Project.all
		json_response(@projects)
	end
	def edit
		# sms_message = "Surprise! Dear #{user_name}, we know you love bus trips, RailYatri has upgraded you to the VIP zone, you now get Rs. 300 off on bus tickets! Use code: VIP http://m.rytr.in/home-page"
	end
	def show

	end
	def update

	end
	def create
		@project = Project.new(project_params)
		@project.save
		json_response(@project) 
	end
	def destroy

	end
	private

	def project_params
		# ActiveModelSerializers::Deserialization.jsonapi_parse!(params, only: [:title, :created_by,:status] )
		params.require(:project).permit(:title, :created_by,:status)
	end

	def set_project
		@project = Project.find(params[:id])
	end
end
