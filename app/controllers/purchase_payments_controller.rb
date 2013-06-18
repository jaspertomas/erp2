class PurchasePaymentsController < ApplicationController
  # GET /purchase_payments
  # GET /purchase_payments.json
  def index
    @purchase_payments = PurchasePayment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @purchase_payments }
    end
  end

  # GET /purchase_payments/1
  # GET /purchase_payments/1.json
  def show
    @purchase_payment = PurchasePayment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @purchase_payment }
    end
  end

  # GET /purchase_payments/new
  # GET /purchase_payments/new.json
  def new
    @purchase_payment = PurchasePayment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @purchase_payment }
    end
  end

  # GET /purchase_payments/1/edit
  def edit
    @purchase_payment = PurchasePayment.find(params[:id])
  end

  # POST /purchase_payments
  # POST /purchase_payments.json
  def create
    @purchase_payment = PurchasePayment.new(params[:purchase_payment])

    respond_to do |format|
      if @purchase_payment.save
        format.html { redirect_to @purchase_payment, notice: 'Purchase payment was successfully created.' }
        format.json { render json: @purchase_payment, status: :created, location: @purchase_payment }
      else
        format.html { render action: "new" }
        format.json { render json: @purchase_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /purchase_payments/1
  # PUT /purchase_payments/1.json
  def update
    @purchase_payment = PurchasePayment.find(params[:id])

    respond_to do |format|
      if @purchase_payment.update_attributes(params[:purchase_payment])
        format.html { redirect_to @purchase_payment, notice: 'Purchase payment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @purchase_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchase_payments/1
  # DELETE /purchase_payments/1.json
  def destroy
    @purchase_payment = PurchasePayment.find(params[:id])
    @purchase_payment.destroy

    respond_to do |format|
      format.html { redirect_to purchase_payments_url }
      format.json { head :no_content }
    end
  end
end
