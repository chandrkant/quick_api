class ProjectsController < ApplicationController
	before_action :set_project, only: [:show, :update, :destroy]
	def index
		# @projects = Project.all
		@projects = current_user.projects
		json_response(@projects)
	end
	def edit

	end
	def show
		json_response(@project)
	end
	def update
		@project.update_attributes(project_params)
		json_response(@project)
	end
	def create
		@project = Project.new(project_params)
		@project.user = current_user
		@project.save
		json_response(@project)
	end
	def destroy
   @project.destroy
   # @projects = Project.all
	 json_response(@project)
	end
	private

	def project_params
		# ActiveModelSerializers::Deserialization.jsonapi_parse!(params, only: [:title, :created_by,:status] )
		params.require(:project).permit(:name, :desc,:status)
	end

	def set_project
		@project = Project.find(params[:id])
	end
end
