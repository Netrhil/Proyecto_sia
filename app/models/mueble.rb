class Mueble < ApplicationRecord
    belongs_to :distribucion
    acts_as_paranoid
    #Validar codigo
    validates :codmue, :presence => {:message => "Usted debe ingresar un codigo valido"}, length: {minimum: 3, maximum: 50, :message => "El codigo debe tener entre 3 a 50 caracteres"}
    #validar marca
    validates :marca, :presence => {:message => "Usted debe ingresar una marca valida"}, length: {minimum: 2, maximum: 50, :message => "La marca debe tener entre 2 a 50 caracteres"}
    #validar largo
    validates :largo, :presence => {:message => "Usted debe ingresar un largo"}, :numericality => {:only_float => true, :message => "Largo no valido"}
    #validar ancho
    validates :ancho, :presence => {:message => "Usted debe ingresar un ancho"}, :numericality => {:only_float => true, :message => "Ancho no valido"}
    #Validar descripción
    validates :descripcion, :presence => {:message => "Usted debe ingresar una descripción"}, length: {minimum: 2, maximum: 300, :message => "La descripción debe tener entre 2 y 300 caracteres"}
    #validar fecha de compra
    validates :fechacompra, :presence => {:message => "Usted debe ingresar una fecha valida"}
end
