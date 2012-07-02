class FocusesController < ApplicationController
  before_filter :authenticate_user_or_admin!
  # GET /focuses
  # GET /focuses.json
  def index
    @focuses = Focus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @focuses }
    end
  end

  # GET /focuses/1
  # GET /focuses/1.json
  def show
    @focus = Focus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @focus }
    end
  end

  # GET /focuses/new
  # GET /focuses/new.json
  def new
    @focus = Focus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @focus }
    end
  end

  # GET /focuses/1/edit
  def edit
    @focus = Focus.find(params[:id])
  end

  # POST /focuses
  # POST /focuses.json
  def create
    @focus = Focus.new(params[:focus])

    respond_to do |format|
      if @focus.save
        format.html { redirect_to @focus, notice: 'Focus was successfully created.' }
        format.json { render json: @focus, status: :created, location: @focus }
      else
        format.html { render action: "new" }
        format.json { render json: @focus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /focuses/1
  # PUT /focuses/1.json
  def update
    @focus = Focus.find(params[:id])

    respond_to do |format|
      if @focus.update_attributes(params[:focus])
        format.html { redirect_to @focus, notice: 'Focus was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @focus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /focuses/1
  # DELETE /focuses/1.json
  def destroy
    @focus = Focus.find(params[:id])
    @focus.destroy

    respond_to do |format|
      format.html { redirect_to focuses_url }
      format.json { head :no_content }
    end
  end
end
