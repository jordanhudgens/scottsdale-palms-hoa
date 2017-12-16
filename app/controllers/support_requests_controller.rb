class SupportRequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_support_request, only: [:show, :edit, :update, :destroy]
  layout 'full_page'

  def index
    @support_requests = SupportRequest.all
  end

  def show
  end

  def new
    @support_request = SupportRequest.new
  end

  def edit
  end

  def create
    @support_request = SupportRequest.new(support_request_params)
    @support_request.user = current_user

    respond_to do |format|
      if @support_request.save
        format.html { redirect_to @support_request, notice: 'Support request was successfully created.' }
        format.json { render :show, status: :created, location: @support_request }
      else
        format.html { render :new }
        format.json { render json: @support_request.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @support_request.update(support_request_params)
        format.html { redirect_to @support_request, notice: 'Support request was successfully updated.' }
        format.json { render :show, status: :ok, location: @support_request }
      else
        format.html { render :edit }
        format.json { render json: @support_request.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @support_request.destroy
    respond_to do |format|
      format.html { redirect_to support_requests_url, notice: 'Support request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_support_request
      @support_request = SupportRequest.find(params[:id])
    end

    def support_request_params
      params.require(:support_request).permit(
        :title,
        :content,
        :status,
        :request_category,
      )
    end
end
