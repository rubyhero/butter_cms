require 'butter_cms/configuration'
require 'butter_cms/url_params_service'

module ButterCMS
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= ::ButterCMS::Configuration.new

    yield(configuration)
  end
end
