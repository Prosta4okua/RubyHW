# frozen_string_literal: true

module Observer
  # @param value [int]
  public def update(value)
    raise NotImplementedError, "#{self.class} has not implemented method #{__method__}"
  end
end
