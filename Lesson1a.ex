defmodule Basik do
    def types do
        list = [:a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k, :l, :m, :n, :o, :p]
        list = [:a, :b, item3, :d, :e, :f, :g, :h, :i, :j, :k, :l, :m, :n, :o, :p,_] = list ++ [:q]
    end
end


