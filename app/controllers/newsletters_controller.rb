class NewslettersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_newsletter, only: [:show, :edit, :update, :destroy]

  def index
    @newsletters = Newsletter.all
  end

  def show
  end

  def new
    @newsletter = Newsletter.new
    authorize @newsletter
  end

  def edit
    authorize @newsletter
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)
    @newsletter.user = current_user
    authorize @newsletter

    respond_to do |format|
      if @newsletter.save
        format.html { redirect_to @newsletter, notice: 'Newsletter was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    authorize @newsletter
    respond_to do |format|
      if @newsletter.update(newsletter_params)
        format.html { redirect_to @newsletter, notice: 'Newsletter was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    authorize @newsletter
    @newsletter.destroy
    respond_to do |format|
      format.html { redirect_to newsletters_url, notice: 'Newsletter was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    def set_newsletter
      @newsletter = Newsletter.find(params[:id])
    end

    def newsletter_params
      params.require(:newsletter).permit(
        :title,
        :content,
        :newsletter_file,
        :featured_image,
        :user_id
      )
    end
end
