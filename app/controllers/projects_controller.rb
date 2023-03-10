# frozen_string_literal: true

# To control the allocation of the projects.
class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    flash.now[:notice] = ' Welcome back!!.The Projects are ready.'
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to root_path, notice: 'Project was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to project_path(@project), notice: 'Project was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :status, :team_lead)
  end
end
