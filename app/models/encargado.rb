class Encargado < ApplicationRecord
    has_many :distribucions

    #Validar rut
    validates :rut, :presence => {:message => "Usted debe ingresar un rut"}, length: {minimum: 9, maximum: 10, :message => "El codigo debe tener entre 9 a 10 caracteres"}
    #validar nombre
    validates :nombre, :presence => {:message => "Usted debe ingresar un Nombre"}, length: {minimum: 3, maximum: 10, :message => "La marca debe tener entre 3 a 10 caracteres"}
    #validar apellido
    validates :apellido, :presence => {:message => "Usted debe ingresar un apellido "}, length: {minimum: 3, maximum: 10, :message => "La marca debe tener entre 3 a 10 caracteres"}
end
