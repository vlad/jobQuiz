class MinimumCollectionSizeValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if value.size < options[:size]
      record.errors[attribute] << (options[:message] || "must be provided (at least #{options[:size]}).")
    end
  end
end