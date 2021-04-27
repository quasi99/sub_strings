#sub_strings demo

dictionary = ["below",
							"down",
							"go",
							"going",
							"horn",
							"how",
							"howdy",
							"it",
							"i",
							"low",
							"own",
							"part",
							"partner",
							"sit"
							]

def substrings (string, dictionary)
	result = Hash.new(0)
	down_string = string.downcase
	dictionary.each do |str|
		iquals = down_string.scan(str).length
		result[str] = iquals unless iquals == 0
	end
	result
end


p substrings("below", dictionary)

p substrings("Howdy partner, sit down! How's it going?", dictionary)