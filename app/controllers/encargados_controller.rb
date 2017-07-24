class EncargadosController < ApplicationController
  def index
     @encargados = Encargado.all();
  end

  def new
       @encargado = Encargado.new();
  end

  def create
   @rut = params[:encargado ][:rut];
   @nombre = params[:encargado ][:nombre];
   @apellido = params[:encargado ][:apellido];
   #Creamos el objeto.
   @encargado  = Encargado.new({
      :rut => @rut,
      :nombre => @nombre,
      :apellido => @apellido
   });
   #Verificamos
   if @encargado.save()
      redirect_to encargados_path, :notice => "El Encargado ha sido creado";
   else
      render "new";
   end
  end

 def show
   @encargado = Encargado.find(params[:id]);
 end

 def edit
    @encargado = Encargado.find(params[:id]);
    @rut = @encargado.rut;
    @nombre = @encargado.nombre;
    @apellido = @encargado.apellido;
 end

 def update
    @rut = params[:encargado ]["Rut"];
    @nombre = params[:encargado ]["Nombre"];
    @apellido = params[:encargado ]["apellido"];
    @encargado = Encargado.find(params[:id]);
    @encargado.rut = @rut;
    @encargado.nombre = @nombre;
    @encargado.apellido = @apellido;
    if @encargado.save()
       redirect_to encargados_path, :notice => "El encargado ha sido modificado";
    else
       render "edit";
    end
 end

 def destroy
    @encargado = Encargado.find(params[:id]);
    if @encargado.destroy()
       redirect_to encargados_path, :notice => "El encargado ha sido eliminado";
    else
       redirect_to encargados_path, :notice => "El encargado NO ha podido ser eliminado";
    end
 end
end
