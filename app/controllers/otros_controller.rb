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
    @codeotro = params[:codequipo];
    @marca = params[:marca];
    @modelo = params[:modelo];
    @descripcion = params[:descripcion];
    @fechacompra = params[:fechacompra];

    puts YAML::dump(@codotro)
   #Creamos el objeto.
   @otro  = Otro.new({
      :codotro => @codotro,
      :marca => @marca,
      :descripcion => @descripcion,
      :fechacompra => @fechacompra
   });
    redirect_to "/otros"
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
    @codotro = params[:codmue];
    @marca = params[:marca];
    @descripcion = params[:descripcion];
    @fechacompra = params[:fechacompra];
    @otro = Otro.find(params[:id]);
    @otro.codotro = @codotro;
    @otro.marca = @marca;
    @otro.descripcion = @descripcion;
    @otro.fechacompra = @fechacompra;
 end
 
 def baja
   @equipo = Equipo.find(params[:id]);
   @equipo.dar_baja = false
 end


 def destroy
    @otro = Otro.find(params[:id]);
    if @otro.destroy()
       redirect_to otros_path, :notice => "El articulo ha sido eliminado";
    else
       redirect_to otros_path, :notice => "El articulo NO ha podido ser eliminado";
    end
 end
end
