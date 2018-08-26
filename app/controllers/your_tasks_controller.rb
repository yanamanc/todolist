class YourTasksController < ApplicationController
  before_action :set_your_task, only: [:show, :edit, :update, :destroy]

  # GET /your_tasks
  # GET /your_tasks.json
  def index
    @your_tasks = YourTask.all
    @create_task = YourTask.new
  end

  # GET /your_tasks/1
  # GET /your_tasks/1.json
  def show
  end

  # GET /your_tasks/new
  def new
    @your_task = YourTask.new
  end

  # GET /your_tasks/1/edit
  def edit
  end

  # POST /your_tasks
  # POST /your_tasks.json
  def create
    @your_task = YourTask.new(your_task_params)

    respond_to do |format|
      if @your_task.save
        format.html { redirect_to @your_task, notice: 'Your task was successfully created.' }
        format.json { render :show, status: :created, location: @your_task }
      else
        format.html { render :new }
        format.json { render json: @your_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /your_tasks/1
  # PATCH/PUT /your_tasks/1.json
  def update
    respond_to do |format|
      if @your_task.update(your_task_params)
        format.html { redirect_to @your_task, notice: 'Your task was successfully updated.' }
        format.json { render :show, status: :ok, location: @your_task }
      else
        format.html { render :edit }
        format.json { render json: @your_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /your_tasks/1
  # DELETE /your_tasks/1.json
  def destroy
    @your_task.destroy
    redirect_to projects_url 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_your_task
      @your_task = YourTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def your_task_params
      params.require(:your_task).permit(:task_id, :name, :status, :project_id)
    end
end
