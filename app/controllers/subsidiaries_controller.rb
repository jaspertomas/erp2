class SubsidiariesController < ApplicationController
  # GET /subsidiaries
  # GET /subsidiaries.json
  def index
    @subsidiaries = Subsidiary.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subsidiaries }
    end
  end

  # GET /subsidiaries/1
  # GET /subsidiaries/1.json
  def show
    @subsidiary = Subsidiary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subsidiary }
    end
  end

  # GET /subsidiaries/new
  # GET /subsidiaries/new.json
  def new
    @subsidiary = Subsidiary.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subsidiary }
    end
  end

  # GET /subsidiaries/1/edit
  def edit
    @subsidiary = Subsidiary.find(params[:id])
  end

  # POST /subsidiaries
  # POST /subsidiaries.json
  def create
    @subsidiary = Subsidiary.new(params[:subsidiary])

    respond_to do |format|
      if @subsidiary.save
        format.html { redirect_to @subsidiary, notice: 'Subsidiary was successfully created.' }
        format.json { render json: @subsidiary, status: :created, location: @subsidiary }
      else
        format.html { render action: "new" }
        format.json { render json: @subsidiary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subsidiaries/1
  # PUT /subsidiaries/1.json
  def update
    @subsidiary = Subsidiary.find(params[:id])

    respond_to do |format|
      if @subsidiary.update_attributes(params[:subsidiary])
        format.html { redirect_to @subsidiary, notice: 'Subsidiary was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subsidiary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subsidiaries/1
  # DELETE /subsidiaries/1.json
  def destroy
    @subsidiary = Subsidiary.find(params[:id])
    @subsidiary.destroy

    respond_to do |format|
      format.html { redirect_to subsidiaries_url }
      format.json { head :no_content }
    end
  end
end
