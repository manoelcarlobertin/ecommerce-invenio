class SystemRequirementsController < ApplicationController
  before_action :set_system_requirement, only: %i[show edit update destroy]

  def index
    @system_requirements = SystemRequirement.all
  end

  def show; end

  def new
    @system_requirement = SystemRequirement.new
  end

  def edit; end

  def create
    @system_requirement = SystemRequirement.new(system_requirement_params)
    if @system_requirement.save
      redirect_to @system_requirement, notice: 'Requisito do sistema criado com sucesso.'
    else
      render :new
    end
  end

  def update
    if @system_requirement.update(system_requirement_params)
      redirect_to @system_requirement, notice: 'Requisito do sistema atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @system_requirement.destroy
    redirect_to system_requirements_url, notice: 'Requisito do sistema removido com sucesso.'
  end

  private

  def set_system_requirement
    @system_requirement = SystemRequirement.find(params[:id])
  end

  def system_requirement_params
    params.require(:system_requirement).permit(:name, :operational_system, :storage, :processor, :memory, :video_board)
  end
end