class OtrosController < ApplicationController

  layout "application"

  before_action :require_login

  def index
     @otros = Otro.where("dar_baja = false");
  end

  def new
       @otro = Otro.new();
  end

  def create
    @codeotro = params[:codeotro];
    @marca = params[:marca];
    @modelo = params[:modelo];
    @descripcion = params[:descripcion];
    @fechacompra = params[:fechacompra];

    puts YAML::dump(@codeotro)
   #Creamos el objeto.
    Otro.create(
      :codotro => @codeotro,
      :marca => @marca,
      :descripcion => @descripcion,
      :fechacompra => @fechacompra )

    redirect_to :action => "index"
  end

 def show
   @otro = Otro.find(params[:id]);
 end

 def edit
    @otro = Otro.find(params[:id]);
    @codotro = @otro.codotro;
    @marca = @otro.marca;
    @descripcion = @otro.descripcion;
    @fechacompra = @otro.fechacompra;
 end

 def update
    @codeotro = params[:codeotro];
    @marca = params[:marca];
    @descripcion = params[:descripcion];
    @fechacompra = params[:fechacompra];
    @otro = Otro.find(params[:id]);
    @otro.codeotro = @codeotro;
    @otro.marca = @marca;
    @otro.descripcion = @descripcion;
    @otro.fechacompra = @fechacompra;
 end

 def baja
   @otro = Otro.find(params[:id]);
   @otro.dar_baja = false
 end


 def destroy
    @otro = Otro.find(params[:id]);
    @otro.destroy()
    redirect_to :action => "index"
 end
end
