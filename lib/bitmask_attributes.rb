require "bitmask_attributes/version"
require 'bitmask_attributes/bitmask'
require 'bitmask_attributes/bitmask_attribute_generator'

module BitmaskAttributes
  def has_bitmask_attributes(name)
    raise ArgumentError, "You must pass has_bitmask_attributes a block and define attributes." unless block_given?
    config = BitmaskAttributeGenerator.new(name, self)
    yield config
    config.generate
  end
end

ActiveRecord::Base.send :extend, BitmaskAttributes