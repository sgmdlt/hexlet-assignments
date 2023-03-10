# frozen_string_literal: true

# BEGIN
def build_query_string(params)
  params
    .sort
    .map { |key, value| "#{key}=#{value}" }
    .join('&')
end
# END
