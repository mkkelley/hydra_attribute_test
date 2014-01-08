class Employee < ActiveRecord::Base
  # attr_accessible :title, :body
  include HydraAttribute::ActiveRecord
end
