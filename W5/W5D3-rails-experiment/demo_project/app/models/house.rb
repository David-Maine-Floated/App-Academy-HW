# class CreateHouse < ActiveRecord::Migration[7.0]
#   def up
#     create_table :houses do |t|
#       t.string :address

#       t.timestamps
#     end
#   end

#   def down
#     drop_table :houses
#   end
# end


# class House < ApplicationRecord
#   validates :address, presence: true

#   has_many :residents,
#     primary_key: :id
#     class_name: :Person,
#     foreign_key: :house_id,
# end


class House < ApplicationRecord
  validates :address, presence: true

  # Remember: `has_many` is just a method where the first argument is the name
  # of the association and the second argument is an options hash.
  has_many :residents,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: :Person
end