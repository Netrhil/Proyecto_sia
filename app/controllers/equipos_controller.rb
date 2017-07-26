class EquiposController < ApplicationController
  def index
     @equipos = Equipo.all();
  end

  def new
       @equipo = Equipo.new();
  end

  def create
   @codequipo = params[:equipo ][:codequipo];
   @marca = params[:equipo ][:marca];
   @modelo = params[:equipo][:modelo];
   @descripcion = params[:equipo ][:descripcion];
   @fechacompra = params[:equipo ][:fechacompra];
   #Creamos el objeto.
   @equipo  = equipo.new({
      :codequip => @codequip,
      :marca => @marca,
      :modelo => @modelo,
      :descripcion => @descripcion,
      :fechacompra => @fechacompra
   });
   #Verificamos
   if @equipo.save()
      redirect_to equipos_path, :notice => "El equipo ha sido creado";
   else
      render "new";
   end
  end

 def show
   @equipo = Equipo.find(params[:id]);
 end

 def edit
    @equipo = Equipo.find(params[:id]);
    @codequip = @equipo.codequip;
    @marca = @equipo.marca;
    @modelo = @equipo.modelo;
    @descripcion = @equipo.descripcion;
    @fechacompra = @equipo.fechacompra;
 end

 def update
    @codequipo = params[:equipo ]["Codigo"];
    @marca = params[:equipo ]["marca"];
    @modelo = params[:equipo ]["modelo"];
    @descripcion = params[:equipo ]["descripcion"];
    @fechacompra = params[:equipo ]["Fecha de compra"];
    @equipo = equipo.find(params[:id]);
    @equipo.codequipo = @codequipo;
    @equipo.marca = @marca;
    @equipo.descripcion = @descripcion;
    @equipo.fechacompra = @fechacompra;
    if @equipo.save()
       redirect_to equipos_path, :notice => "El equipo ha sido modificado";
    else
       render "edit";
    end
 end

 def destroy
    @equipo = Equipo.find(params[:id]);
    if @equipo.destroy()
       redirect_to equipos_path, :notice => "El equipo ha sido eliminado";
    else
       redirect_to equipos_path, :notice => "El equipo NO ha podido ser eliminado";
    end
 end
end
