class Scrabble 
	ONE = %w(A E I O U L N R S T)
	TWO = %w(D G)
	THREE = %w(B C M P)
	FOUR = %w(F H V W Y)
	FIVE = %w(K)
	EIGHT = %w(J X)
	TEN = %w(Q Z)

	def initialize word 
		@word = word 
	end

	def score 
		score = 0 
		return score if @word.class != String
		@word.upcase.each_char do |chr|
			if ONE.include? chr then score += 1
			elsif TWO.include? chr then score += 2
			elsif THREE.include? chr then score += 3
			elsif FOUR.include? chr then score += 4
			elsif FIVE.include? chr then score += 5
			elsif EIGHT.include? chr then score += 8
			elsif TEN.include? chr then score += 10
			end
		end
		score 
	end

	def self.score str 
		Scrabble.new(str).score
	end

end