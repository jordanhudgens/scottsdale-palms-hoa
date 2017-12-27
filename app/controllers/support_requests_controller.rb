class SupportRequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_support_request, only: [:show, :edit, :update, :destroy]
  layout 'full_page'

  def index
    if current_user.admin?
      @support_requests = SupportRequest.by_latest.page(params[:page]).per(10)
    else
      @support_requests = current_user.support_requests.by_latest.page(params[:page]).per(10)
    end
  end

  def show
    authorize @support_request
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
        BoardMailer.notification_email(@support_request).deliver_now
        format.html { redirect_to @support_request, notice: 'Support request was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @support_request.update(support_request_params)
        format.html { redirect_to @support_request, notice: 'Support request was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @support_request.destroy
    respond_to do |format|
      format.html { redirect_to support_requests_url, notice: 'Support request was successfully destroyed.' }
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
        :request_image,
      )
    end
end
