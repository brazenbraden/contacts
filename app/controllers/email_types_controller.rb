class EmailTypesController < ApplicationController
  before_action :set_email_type, only: [:show, :edit, :update, :destroy]

  # GET /email_types
  def index
    @email_types = EmailType.all
  end

  # GET /email_types/1
  def show
  end

  # GET /email_types/new
  def new
    @email_type = EmailType.new
  end

  # GET /email_types/1/edit
  def edit
  end

  # POST /email_types
  def create
    @email_type = EmailType.new(email_type_params)

    if @email_type.save
      redirect_to @email_type, notice: 'Email type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /email_types/1
  def update
    if @email_type.update(email_type_params)
      redirect_to @email_type, notice: 'Email type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /email_types/1
  def destroy
    @email_type.destroy
    redirect_to email_types_url, notice: 'Email type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_type
      @email_type = EmailType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def email_type_params
      params.require(:email_type).permit(:name)
    end
end
