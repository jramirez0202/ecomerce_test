class Category < ApplicationRecord
  has_and_belongs_to_many :products

def children
  Category.where(category_id: self.id)
end

def family
  family = []
   children1 = self.children
   children1.each do |c|
    family.push c
    x = c.children
    if x.count > 0
      family.push x
   end
  end
  family
end

  def offspring(offsprings = nil)
    offsprings ||= []
    # ||=[] crea un arreglo vacio opcional
    childrens = Category.where(category_id: self.id)
    childrens.each do |child|
    offsprings << {id: child.id , name: child.name}
    child.offspring(offsprings)
    end
    offsprings
  end 
  #Electrodomesticos
    #plancha
      #vapor
      #normal
    #Horno
      #electrico
      #solar
    #refrigerador
      #2 puertas
      #congeladors
end
