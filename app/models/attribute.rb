class Attribute < ActiveRecord::Base
  attr_accessible :backend_type, :entity_type, :hydra_attr_id, :name
end
