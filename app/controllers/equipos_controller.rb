class EquiposController < ApplicationController
  layout "application"

  #Solo permite el acceso cuando el usuario se halla logueado exitosamente
  before_action :require_login

  def index
     @equipos = Equipo.all();
  end

  def new
     @equipo = Equipo.new();
  end

  def create

   @codequipo = params[:codequipo];
   @marca = params[:marca];
   @modelo = params[:modelo];
   @descripcion = params[:descripcion];
   @fechacompra = params[:fechacompra];

   puts YAML::dump(@codequipo)

   #Creamos el objeto.
   Equipo.create(codequip:@codequipo,
                marca:@marca,
                modelo:@modelo ,
                descripcion:@descripcion ,
                fechacompra:@fechacompra )

   redirect_to "/equipos"

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
    @codequipo = params[:codequipo];
    @marca = params[:marca];
    @modelo = params[:modelo];
    @descripcion = params[:descripcion];
    @fechacompra = params[:fechacompra];
    @equipo = equipo.find(params[:id]);
    @equipo.codequipo = @codequipo;
    @equipo.marca = @marca;
    @equipo.modelo = @modelo;
    @equipo.descripcion = @descripcion;
    @equipo.fechacompra = @fechacompra;

 end

 def baja
   @equipo = Equipo.find(params[:id]);
   @equipo.dar_baja = false
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
