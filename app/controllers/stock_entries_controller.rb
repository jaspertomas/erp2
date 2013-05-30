class StockEntriesController < ApplicationController
  # GET /stock_entries
  # GET /stock_entries.json
  def index
    @stock_entries = StockEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stock_entries }
    end
  end

  # GET /stock_entries/1
  # GET /stock_entries/1.json
  def show
    @stock_entry = StockEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stock_entry }
    end
  end

  # GET /stock_entries/new
  # GET /stock_entries/new.json
  def new
    @stock_entry = StockEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stock_entry }
    end
  end

  # GET /stock_entries/1/edit
  def edit
    @stock_entry = StockEntry.find(params[:id])
  end

  # POST /stock_entries
  # POST /stock_entries.json
  def create
    @stock_entry = StockEntry.new(params[:stock_entry])

    respond_to do |format|
      if @stock_entry.save
        format.html { redirect_to @stock_entry, notice: 'Stock entry was successfully created.' }
        format.json { render json: @stock_entry, status: :created, location: @stock_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @stock_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stock_entries/1
  # PUT /stock_entries/1.json
  def update
    @stock_entry = StockEntry.find(params[:id])

    respond_to do |format|
      if @stock_entry.update_attributes(params[:stock_entry])
        format.html { redirect_to @stock_entry, notice: 'Stock entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stock_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_entries/1
  # DELETE /stock_entries/1.json
  def destroy
    @stock_entry = StockEntry.find(params[:id])
    @stock_entry.destroy

    respond_to do |format|
      format.html { redirect_to stock_entries_url }
      format.json { head :no_content }
    end
  end
end
