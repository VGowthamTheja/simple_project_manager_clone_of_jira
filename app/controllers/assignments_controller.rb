# frozen_string_literal: true

# To control and make changes according to the Project convenience.
class AssignmentsController < ApplicationController
  def index
    @assignments = Assignment.all
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

  def new
    @project = Project.find(params[:project_id])
    @assignment = Assignment.new
  end

  def create
    @project = Project.find(params[:project_id])
    @assignment = @project.assignments.create(assignment_params)
    if @assignment.id
      redirect_to project_path(@project), notice: 'Assignment was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @project = Project.find(params[:project_id])
    @assignment = Assignment.find(params[:id]&.to_i)
  end

  def update
    @project = Project.find(params[:project_id])
    @assignment = @project.assignments.find(params[:id])
    if @assignment.update(assignment_params)
      redirect_to project_path(@project), notice: 'Assignment was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:project_id])
    @assignment = @project.assignments.find(params[:id])
    @assignment.destroy
    redirect_to project_path(@project), status: :see_other
  end

  private

  def assignment_params
    params.require(:assignment).permit(:task, :description, :epic, :due_date, :task_owner, :assignee, :status)
  end
end
