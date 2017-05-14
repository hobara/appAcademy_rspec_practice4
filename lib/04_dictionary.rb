class Dictionary
  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(data)
    if data.is_a? Hash
      data.each { |k, v| @entries[k] = v }
    elsif data.is_a? String
      @entries[data] = nil
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(key)
    @entries.keys.include?(key)
  end

  def find(key)
    match = {}
    @entries.keys.each do |k|
      if k.include?(key)
        match[k] = @entries[k]
      end
    end
    match
  end

  def printable
    to_be_printed = []
    @entries = @entries.sort_by { |k, _v| k }
    @entries.each do |k, v|
      to_be_printed << "[#{k}] \"#{v}\""
    end
    to_be_printed.join("\n")
  end

end
