# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "thoughtster"
client_key               "#{current_dir}/thoughtster.pem"
validation_client_name   "thoughtster-validator"
validation_key           "#{current_dir}/thoughtster-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/thoughtster"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_copyright       "Thoughtster"
cookbook_license         "apachev2"
cookbook_email           "thoughtster@thoughtster.com"
