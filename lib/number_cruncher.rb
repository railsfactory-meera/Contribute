require "number_cruncher/version"

module NumberCruncher
   def self.crunch(pattern)
    value = pattern.gsub(/[^-0-9]/, ',').split(',').reject(&:empty?)
    result = 0
    value.inject(0) do |a,b|
      if b.to_i.positive? == true
	       result = a.to_i + b.to_i
      else
	       raise  "Please enter only positive values"
      end
    end
    return result
  end
end
