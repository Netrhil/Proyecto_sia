class DistribucionsController < ApplicationController
  def index
     @distribucions = Distribucion.all();
  end

  def new
       @distribucion = Distribucion.new();
  end

  def create
   @nombre = params[:distribucion ][:nombre];
   @descripcion = params[:distribucion ][:descripcion];
   #Creamos el objeto.
   @distribucion  = Distribucion.new({
      :nombre => @nombre,
      :descripcion => @descripcion
   });
   #Verificamos
   if @distribucion .save()
      redirect_to distribucions_path, :notice => "La Oficina  ha sido creada";
   else
      render "new";
   end
  end

 def show
   @distribucion  = Distribucion.select("id,nombre,descripcion").where(:central_id =>params[:id]);
 end

 def edit
    @distribucion = Distribucion.find(params[:id]);
    @nombre = @distribucion.nombre;
    @descripcion = @distribucion.descripcion;
 end

 def update
    @nombre = params[:distribucion ]["Nombre"];
    @descripcion = params[:distribucion ]["descripcion"];
    @distribucion = Distribucion.find(params[:id]);
    @distribucion.nombre = @nombre;
    @distribucion.descripcion = @descripcion;
    if @distribucion.save()
       redirect_to distribucions_path, :notice => "La Oficina ha sido modificada";
    else
       render "edit";
    end
 end

 def destroy
    @distribucion = Distribucion.find(params[:id]);
    if @distribucion.destroy()
       redirect_to distribucions_path, :notice => "La Oficina ha sido eliminada";
    else
       redirect_to distribucions_path, :notice => "La Oficina  NO ha podido ser eliminada";
    end
 end
end
