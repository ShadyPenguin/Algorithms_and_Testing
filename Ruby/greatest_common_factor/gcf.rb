module CalculateGreatestCommonFactor
  def find_greatest_factor(num_1, num_2)
    calculate_factors(num_1).select { |int| calculate_factors(num_2).include?(int) }.max
  end

  def calculate_factors(num)
    (1..num).select { |int| num % int == 0 }
  end
end