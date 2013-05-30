class PurchaseTemplatesController < ApplicationController
  # GET /purchase_templates
  # GET /purchase_templates.json
  def index
    @purchase_templates = PurchaseTemplate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @purchase_templates }
    end
  end

  # GET /purchase_templates/1
  # GET /purchase_templates/1.json
  def show
    @purchase_template = PurchaseTemplate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @purchase_template }
    end
  end

  # GET /purchase_templates/new
  # GET /purchase_templates/new.json
  def new
    @purchase_template = PurchaseTemplate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @purchase_template }
    end
  end

  # GET /purchase_templates/1/edit
  def edit
    @purchase_template = PurchaseTemplate.find(params[:id])
  end

  # POST /purchase_templates
  # POST /purchase_templates.json
  def create
    @purchase_template = PurchaseTemplate.new(params[:purchase_template])

    respond_to do |format|
      if @purchase_template.save
        format.html { redirect_to @purchase_template, notice: 'Purchase template was successfully created.' }
        format.json { render json: @purchase_template, status: :created, location: @purchase_template }
      else
        format.html { render action: "new" }
        format.json { render json: @purchase_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /purchase_templates/1
  # PUT /purchase_templates/1.json
  def update
    @purchase_template = PurchaseTemplate.find(params[:id])

    respond_to do |format|
      if @purchase_template.update_attributes(params[:purchase_template])
        format.html { redirect_to @purchase_template, notice: 'Purchase template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @purchase_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchase_templates/1
  # DELETE /purchase_templates/1.json
  def destroy
    @purchase_template = PurchaseTemplate.find(params[:id])
    @purchase_template.destroy

    respond_to do |format|
      format.html { redirect_to purchase_templates_url }
      format.json { head :no_content }
    end
  end
end
