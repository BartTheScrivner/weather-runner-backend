class RunsController < ApplicationController
  def create
    run = Run.create(run_params)
    render json: run
end 

def update
    run = Run.find(params[:id])
    run.update(run_params)
    render json: run
end 

def destroy
    run = Run.find(params[:id])
    run.destroy 
end 

private 

  def run_params
      params.require(:run)
      .permit(:distance, 
      :start_time, :end_time, :rating, :date, :location, :user_id)
  end
end
