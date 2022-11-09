class AttrAccessorObject
  def self.my_attr_accessor(*names)

    names.each do |el|
      define_method("#{el}".to_sym) do
        instance_variable_get("@#{el}")
      end
    end

    names.each do |el|
      define_method("#{el}=".to_sym) do |new_value|
        instance_variable_set("@#{el}", new_value)
      end
    end

    

    # ...
  end


end
