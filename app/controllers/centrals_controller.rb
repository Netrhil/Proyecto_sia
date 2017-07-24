class CentralsController < ApplicationController

  def index
     @centrals = Central.all()
  end

  def new
       @central = Central.new();
  end

  def create
   @nombre = params[:central][:nombre];
   @descripcion = params[:central][:descripcion];
   #Creamos el objeto.
   @central = Central.new({
      :nombre => @nombre,
      :descripcion => @descripcion
   });
   #Verificamos
   if @central.save()
      redirect_to centrals_path, :notice => "La central ha sido creada";
   else
      render "new";
   end
  end

 def show
    @central = Central.find(params[:id]);
 end

 def edit
    @central = Central.find(params[:id]);
    @nombre = @central.nombre;
    @descripcion = @central.descripcion;
 end

 def update
    @nombre = params[:central]["Nombre"];
    @descripcion = params[:central]["descripcion"];
    @central = Central.find(params[:id]);
    @central.nombre = @nombre;
    @central.descripcion = @descripcion;
    if @central.save()
       redirect_to centrals_path, :notice => "La Central de Costos ha sido modificada";
    else
       render "edit";
    end
 end

 def destroy
    @central = Central.find(params[:id]);
    if @central.destroy()
       redirect_to centrals_path, :notice => "La Central ha sido eliminada";
    else
       redirect_to centrals_path, :notice => "La Central NO ha podido ser eliminada";
    end
 end
end
