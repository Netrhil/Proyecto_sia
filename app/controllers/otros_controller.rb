class OtrosController < ApplicationController

  layout "application"

  before_action :require_login

  def index
     @otros = Otro.all();
  end

  def new
       @otro = Otro.new();
  end

  def create
   @codotro = params[:otro ][:codotro];
   @marca = params[:otro ][:marca];
   @descripcion = params[:otro ][:descripcion];
   @fechacompra = params[:otro ][:fechacompra];
   #Creamos el objeto.
   @otro  = Otro.new({
      :codotro => @codotro,
      :marca => @marca,
      :descripcion => @descripcion,
      :fechacompra => @fechacompra
   });
   #Verificamos
   if @otro.save()
      redirect_to otros_path, :notice => "El articulo ha sido creado";
   else
      render "new";
   end
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
    @codotro = params[:otro ]["Codigo"];
    @marca = params[:otro ]["marca"];
    @descripcion = params[:otro ]["descripcion"];
    @fechacompra = params[:otro ]["Fecha de compra"];
    @otro = Otro.find(params[:id]);
    @otro.codotro = @codotro;
    @otro.marca = @marca;
    @otro.descripcion = @descripcion;
    @otro.fechacompra = @fechacompra;
    if @otro.save()
       redirect_to otros_path, :notice => "El articulo ha sido modificado";
    else
       render "edit";
    end
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
