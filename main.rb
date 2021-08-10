class Algo
    def initialize n
        @n = n
        @iterations = 0
        @sequence = []
    end

    def call
      while @n != 1 do
          @sequence << @n  

          case @n % 2
          when 0; @n = @n / 2
          else; @n = 3*@n + 1
          end
          p @n
          @iterations += 1
      end
      puts "Iterations: #{@iterations}"
      self
    end

    def draw
        max = @sequence.max
        log = 1
        @sequence.each do |n|
            (n/log).times do
                sleep(0.0001)
                print "|"
            end
            puts ""
        end
    end

end
n = ARGV[0].to_i
n = n == 0 ? 341 : 0
Algo.new(n.to_i).call.draw

        