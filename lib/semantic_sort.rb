# frozen_string_literal: true

require_relative "semantic_sort/version"

module SemanticSort
  class Error < StandardError; end
  
  def semantic_sort
    zero_length = max_num_length_of(self)

    number_formated_names = self.map do |data|
      name_array = data.scan(/(\D*)(\d+)(\D*)/).flatten.reject(&:empty?)
      name_array = [data] if name_array.empty?
      number_formated_name_array = name_array.map do |e|
        e.match(/\d/) ? format("%0#{zero_length}d", e.to_i) : e
      end
      number_formated_name_array.join
    end
   
    names_hash = Hash[self.zip number_formated_names]
    names_hash_sorted =  Hash[names_hash.sort_by{ |k,v| v }]
    names_hash_sorted.keys

  end

  def max_num_length_of(names)
    max_num_len_of_names = names.map do |name|
      if m = name.scan(/\d+/)
        m.map { |e| e.length }.sort.last
      end
    end
    max_num_len_of_names.compact.sort.last
  end
end

include SemanticSort
