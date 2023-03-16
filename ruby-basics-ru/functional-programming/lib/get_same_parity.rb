# frozen_string_literal: true

# BEGIN
def get_same_parity(array)
  array.filter { |elem| elem.even? == array[0].even? }
end
# END
