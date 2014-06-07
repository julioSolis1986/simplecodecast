class AddressController < ApplicationController
  autocomplete :address, :street, :full => true, :scopes => [:uniquely_logradouro]
  autocomplete :address, :bairro, :full => true, :scopes => [:uniquely_bairro]

  def busca_por_cep
    address = Buscaaddress.cep params['cep']
    address[:cidade] = City.where(:name => address[:cidade]).first.id
    address[:estado] = State.where(:acronym => address[:uf].upcase).first.id
    render :json => {:address => address}
  end

  # GET /addresss
  # GET /addresss.json
  def index
    @address = Address.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @address }
    end
  end

  # GET /addresss/1
  # GET /addresss/1.json
  def show
    @address = Address.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @address }
    end
  end

  # GET /addresss/new
  # GET /addresss/new.json
  def new
    @address = Address.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @address }
    end
  end

  # GET /addresss/1/edit
  def edit
    @address = Address.find(params[:id])
  end

  # POST /addresss
  # POST /addresss.json
  def create
    @address = Address.new(params[:address])

    respond_to do |format|
      if @address.save
        format.html { redirect_to @address, notice: 'address was successfully created.' }
        format.json { render json: @address, status: :created, location: @address }
      else
        format.html { render action: "new" }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /addresss/1
  # PUT /addresss/1.json
  def update
    @address = Address.find(params[:id])

    respond_to do |format|
      if @address.update_attributes(params[:address])
        format.html { redirect_to @address, notice: 'address was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addresss/1
  # DELETE /addresss/1.json
  def destroy
    @address = Address.find(params[:id])
    @address.destroy

    respond_to do |format|
      format.html { redirect_to addresss_url }
      format.json { head :no_content }
    end
  end
end
