# frozen_string_literal: true

# BEGIN
def compare_versions(version1, version2)
  major1, minor1 = version1.split('.').map(&:to_i)
  major2, minor2 = version2.split('.').map(&:to_i)
  major_compare = major1 <=> major2
  major_compare.zero? ? minor1 <=> minor2 : major_compare
end
# END
