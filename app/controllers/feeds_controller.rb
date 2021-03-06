class FeedsController < ApplicationController
  before_action :set_feed, only: %i[ show edit update destroy ]
  before_action :access,only: %i[edit destroy]

  # GET /feeds or /feeds.json
  def index
    @feeds = Feed.all
  end

  # GET /feeds/1 or /feeds/1.json
  def show
  end

  # GET /feeds/new
  def new
    @feed = Feed.new
  end
  def confirm
    @feed = current_user.feeds.build(feed_params)
    render :new  if @feed.invalid?
  end
  
  def edit
    @feed = Feed.find(params[:id])
  end

  def create
    @feed = current_user.feeds.build(feed_params)
      if params[:back]
        render :new
      else

      respond_to do |format|
        if @feed.save
          format.html { redirect_to feed_url(@feed), notice: "Feed was successfully created." }
          format.json { render :show, status: :created, location: @feed }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @feed.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /feeds/1 or /feeds/1.json
  def update
    respond_to do |format|
      if @feed.update(feed_params)
        format.html { redirect_to feed_url(@feed), notice: "Feed was successfully updated." }
        format.json { render :show, status: :ok, location: @feed }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @feed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feeds/1 or /feeds/1.json
  def destroy
    @feed.destroy
      respond_to do |format|
      format.html { redirect_to feeds_url, notice: "Feed was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  private
  def set_feed
    @feed = Feed.find(params[:id])
  end

  def feed_params
    params.require(:feed).permit(:image,:image_cache,:content)
  end

  def access
   unless @current_user.id && @feed.user.id == @current_user.id
   flash[:notice] = "権限がありません"
   redirect_to feeds_path
  end

  end

end

