module Ajhk
  class C
    @c = 0
    @prefix = "AJHK: "

    class << self
      attr_accessor :c
    end

    def self.reset(c = 0)
      @c = c
    end

    def self.next
      @c += 1
    end

    def self.prefix(prefix = "")
      @prefix = prefix
    end

    def self.to_s
      "#{@prefix}C=#{@c}"
    end
  end
end
