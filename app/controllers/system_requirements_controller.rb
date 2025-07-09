class SystemRequirementsController < ApplicationController
  before_action :set_system_requirement, only: %i[ show edit update destroy ]

  # GET /system_requirements or /system_requirements.json
  def index
    @system_requirements = SystemRequirement.all
  end

  # GET /system_requirements/1 or /system_requirements/1.json
  def show
  end

  # GET /system_requirements/new
  def new
    @system_requirement = SystemRequirement.new
  end

  # GET /system_requirements/1/edit
  def edit
  end

  # POST /system_requirements or /system_requirements.json
  def create
    @system_requirement = SystemRequirement.new(system_requirement_params)

    respond_to do |format|
      if @system_requirement.save
        format.html { redirect_to @system_requirement, notice: "System requirement was successfully created." }
        format.json { render :show, status: :created, location: @system_requirement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @system_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /system_requirements/1 or /system_requirements/1.json
  def update
    respond_to do |format|
      if @system_requirement.update(system_requirement_params)
        format.html { redirect_to @system_requirement, notice: "System requirement was successfully updated." }
        format.json { render :show, status: :ok, location: @system_requirement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @system_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /system_requirements/1 or /system_requirements/1.json
  def destroy
    @system_requirement.destroy!

    respond_to do |format|
      format.html { redirect_to system_requirements_path, status: :see_other, notice: "System requirement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system_requirement
      @system_requirement = SystemRequirement.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def system_requirement_params
      params.expect(system_requirement: [ :name, :operational_system, :sotorage, :processor, :memory, :video_board ])
    end
end
