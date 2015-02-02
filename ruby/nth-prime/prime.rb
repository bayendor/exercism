class Prime
  def self.nth(num)
    fail ArgumentError if num <= 0
    a = (0..num).to_a
    a[0] = nil
    a[1] = nil
    max = num
    (num / 2 + 1).times do |n|
      unless a[n].nil?
        cnt = 2 * n
        while cnt <= max
          a[cnt] = nil
          cnt += n
        end
      end
    end
    a.last
  end
end
