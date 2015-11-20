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
  end
end
