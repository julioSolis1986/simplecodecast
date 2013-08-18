# Load the rails application
ENV['RAILS_ENV'] = 'development'

require File.expand_path('../application', __FILE__)

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

# Initialize the rails application
Gerenciador::Application.initialize!