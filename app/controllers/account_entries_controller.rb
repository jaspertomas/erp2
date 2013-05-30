class AccountEntriesController < ApplicationController
  # GET /account_entries
  # GET /account_entries.json
  def index
    @account_entries = AccountEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @account_entries }
    end
  end

  # GET /account_entries/1
  # GET /account_entries/1.json
  def show
    @account_entry = AccountEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @account_entry }
    end
  end

  # GET /account_entries/new
  # GET /account_entries/new.json
  def new
    @account_entry = AccountEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @account_entry }
    end
  end

  # GET /account_entries/1/edit
  def edit
    @account_entry = AccountEntry.find(params[:id])
  end

  # POST /account_entries
  # POST /account_entries.json
  def create
    @account_entry = AccountEntry.new(params[:account_entry])

    respond_to do |format|
      if @account_entry.save
        format.html { redirect_to @account_entry, notice: 'Account entry was successfully created.' }
        format.json { render json: @account_entry, status: :created, location: @account_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @account_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /account_entries/1
  # PUT /account_entries/1.json
  def update
    @account_entry = AccountEntry.find(params[:id])

    respond_to do |format|
      if @account_entry.update_attributes(params[:account_entry])
        format.html { redirect_to @account_entry, notice: 'Account entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @account_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_entries/1
  # DELETE /account_entries/1.json
  def destroy
    @account_entry = AccountEntry.find(params[:id])
    @account_entry.destroy

    respond_to do |format|
      format.html { redirect_to account_entries_url }
      format.json { head :no_content }
    end
  end
end
