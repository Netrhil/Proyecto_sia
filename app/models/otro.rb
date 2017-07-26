class Otro < ApplicationRecord

    #Validar codigo
    validates :codotro, :presence => {:message => "Usted debe ingresar un codigo valido"}, length: {minimum: 3, maximum: 50, :message => "El codigo debe tener entre 3 a 50 caracteres"}, :uniqueness => { :message => "El codigo ya se uso" }
    #validar marca
    validates :marca, :presence => {:message => "Usted debe ingresar una marca valida"}, length: {minimum: 2, maximum: 50, :message => "La marca debe tener entre 2 a 50 caracteres"}
     #Validar descripción
    validates :descripcion, :presence => {:message => "Usted debe ingresar una descripción"}, length: {minimum: 2, maximum: 300, :message => "La descripción debe tener entre 2 y 4000 caracteres"}
    #validar fecha de compra
    validates :fechacompra, :presence => {:message => "Usted debe ingresar una fecha valida"}
end
