def make_snippet(string)
    snippet =string.split(" ")
    snippet.length > 5 ? "#{snippet[0..4].join(' ')}..." : string
end

# Path: spec/make_snippet_spec.rb

# A method called make_snippet that takes a string as an argument 
# and returns the first five words and then a '...' if there are more than that.
