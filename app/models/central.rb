class Central < ApplicationRecord
    has_many :distribucions
    #validar nombre
    validates :nombre, :presence => {:message => "Usted debe ingresar un Nombre"}, length: {minimum: 3, maximum: 10, :message => "El nombre debe tener entre 3 a 10 caracteres"}
    #Validar descripción
    validates :descripcion, :presence => {:message => "Usted debe ingresar una descripción"}, length: {minimum: 2, maximum: 300, :message => "La descripción debe tener entre 2 y 300 caracteres"}

end
