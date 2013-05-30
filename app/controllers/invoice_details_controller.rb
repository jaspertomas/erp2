class InvoiceDetailsController < ApplicationController
  # GET /invoice_details
  # GET /invoice_details.json
  def index
    @invoice_details = InvoiceDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @invoice_details }
    end
  end

  # GET /invoice_details/1
  # GET /invoice_details/1.json
  def show
    @invoice_detail = InvoiceDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @invoice_detail }
    end
  end

  # GET /invoice_details/new
  # GET /invoice_details/new.json
  def new
    @invoice_detail = InvoiceDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @invoice_detail }
    end
  end

  # GET /invoice_details/1/edit
  def edit
    @invoice_detail = InvoiceDetail.find(params[:id])
  end

  # POST /invoice_details
  # POST /invoice_details.json
  def create
    @invoice_detail = InvoiceDetail.new(params[:invoice_detail])

    respond_to do |format|
      if @invoice_detail.save
        format.html { redirect_to @invoice_detail, notice: 'Invoice detail was successfully created.' }
        format.json { render json: @invoice_detail, status: :created, location: @invoice_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @invoice_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /invoice_details/1
  # PUT /invoice_details/1.json
  def update
    @invoice_detail = InvoiceDetail.find(params[:id])

    respond_to do |format|
      if @invoice_detail.update_attributes(params[:invoice_detail])
        format.html { redirect_to @invoice_detail, notice: 'Invoice detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @invoice_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoice_details/1
  # DELETE /invoice_details/1.json
  def destroy
    @invoice_detail = InvoiceDetail.find(params[:id])
    @invoice_detail.destroy

    respond_to do |format|
      format.html { redirect_to invoice_details_url }
      format.json { head :no_content }
    end
  end
end
