# frozen_string_literal: true
require_relative 'observer'
module Subject

  # @param observer [Observer]
  def register_observer(observer)
    raise NotImplementedError, "#{self.class} has not implemented method #{__method__}"
  end

  # @param observer [Observer]
  def remove_observer(observer)
    raise NotImplementedError, "#{self.class} has not implemented method #{__method__}"
  end

  def notify_observers
    raise NotImplementedError, "#{self.class} has not implemented method #{__method__}"
  end
end
