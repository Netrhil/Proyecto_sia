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
   #Creamos el objeto.
   @mueble  = Mueble.new({
      :codmue => @codmue,
      :marca => @marca,
      :largo => @largo,
      :ancho => @ancho,
      :descripcion => @descripcion,
      :fechacompra => @fechacompra
   });
   #Verificamos
   if @mueble.save()
      redirect_to muebles_path, :notice => "El mueble ha sido creado";
   else
      render "new";
   end
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
    @codmueble = params[:mueble ]["Codigo"];
    @marca = params[:mueble ]["marca"];
    @largo = params[:mueble ]["largo"];
    @ancho = params[:mueble ]["ancho"];
    @descripcion = params[:mueble ]["descripcion"];
    @fechacompra = params[:mueble ]["Fecha de compra"];
    @mueble = Mueble.find(params[:id]);
    @mueble.codmueble = @codmueble;
    @mueble.marca = @marca;
    @mueble.largo = @largo;
    @mueble.ancho = @ancho;
    @mueble.descripcion = @descripcion;
    @mueble.fechacompra = @fechacompra;
    if @mueble.save()
       redirect_to muebles_path, :notice => "El mueble ha sido modificado";
    else
       render "edit";
    end
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
