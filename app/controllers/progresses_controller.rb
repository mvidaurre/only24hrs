class ProgressesController < ApplicationController
  before_filter :authenticate_user_or_admin!
  before_filter :setup_task

  # GET /progresses
  # GET /progresses.json
  def index
    @progresses = @task.progresses

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @progresses }
    end
  end

  # GET /progresses/1
  # GET /progresses/1.json
  def show
    @progress = @task.progresses.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @progress }
    end
  end

  # GET /progresses/new
  # GET /progresses/new.json
  def new
    @progress = @task.progresses.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @progress }
    end
  end

  # GET /progresses/1/edit
  def edit
    @progress = @task.progresses.find(params[:id])
  end

  # POST /progresses
  # POST /progresses.json
  def create
    @progress = @task.progresses.build(params[:progress])

    respond_to do |format|
      if @progress.save
        format.html { redirect_to task_progress_path(@task, @progress), notice: 'Progress was successfully created.' }
        format.json { render json: @progress, status: :created, location: task_progress_path(@task, @progress) }
      else
        format.html { render action: "new" }
        format.json { render json: @progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /progresses/1
  # PUT /progresses/1.json
  def update
    @progress = @task.progresses.find(params[:id])

    respond_to do |format|
      if @progress.update_attributes(params[:progress])
        format.html { redirect_to task_progress_path(@task, @progress), notice: 'Progress was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /progresses/1
  # DELETE /progresses/1.json
  def destroy
    @progress = @task.progresses.find(params[:id])
    @progress.destroy

    respond_to do |format|
      format.html { redirect_to task_progresses_url(@task) }
      format.json { head :no_content }
    end
  end

  private

  def setup_task
    @task = Task.find(params[:task_id])
  end
end
