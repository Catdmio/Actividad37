class AllocationsController < ApplicationController
  def index
  	@allocation = Allocation.all
  end

  def create
  	@project = Project.find_by(params[:project.id])
  	@user = User.find_by(params[:user])
  	@allocation = Allocation.new(user: current_user, :project)
  end

end
