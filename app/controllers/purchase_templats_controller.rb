class PurchaseTemplatsController < ApplicationController
  # GET /purchase_templats
  # GET /purchase_templats.json
  def index
    @purchase_templats = PurchaseTemplat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @purchase_templats }
    end
  end

  # GET /purchase_templats/1
  # GET /purchase_templats/1.json
  def show
    @purchase_templat = PurchaseTemplat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @purchase_templat }
    end
  end

  # GET /purchase_templats/new
  # GET /purchase_templats/new.json
  def new
    @purchase_templat = PurchaseTemplat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @purchase_templat }
    end
  end

  # GET /purchase_templats/1/edit
  def edit
    @purchase_templat = PurchaseTemplat.find(params[:id])
  end

  # POST /purchase_templats
  # POST /purchase_templats.json
  def create
    @purchase_templat = PurchaseTemplat.new(params[:purchase_templat])

    respond_to do |format|
      if @purchase_templat.save
        format.html { redirect_to @purchase_templat, notice: 'Purchase templat was successfully created.' }
        format.json { render json: @purchase_templat, status: :created, location: @purchase_templat }
      else
        format.html { render action: "new" }
        format.json { render json: @purchase_templat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /purchase_templats/1
  # PUT /purchase_templats/1.json
  def update
    @purchase_templat = PurchaseTemplat.find(params[:id])

    respond_to do |format|
      if @purchase_templat.update_attributes(params[:purchase_templat])
        format.html { redirect_to @purchase_templat, notice: 'Purchase templat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @purchase_templat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchase_templats/1
  # DELETE /purchase_templats/1.json
  def destroy
    @purchase_templat = PurchaseTemplat.find(params[:id])
    @purchase_templat.destroy

    respond_to do |format|
      format.html { redirect_to purchase_templats_url }
      format.json { head :no_content }
    end
  end
end
