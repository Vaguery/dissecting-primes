class Funnel
  def initialize(*feeds)
    @feeds = feeds
  end

  def to(ractor)
    Ractor.new(@feeds, ractor) do |ins, out|
      while true
        _r, val = Ractor.select(*ins)
        out.send val
      end
    end
  end
end
require "prime"


def subprimes(number)
  digits = number.digits.reverse
  digits.collect.with_index do |d,idx|
    subset = digits.dup
    subset.delete_at(idx)
    subset.join.to_i.prime?
  end
end

def all_prime?(number)
  subprimes(number).inject(number.prime?) {|b,s| b && s}
end

feed = Ractor.new {
  while true
    Ractor.yield Ractor.receive
  end
}

@name = 0
def checker(feed)
  @name += 1
  Ractor.new(feed, @name) { |feed, id|
    while true
      x = feed.take
      if all_prime?(x)
        Ractor.yield({name: id, x: x})
      end
    end
  }
end

gather = Ractor.new {
  t = Time.now
  i = 0
  while true
    i += 1
    x = receive
    puts "#{i} #{x} #{Time.now - t}"
  end
}
@rr = Array.new(100).map {|_x| checker(feed) }


Funnel.new(*@rr).to(gather)

def is_ready
  @rr.map { |r| r.inspect.include? "blocking" }.include? true
end

ii = 0
Prime.each { |p|
  sleep 0.001 until is_ready
  feed.send p
}
