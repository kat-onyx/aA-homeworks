class House < ActiveRecord::Base
  # validates address: true

  has_many :people,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'Person'

end
