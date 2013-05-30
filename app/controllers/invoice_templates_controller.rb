class InvoiceTemplatesController < ApplicationController
  # GET /invoice_templates
  # GET /invoice_templates.json
  def index
    @invoice_templates = InvoiceTemplate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @invoice_templates }
    end
  end

  # GET /invoice_templates/1
  # GET /invoice_templates/1.json
  def show
    @invoice_template = InvoiceTemplate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @invoice_template }
    end
  end

  # GET /invoice_templates/new
  # GET /invoice_templates/new.json
  def new
    @invoice_template = InvoiceTemplate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @invoice_template }
    end
  end

  # GET /invoice_templates/1/edit
  def edit
    @invoice_template = InvoiceTemplate.find(params[:id])
  end

  # POST /invoice_templates
  # POST /invoice_templates.json
  def create
    @invoice_template = InvoiceTemplate.new(params[:invoice_template])

    respond_to do |format|
      if @invoice_template.save
        format.html { redirect_to @invoice_template, notice: 'Invoice template was successfully created.' }
        format.json { render json: @invoice_template, status: :created, location: @invoice_template }
      else
        format.html { render action: "new" }
        format.json { render json: @invoice_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /invoice_templates/1
  # PUT /invoice_templates/1.json
  def update
    @invoice_template = InvoiceTemplate.find(params[:id])

    respond_to do |format|
      if @invoice_template.update_attributes(params[:invoice_template])
        format.html { redirect_to @invoice_template, notice: 'Invoice template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @invoice_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoice_templates/1
  # DELETE /invoice_templates/1.json
  def destroy
    @invoice_template = InvoiceTemplate.find(params[:id])
    @invoice_template.destroy

    respond_to do |format|
      format.html { redirect_to invoice_templates_url }
      format.json { head :no_content }
    end
  end
end
