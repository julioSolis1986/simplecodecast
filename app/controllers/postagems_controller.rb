class PostagemsController < ApplicationController
  def index
    @postagems = Postagem.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html
      format.json { render json: @postagems }
    end
  end

  def show
    @postagem = Postagem.find(params[:id])

    render :layout => false
    #respond_to do |format|
    #  format.html { render :layout => !request.xhr? }
    #end
  end

  def new
    @postagem = Postagem.new

    respond_to do |format|
      format.html
      format.json { render json: @postagem }
    end
  end

  def edit
    @postagem = Postagem.find(params[:id])
  end

  def create
    @postagem = Postagem.new(params[:postagem])

    respond_to do |format|
      if @postagem.save
        format.html { redirect_to :action => "index", :notice => 'Postagem foi criada com sucesso.' }
      else
        format.html { render action: 'new' }
        format.json { render json: @postagem.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @postagem = Postagem.find(params[:id])

    respond_to do |format|
      if @postagem.update_attributes(params[:postagem])
        format.html { redirect_to @postagem, notice: 'Postagem foi editada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @postagem.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @postagem = Postagem.find(params[:id])
    @postagem.destroy

    respond_to do |format|
      format.html { redirect_to postagems_url }
      format.json { head :no_content }
    end
  end
end
