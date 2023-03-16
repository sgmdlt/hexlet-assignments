# frozen_string_literal: true

# BEGIN
def count_by_years(users)
  users.each_with_object({}) do |user, acc|
    year, * = user[:birthday].split('-')
    gender = user[:gender]
    if gender == 'male'
      acc[year] ||= 0
      acc[year] += 1
    end
  end
end
# END
