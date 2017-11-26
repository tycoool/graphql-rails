class Author < ApplicationRecord

  def coordinates
    [rand(50), rand(90)]
  end

  def pubblication_years
    arr = []
    rand(10).times do
      arr << rand(1900..2000)
    end
    arr
  end
end
