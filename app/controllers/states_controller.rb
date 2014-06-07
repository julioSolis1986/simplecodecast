class StatesController < ApplicationController
  def cidades_por_estados
    if params[:id].present?
      @cidades = State.find(params[:id]).cidades
      @id_input = params[:id_input]
    else
      @cidades = []
      @id_input = params[:id_input]
    end

    respond_to do |format|
      puts @id_input
      format.js
    end
  end
end
