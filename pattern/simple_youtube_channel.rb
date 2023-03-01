# frozen_string_literal: true
require_relative 'subject'
require_relative 'observer'
class SimpleYoutubeChannel
  include Subject
  extend Observer

  # # @type [Array<Observer>] observers
  # @observers
  # # @type
  # @value

  def initialize
    @observers = Array.new
  end

  # @param observer [Observer]
  def register_observer(observer)
    @observers << observer
  end

  # @param observer [Observer]
  def remove_observer(observer)
    @observers.delete(observer)
  end

  def notify_observers
    # TODO: ask lecturer
    @observers.each do |observer|
      # @type observer [Observer]
      observer.update(@value)
    end
  end

  # @param value [Integer]
  def set_value(value)
    @value = value
    notify_observers
  end

end
