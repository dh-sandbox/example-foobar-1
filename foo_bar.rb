class FooBar
  def run(items = gets.chomp.to_i)
    if items > 0
      list = []
      (1..items).each do |n|
        if n % 3 == 0 && n % 5 == 0
          list << "FOOBAR"
        elsif n % 3 == 0
          list << "FOO"
        elsif n % 5 == 0
          list << "BAR"
        else
          list << n
        end
      end
    else
      puts "Please enter a positive number"
    end

    list
  end
end
