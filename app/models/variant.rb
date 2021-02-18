class Variant < ApplicationRecord
    has_many :products_variants
    #atraves de produtcs
    has_many :products, through: :products_variants

    enum size:["S","M","L","XL"]
end
