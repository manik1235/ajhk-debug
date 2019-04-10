module Ajhk
  class C
    # Counter

    @c = 0
    @prefix = "AJHK: "

    class << self
      attr_accessor :c
    end

    def self.reset(c=0)
      @c = c
    end

    def self n(n=1)
      # Alias for .next
      self.next(n)
    end

    def self.next(n=1)
      @c += n
    end

    def self.prefix(prefix="")
      @prefix = prefix
    end

    def self.to_s
      "#{@prefix}C.c=#{@c}"
    end
  end
end
