# frozen_string_literal: true

# BEGIN
require 'forwardable'
require 'uri'

class Url
  attr_accessor :url

  extend Forwardable
  include Comparable

  def_delegators :@url, :scheme, :host, :port, :query

  def query_params
    @params
  end

  def query_param(key, default = nil)
    @params.fetch(key, default)
  end

  def <=>(other)
    [scheme, port, host, query_params] <=> [other.scheme, other.port, other.host, other.query_params]
  end

  def initialize(params)
    @url = URI.parse(params)

    query = @url.query || ''
    @params = query.split('&')
                   .each_with_object({}) do |param, acc|
      key, value = param.split('=')
      acc[key.to_sym] = value
    end
  end
end
# END
