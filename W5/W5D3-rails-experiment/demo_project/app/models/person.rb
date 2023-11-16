# class CreatePerson < ActiveRecord::Migration[7.0]
#   def up
#     create_table :people do |t|
#       t.string :name
#       t.house_id :bigint 

#       t.timestamps
#     end
#   end

#   def down
#     drop_table :people
#   end
# end






class Person < ApplicationRecord

  validates :name, :house_id, presence: true


  belongs_to
    :house,
    class_name: 'House',
    foreign_key: :house_id,
    primary_key: :id
  
end