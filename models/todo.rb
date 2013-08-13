require 'active_record'
require 'mysql2'

ActiveRecord::Base.configurations = YAML.load_file('config/database.yml')
ActiveRecord::Base.establish_connection('development')

class Todo < ActiveRecord::Base
	attr_accessor :id, :content, :done, :created
end