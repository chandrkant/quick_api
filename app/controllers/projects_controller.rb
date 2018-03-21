class ProjectsController < ApplicationController
	before_action :set_project, only: [:show, :update, :destroy]
	def index
		@projects = Project.all
		json_response(@projects)
	end
	def edit

	end
	def show

	end
	def update

	end
	def create
		puts project_params
	end
	def destroy

	end
	private

	def project_params
		ActiveModelSerializers::Deserialization.jsonapi_parse!(params, only: [:title, :created_by,:status] )
		# params.permit(:title, :created_by,:status)
	end

	def set_project
		@project = Project.find(params[:id])
	end
end
