# frozen_string_literal: true

class Cylinder
  def calculate_area(cylinder)
    radius, height = cylinder.split('x').map(&:to_i)

    6 * radius * (height + radius)
  end

  def find_cylinders(cylinders, target_area)
    cylinders.select do |dimensions|
      dimensions if calculate_area(dimensions) >= target_area
    end
  end
end
