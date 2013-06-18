class InvoicePaymentsController < ApplicationController
  # GET /invoice_payments
  # GET /invoice_payments.json
  def index
    @invoice_payments = InvoicePayment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @invoice_payments }
    end
  end

  # GET /invoice_payments/1
  # GET /invoice_payments/1.json
  def show
    @invoice_payment = InvoicePayment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @invoice_payment }
    end
  end

  # GET /invoice_payments/new
  # GET /invoice_payments/new.json
  def new
    @invoice_payment = InvoicePayment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @invoice_payment }
    end
  end

  # GET /invoice_payments/1/edit
  def edit
    @invoice_payment = InvoicePayment.find(params[:id])
  end

  # POST /invoice_payments
  # POST /invoice_payments.json
  def create
    @invoice_payment = InvoicePayment.new(params[:invoice_payment])

    respond_to do |format|
      if @invoice_payment.save
        format.html { redirect_to @invoice_payment, notice: 'Invoice payment was successfully created.' }
        format.json { render json: @invoice_payment, status: :created, location: @invoice_payment }
      else
        format.html { render action: "new" }
        format.json { render json: @invoice_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /invoice_payments/1
  # PUT /invoice_payments/1.json
  def update
    @invoice_payment = InvoicePayment.find(params[:id])

    respond_to do |format|
      if @invoice_payment.update_attributes(params[:invoice_payment])
        format.html { redirect_to @invoice_payment, notice: 'Invoice payment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @invoice_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoice_payments/1
  # DELETE /invoice_payments/1.json
  def destroy
    @invoice_payment = InvoicePayment.find(params[:id])
    @invoice_payment.destroy

    respond_to do |format|
      format.html { redirect_to invoice_payments_url }
      format.json { head :no_content }
    end
  end
end
