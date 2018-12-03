class Day3
  def initialize
    @grid = {}
    build_grid
  end

  def build_grid
    1000.times do |i|
      x = i
      1000.times do |j|
        y = j
        @grid[[x, y]] = 0
      end
    end
  end

  def part_1_3(inputs)
    inputs.each do |input|
      regex = /(\d+),(\d+): (\d+)x(\d+)/
      x_axis, y_axis, width, height = regex.match(input)[1..4].map(&:to_i)
      width.times do |i|
        x = x_axis + i
        height.times do |j|
          y = y_axis + j
          @grid[[x, y]] += 1
        end
      end
    end
    @grid.select { |_, v| v > 1 }.count
  end

  def part_2_3(inputs)
  end
end