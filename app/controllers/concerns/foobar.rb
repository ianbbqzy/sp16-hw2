class Foobar
    def initialize(a)
        @var = a
    end

    def bar(b, options={})
        b.to_s +  @var + options[:sat].to_s
    end
end
