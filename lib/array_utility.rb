module ArrayUtility
  refine Array do
    # Gets the next value in the Array.
    # @param single [Any] The starting value.
    # @return [Any] The value directly after single.
    # @return [Nil] If there is no value after single.
    def next(single)
      self[index(single) + 1]
    end

    # Gets the previous value in the Array. Unlike #next, this method will never
    # return Nil. Instead it will simply loop back to the end of the Array.
    # @param single [Any] The starting value.
    # @return [Any] The value directly before single.
    def before(single)
      self[index(single) - 1]
    end

    # Puts a value at the start of an array, and deletes all values greater than
    #   the cap.
    # @param value [Any] The value to prepend.
    # @param cap [Int] The maximum number of values in the array.
    def prepend_capped(value, cap)
      unshift(value)
      if size > cap
        drop(cap).each do |val|
          delete(val)
        end
      end
      self
    end
  end
end
