require "bogo_sort/version"

module BogoSort
  def bogo_sort
    loop do
      catch(:break) do
        shuffled = shuffle
        (shuffled.length - 1).times do |i|
          compare_result = shuffled[i] <=> shuffled[i + 1]
          return nil if compare_result.nil?
          throw(:break) if compare_result >= 1
        end
        return shuffled
      end
    end
  end

  def bogo_sort!
    result = bogosort
    result.nil? ? nil : replace(result)
  end

  alias_method :bogosort, :bogo_sort
  alias_method :bogosort!, :bogo_sort!
end

Array.class_eval { include BogoSort }
