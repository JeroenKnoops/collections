SERVER_CONFIG = HashWithIndifferentAccess.new(YAML.load_file("config/server_config.yml")[Rails.env])
REVISION = HashWithIndifferentAccess.new(YAML.load_file("config/revision.yml"))

