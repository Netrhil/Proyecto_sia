class MueblesController < ApplicationController

  layout "application"

  before_action :require_login

  def index
     @muebles = Mueble.where("dar_baja = false");
  end

  def new
       @mueble = Mueble.new();
  end

  def create

   @codmue = params[:codmue];
   @marca = params[:marca];
   @largo = params[:largo];
   @ancho = params[:ancho];
   @descripcion = params[:descripcion];
   @fechacompra = params[:fechacompra];

   puts YAML::dump(@codmue)

   #Creamos el objeto.
   Mueble.create(codmue:@codmue,
                marca:@marca,
                largo:@largo ,
                ancho:@ancho ,
                descripcion:@descripcion ,
                fechacompra:@fechacompra )

   redirect_to "/muebles"

  end

 def show
   @mueble = Mueble.find(params[:id]);
 end

 def edit
    @mueble = Mueble.find(params[:id]);
    @codmue = @mueble.codmue;
    @marca = @mueble.marca;
    @largo = @mueble.largo;
    @ancho = @mueble.ancho;
    @descripcion = @mueble.descripcion;
    @fechacompra = @mueble.fechacompra;
 end

 def update
    @codmue = params[:codmue];
    @marca = params[:marca];
    @largo = params[:largo];
    @ancho = params[:ancho];
    @descripcion = params[:descripcion];
    @fechacompra = params[:fechacompra];
    @mueble = mueble.find(params[:id]);
    @mueble.codmueble = @codmue;
    @mueble.marca = @marca;
    @mueble.largo = @largo;
    @mueble.descripcion = @descripcion;
    @mueble.fechacompra = @fechacompra;

 end

 def baja
   @mueble = Mueble.find(params[:id]);
   @mueble.dar_baja = false
 end


 def destroy
    @mueble = Mueble.find(params[:id]);
    if @mueble.destroy()
       redirect_to muebles_path, :notice => "El mueble ha sido eliminado";
    else
       redirect_to muebles_path, :notice => "El mueble NO ha podido ser eliminado";
    end
 end
end
