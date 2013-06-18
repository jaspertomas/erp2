class ChequePaymentsController < ApplicationController
  # GET /cheque_payments
  # GET /cheque_payments.json
  def index
    @cheque_payments = ChequePayment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cheque_payments }
    end
  end

  # GET /cheque_payments/1
  # GET /cheque_payments/1.json
  def show
    @cheque_payment = ChequePayment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cheque_payment }
    end
  end

  # GET /cheque_payments/new
  # GET /cheque_payments/new.json
  def new
    @cheque_payment = ChequePayment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cheque_payment }
    end
  end

  # GET /cheque_payments/1/edit
  def edit
    @cheque_payment = ChequePayment.find(params[:id])
  end

  # POST /cheque_payments
  # POST /cheque_payments.json
  def create
    @cheque_payment = ChequePayment.new(params[:cheque_payment])

    respond_to do |format|
      if @cheque_payment.save
        format.html { redirect_to @cheque_payment, notice: 'Cheque payment was successfully created.' }
        format.json { render json: @cheque_payment, status: :created, location: @cheque_payment }
      else
        format.html { render action: "new" }
        format.json { render json: @cheque_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cheque_payments/1
  # PUT /cheque_payments/1.json
  def update
    @cheque_payment = ChequePayment.find(params[:id])

    respond_to do |format|
      if @cheque_payment.update_attributes(params[:cheque_payment])
        format.html { redirect_to @cheque_payment, notice: 'Cheque payment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cheque_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cheque_payments/1
  # DELETE /cheque_payments/1.json
  def destroy
    @cheque_payment = ChequePayment.find(params[:id])
    @cheque_payment.destroy

    respond_to do |format|
      format.html { redirect_to cheque_payments_url }
      format.json { head :no_content }
    end
  end
end
