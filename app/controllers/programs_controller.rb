class ProgramsController < ApplicationController
  before_action :program, only: %i[show edit update destroy]

  def index
    @programs = Program.all
  end

  def new
    @program = Program.new
  end

  def edit; end

  def show; end

  def create
    @program = Program.new(program_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @program.save
        ProgramService.call(@program.id, @program.num_weeks, @program.days_per_week)
        format.html { redirect_to root_path, notice: I18n.t('admin.loafs.success.updated') }
        format.json { render :show, status: :created, location: @program }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @program.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: I18n.t('admin.loafs.success.updated') }
      format.json { head :no_content }
    end
  end

  def update
    respond_to do |format|
      if @program.update(loaf_params)
        format.html { redirect_to root_path, notice: I18n.t('admin.loafs.success.updated') }
        format.json { render :show, status: :ok, location: @program }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def program
    @program ||= Program.find(params[:id])
  end

  def program_params
    params.require(:program).permit(:title, :num_weeks, :days_per_week, :cost)
  end
end
