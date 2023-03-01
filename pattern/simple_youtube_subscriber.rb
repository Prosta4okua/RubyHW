# frozen_string_literal: true
require_relative 'observer'
class SimpleYoutubeSubscriber
  include Observer

  # @type simple_subject [Subject]
  @simple_subject
  # @type value [Integer]
  @value

  # @param simple_subject [Subject]
  def initialize(simple_subject)
    @simple_subject = simple_subject
    simple_subject.register_observer(self)
  end

  # @param value [Integer]
  def update(value)
    @value = value
    display
  end

  def display
    puts "Value: #{@value}"
  end
end
